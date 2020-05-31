Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 437BC1E986E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 17:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkApKJODNP7A9s4v3RLkpiPCGSVzajOPb0i05JNK9gw=; b=C62l7m5ISuxp9s
	aEhu+leWG2wpJU740+An606+GogbFyhOx4i1Ff5JjTKiKkD5/I7W5XGUUGsOPb7+sNz5SLZuq7b3/
	iEoyDEO2eObae5hLCBTRkrZ3z/PfJYhRZQhuATlrNBItSSffqqWAlgy+BwAbseqHU1nOx1E2JlSQ4
	WJFGU9LfCcKPWe0/WYOMxzQsTuoXmcD7Pblaj6kWL4cSGVCuyq7LDicGfK/Tjo8NHr2pdE5gfyrM7
	JGrkW5Mlc8XXwQTogamGQeqlNU/ASWWZv0Bh9iWYVUWrVMMgjES94y2cikGrMYlzdKp6ilG1Zmy97
	E56xjMel/eVAHfcuaI9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfPjJ-0007zp-5Q; Sun, 31 May 2020 15:18:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfPjA-0007zA-4z
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 15:18:22 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0906F2076B;
 Sun, 31 May 2020 15:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590938298;
 bh=E+uMzovuaorWpT7lwFcO50Gyd9dtFoZvVuV6RGxGkco=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Tit+rF8YyfFOwvzqKlV1x+Aq7yQeq3GORg8/7lCSZ1ufiXiW62c7XyEcreA5qhYuB
 yYDlXqGOLSQxyO9WrLcg/8k3UdYCQY79PSjj5z6tDgIPqtrsuNTaIu1AGqPIzVg9h2
 cIapxa+9qNTKLNwGFF8FBelLu+LzO9DtFEPvWxxE=
Date: Sun, 31 May 2020 16:18:13 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v2 0/4] Introduce the Counter character device interface
Message-ID: <20200531161813.658ffdfb@archlinux>
In-Reply-To: <20200524175439.GA14300@shinobu>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
 <20200524172542.31ff6ac7@archlinux>
 <20200524175439.GA14300@shinobu>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_081820_235361_3E0EE0B9 
X-CRM114-Status: GOOD (  48.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 24 May 2020 13:54:39 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> On Sun, May 24, 2020 at 05:25:42PM +0100, Jonathan Cameron wrote:
> > 
> > ...
> >   
> > > The following are some questions I have about this patchset:
> > > 
> > > 1. Should the data format of the character device be configured via a
> > >    sysfs attribute?
> > > 
> > >    In this patchset, the first 196095 bytes of the character device are
> > >    dedicated as a selection area to choose which Counter components or
> > >    extensions should be exposed; the subsequent bytes are the actual
> > >    data for the Counter components and extensions that were selected.  
> > 
> > That sounds like the worst of all possible worlds.  Reality is you need
> > to do some magic library so at that point you might as well have ioctl
> > options to configure it.   I wonder if you can keep the data flow
> > to be a simple 'read' from the chardev but move the control away from
> > that.  Either control via some chrdevs but keep them to the 'set / get'
> > if this element is going to turn up in the read or not.  You rapidly
> > run into problems though, such as now to see how large a given element
> > is going to be etc.  Plus ioctls are rather messier to extend than
> > simply adding a new sysfs file.  Various subsystems do complex
> > 'descriptor' type approaches to get around this, or you could do
> > self describing records rather than raw data - like an input
> > ev_dev event.  
> 
> Yes I agree, I don't think combining nondata with data is good design --
> it's better if users are able to simply perform read/write on the
> character device without having to keep track of valid offsets and
> controls.
> 
> After giving this some more thought, I believe human-readable sysfs
> attributes are the way to go to support configuration of the character
> device. I am thinking of a system like this:
> 
> * Users configure the counter character device via a sysfs attribute
>   such as /sys/bus/counter/devices/counterX/chrdev_format or similar.
> 
> * Users may write to this sysfs attribute to select the components they
>   want to interface -- the layout can be determined as well from the
>   order. For example:
> 
>   # echo "C0 C3 C2" > /sys/bus/counter/devices/counter0/chrdev_format

I guess that 'just' meets the sysfs requirement of one file => one thing.

> 
>   This would select Counts 0, 3, and 2 (in that order) to be available
>   in the /dev/counter0 node as a contiguous memory region.
> 
>   You can select extensions in a similar fashion:
> 
>   # echo "C4E2 S1E0" > /sys/bus/counter/devices/counter0/chrdev_format
> 
>   This would select extension 2 from Count 4, and extension 0 from
>   Signal 1.

I'm not totally clear why we'd want to have a chrdev access to extensions.
To be honest I'm not totally sure what an extension is today as it's been
a week ;)

Perhaps an example?  I see timestamp below.  What is that attached to?
If we gave multiple counters, do they each have a timestamp?

> 
> * Users may read from this chrdev_format sysfs attribute in order to see
>   the currently configured format of the character device.
> 
> * Users may perform read/write operations on the /dev/counterX node
>   directly; the layout of the data is what they user has configured via
>   the chrdev_format sysfs attribute. For example:
> 
>   # echo "C0 C1 S0 S1" > /sys/bus/counter/devices/counter0/chrdev_format
> 
>   Yields the following /dev/counter0 memory layout:
> 
>   +-----------------+------------------+----------+----------+
>   | Byte 0 - Byte 7 | Byte 8 - Byte 15 | Byte 16  | Byte 17  |
>   +-----------------+------------------+----------+----------+
>   | Count 0         | Count 1          | Signal 0 | Signal 2 |
>   +-----------------+------------------+----------+----------+
> 
> * Users may perform select/poll operations on the /dev/counterX node.
>   Users can be notified if data is available or events have occurred.

One thing to think about early if watermarks.  We bolted them on
late in IIO and maybe we could have done it better from the start.
I'd almost guarantee someone will want one fairly soon - particularly
as it's more than possible you'll have a counter device with a
hardware fifo.  I have some vague recollection that ti-ecap
stuff could be presented as a short fifo for starters.

> 
> The benefit of this design is that the format is robust so users can
> choose the components they want to interface and in the layout they
> want. For example, if I am writing a userspace application to control a
> dual-axis positioning table, I can select the two counts I care about
> for the position axes. This allows me to read just those two values
> directly from /dev/counterX with a simple read() call, without having to
> fumble around seeking to an offset and parsing the layout.

I wonder if I'm over thinking things for counters, but you may run into
the complexity of different counters having different sampling frequencies.
Here you are suggesting a scheme that I think ends up closer to IIO than
input.   That makes this case a pain.   Input takes the view that it's
fine to have data coming in any order and frequency because every
record is self describing.  I'm not sure it matters here, but it is
a nice layer of flexibility, but you do loose the efficiency of
the description being external to the data flow.

> 
> Similarly, support for future extensions is simple to implement. When
> timestamp support is implemented, users can just select the desired
> timestamp extension and read it directly from the /dev/counterX node;
> they should also be able to perform a select()/poll() call to be
> notified on new timestamps.
> 
> So what do you think of this sort of design? I think there is a useful
> robustness to the simplicity of performing a single read/write call on
> /dev/counterX.

It seems like a reasonable solution to me.  The only blurry
boundary to my mind is what level of buffering is behind this.
The things you can do are open, non blocking read, blocking read and select.

If we have a counter that is sampled on demand, then 
1) Non blocking read - makes not sense, fair enough I guess, could make it
   the same as a blocking read.
2) Blocking read - reads from the sensor.
3) Select, meaningless as all reads are done on demand - so I guess you
   hardwire it to return immediately.
4) open. Nothing special

If you have a counter that is self clocking then data gets pushed into some
software structure (probably kfifo)
1) Blocking read, question of semantics to resolve
   a) Return when 'some' data is available (like a socket)
   b) Return when 'requested amount of data is available'?
2) Non blocking read. Return whatever happens to be available.
3) Select.  Semantics to be defined.
   a) Some data?
   b) Watermark based (default watermark is 0 so any data triggers it)
4) Open.  Starts up sampling of configured set - (typically turns on the
   device, enables interrupt output etc.)

So some corners to resolve but should all work.


> 
> > > 
> > >    Moving this selection to a sysfs attribute and dedicating the
> > >    character device to just data transfer might be a better design. If
> > >    such a design is chosen, should the selection attribute be
> > >    human-readable or binary?  
> > 
> > Sysfs basically requires things are more or less human readable.
> > So if you go that way I think it needs to be.
> >   
> > > 
> > > 2. How much space should allotted for strings?
> > > 
> > >    Each Counter component and extension has a respective size allotted
> > >    for its data (u8 data is allotted 1 byte, u64 data is allotted 8
> > >    bytes, etc.); I have arbitrarily chosen to allot 64 bytes for
> > >    strings. Is this an apt size, or should string data be allotted more
> > >    or less space?  
> > 
> > I'd go with that being big enough, but try to keep the expose interface
> > such that the size can change it it needs to the in the future.  
> 
> Following along with the separation of control vs data as discussed
> above, we could support a more variable size by exposing it through a
> sysfs attribute (maybe a chrdev_string_size attribute or similar).

I'm unconvinced you'd ever want to return a string via the chardev.
People are using the chrdev to get efficiency. String based data flows
are rarely that!

> 
> >   
> > > 
> > > 3. Should the owning component of an extension be handled by the device
> > >    driver or Counter subsystem?
> > > 
> > >    The Counter subsystem figures out the owner (enum counter_owner_type)
> > >    for each component/extension in the counter-sysfs and counter-chrdev
> > >    code. When a callback must be executed, there are various switch
> > >    statements throughout the code to check whether the respective
> > >    Device, Signal, or Count version of the callback should be executed;
> > >    similarly, the appropriate owner type must match for the struct
> > >    counter_data macros such as COUNTER_DATA_DEVICE_U64,
> > >    COUNTER_DATA_SIGNAL_U64, COUNTER_DATA_COUNT_U64, etc.
> > > 
> > >    All this complexity in the Counter subsystem code can be eliminated
> > >    if a single callback type with a `void *owner` parameter is defined
> > >    for use with all three owner types (Device, Signal, and Count). The
> > >    device driver would then be responsible for casting the callback
> > >    argument to the appropriate owner type; but in theory, this should
> > >    not be much of a problem since the device driver is responsible for
> > >    assigning the callbacks to the owning component anyway.  
> > 
> > Whilst its more complex for subsytem I think it's better to keep everything
> > typed if we possibly can.  Always a trade off though, so use your discretion.
> > 
> > Jonathan  
> 
> I'm going to keep it all typed for now since I don't want to make too
> many changes at once. Since this is somewhat unrelated to the purpose of
> introducing Counter character devices, I'll postpone the discussion to a
> later date after the Counter character device interface is merged.

Makes sense.

Jonathan
> 
> William Breathitt Gray
> 
> > 
> >   
> > > 
> > > William Breathitt Gray (4):
> > >   counter: Internalize sysfs interface code
> > >   docs: counter: Update to reflect sysfs internalization
> > >   counter: Add character device interface
> > >   docs: counter: Document character device interface
> > > 
> > >  Documentation/driver-api/generic-counter.rst |  275 +++-
> > >  MAINTAINERS                                  |    3 +-
> > >  drivers/counter/104-quad-8.c                 |  547 +++----
> > >  drivers/counter/Makefile                     |    1 +
> > >  drivers/counter/counter-chrdev.c             |  656 ++++++++
> > >  drivers/counter/counter-chrdev.h             |   16 +
> > >  drivers/counter/counter-core.c               |  187 +++
> > >  drivers/counter/counter-sysfs.c              |  881 +++++++++++
> > >  drivers/counter/counter-sysfs.h              |   14 +
> > >  drivers/counter/counter.c                    | 1496 ------------------
> > >  drivers/counter/ftm-quaddec.c                |   89 +-
> > >  drivers/counter/stm32-lptimer-cnt.c          |  161 +-
> > >  drivers/counter/stm32-timer-cnt.c            |  139 +-
> > >  drivers/counter/ti-eqep.c                    |  211 +--
> > >  include/linux/counter.h                      |  626 ++++----
> > >  include/linux/counter_enum.h                 |   45 -
> > >  include/uapi/linux/counter-types.h           |   45 +
> > >  17 files changed, 2826 insertions(+), 2566 deletions(-)
> > >  create mode 100644 drivers/counter/counter-chrdev.c
> > >  create mode 100644 drivers/counter/counter-chrdev.h
> > >  create mode 100644 drivers/counter/counter-core.c
> > >  create mode 100644 drivers/counter/counter-sysfs.c
> > >  create mode 100644 drivers/counter/counter-sysfs.h
> > >  delete mode 100644 drivers/counter/counter.c
> > >  delete mode 100644 include/linux/counter_enum.h
> > >  create mode 100644 include/uapi/linux/counter-types.h
> > >   
> >   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
