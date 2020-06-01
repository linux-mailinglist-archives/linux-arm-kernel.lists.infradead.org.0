Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D061EA1E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 12:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TfOJjnIsDluLYeYCiJ8Ughey9mUZwIlGDl9haIdHKE=; b=m8zEXEZk3SrmeX
	dXZ2obrA/yf/EV/XDrWDwV6XE+obJUoXThDvA6BOqOaMsT43qE9ZVXmyumj86p0vf61SxZVu24o0h
	AC43LLIaHHFwlBiEyryISN78CafctD9sjyhOICETmoh6TZvlv7H8Yo/H/4cx/pZB1beTE0w7ZGaf5
	N4+6yJNnjgs1xV+Cg93FxF/FszZjwOsor4q/nEgQ8f4kuKCEoF5fzM7zuumuy6fHNQIf937jE7P2y
	6FBUNuQFN7IlXJkITr9tiONz5xBGYD4As1HKs0PggRYu3CV6n50ss7RF+pnRk1wnO7ciuPfyNDIwO
	bCHW3WGGCaq/GH3weT9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfhkO-000800-B4; Mon, 01 Jun 2020 10:32:48 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfhkG-0007yg-96
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 10:32:43 +0000
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id CB26AFF7280A90510C68;
 Mon,  1 Jun 2020 11:32:26 +0100 (IST)
Received: from localhost (10.47.94.81) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Mon, 1 Jun 2020
 11:32:26 +0100
Date: Mon, 1 Jun 2020 11:31:46 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v2 0/4] Introduce the Counter character device interface
Message-ID: <20200601113146.00001d5a@Huawei.com>
In-Reply-To: <20200531171351.GA10597@shinobu>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
 <20200524172542.31ff6ac7@archlinux>
 <20200524175439.GA14300@shinobu>
 <20200531161813.658ffdfb@archlinux>
 <20200531171351.GA10597@shinobu>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.47.94.81]
X-ClientProxiedBy: lhreml742-chm.china.huawei.com (10.201.108.192) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_033240_619938_49CFB71E 
X-CRM114-Status: GOOD (  47.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [185.176.76.210 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, david@lechnology.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Cameron <jic23@kernel.org>,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 31 May 2020 13:14:06 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> On Sun, May 31, 2020 at 04:18:13PM +0100, Jonathan Cameron wrote:
> > On Sun, 24 May 2020 13:54:39 -0400
> > William Breathitt Gray <vilhelm.gray@gmail.com> wrote:  
> > > After giving this some more thought, I believe human-readable sysfs
> > > attributes are the way to go to support configuration of the character
> > > device. I am thinking of a system like this:
> > > 
> > > * Users configure the counter character device via a sysfs attribute
> > >   such as /sys/bus/counter/devices/counterX/chrdev_format or similar.
> > > 
> > > * Users may write to this sysfs attribute to select the components they
> > >   want to interface -- the layout can be determined as well from the
> > >   order. For example:
> > > 
> > >   # echo "C0 C3 C2" > /sys/bus/counter/devices/counter0/chrdev_format  
> > 
> > I guess that 'just' meets the sysfs requirement of one file => one thing.  
> 
> We can massage this further to make it more apt, but the main idea here
> is that configuration should be separate from our data; and that
> configuration should be performed via sysfs.
> 
> > >   This would select Counts 0, 3, and 2 (in that order) to be available
> > >   in the /dev/counter0 node as a contiguous memory region.
> > > 
> > >   You can select extensions in a similar fashion:
> > > 
> > >   # echo "C4E2 S1E0" > /sys/bus/counter/devices/counter0/chrdev_format
> > > 
> > >   This would select extension 2 from Count 4, and extension 0 from
> > >   Signal 1.  
> > 
> > I'm not totally clear why we'd want to have a chrdev access to extensions.
> > To be honest I'm not totally sure what an extension is today as it's been
> > a week ;)  
> 
> In the context of the Counter subsystem, an extension is data/control
> that is not one of the core components of the Counter paradigm (i.e. not
> a Counter, Signal, nor Synapse). Extensions essentially represent
> configuration options for the counter device and auxiliary
> functionality.
> 
> The "Implementation" section of the Generic Counter documentation
> Documentation/driver-api/generic-counter.rst file gives some good
> examples of extensions, but I'll provide an example here for the sake of
> this new character device interface.
> 
> Suppose we have a robot controlling a laser on a dual-axes positioning
> table. A counter device is used to track the position of the laser:
> Count 0 represents position on the X axis, while Count 1 represents
> position on the Y axis. Because this machine is moving across two axes
> at the same time, we want to grab both counts together via the
> character device subsystem (grabbing them separately via sysfs would be
> imprecise due to the inherent latency).
> 
> The motors are physically able the robot out of the work area, which is
> not something we want to happen. A common setup in systems like this is
> to set soft boundaries on the counter device to represent the edge of
> the work area; when the boundary is passed, a flag is set high on the
> device to indicate the position is out-of-bounds.
> 
> On the Counter subsystem side, this counter device would appear as
> having four sysfs attributes: count0/count, count0/boundary,
> count1/count, and count1/boundary. In terms of the character device
> interface, we could perform a setup like this:
> 
> # echo "C0E0 C0 C1E1 C1" > counter0/chrdev_format
> 
> Yielding the following /dev/counter0 memory layout:
> 
> +------------+-----------------+------------+-------------------+
> | Byte 0     | Byte 1 - Byte 8 | Byte 9     | Byte 10 - Byte 17 |
> +------------+-----------------+------------+-------------------+
> | Boundary 0 | Count 0         | Boundary 1 | Count 1           |
> +------------+-----------------+------------+-------------------+
> 
> Now a single read() operation can grab the counts together as well as
> their respective boundary flags to verify whether the current counts are
> valid. This is a scenario where using sysfs wouldn't be viable to use:
> we could check the count0/boundary sysfs attribute first, but by the
> time we read the count0/count sysfs attribute second, the robot has
> already moved to a new (possibly invalid) position.

Ok. So typically something like a condition flag.  Data that indeed makes
sense to be associated with a set of counter values.

> 
> > Perhaps an example?  I see timestamp below.  What is that attached to?
> > If we gave multiple counters, do they each have a timestamp?  
> 
> Some counter devices feature "timestamp" functionality. I haven't yet
> implemented this in the Counter subsystem because it's new functionality
> and I want to keep this patchset limited to the existing Counter
> subsystem functionality support.
> 
> However, to briefly go into the topic (we'll need to discuss this more
> in-depth before committing to a Counter subsystem design), some counter
> devices can keep track of historic counts based on various events; we
> call these "timestamps", although they may not necessary be tied to a
> wall-clock time.
> 
> For example, quadrature encoders often have an "index" signal in
> addition to the quadrature A and B lines. This index signal may be used
> to home a positioning device, or perhaps to indicate that a full
> revolution -- or some other event -- has occurred. It's common for
> quadrature counter devices to provide a FIFO buffer that logs these
> "index" events by saving the current count when that respective index
> signal goes high. Thus we have a timestamp buffer.

That doesn't sound like a timestamp buffer. You are logging counts,
not the current time.  If they are going through a FIFO you might also
capture a freerunning timer though.

> 
> In the context of the Counter subsystem, I believe we will end up
> implementing these timestamps as Count extensions (or Device extensions
> if it's a single buffer for the entire device). I'm not sure yet what
> the sysfs attribute will display, but I'm guessing we'll have a
> respective /sys/bus/counter/devices/counterX/countX/timestamps sysfs
> attribute or similar.
> 
> The character device implementation should be more straight forward I
> would imagine. Since it's a memory buffer, I think we can provide access
> to that buffer directly in the chrdev:
> 
> # echo "C0E0 C1E1" > /sys/bus/counter/devices/counter0/chrdev_format
> 
> Yielding the following /dev/counter0 memory layout for 32-byte
> timestamps:
> 
> +---------------------+---------------------+
> | Byte 0 - Byte 31    | Byte 32 - Byte 63   |
> +---------------------+---------------------+
> | Timestamps Buffer 0 | Timestamps Buffer 1 |
> +---------------------+---------------------+

As you say, will need more discussion.  Lots of fun questions around timestamps
such as what the timebase is, how to relate it to system time etc.

> 
> > > * Users may read from this chrdev_format sysfs attribute in order to see
> > >   the currently configured format of the character device.
> > > 
> > > * Users may perform read/write operations on the /dev/counterX node
> > >   directly; the layout of the data is what they user has configured via
> > >   the chrdev_format sysfs attribute. For example:
> > > 
> > >   # echo "C0 C1 S0 S1" > /sys/bus/counter/devices/counter0/chrdev_format
> > > 
> > >   Yields the following /dev/counter0 memory layout:
> > > 
> > >   +-----------------+------------------+----------+----------+
> > >   | Byte 0 - Byte 7 | Byte 8 - Byte 15 | Byte 16  | Byte 17  |
> > >   +-----------------+------------------+----------+----------+
> > >   | Count 0         | Count 1          | Signal 0 | Signal 2 |
> > >   +-----------------+------------------+----------+----------+
> > > 
> > > * Users may perform select/poll operations on the /dev/counterX node.
> > >   Users can be notified if data is available or events have occurred.  
> > 
> > One thing to think about early if watermarks.  We bolted them on
> > late in IIO and maybe we could have done it better from the start.
> > I'd almost guarantee someone will want one fairly soon - particularly
> > as it's more than possible you'll have a counter device with a
> > hardware fifo.  I have some vague recollection that ti-ecap
> > stuff could be presented as a short fifo for starters.
> >   
> > > 
> > > The benefit of this design is that the format is robust so users can
> > > choose the components they want to interface and in the layout they
> > > want. For example, if I am writing a userspace application to control a
> > > dual-axis positioning table, I can select the two counts I care about
> > > for the position axes. This allows me to read just those two values
> > > directly from /dev/counterX with a simple read() call, without having to
> > > fumble around seeking to an offset and parsing the layout.  
> > 
> > I wonder if I'm over thinking things for counters, but you may run into
> > the complexity of different counters having different sampling frequencies.
> > Here you are suggesting a scheme that I think ends up closer to IIO than
> > input.   That makes this case a pain.   Input takes the view that it's
> > fine to have data coming in any order and frequency because every
> > record is self describing.  I'm not sure it matters here, but it is
> > a nice layer of flexibility, but you do loose the efficiency of
> > the description being external to the data flow.  
> 
> I think one of the downsides to using a single a single character device
> node to represent the entire counter device is that the frequency of two
> individual counts may differ from each other. For example, using the
> dual-axes positioning scenario from earlier, one axis might change more
> frequently than the other (e.g. a conveyor belt situation where X is
> always moving forward, while Y only changes when a part appears within
> the work area).

One option is to allow for either multiple opening of the chardev, or
creation of anon file handles via an IOCTL (like we do for events in IIO).
Makes the sysfs interface more complex, but would allow you to handle multiple
independent raw data streams.

> 
> In these cases, I think the Input subsystem approach might be better
> because the user can just wait for events at large and handle each event
> as it comes in, rather than try to coordinate between them all in a
> shared memory space. The shortcoming with this approach is that we lose
> the ability to grab Counts together at the same time, such as we require
> in the constantly moving robot example earlier.

There are approaches like adding a sequence number to allow multiple self
describing records to be associated.

> 
> Perhaps what might work is to implement Counter events (perhaps even
> timestamps) using the Input subsystem, and leave the Counter character
> device interface to simple read/write operations. But we'll need to
> investigate this further because we lack a concept of "events" right now
> in the Counter subsystem.
> 
> > > Similarly, support for future extensions is simple to implement. When
> > > timestamp support is implemented, users can just select the desired
> > > timestamp extension and read it directly from the /dev/counterX node;
> > > they should also be able to perform a select()/poll() call to be
> > > notified on new timestamps.
> > > 
> > > So what do you think of this sort of design? I think there is a useful
> > > robustness to the simplicity of performing a single read/write call on
> > > /dev/counterX.  
> > 
> > It seems like a reasonable solution to me.  The only blurry
> > boundary to my mind is what level of buffering is behind this.
> > The things you can do are open, non blocking read, blocking read and select.
> > 
> > If we have a counter that is sampled on demand, then 
> > 1) Non blocking read - makes not sense, fair enough I guess, could make it
> >    the same as a blocking read.
> > 2) Blocking read - reads from the sensor.
> > 3) Select, meaningless as all reads are done on demand - so I guess you
> >    hardwire it to return immediately.
> > 4) open. Nothing special
> > 
> > If you have a counter that is self clocking then data gets pushed into some
> > software structure (probably kfifo)
> > 1) Blocking read, question of semantics to resolve
> >    a) Return when 'some' data is available (like a socket)
> >    b) Return when 'requested amount of data is available'?
> > 2) Non blocking read. Return whatever happens to be available.
> > 3) Select.  Semantics to be defined.
> >    a) Some data?
> >    b) Watermark based (default watermark is 0 so any data triggers it)
> > 4) Open.  Starts up sampling of configured set - (typically turns on the
> >    device, enables interrupt output etc.)
> > 
> > So some corners to resolve but should all work.  
> 
> I'm not familiar with the "watermark" terminology. Would you be able to
> explain it bit more for me. Is this simply a flag that indicates if data
> has changed from the last time it was checked?

If you have a FIFO, watermark is the fill level at which you indicate you
have data. For a HW FIFO this is usually an interrupt at say 10 elements
queued up.  The software is then expected to drain at least 10 elements.

For software fifo the concept is the same, but you are expecting userspace
to drain N elements on each event.

If you are going to deal with remotely high sampling rates you'll need to
support this for both software and hardware FIFOs.

> 
> > > > >    Moving this selection to a sysfs attribute and dedicating the
> > > > >    character device to just data transfer might be a better design. If
> > > > >    such a design is chosen, should the selection attribute be
> > > > >    human-readable or binary?    
> > > > 
> > > > Sysfs basically requires things are more or less human readable.
> > > > So if you go that way I think it needs to be.
> > > >     
> > > > > 
> > > > > 2. How much space should allotted for strings?
> > > > > 
> > > > >    Each Counter component and extension has a respective size allotted
> > > > >    for its data (u8 data is allotted 1 byte, u64 data is allotted 8
> > > > >    bytes, etc.); I have arbitrarily chosen to allot 64 bytes for
> > > > >    strings. Is this an apt size, or should string data be allotted more
> > > > >    or less space?    
> > > > 
> > > > I'd go with that being big enough, but try to keep the expose interface
> > > > such that the size can change it it needs to the in the future.    
> > > 
> > > Following along with the separation of control vs data as discussed
> > > above, we could support a more variable size by exposing it through a
> > > sysfs attribute (maybe a chrdev_string_size attribute or similar).  
> > 
> > I'm unconvinced you'd ever want to return a string via the chardev.
> > People are using the chrdev to get efficiency. String based data flows
> > are rarely that!  
> 
> That's a good point. I don't think there is a situation right now where
> we need to deliver strings via the character device interface, so I
> think I'll remove that in v3.

Cool.  This all seems to be heading in a sensible direction, but as you say
lots still to consider.

Jonathan

> 
> William Breathitt Gray
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
