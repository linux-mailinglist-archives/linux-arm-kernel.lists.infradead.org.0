Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABCE1C2D38
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 17:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMpRBg0kJSx7movhtoOaFL5TukxVZ8cPjVPVuxwGaYg=; b=J4mNbqMQtl3SOp
	HK3zMjJR8W94XdO8hHXkFG8UpNOZf7obsbyHrlcAdL9LPqk1SRtylYOdYRfbzLHavrqJIPlpz48d3
	wk11Qw8+FmtSqOT7vgXseKv6crMfHP5AF9KZgjGiucJ27hVHRx+nqGdMqlR4lGe88KizEhxviUCub
	NzLkn+6vfKdhCPCb+g8vzPy37tOEDIoXey+BM95LGPdPysYfHn3tQhC7buiAIaRGUe9TUUkRm9Bk/
	5aX8Pdx7vL3eFB8E1UgwhRMWPOc+zphr4xzMD8G2XpzjelhKNzpT1pZ3QyOIS6C4u6VIfSAa/k5Zy
	HyHsPZ6DNXunh+7IxCfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGBx-0005Wy-K1; Sun, 03 May 2020 15:06:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGBq-0005WN-N1
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 15:06:00 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEA4E205C9;
 Sun,  3 May 2020 15:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588518358;
 bh=U46rvfOuCR6wuzfSXdF1O1HT2BtfPvjN87TVZ2VG8QI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JvyCFCzSgu+w0KIjd/g45CSgx7651ThPJQ1J4TyIfDjboevolLKli2nOSl4iDqNMy
 /UMekt/iWBrT/pASJAA9XOqiJ5NAwACd+qL4L3FFLk4dVo1gZbwwQhdIWKGJGgHct6
 n481JeLQp4+PFWCSuFxINcLgJCnEJjz7pY0gY4ic=
Date: Sun, 3 May 2020 16:05:52 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH 0/4] Introduce the Counter character device interface
Message-ID: <20200503160552.7b45a0ac@archlinux>
In-Reply-To: <20200501154519.GA4581@icarus>
References: <cover.1588176662.git.vilhelm.gray@gmail.com>
 <20200430201345.GX51277@piout.net> <20200501154519.GA4581@icarus>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_080558_789630_34F3585B 
X-CRM114-Status: GOOD (  37.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kamel.bouhara@bootlin.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, david@lechnology.com,
 felipe.balbi@linux.intel.com, linux-iio@vger.kernel.org, syednwaris@gmail.com,
 gwendal@chromium.org, linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 patrick.havelange@essensium.com, fabrice.gasnier@st.com,
 fabien.lahoudere@collabora.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 1 May 2020 11:46:10 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> On Thu, Apr 30, 2020 at 10:13:45PM +0200, Alexandre Belloni wrote:
> > Hi,
> > 
> > On 29/04/2020 14:11:34-0400, William Breathitt Gray wrote:  
> > > Over the past couple years we have noticed some shortcomings with the
> > > Counter sysfs interface. Although useful in the majority of situations,
> > > there are certain use-cases where interacting through sysfs attributes
> > > can become cumbersome and inefficient. A desire to support more advanced
> > > functionality such as timestamps, multi-axis positioning tables, and
> > > other such latency-sensitive applications, has motivated a reevaluation
> > > of the Counter subsystem. I believe a character device interface will be
> > > helpful for this more niche area of counter device use.
> > > 
> > > To quell any concerns from the offset: this patchset makes no changes to
> > > the existing Counter sysfs userspace interface -- existing userspace
> > > applications will continue to work with no modifications necessary. I
> > > request that driver maintainers please test their applications to verify
> > > that this is true, and report any discrepancies if they arise.
> > >   
> > 
> > On that topic, I'm wondering why the counter subsystem uses /sys/bus
> > instead of /sys/class that would be more natural for a class of devices.
> > I can't see how counters would be considered busses. I think you should
> > consider moving it over to /sys/class (even if deprecating
> > /sys/bus/counter will be long).  
> 
> At the time I wasn't quite familiar with sysfs development so I was
> following the iio sysfs code rather closely. However, I see now that
> you're probably right: this isn't really a bus but rather a collection
> of various types of counters -- i.e. a class of devices.
> 
> Perhaps I should migrate this then to /sys/class/counter. Of course, the
> /sys/bus/counter location will have to remain for compatibility with
> existing applications, but I think a simple symlink to the new
> /sys/class/counter location should suffice for that.
> 
> If anyone sees an issue with this give me a heads up.
> 
> > > Interaction with Counter character devices occurs via ioctl commands.
> > > This allows userspace applications to access and set counter data using
> > > native C datatypes rather than working through string translations.
> > >   
> > 
> > I agree with David that you should consider using read to retrieve the
> > counter data as this will simplify interrupt handling/polling and
> > blocking/non-blocking reads can be used by an application. ABI wise,
> > this can also be a good move as you could always consider having an
> > ioctl requesting a specific format when reading the device so you are
> > not stuck with the initial format you are going to choose.  
> 
> My hesitation to implement support for read/write calls is due to a
> concern that we will end up with various incompatible formats between
> counter drivers (thus requiring users to have intimate knowledge of the
> drivers and therefore defeating the purpose of a subsystem). However, if
> we can standardize on a format that is flexible enough to work for all
> counter drivers, then read/write calls should not be a problem.

Absolutely.  So the different approaches that have been taken to this
approach...

1) IIO, describe the format in sysfs.  Highest performance option but
   heavily constrained in what the data flow can be. Was it a good idea?
   I think the jury is still out on that after 11 or more years :)

2) Input (evdev) - fixed length self describing records. High overhead,
   inflexible format, but just fine for the fairly sensible sorts of things
   that make up human input.

   https://elixir.bootlin.com/linux/latest/source/include/uapi/linux/input.h#L28

> 
> I think a general format could be possible. For example, the counter
> character device can return a standard header data at the start which
> provides general information about the counter device: number of
> counters, number or signals, number of extensions, etc. From this
> information, offsets can be computed (or perhaps provided by the device)
> to where the binary data for the count, extension, etc., can be read or
> written. Interrupts can then be handled as blocking reads, as could
> other types of events we implement.
> 
> Would something like this work well?

It's kind of somewhere between IIO and Input.  Firstly think about what
you might want to actually have out.  Mostly I'm thinking timestamp + count
value from devices that self clock.  Perhaps additional flag to indicate
a preset has been hit.

Variable length records are a pain. Reality is neither IIO* nor input
actually uses them (*once running :) ).  Fixed length lets you push it
through a kfifo to deal with userspace being slow to read it.

So I'd think about doing it the input way and using multiple records
for multiple counters.  Timestamp can be used to work out they were at the
same instant (or various other options such as an 'end' flag).

More fun occurs if you want to start controlling 'triggers' etc as that
leads to an explosion of the control interface that we still haven't gotten
fully sorted in IIO.

Good luck :)

Jonathan

> 
> William Breathitt Gray
> 
> > > 2. Should device driver callbacks return int or long? I sometimes see
> > >    error values returned as long (e.g. PTR_ERR(), the file_operations
> > >    structure's ioctl callbacks, etc.); when is it necessary to return
> > >    long as opposed to int?
> > >   
> > 
> > You should use a long if you ever have to return a point as it is
> > guaranteed to have the correct size. Else, just stick to an int if you
> > are not going to overflow it.
> >   
> > > 3. I only implemented the unlocked_ioctl callback. Should I implement a
> > >    compat_ioctl callback as well?
> > >   
> > 
> > The compat_ioctl is to handle 32bit userspace running on a 64bit kernel.
> > If your structures have the same size in both cases, then you don't have
> > to implement compat_ioctl.
> > 
> > Have a look at Documentation/driver-api/ioctl.rst
> > 
> > 
> > -- 
> > Alexandre Belloni, Bootlin
> > Embedded Linux and Kernel engineering
> > https://bootlin.com  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
