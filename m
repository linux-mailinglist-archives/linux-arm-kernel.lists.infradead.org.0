Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 810D31C3367
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 09:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPnMLAMvflNXG4f2C2pDJWCWpV/qBsi8wXkOYMWsg7U=; b=eo3osV2Aebrfq8
	OWUSQq02td5GAEW5N8Cn9tZalftUeYxr8DPTgHgCpFuQAhfDZ+TkahP8IHxaXEa70Ochqm3eW2qDg
	vIbFxdYBbE+ulutWgZ7qw93jqJ2JDSi7G1MFrIPfR/qpstkiWnWKVrtVmpRLDNCt016SbCyAR0kAY
	ycceMg9qKUDTJuVOcwWG58czTVEz1MZRpgTAXBAPsyyQhrXVgyxobKPpm+OqPJOGAjjD1boTdOtk4
	/u/MnGQM+QKk8dr/V/AM+ksUMGbQ7IJHhkFkbwm1b3TC01C8SYbALCQKS+1r8m07bINhLXYcrs1dZ
	mfENZ/jA9gIfpKo3pFIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVVHz-0002y3-Js; Mon, 04 May 2020 07:13:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVHr-0002xJ-8T
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 07:13:12 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1CA5420757;
 Mon,  4 May 2020 07:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588576390;
 bh=XfFhhStBycJzV0puy65G2AGQGcJw71aLuImYtkVyKy0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PN6OVx5JB5/9SQpEja8hYrfZezsED5+zQGTFoXQ1/Tyk+8+nqB/XuGG0UuKkQweP+
 FVlGCGy6RsuefwhtdM25LkXiPLAWeD78PCEqUKTZLBzzLkp84ji3V3DmIXA18j3RnO
 VnbSPAV01ET9XxFSbqCTDJ+NdEbt/8NTdzh/ly9s=
Date: Mon, 4 May 2020 09:13:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH] usb: usbfs: correct kernel->user page attribute mismatch
Message-ID: <20200504071306.GA831956@kroah.com>
References: <20200430211922.929165-1-jeremy.linton@arm.com>
 <20200501070500.GA887524@kroah.com>
 <d2d4f50e-a0bf-77c8-399b-86c2137bfa84@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2d4f50e-a0bf-77c8-399b-86c2137bfa84@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_001311_338182_1F95CEF9 
X-CRM114-Status: GOOD (  39.26  )
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
Cc: git@thegavinli.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 jarkko.sakkinen@linux.intel.com, stern@rowland.harvard.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 10:47:22AM -0500, Jeremy Linton wrote:
> Hi,
> 
> Thanks for taking a look at this.
> 
> On 5/1/20 2:05 AM, Greg KH wrote:
> > On Thu, Apr 30, 2020 at 04:19:22PM -0500, Jeremy Linton wrote:
> > > On arm64, and possibly other architectures, requesting
> > > IO coherent memory may return Normal-NC if the underlying
> > > hardware isn't coherent. If these pages are then
> > > remapped into userspace as Normal, that defeats the
> > > purpose of getting Normal-NC, as well as resulting in
> > > mappings with differing cache attributes.
> > 
> > What is "Normal-NC"?
> 
> A non-cacheable attribute on arm64 pages. I think Mark R & Marc Z elaborated
> while I was asleep (thanks!).
>   .
> 
> 
> > 
> > > In particular this happens with libusb, when it attempts
> > > to create zero-copy buffers as is used by rtl-sdr, and
> > 
> > What is "rtl-sdr"
> 
> Its the realtek software defined radio (SDR), a really inexpensive TV dongle
> that was discovered could be used as a general purpose SDR a decade or so
> ago. In particular, this project
> https://github.com/osmocom/rtl-sdr/
> which is packaged by fedora/etc.
> 
> > 
> > > maybe other applications. The result is usually
> > > application death.
> > 
> > So is this a new problem?  Old problem?  Old problem only showing up on
> > future devices?  On current devices?  I need a hint here as to know if
> > this is a bugfix or just work to make future devices work properly.
> 
> This has been a problem on arm devices without IO coherent USB apparently
> for years. The rtl-sdr project itself has a disable zero-copy mode that
> people have been using on rpi/etc specific builds. Fedora OTOH, is building
> it with the same flags on x86 & arm64 which means that people report
> problems. This happened a few days ago (on a pinebook), and I duplicated it
> on an NXP platform just running the `rtl_test` artifact with a nooelec from
> my junk box. Guessing that it was a page mismatch I went looking for that,
> rather than disabling the zero copy since punishing arm machine that have IO
> coherent USB adapters for the sins of these low end devices isn't ideal. I
> found this, and this patch allows the rtl_test app to run without issues on
> my NXP/solidrun.
> 
> Plus, given that its actually a kernel/libusb problem its likely there are
> other applications having similar problems.
> 
> > 
> > > 
> > > If dma_mmap_attr() is used instead of remap_pfn_range,
> > > the page cache/etc attributes can be matched between the
> > > kernel and userspace.
> > > 
> > > Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> > > ---
> > >   drivers/usb/core/devio.c | 5 ++---
> > >   1 file changed, 2 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
> > > index 6833c918abce..1e7458dd6e5d 100644
> > > --- a/drivers/usb/core/devio.c
> > > +++ b/drivers/usb/core/devio.c
> > > @@ -217,6 +217,7 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
> > >   {
> > >   	struct usb_memory *usbm = NULL;
> > >   	struct usb_dev_state *ps = file->private_data;
> > > +	struct usb_hcd *hcd = bus_to_hcd(ps->dev->bus);
> > >   	size_t size = vma->vm_end - vma->vm_start;
> > >   	void *mem;
> > >   	unsigned long flags;
> > > @@ -250,9 +251,7 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
> > >   	usbm->vma_use_count = 1;
> > >   	INIT_LIST_HEAD(&usbm->memlist);
> > > -	if (remap_pfn_range(vma, vma->vm_start,
> > > -			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
> > > -			size, vma->vm_page_prot) < 0) {
> > > +	if (dma_mmap_attrs(hcd->self.sysdev, vma, mem, dma_handle, size, 0)) {
> > 
> > Given that this code has not changed since 2016, how has no one noticed
> > this issue before?
> They have there are a lot of reports of sdr failures, but the general use
> case is rare?
> 
> > 
> > And have you tested this change out on other systems (i.e. x86) to
> > ensure that this still works properly?
> 
> Yes and no, I did some basic libusb tests on an x86 machine, but its a bit
> tricky at the moment for me to get the rtl plugged into a x86 test machine.
> (its a work in progress).
> 
> 
> > 
> > And why isn't this call used more by drivers if this is a real issue?
> The particulars of asking for iocoherent memory and then mapping it to
> userspace is rarer than just asking for kmalloc()/remap() and then
> performing the dma ops?
> 
> Then there are all the softer issues around arm64 testing/availability and
> vendors carrying "fixes" for particular issues (like rtl-sdr disabling zero
> copy).
> 
> > And will this cause issues with how the userspace mapping is handled as
> > now we rely on userspace to do things differently?  Or am I reading the
> > dma_mmap_attrs() documentation wrong?
> I don't think userspace is doing anything differently here, and AFAIK, on
> systems with IO coherent adapters this ends up with the same page mapping as
> just doing the remap_pfn_rage() with the same attributes as before. I've
> looked at dma_map_attrs() a bit, but i'm also trusting it does what it says
> on the tin.
> 
> 
> Thanks again for looking at this.

Ok, can I get a lot better written changelog text for this patch based
on this thread, so that it makes more sense when we merge this patch?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
