Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 561541C2AE3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 11:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3UOSvRd7XJKH9QBMaDmXqgJumYMDVl0hKDKYGO77gs=; b=l0/NEasn3kl8Er
	8ciVpRmmCm7gpy2mJ1JMZOP4fSj7YrKIXpJk7iNFH9hqlNKsnjasv3QpQlQNjxoyDW08TnS0M083q
	4j8lsTZo+tCExhkGARe1AU7rldFQ69K9atCKe4ezKRVvhujnIbk/9iN8FAqofty0NbKD83MRhbfQI
	ekjpUuDA5aVRDQWxqRunD1oL1MxsLio6/XsklI05vNIraWyHkEU20ufxe7w98mK35NUZtbkKygBWh
	51hagyw5g4GfN7OjWPS7QFA33hBvLTyQiWk3dvZwLNkwexMHdRdV/IF+yfmhkuaYbIbkaIfzAcQZc
	MnFExBnt58ExJQu3bRXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVAqU-0006VL-Nv; Sun, 03 May 2020 09:23:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVAqN-0006UY-Kq
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 09:23:29 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C327206A5;
 Sun,  3 May 2020 09:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588497804;
 bh=tS8rC1xwfDsH8CpezAlet6bkQanl+yMNiprBNGD6djY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2CjA7HuwF3NwkOh+hkxYDNqyBIoT+EOkEDNGLLwIzj3G7kmBXBpBu+NCb+Imya6WJ
 7yyP8+/tRWBq6z8/5kMwrXrLm0XDdrRzihGNzhofPQwwTuYJZlWNR2oxoUfRhvPZ1A
 ex2DOR/tUhRIKR5g6hfFiI5yt6O8oQTgWZTQevlw=
Date: Sun, 3 May 2020 11:23:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH 0/4] Introduce the Counter character device interface
Message-ID: <20200503092316.GA570888@kroah.com>
References: <cover.1588176662.git.vilhelm.gray@gmail.com>
 <20200430201345.GX51277@piout.net> <20200501154519.GA4581@icarus>
 <20200502175536.1e9ac944@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502175536.1e9ac944@archlinux>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_022327_721994_2789473D 
X-CRM114-Status: GOOD (  28.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 felipe.balbi@linux.intel.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, gwendal@chromium.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>, syednwaris@gmail.com,
 mcoquelin.stm32@gmail.com, patrick.havelange@essensium.com,
 fabrice.gasnier@st.com, fabien.lahoudere@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 02, 2020 at 05:55:36PM +0100, Jonathan Cameron wrote:
> On Fri, 1 May 2020 11:46:10 -0400
> William Breathitt Gray <vilhelm.gray@gmail.com> wrote:
> 
> > On Thu, Apr 30, 2020 at 10:13:45PM +0200, Alexandre Belloni wrote:
> > > Hi,
> > > 
> > > On 29/04/2020 14:11:34-0400, William Breathitt Gray wrote:  
> > > > Over the past couple years we have noticed some shortcomings with the
> > > > Counter sysfs interface. Although useful in the majority of situations,
> > > > there are certain use-cases where interacting through sysfs attributes
> > > > can become cumbersome and inefficient. A desire to support more advanced
> > > > functionality such as timestamps, multi-axis positioning tables, and
> > > > other such latency-sensitive applications, has motivated a reevaluation
> > > > of the Counter subsystem. I believe a character device interface will be
> > > > helpful for this more niche area of counter device use.
> > > > 
> > > > To quell any concerns from the offset: this patchset makes no changes to
> > > > the existing Counter sysfs userspace interface -- existing userspace
> > > > applications will continue to work with no modifications necessary. I
> > > > request that driver maintainers please test their applications to verify
> > > > that this is true, and report any discrepancies if they arise.
> > > >   
> > > 
> > > On that topic, I'm wondering why the counter subsystem uses /sys/bus
> > > instead of /sys/class that would be more natural for a class of devices.
> > > I can't see how counters would be considered busses. I think you should
> > > consider moving it over to /sys/class (even if deprecating
> > > /sys/bus/counter will be long).  
> > 
> > At the time I wasn't quite familiar with sysfs development so I was
> > following the iio sysfs code rather closely. However, I see now that
> > you're probably right: this isn't really a bus but rather a collection
> > of various types of counters -- i.e. a class of devices.
> > 
> > Perhaps I should migrate this then to /sys/class/counter. Of course, the
> > /sys/bus/counter location will have to remain for compatibility with
> > existing applications, but I think a simple symlink to the new
> > /sys/class/counter location should suffice for that.
> > 
> > If anyone sees an issue with this give me a heads up.
> To just address this point as I've not read the rest of the thread yet...
> 
> I would resist moving it.  This one is an old argument. 
> 
> Some info in https://lwn.net/Articles/645810/
> As that puts it a "bus" is better known as a "subsystem".
> 
> When we originally considered class vs bus for IIO, the view expressed
> at the times was that the whole separation of the two didn't mean anything
> and for non trivial cases bus was always preferred.  It's nothing to do
> with with whether the thing is a bus or not.  Now I suppose it's possible
> opinion has moved on this topic...    However, I'd say there
> is really 0 advantage in moving an existing subsystem even if opinion
> has changed.
> 
> +CC Greg in case he wants to add anything.

Traditionally classes are a unified way of representing data to
userspace, independant of the physical transport that the data came to
userspace on (i.e. input devices are a class, it doesn't matter if they
came on serial, USB, PS/2, or virtual busses.)

A bus is traditionally a collection of drivers that all talk on a same
physical transport, that then expose data from that transport to a
specific userspace class.  Again, think USB mice drivers, serial mice
drivers, PS/2 mice drivers.

Busses bind a driver to a device it creates based on that "bus".
Classes create virtual devices that export data to userspace for a
specific common protocol.

Does that help?

One can argue (and have properly in the past), that classes and busses
really are not all that different, and there used to be code floating
around that made them the same exact thing in the kernel, with loads of
userspace sysfs symlinks to preserve things, but those are well out of
date and I don't think anyone feels like reviving them.  However I think
systemd might still have code in it to work properly if that ever
happens, haven't looked in a few years...

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
