Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE31F1C0E6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 09:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neSZv8B+cuhcTWobMTNnoHkt85C3WKpeOkfJnkHOGqU=; b=loAm80ycl0OM4N
	a9pkSHFeFhmRZJyFPsDEoQwnFR8R7JiyCj+OoqVWxBHaamYJeHxnWiLhuJt/ANlmJgykilrpC/dB5
	zf4A5RHwpv4VTZIZYcamgzbRN1WTZ1obHR59gOBYWrPm6dVNmK0J3752qPBRUMzkLA/r89KYVpVSN
	vxoOZxzeDocIlWIxjJ0Mvr863WbENvPlSstqHxSK+izodGO4t9Iw+dNCI9W5d/COYPIf23PsbHwPu
	3WJOIpFt7GjTSc2/fEv8jj++GZM806FvsN/Kd/bMI5Os80N2/V35Auw1zxAcG9co3Sv6oNlCAax03
	d2cJ6IJVpx3ip0njsoVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUPjY-00082Y-Eb; Fri, 01 May 2020 07:05:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUPjM-0006hM-Dg
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 07:05:05 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3458D20787;
 Fri,  1 May 2020 07:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588316702;
 bh=+XNsx/y7wpr3wXy4+AywlP59DpP+Q7EqeGtvYes8QWk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0HQDrcctKw6flmvjHVvIBWYkP25DJeJXiS0x+RkzSggT6XtcSFNPt0PjIwM6NmBw/
 72L/lTCOQWWxEHvoGp22DQ8IKTCVHcygWsxqpJ27+br65wjoP68yqHNdzdTK1U9A9q
 M9FwRrSn1Fj5fEpdJakqcJP0gm2B+VZrgkXud5dk=
Date: Fri, 1 May 2020 09:05:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH] usb: usbfs: correct kernel->user page attribute mismatch
Message-ID: <20200501070500.GA887524@kroah.com>
References: <20200430211922.929165-1-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430211922.929165-1-jeremy.linton@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_000504_501777_0D65FDD8 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, Apr 30, 2020 at 04:19:22PM -0500, Jeremy Linton wrote:
> On arm64, and possibly other architectures, requesting
> IO coherent memory may return Normal-NC if the underlying
> hardware isn't coherent. If these pages are then
> remapped into userspace as Normal, that defeats the
> purpose of getting Normal-NC, as well as resulting in
> mappings with differing cache attributes.

What is "Normal-NC"?

> In particular this happens with libusb, when it attempts
> to create zero-copy buffers as is used by rtl-sdr, and

What is "rtl-sdr"

> maybe other applications. The result is usually
> application death.

So is this a new problem?  Old problem?  Old problem only showing up on
future devices?  On current devices?  I need a hint here as to know if
this is a bugfix or just work to make future devices work properly.

> 
> If dma_mmap_attr() is used instead of remap_pfn_range,
> the page cache/etc attributes can be matched between the
> kernel and userspace.
> 
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> ---
>  drivers/usb/core/devio.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
> index 6833c918abce..1e7458dd6e5d 100644
> --- a/drivers/usb/core/devio.c
> +++ b/drivers/usb/core/devio.c
> @@ -217,6 +217,7 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
>  {
>  	struct usb_memory *usbm = NULL;
>  	struct usb_dev_state *ps = file->private_data;
> +	struct usb_hcd *hcd = bus_to_hcd(ps->dev->bus);
>  	size_t size = vma->vm_end - vma->vm_start;
>  	void *mem;
>  	unsigned long flags;
> @@ -250,9 +251,7 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
>  	usbm->vma_use_count = 1;
>  	INIT_LIST_HEAD(&usbm->memlist);
>  
> -	if (remap_pfn_range(vma, vma->vm_start,
> -			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
> -			size, vma->vm_page_prot) < 0) {
> +	if (dma_mmap_attrs(hcd->self.sysdev, vma, mem, dma_handle, size, 0)) {

Given that this code has not changed since 2016, how has no one noticed
this issue before?

And have you tested this change out on other systems (i.e. x86) to
ensure that this still works properly?

And why isn't this call used more by drivers if this is a real issue?
And will this cause issues with how the userspace mapping is handled as
now we rely on userspace to do things differently?  Or am I reading the
dma_mmap_attrs() documentation wrong?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
