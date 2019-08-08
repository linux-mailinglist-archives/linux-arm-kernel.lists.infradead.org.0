Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DB885D95
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWtQXbQtLrYvT0bvI1bmYiYYup5PpofQVOIkW+4StYM=; b=j7bXGKYBroWKfg
	xEutSa1xQO252Wc7Gxe5i6gV9YLjG21dd47A2AToyNqYIuWV/vN6SUSg3sbwD6lO7DCKZ0OUB2Nlo
	mPix+KfK4p8JZOkkyC8Nu2tJ1zI4YDj9xNy3bmf3R2hSikPcNvLZ5rve73l0fjw8tLip2DLNxrTjR
	vlGMef1MD+NCWxIBjzwActXfO7vkkG+s0BLqpzFYNT3vxVxMYek/b4AfRxYqXcM9WCVtMwB4Gr4eG
	As1Lh6yNaZ/XYhMDUr7fgMBbpjTtJ8J7sOjx0US+bmJ7pHYvVgcywxjj/yo5NJrPAV2hFqkTF3T8C
	AYSHkq/a5pQiixvCQTMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveFf-0005Uo-Nx; Thu, 08 Aug 2019 08:58:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveFS-0005U3-LS
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:58:16 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E4B32173E;
 Thu,  8 Aug 2019 08:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565254694;
 bh=fcwXAYDxxRn29/bImSYKF4Y8ajRF8uXYdTgTTWnCNdk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P6H1ec8S/Leoca5dbH/ZQ9SFsFjz++W0AnUqBnOYmTx56gFYKJ+C1qd87uzvr6UTy
 +kVwaSEsiyjLiUtSdIVaqpjjVS3EamuJDGz0f/D3dhzVifokp3LL2CWxIFptAyzsxi
 56uRdlQBgyJADBBccKvn53VLGRZI7tl1CIr0bWHY=
Date: Thu, 8 Aug 2019 10:58:11 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: yvahkhfo.1df7f8c2@hashmail.org
Subject: Re: usb zero copy dma handling
Message-ID: <20190808085811.GA1265@kroah.com>
References: <20190808084636.GB15080@priv-mua.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808084636.GB15080@priv-mua.localdomain>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_015814_739520_369846A8 
X-CRM114-Status: GOOD (  23.42  )
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
Cc: security@kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 10:46:36AM +0200, yvahkhfo.1df7f8c2@hashmail.org wrote:
> Hello linux-usb and linux-arm.
> 
> Ccing security@ because "the kernel dma code is mapping randomish
> kernel/user mem to a user process" seems to have security implications
> even though i didnt research that aspect past "its a 100% reliable way
> to crash a raspi from userspace". 
> 
> tried submitting this through linux-arm-kernel ~2 weeks ago but
> the only "response" i got was phishing-spam.
> tried to follow up through raspi-internals chat, they suggested
> i try linux-usb instead, but otoh the original reporter was
> deflected from -usb to "try some other mls, they might care".
> https://www.spinics.net/lists/linux-usb/msg173277.html
> 
> if i am not following some arcane ritual or indenting convention required 
> by regular users of these lists i apologize in advance, but i am not a 
> kernel developer, i am just here as a user with a bug and a patch. 
> (and the vger FAQ link 404s...) 

The "arcane ritual" should be really well documented by now, it's in
Documentation/SubmittingPatches in your kernel tree, and you can read it
online at:
	https://www.kernel.org/doc/html/latest/process/submitting-patches.html


> i rediffed against HEAD even though the two weeks old patch still applied
> cleanly with +2 offset.
> 
> # stepping off soap box # actual technical content starts here #
> 
> this is a followup to that thread from 2018-11:
> https://www.spinics.net/lists/arm-kernel/msg685598.html
> 
> the issue was discussed in more detail than i can claim
> to fully understand back then, but no fix ever merged.
> but i would really like to use rtl_433 on a raspi without
> having to build a custom-patched kernel first.
> 
> the attached patch is my stripdown/cleanup of a devel-diff
> provided to me by the original reporter Steve Markgraf.
> credits to him for the good parts, blame to me for the bad parts.
> 
> this does not cover the additional case of "PIO-based usb controllers"
> mainly because i dont understand what that means (or how to handle it)
> and if its broken right now (as the thread indicates) it might
> as well stay broken until someone who understands cares enough.
> 
> could you please get this on track for merging?


> 
> regards,
>   x23
> 
> 
> 

> diff --git a/drivers/usb/core/devio.c b/drivers/usb/core/devio.c
> index b265ab5405f9..69594c2169ea 100644
> --- a/drivers/usb/core/devio.c
> +++ b/drivers/usb/core/devio.c
> @@ -238,9 +238,14 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
>  	usbm->vma_use_count = 1;
>  	INIT_LIST_HEAD(&usbm->memlist);
>  
> +#ifdef CONFIG_X86
>  	if (remap_pfn_range(vma, vma->vm_start,
>  			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
>  			size, vma->vm_page_prot) < 0) {
> +#else /* !CONFIG_X86 */
> +	if (dma_mmap_coherent(ps->dev->bus->sysdev, 
> +			vma, mem, dma_handle, size) < 0) {
> +#endif /* !CONFIG_X86 */
>  		dec_usb_memory_use_count(usbm, &usbm->vma_use_count);
>  		return -EAGAIN;
>  	}

First off, we need this in a format we could apply it in (hint, read the
above links).

But the main issue here is what exactly is this "fixing"?  What is wrong
with the existing code that non-x86 systems have such a problem with?
Shouldn't all of these dma issues be handled by the platform with the
remap_pfn_range() call itself?

What is the problem that you are having?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
