Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F39FAFF07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 16:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gKk3QxlgWWtFtmjqWZVTiqjV597T/QEM7+9GxGc98X0=; b=gabV/qygReUz2T
	tDU0xtsWAb27HoTSPg5F51SWLxIjg2m+ua6UJovnhUcy/jtQezgZq17XHdHune9VOOim8QL5AC0mj
	VbjCzwT75kHdoXWg+fhNg6sEjndA5m48oM6SHlAlpYb1D3ZOItnTjSyyI/vR+J7z/Cw8bc7z4mWWc
	oPExyowIZIzvzcqBWPIH2/79IPOLUY+3oHvX/cSKz7jP7h9taXeB7CY3S6tuAyaBPC335iXdOPIA5
	ZgRJNAV7uMUGtSq9gYIx1KFRytbCUAG6pgNj8gae8nEpOblhAuXznjzixzS2eNElsvpprR8AcWTjl
	OcCG5VGYB8Vs9L0tv0qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83q8-0002Xf-Cd; Wed, 11 Sep 2019 14:43:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83p7-0001qD-LF
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:42:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D89615A2;
 Wed, 11 Sep 2019 07:42:20 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 444063F67D;
 Wed, 11 Sep 2019 07:42:19 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	joro@8bytes.org
Subject: [PATCH 3/3] iommu/io-pgtable-arm: Allow coherent walks for Mali
Date: Wed, 11 Sep 2019 15:42:09 +0100
Message-Id: <8eb563978e7e872ddde45c0413e1a3f30b792658.1568211045.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1568211045.git.robin.murphy@arm.com>
References: <cover.1568211045.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_074221_732593_67DC79EA 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, narmstrong@baylibre.com,
 steven.price@arm.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Midgard GPUs have ACE-Lite master interfaces which allows systems to
integrate them in an I/O-coherent manner. It seems that from the GPU's
viewpoint, the rest of the system is its outer shareable domain, and it
will only emit snoop signals for outer shareable accesses. As such,
setting the TTBR_SHARE_OUTER bit does indeed get coherent pagetable
walks working nicely.

Making data accesses coherent seems to be more of a challenge...

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/io-pgtable-arm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 77f41c9dd9be..2794d4661339 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -1061,6 +1061,9 @@ arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 	cfg->arm_mali_lpae_cfg.transtab = virt_to_phys(data->pgd) |
 					  ARM_MALI_LPAE_TTBR_READ_INNER |
 					  ARM_MALI_LPAE_TTBR_ADRMODE_TABLE;
+	if (cfg->coherent_walk)
+		cfg->arm_mali_lpae_cfg.transtab |= ARM_MALI_LPAE_TTBR_SHARE_OUTER;
+
 	return &data->iop;
 
 out_free_data:
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
