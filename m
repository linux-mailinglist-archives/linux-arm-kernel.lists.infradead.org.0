Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2309866B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8S9F+fflslJkSoPamewaTvKtdMKj8S22NqiwP/yx4Js=; b=mbDzANDiaJNO5i
	Mh9YLI1SKBDxwarMzarImL8IUGUonJ2yT/OOh3Y2w65wk+1RXQh0LFJnAGpFugLQNp833DI2rpcr+
	2qJNoNJGrvHtx+KNG9jRP+8b1dEK+4ATR57tkETIzUeFcCdA2rB/0CziNllaheL4IXQfSUA01mmys
	tr3e0HdwNhGhjK6S+GuH7zpfRaYAqKpeX56h1r2zCX4YZPpUBFsMeteAYINIWVBeBgFsmksX8SV5m
	6ipw8+yNcW2Q4Lhy+iEcd+1ufjz5No3+qcJXARLEmlgg8lCdJidlXgy3T5MBAa05L4H0lcRTjqVlM
	OsgpWlMqcN6qMwE0fhvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkzg-0003h8-Al; Thu, 08 Aug 2019 16:10:24 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvkzX-0003eq-O4; Thu, 08 Aug 2019 16:10:15 +0000
Date: Thu, 8 Aug 2019 09:10:15 -0700
From: Christoph Hellwig <hch@infradead.org>
To: yvahkhfo.1df7f8c2@hashmail.org
Subject: Re: usb zero copy dma handling
Message-ID: <20190808161015.GA8470@infradead.org>
References: <20190808084636.GB15080@priv-mua.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808084636.GB15080@priv-mua.localdomain>
User-Agent: Mutt/1.11.4 (2019-03-13)
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

Doing the dma_mmap_coherent unconditionally is the right thing here.
Gavin who is on Cc has been looking into that.

Note that you'll also need this patch which I'm going to send to Linus
this week before it properly works on x86:

http://git.infradead.org/users/hch/dma-mapping.git/commitdiff/197b3e665b82c6027be5c68a143233df7ce5224f

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
