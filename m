Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7216BF27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 17:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r68yLhY1lmWlis4hizdoiLe8B43KYJXTNb0Wq7e/UPk=; b=k2SNljdlPum3Nu
	1hYuci/lxwPAhlAgH1iK/B2opfS6RFTbQdhZHqSz9xjjOkDr2DGNhmw50pzyNvtE1gdKNOES+Crs9
	jG1gZssG74VnkkXo6upbusutgsfbwy1gMrH1VUG7nBSqp9VZiUDCdq3iXJurv42pMnOrTd1EU6pmH
	RW8pt+3DA5IaY/3sDkdTHT6d/riyFccRoJjZnZBliEIpgniaVXkaAdOltiTOnGUIfHGGC9teCyelG
	dVaL/3cxbZLUiCcJq+oTFQ7SgWybYXcDCA+xEMw/1PQdufIvhxoSgx0FoIbIFvzZG1ZMf7KOh4TjJ
	r6MwiGlpGpVD/8B/HBgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnluk-00046F-4G; Wed, 17 Jul 2019 15:32:18 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnluG-0003jl-8n
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 15:31:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A2753AF5B;
 Wed, 17 Jul 2019 15:31:44 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux-foundation.org
Subject: [RFC 0/4] Raspberry Pi 4 DMA addressing support
Date: Wed, 17 Jul 2019 17:31:31 +0200
Message-Id: <20190717153135.15507-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_083148_464816_F050B8ED 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, catalin.marinas@arm.com,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 Jisheng.Zhang@synaptics.com, mbrugger@suse.com, will@kernel.org, hch@lst.de,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,
this series attempts to address some issues we found while bringing up the new
Raspberry Pi 4 in arm64 and it's intended to serve as a follow up to this:
https://www.spinics.net/lists/arm-kernel/msg740650.html

The new Raspberry Pi 4 has up to 4GB of ram but most devices can only address
the first GB of ram: the DMA address range is 0xc0000000-0xfc000000 which is
aliased to the first GB of memory 0x00000000-0x3c000000. Note that only some
devices have this limitations, the ARM cores, PCIe, GENET, and 40-bit DMA
channels have a wider view of the address space.

This is solved in arm32 by setting up the correct '.dma_zone_size = SZ_1G'
which takes care of the allocating the coherent memory area at the right spot
and also is taken into account in the arch specific 'dma_map_ops'.

Unfortunately there is no such thing as '.dma_zone_size' in arm64, to make
things worse it's assumed that all devices will be able to adress the first 4GB
of memory.

This raises two issues: the coherent memory reserves are located in an area not
accessible by most devices, and DMA streaming's dma_supported(), which fails
for most devices since it's min_mask isn't properly set. Note that the rest if
DMA streaming works fine thanks to the help of swiotlb.

On one hand I've implemented a function that parses the 'dma-range' on all
interconnects and tries to select a location for the coherent memory reserves
that'll fit all devices. I made the algorithm as simple as possible, based on
the existing devices limitations.

On the other I've added a new variable in dma-direct that allows modifying the
min_mask during the init process and taken care of setting it accordingly in
the arm64's init code.

Regards,
Nicolas

---

Nicolas Saenz Julienne (4):
  arm64: mm: use arm64_dma_phys_limit instead of calling max_zone_dma_phys()
  arm64: mm: parse dma-ranges in order to better estimate arm64_dma_phys_limit
  dma-direct: add dma_direct_min_mask
  arm64: mm: set direct_dma_min_mask according to dma-ranges

 arch/arm64/mm/init.c | 69 ++++++++++++++++++++++++++++++++++++++++----
 kernel/dma/direct.c  |  4 ++-
 2 files changed, 67 insertions(+), 6 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
