Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 642BB22CE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wJxN/xJhw24QVGMtZuhaxzEstvgVdI8dwpIak0Rt990=; b=TDwLYcERpr+NyN
	mL0pXWptbMEVLCk3wwZJf0nmPq4h2d6JVkW1/AX0PsisqmnAy9dkrrw6ast2SYVQFtfJD2xv8FdWi
	hpYmXgaRFA01CzSaQUA5v8v1jkRVj/anFzCctxNe1jnN5xSA4uunU2pbyV+eDeZXvFvi7NdA0VbiU
	uaH12Z32WfuxyCwemudLzPe/6dednFmoQ1U7RlnmHKGQZBNvnC4hFzV/i2rSJ/k+cPKyUKfPaKdo3
	fSKwpibPi+Lfe9vtZNHjh5ZXGmgCkR5hs5JW6PEwISMo8+zMaOsKFfiTe+mP6wA0XEHx9a6ahRDVg
	uYMWadLmfRKQV0sN15qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSckz-0003kF-9k; Mon, 20 May 2019 07:30:49 +0000
Received: from 089144206147.atnat0015.highway.bob.at ([89.144.206.147]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSckq-0003ju-6K; Mon, 20 May 2019 07:30:40 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: implement generic dma_map_ops for IOMMUs v5
Date: Mon, 20 May 2019 09:29:24 +0200
Message-Id: <20190520072948.11412-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tom Murphy <tmurphy@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin and Joerg,

I think we are finally ready for the generic dma-iommu series.  I have
various DMA API changes pending, and Tom has patches ready to convert
the AMD and Intel iommu drivers over to it.  I'd love to have this
in a stable branch shared between the dma-mapping and iommu trees
the day after rc2 is released.  I volunteer to create the branch,
but I'm fine with it living in the iommu tree as well.  Before that
Will has already said he wants to send the first patch in the series
to Linus for this merge window.


A git tree is also available at:

    git://git.infradead.org/users/hch/misc.git dma-iommu-ops.5

Gitweb:

    http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-iommu-ops.5

Changes since v4:
 - rebased to 5.2-rc1

Changes since v3:
 - fold the separate patch to refactor mmap bounds checking
 - don't warn on not finding a vm_area
 - improve a commit log
 - refactor __dma_iommu_free a little differently
 - remove a minor MSI map cleanup to avoid a conflict with the
   "Split iommu_dma_map_msi_msg" series

Changes since v2:
 - address various review comments and include patches from Robin

Changes since v1:
 - only include other headers in dma-iommu.h if CONFIG_DMA_IOMMU is enabled
 - keep using a scatterlist in iommu_dma_alloc
 - split out mmap/sgtable fixes and move them early in the series
 - updated a few commit logs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
