Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABFC7ABF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZtsR9hB8t+FqDbKUijaxvkg9T8UZ63a8v8Pa6B1nsU=; b=M4BLUVsG12DGOC
	Zm3RdMLWJmv4g7oXQgMrGM6pjodYKuB6DC41FCZ8mcmacFk5/b9Ooe37umn4Z28lb+qY4j3JhfDDG
	gPK+RJGr0Ww8lKHTZIj+l5HglUASanUjae+OQXoh/WPG2QPpTpoyApSaMy+GN1f2hUqC+KSQPxoHv
	IDabuknnEISP+iF+Uk3TAbw0acrlagAdnSpS5VsVKMefPbjmrkvPBe1YWTzA0TJvtCmb7a+bCQmQd
	IdBu3Znf1qe68T1njTjX2w3KoUGEXEcvDbPqbWM88RO68RWGjPI6Qc9/+GTRYteEcGe9NDKXMZZQq
	Vy94RCknxtHAbfyWLp+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTiW-00014m-NC; Tue, 30 Jul 2019 15:07:08 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hsTho-0000n1-Sp; Tue, 30 Jul 2019 15:06:25 +0000
Date: Tue, 30 Jul 2019 08:06:24 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/dma: Handle MSI mappings separately
Message-ID: <20190730150624.GA27573@infradead.org>
References: <2b2595de703c60a772ebcffe248d0cf036143e6a.1564414114.git.robin.murphy@arm.com>
 <20190730062843.GA1400@infradead.org>
 <90566814-ed36-2eb9-49e2-98a4a949c9f6@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90566814-ed36-2eb9-49e2-98a4a949c9f6@arm.com>
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
Cc: maz@kernel.org, joro@8bytes.org, Christoph Hellwig <hch@infradead.org>,
 iommu@lists.linux-foundation.org, Andre Przywara <andre.przywara@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 11:43:25AM +0100, Robin Murphy wrote:
> > Hmm.  I remember proposing this patch and you didn't like it because
> > we could also have msis for a !IOMMU_DMA_IOVA_COOKIE cookie type.
> > Or did we talk past each other?
> 
> Do you have a pointer? That sparks the vaguest of memories, but I can't seem
> to turn anything up in my inbox. If that was my objection, though, it sounds
> like your patch was probably trying to go a step or two further than this
> one.

I can't find anything either.  This must have been a git tree I passed
around to you before posting it.

> > Note that if this change turns out to be valid we should also
> > clean up the iommu_dma_free_iova() side.
> 
> We're not touching the iommu_dma_{alloc,free}_iova() path here; those are
> designed to cope with both types of cookie, and I think that's a reasonable
> abstraction to keep. This is just getting rid of the asymmetry - and now bug
> - caused by trying to keep the MSI page flow going through a special case in
> __iommu_dma_map() despite that having evolved into a more specific DMA
> domain fastpath (there's no corresponding unmap special case since MSI
> mappings just persist and get recycled until the domain is destroyed).

Ok, that might have been the issue with my earlier patch..

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
