Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA572137124
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:26:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4OmrAFiZDZV3Q3b0KT1rhDND6x5L31eoHjNQXZJ/VbM=; b=EkKYp5GFN0M0c9
	RRqvBx3z72eNa7cKlPQrIgg95ePhRr00OwIx6VVuRF4OYxPMl59zobxLH7sRBuKuXz2gw42f1fCFa
	6nlT8swOxjXJ0dInNB6ApaSFE36VGd2AkHgReaj8wNzPKUdDkDOyrcU8cOrq6Z40wzoHjrnq/vSM9
	A9UTP9v3XUuXy2oArLxpqS5M7babJSFY9TJD+y36S92UEchp8jRpReELws8T44oPqrfoIyp6b5BgQ
	uwolh2k1jDnItMMJ+H9fH/tiorjv5SGAe0uEUMB8bFlLSlw+h29uynNwEPD4DPJqJN3lFlyhCxA0R
	2Dfcg5MY0WdvewRc07iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwB1-0000XT-U9; Fri, 10 Jan 2020 15:26:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwAr-0000Wq-4t
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:26:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 81E8D30E;
 Fri, 10 Jan 2020 07:26:08 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E99363F6C4;
 Fri, 10 Jan 2020 07:26:07 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH] iommu/arm-smmu: Improve SMR mask test
Date: Fri, 10 Jan 2020 15:25:02 +0000
Message-Id: <2e0f837b38671a322d33a18b7447b95ac2fba796.1578669732.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072609_231920_20B9E189 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the SMR mask test more robust against SMR0 being live
at probe time, which might happen once we start supporting
firmware reservations for framebuffers and suchlike.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 4f1a350d9529..df6490bc7700 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -946,23 +946,36 @@ static void arm_smmu_write_sme(struct arm_smmu_device *smmu, int idx)
 static void arm_smmu_test_smr_masks(struct arm_smmu_device *smmu)
 {
 	u32 smr;
+	int i;
 
 	if (!smmu->smrs)
 		return;
-
+	/*
+	 * If we've had to accommodate firmware memory regions, we may
+	 * have live SMRs by now; tread carefully...
+	 *
+	 * Somewhat perversely, not having a free SMR for this test implies we
+	 * can get away without it anyway, as we'll only be able to 'allocate'
+	 * these SMRs for the ID/mask values we're already trusting to be OK.
+	 */
+	for (i = 0; i < smmu->num_mapping_groups; i++)
+		if (!smmu->smrs[i].valid)
+			goto smr_ok;
+	return;
+smr_ok:
 	/*
 	 * SMR.ID bits may not be preserved if the corresponding MASK
 	 * bits are set, so check each one separately. We can reject
 	 * masters later if they try to claim IDs outside these masks.
 	 */
 	smr = FIELD_PREP(SMR_ID, smmu->streamid_mask);
-	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(0), smr);
-	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(0));
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(i), smr);
+	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(i));
 	smmu->streamid_mask = FIELD_GET(SMR_ID, smr);
 
 	smr = FIELD_PREP(SMR_MASK, smmu->streamid_mask);
-	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(0), smr);
-	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(0));
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(i), smr);
+	smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(i));
 	smmu->smr_mask_mask = FIELD_GET(SMR_MASK, smr);
 }
 
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
