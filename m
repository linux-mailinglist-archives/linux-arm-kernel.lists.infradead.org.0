Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C149E535F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAag2yErrK7Br/HNWE78hU14jfxvthhFNIzTcG+IUH0=; b=TF66bwxVo+h8i2
	arryt9IYuczIDM6hqPx7ze2cGGlEIGo/mQDQFS6pZb0LPDWAk4PQ0BHKmN291xxMtb8QF9uWJsmsJ
	bbcNKzU6kRKRbc/t4aBxxfCO6n2u5CySgclzQuHzG3VyzS15pFSdrfwinkXQEp80N6dwbaGcPNYpu
	fKXu4oRhtacR1Y0N3D7AJnKhXYYtNAcIh3vbRgivQ6H0ILRW751Hfwh1K5WS9wpV59OaOUapX/72z
	oX3hjk61JIQyLbgeteci7WmUxuOrEhP+0srJhkYYVRUIv6M5RKSMbUrHxcg7gOxiH4jR7p+bplKoi
	QVmY/48MdBw0DGk4IR8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO41w-0004SD-PY; Fri, 25 Oct 2019 18:09:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO410-0003uK-Ka
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:08:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 03DD5493;
 Fri, 25 Oct 2019 11:08:46 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 490793F6C4;
 Fri, 25 Oct 2019 11:08:45 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 03/10] iommu/io-pgtable-arm: Simplify bounds checks
Date: Fri, 25 Oct 2019 19:08:32 +0100
Message-Id: <d99122bf95b9a28e53ab416f19b0ea7082c933cf.1572024120.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1572024119.git.robin.murphy@arm.com>
References: <cover.1572024119.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_110846_714726_5CBC43FF 
X-CRM114-Status: GOOD (  12.59  )
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
Cc: iommu@lists.linux-foundation.org, jcrouse@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We're merely checking that the relevant upper bits of each address
are all zero, so there are cheaper ways to achieve that.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/io-pgtable-arm.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 2cef0f5335e4..a9dff0ecf0c3 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -491,8 +491,7 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
 	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
 		return -EINVAL;
 
-	if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias) ||
-		    paddr >= (1ULL << data->iop.cfg.oas)))
+	if (WARN_ON(iova >> data->iop.cfg.ias || paddr >> data->iop.cfg.oas))
 		return -ERANGE;
 
 	prot = arm_lpae_prot_to_pte(data, iommu_prot);
@@ -663,7 +662,7 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
 	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
 		return 0;
 
-	if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias)))
+	if (WARN_ON(iova >> data->iop.cfg.ias))
 		return 0;
 
 	return __arm_lpae_unmap(data, gather, iova, size, lvl, ptep);
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
