/** 
* @File         - GrabberClass.cpp
* 
* @Author       - John H Allard. 6/12/2014. 
* @Info         - Created at Harvey Mudd as part of the 2014 CS REU under Dr. Zach Dodds
* @ Description - This is the implementation of the CloudGrabber class. This file will implement the member functions of this class,
*       which connects the program to the kinect camera via the openNI drivers, converts the incoming data to a Point Cloud, visualized the point cloud
*       for the user to view, then gives the user the ability to save the current point cloud and to publish this data to another program, which allows the
*       user to apply various transformations, filters, and other actions on the current point cloud.
**/

// User Defined Includes
#include "CloudGrabber.h"

// Constructor, no args needed
CloudGrabber::CloudGrabber() :
cloudptr(new pcl::PointCloud<pcl::PointXYZRGBA>), // initialize our PointCloud ptr 
node(new ros::NodeHandle)                         // initialize the program node handle
{
    // initialize members, see header file for descriptions
    this->filesSaved = 0;
    this->saveCloud  = false;
    this->noColor    = false;
    this->publishCurrent = false;                
    this->visualize  = true;                      // make it so we visualize the incoming data by default
    this->PUB_NAME   = "CloudGrabberPublisher";   // name of the class publisher

    openniGrabber = new OpenNIGrabber();          // this object takes care of grabbing the data from the kinect camera
                                                
    if(!openniGrabber)
        PCL_ERROR("Could not grab data from camera");

    // make a pointer to the callback function for the grabber object, this is where the grabber object will send the kinect data
    boost::function<void (const PointCloud<PointXYZRGBA>::ConstPtr&)> grabber_cb( boost::bind( &CloudGrabber::grabberCallback, this, _1 ) );

    // register the callback function
    openniGrabber->registerCallback(grabber_cb);

}


// start the grabbing of data from the camera source and visualization of the point clouds
void CloudGrabber::startFeed()
{
    // create the viewing window for the incoming point cloud data
    viewer = createViewer();
    // start grabbing the point cloud data through OpenNI
    openniGrabber->start();
}

// this function is called to set up a ROS publisher and publish important PCL data coming from the openniGrabber
// data is published ever @param ms in milliseconds
void CloudGrabber::startPublishing(int ms)
{
    // set up our publisher to output PCLPointCloud2 messages under the name @field PUB_NAME
    this->publisher = node->advertise<pcl::PCLPointCloud2&>(this->PUB_NAME, 1000);

    // set the publishing rate based on the user submitted parameter
    ros::Rate loop_rate(ms);

    while(ros::ok())
    {
        // if the user set the publish flag
        // TODO - Change it so that we publish the messages even without user input, it shouldn't slow us down too much
        // but it will simplify future processes
        if(this->publishCurrent)
        {
            pcl::PCLPointCloud2 tempcloud; // a ROS msg that holds a point cloud, will be filled with thec current point cloud frame

            pcl::toPCLPointCloud2(*cloudptr, tempcloud); //Input of the above cloud and the corresponding output of cloud_pcl

            publisher.publish(tempcloud);  // publish the current frame to whoever wants to listen!
        }

        loop_rate.sleep(); // wait the user specified amount of time to publish again
    }
}

// Creates, initializes and returns a new viewer, which is a window that will display the incoming Point Cloud data
boost::shared_ptr<visualization::CloudViewer> CloudGrabber::createViewer()
{
    // create our viewer object
    boost::shared_ptr<visualization::CloudViewer> v(new visualization::CloudViewer("Kinect Camera Cloud Viewer"));

    // register the keyboard callback
    v->registerKeyboardCallback(&CloudGrabber::keyboardEventOccurred, *this, (void*)& viewer);

    return v;
}

// For detecting when SPACE is pressed.
void CloudGrabber::keyboardEventOccurred(const visualization::KeyboardEvent& event, void* nothing)
{
    // if the user wants to save the current point cloud, set the save flag
    if (event.getKeySym() == "s" && event.keyDown())
        this->saveCloud = true;

    // if the user presses v, we toggle the visualize flag. 
    // flag == true means we show the incoming point clouds, flag == flase means we don't update the visualizer (sames memory and processor clocks)
    if(event.getKeySym() == "v" && event.keyDown())
        this->visualize =! this->visualize;

    // if the user presses the 'p' key we go ahead and publish the current point cloud stored in cloudptr through our publisher object
    // for othe programs to pick up and work on
    if(event.getKeySym() == "p" && event.keyDown())
        this->publishCurrent =! this->publishCurrent;

}


void CloudGrabber::grabberCallback(const PointCloud<PointXYZRGBA>::ConstPtr& cloud)
{
    if (!this->viewer->wasStopped() && visualize == true)
    {
        *cloudptr = *cloud;
        this->viewer->showCloud(cloudptr);
    }

    if (saveCloud)
    {
        stringstream stream;
        stream << "inputCloud" << filesSaved << ".pcd";
        string filename = stream.str();
        if (io::savePCDFile(filename, *cloudptr, true) == 0)
        {
            filesSaved++;
            cout << "Saved " << filename << "." << endl;
        }
        else PCL_ERROR("Problem saving %s.\n", filename.c_str());

        saveCloud = false;
    }
}


boost::shared_ptr<visualization::CloudViewer> CloudGrabber::getViewer()
{
    return this->viewer;
}

// get the name of the publisher
std::string CloudGrabber::getPublisherName()
{
    return this->PUB_NAME;
}

// get the ROS publisher object
ros::Publisher & CloudGrabber::getPublisher()
{
    return this->publisher;
}

ros::NodeHandle * CloudGrabber::getNodeHandle()
{
    return node;
}