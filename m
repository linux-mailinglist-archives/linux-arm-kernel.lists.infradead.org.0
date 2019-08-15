Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1498F3A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:38:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUM9dXppk2fbHIkv2z1Y0/yB0iY5p8EjSl7xkr1QsSY=; b=gxS4X3ew+PkQWB
	e7x0UBjFUcxevR0u0+wrZP83U8bYH1nIXR4qlOgx3SmWt+gJnLB2TfeTJe1RkG4+tXJiVXYn0eTl1
	pZFrTkLgDKTNOlrYMPVbCrVQuwkvBTbOSnj4lWDnH3HnnUaM6GG7nCCsF7gnT12csuhYmW1Gmnok+
	yM9XI0Q544rYOR7vj/C88oBbLj8vK+QjyU2M3d+Co/tLyoLZjygnQLzQPmBo73HSfumhPLR3ZUd4R
	BqsbeySpAkO4gVRZ6hdTFN10rHyDQ8NhwbRUmioVWdtnUGA1Zwf5dSvrYqZU6ACTCTjWXvSoNq5k8
	qxvAg3P11zNt9zoaWjBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKds-0005I5-S7; Thu, 15 Aug 2019 18:38:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKd8-0004mt-7L
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:37:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D9151570;
 Thu, 15 Aug 2019 11:37:45 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2138B3F694;
 Thu, 15 Aug 2019 11:37:44 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 02/17] iommu/qcom: Mask TLBI addresses correctly
Date: Thu, 15 Aug 2019 19:37:22 +0100
Message-Id: <3353ab6006c49cb8821f298523f38c5f7dc1d00d.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113746_303825_59F51A7A 
X-CRM114-Status: GOOD (  14.98  )
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 jcrouse@codeaurora.org, gregory.clement@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As with arm-smmu from whence this code was borrowed, the IOVAs passed in
here happen to be at least page-aligned anyway, but still; oh dear.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/qcom_iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 34d0b9783b3e..bed948c3058a 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -155,7 +155,7 @@ static void qcom_iommu_tlb_inv_range_nosync(unsigned long iova, size_t size,
 		struct qcom_iommu_ctx *ctx = to_ctx(fwspec, fwspec->ids[i]);
 		size_t s = size;
 
-		iova &= ~12UL;
+		iova = (iova >> 12) << 12;
 		iova |= ctx->asid;
 		do {
 			iommu_writel(ctx, reg, iova);
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
