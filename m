Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3382BA39B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 16:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmFWKv+k7RIOeir2n+uefIDngQGM0cBN+KP7+OTK/xE=; b=USrlillkqFt/WJ
	LhmXBj6r3QsWkMPRbPO5W2wJvmWvVCx5JD/aBYgInI2wm17zOJCUDZGFfOLbyHm1cWwcJjzYUfiLd
	JyojDeZU3Lk/qukk+XwyrFD9Y1/0nOinMHMoZqrTee2axTzifTmSmEV1GuSQEgMExc+CgbyoGyx7h
	cOxvhvMc/Na6P8IUdcX89OzqZNHEwdZDlPbA9KQB/4foVRqwX7G6qNfu/Vd90CkZlMAflIuj4AuRc
	OOOvlLiN6xNyWc3FiydB0YkIGG9j8krwkDtdEr+iUAZ1Gf9umtAZW+J/f7FXmujj5G6/jtrMUz/6u
	2cLH0+E4KRoJ0RDLL2Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3iNV-0002mM-DD; Fri, 30 Aug 2019 14:59:53 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3iNK-0002kz-7W
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 14:59:44 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8244E68BFE; Fri, 30 Aug 2019 16:59:35 +0200 (CEST)
Date: Fri, 30 Aug 2019 16:59:35 +0200
From: Christoph Hellwig <hch@lst.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/4] vmalloc: lift the arm flag for coherent mappings
 to common code
Message-ID: <20190830145935.GA19838@lst.de>
References: <20190830062924.21714-1-hch@lst.de>
 <20190830062924.21714-2-hch@lst.de>
 <20190830092918.GV13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830092918.GV13294@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_075942_422072_552CD905 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-xtensa@linux-xtensa.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 10:29:18AM +0100, Russell King - ARM Linux admin wrote:
> On Fri, Aug 30, 2019 at 08:29:21AM +0200, Christoph Hellwig wrote:
> > The arm architecture had a VM_ARM_DMA_CONSISTENT flag to mark DMA
> > coherent remapping for a while.  Lift this flag to common code so
> > that we can use it generically.  We also check it in the only place
> > VM_USERMAP is directly check so that we can entirely replace that
> > flag as well (although I'm not even sure why we'd want to allow
> > remapping DMA appings, but I'd rather not change behavior).
> 
> Good, because if you did change that behaviour, you'd break almost
> every ARM framebuffer and cripple ARM audio drivers.

How would that break them?  All the usual video and audio drivers that
use dma_alloc_* then use dma_mmap_* which never end up in the only place
that actually checks VM_USERMAP (remap_vmalloc_range_partial) as they
end up in the dma_map_ops mmap methods which contain what is effecitvely
open coded versions of that routine.  There are very few callers of
remap_vmalloc_range_partial / remap_vmalloc_range, and while a few of
those actually are in media drivers and the virtual frame buffer video
driver, none of these seems to be called on dma memory (which would
be a layering violation anyway).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
