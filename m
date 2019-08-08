Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845C7866C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LB+OvoLWq9R/GWidMe6JvXqvWYufZGX6GnoteZRF540=; b=Kwlo4BPEteFHA+
	Qd3oFxC7nopA/2qmuxDYZ+DRhGQR61kw6m1oYvZPSVz7WtdmnNqaNkaH/c48HmOSC7jjhR/MPi3FO
	sAbwpCFY/Y3opHi7LjhCs4/yZzj6bviXal8Csk+6Z/v2lN9CxAGGJYavFtLMsSbLw4gfOEsfOf6d/
	q1yfV4LwgfJD5VXm37OHov6UUBBFst42VAO+SzVsoMJZ+srrvqcrNRJ2lnorGx42ZMdCGIDw1zwbv
	NpvhGschu/BXhxNol6vIpgYKbJ+G3w3yJKHj8dEhtd3RQTuLSfKtMs7nVz6STAQLIHSU7BWEDzj5W
	Vrs+ktyrnco196AMJeSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvl2U-0005Dp-Oh; Thu, 08 Aug 2019 16:13:19 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvl1m-0004dy-Rf; Thu, 08 Aug 2019 16:12:34 +0000
Date: Thu, 8 Aug 2019 09:12:34 -0700
From: Christoph Hellwig <hch@infradead.org>
To: yvahkhfo.1df7f8c2@hashmail.org
Subject: Re: usb zero copy dma handling
Message-ID: <20190808161234.GB8470@infradead.org>
References: <20190808084636.GB15080@priv-mua.localdomain>
 <20190808161015.GA8470@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808161015.GA8470@infradead.org>
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

On Thu, Aug 08, 2019 at 09:10:15AM -0700, Christoph Hellwig wrote:
> On Thu, Aug 08, 2019 at 10:46:36AM +0200, yvahkhfo.1df7f8c2@hashmail.org wrote:
> > --- a/drivers/usb/core/devio.c
> > +++ b/drivers/usb/core/devio.c
> > @@ -238,9 +238,14 @@ static int usbdev_mmap(struct file *file, struct vm_area_struct *vma)
> >  	usbm->vma_use_count = 1;
> >  	INIT_LIST_HEAD(&usbm->memlist);
> >  
> > +#ifdef CONFIG_X86
> >  	if (remap_pfn_range(vma, vma->vm_start,
> >  			virt_to_phys(usbm->mem) >> PAGE_SHIFT,
> >  			size, vma->vm_page_prot) < 0) {
> > +#else /* !CONFIG_X86 */
> > +	if (dma_mmap_coherent(ps->dev->bus->sysdev, 
> > +			vma, mem, dma_handle, size) < 0) {
> > +#endif /* !CONFIG_X86 */
> 
> Doing the dma_mmap_coherent unconditionally is the right thing here.
> Gavin who is on Cc has been looking into that.

Ok, tht is assuming it always is dma_alloc_* memory which apparently
it isn't.  But the arch ifdef for sure is wrong.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
