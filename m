Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A7085F39
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yy0twPKodd5O996Bil+Wnu0hnc56bmMZb3fV9ym1lHs=; b=miwOPdZwiNmnsN
	FjC7mou3AwMPGqcnxeiJ7hJ0X7wzFYmtLA/hclCob1+0zzbDZ+Mn+icPRNv0GY5CgFwRvvsThP6yd
	oKZtvT1sXIBztUUpLP79E2bRyOt1zBNGca+2OERrLICEJ9jzC+oEMXD1/tz2zXxrVbj/hHt5KGEcv
	Z7yy+k0hGRwdueXUDSQzu3ujlErV9nuhwGHCgDL5PogPO+6/vV0kco0wdLiWyHjjhn/kgo3L3oSTZ
	dWXZgKmu1US2N7Mep4eMtzN49d18jLZ6g5JxdZcznuE4Xq+1UbmCewo7vdXfH2HFOHMFJlyNOj9wK
	j67FXLQBTUU9Mc9hwVqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfKk-0001QC-3c; Thu, 08 Aug 2019 10:07:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfKX-0001Ph-3D
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:07:34 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E570020880;
 Thu,  8 Aug 2019 10:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565258848;
 bh=75WS+YPRciWGzXqWYWing0U09dGOHGfPHZTrp2FldrQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TBTjJSf2qxhGQ8uS10+/iEN0clSm6TS+Fy9YtSpRBzma6s0pWUIA+5KqCPxHoq+q2
 cEYT7oQGvY5LDSAChNubMyhBQ4r3VdqxLHh70v//zE6QaNZcNf4x2zyjAYq958Qm5C
 ZQaGnRo4cTIEPeEnMXjqwSBGUM/K+4c0fLrjHpuU=
Date: Thu, 8 Aug 2019 12:07:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: usb zero copy dma handling
Message-ID: <20190808100726.GB23844@kroah.com>
References: <20190808084636.GB15080@priv-mua.localdomain>
 <20190808085811.GA1265@kroah.com>
 <10bcb28b-e87b-7b16-97e3-88e727e76d25@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10bcb28b-e87b-7b16-97e3-88e727e76d25@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_030733_182412_0456162D 
X-CRM114-Status: GOOD (  32.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: yvahkhfo.1df7f8c2@hashmail.org, linux-usb@vger.kernel.org,
 security@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 10:46:24AM +0100, Robin Murphy wrote:
> On 2019-08-08 9:58 am, Greg KH wrote:
> > On Thu, Aug 08, 2019 at 10:46:36AM +0200, yvahkhfo.1df7f8c2@hashmail.org wrote:
> > > Hello linux-usb and linux-arm.
> > > 
> > > Ccing security@ because "the kernel dma code is mapping randomish
> > > kernel/user mem to a user process" seems to have security implications
> > > even though i didnt research that aspect past "its a 100% reliable way
> > > to crash a raspi from userspace".
> > > 
> > > tried submitting this through linux-arm-kernel ~2 weeks ago but
> > > the only "response" i got was phishing-spam.
> > > tried to follow up through raspi-internals chat, they suggested
> > > i try linux-usb instead, but otoh the original reporter was
> > > deflected from -usb to "try some other mls, they might care".
> > > https://www.spinics.net/lists/linux-usb/msg173277.html
> > > 
> > > if i am not following some arcane ritual or indenting convention required
> > > by regular users of these lists i apologize in advance, but i am not a
> > > kernel developer, i am just here as a user with a bug and a patch.
> > > (and the vger FAQ link 404s...)
> > 
> > The "arcane ritual" should be really well documented by now, it's in
> > Documentation/SubmittingPatches in your kernel tree, and you can read it
> > online at:
> > 	https://www.kernel.org/doc/html/latest/process/submitting-patches.html
> > 
> > 
> > > i rediffed against HEAD even though the two weeks old patch still applied
> > > cleanly with +2 offset.
> > > 
> > > # stepping off soap box # actual technical content starts here #
> > > 
> > > this is a followup to that thread from 2018-11:
> > > https://www.spinics.net/lists/arm-kernel/msg685598.html
> > > 
> > > the issue was discussed in more detail than i can claim
> > > to fully understand back then, but no fix ever merged.
> > > but i would really like to use rtl_433 on a raspi without
> > > having to build a custom-patched kernel first.
> > > 
> > > the attached patch is my stripdown/cleanup of a devel-diff
> > > provided to me by the original reporter Steve Markgraf.
> > > credits to him for the good parts, blame to me for the bad parts.
> > > 
> > > this does not cover the additional case of "PIO-based usb controllers"
> > > mainly because i dont understand what that means (or how to handle it)
> > > and if its broken right now (as the thread indicates) it might
> > > as well stay broken until someone who understands cares enough.
> > > 
> > > could you please get this on track for merging?
> > 
> > 
> > > 
> > > regards,
> > >    x23
> > > 
> > > 
> > > 
> > 
> > > diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
> > > index b265ab5405f9..69594c2169ea 100644
> > > --- a/drivers/usb/core/devio.c
> > > +++ b/drivers/usb/core/devio.c
> > > @@ -238,9 +238,14 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
> > >   	usbm->vma_use_count = 1;
> > >   	INIT_LIST_HEAD(&usbm->memlist);
> > > +#ifdef CONFIG_X86
> > >   	if (remap_pfn_range(vma, vma->vm_start,
> > >   			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
> > >   			size, vma->vm_page_prot) < 0) {
> > > +#else /* !CONFIG_X86 */
> > > +	if (dma_mmap_coherent(ps->dev->bus->sysdev,
> > > +			vma, mem, dma_handle, size) < 0) {
> > > +#endif /* !CONFIG_X86 */
> > >   		dec_usb_memory_use_count(usbm, &usbm->vma_use_count);
> > >   		return -EAGAIN;
> > >   	}
> > 
> > First off, we need this in a format we could apply it in (hint, read the
> > above links).
> > 
> > But the main issue here is what exactly is this "fixing"?  What is wrong
> > with the existing code that non-x86 systems have such a problem with?
> > Shouldn't all of these dma issues be handled by the platform with the
> > remap_pfn_range() call itself?
> 
> If usbm->mem is (or ever can be) a CPU address returned by
> dma_alloc_coherent(), then doing virt_to_phys() on it is bogus and may yield
> a nonsense 'PFN' to begin with. However, it it can can ever come from a
> regular page allocation/kmalloc/vmalloc then unconditionally passing it to
> dma_mmap_coherent wouldn't be right either.

usbm->mem comes from a call to usb_alloc_coherent() which calls
hcd_buffer_alloc() which tries to allocate memory in the best possible
way for that specific host controller.  If the host controller has a
pool of memory, it uses that, if the host controller has PIO it uses
kmalloc(), if there are some "pools" of host controller memory it uses
dma_pool_alloc() and as a total last resort, calls dma_alloc_coherent().

So yes, this could happen.

So how to fix this properly?  What host controller driver is being used
here that ends up defaulting to dma_alloc_coherent()?  Shouldn't that be
fixed up no matter what?

And then, if what you say is correct then a real fix for devio.c could
be made, but that is NOT going to just depend on the arch the system is
running on, as all of this depends on the host controller being accessed
at that moment for that device.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
