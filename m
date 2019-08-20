Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C65968F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 21:07:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g7UqS+yibfgZ2NjObUCE227Y6eZpIfGMBTf2/eST5+8=; b=ECaKndxGzHKxTy3RA7kco0YU57
	0hDVW/QgKZbvqi40OQYXFvIRcVU/SE15aJ7h6OpxZCe+qmGhEy/+6RyKfRoXWu7/3a7mozHk2bJ9Y
	+WYf3CWMQ+cb+uo0R3TW4IHPLvqwEu1XD6bn/V5FXXskhbcxN1iyheW60Q6NMP+Uy5po/w75bMoj1
	vaK6fiFE6IUekT2iWfBs3vNODMrkIoSHKaqPpM+wBMrifgExwVamdHPdUsE6r8njqLnKnALeYsTn0
	cKmqnrKuNpKTImoPAoNVcm/a7pLjB6zSVOECnmR7RG+vd7w2SK2t+QcC9RZDkGSxsVa2xBxSgDJPw
	hfsQuqrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i09TS-00058N-8S; Tue, 20 Aug 2019 19:07:18 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i09St-0004gm-HH
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 19:06:45 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 404836110F; Tue, 20 Aug 2019 19:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566328003;
 bh=yf4KbiMcwWuAOC3/YzyfVZGuYYAc192j4/wc6uDR1eE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ENZeW8wEm2x/+0HwKwiCPLFSbU8UYDtgcMdvAYT8LQLf9Nt118c24rn2klDoRXXlu
 47DC3JBGW6aiQdY/aQCJAsV0C3llohlVQVX9pRPoBADYDp7ZfvMK+1sS2TaHGFepZD
 UGdvEzwCA0rZXG5dX+YD7bSEcSOiF6+kyAFlZepQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D662660F3B;
 Tue, 20 Aug 2019 19:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566328002;
 bh=yf4KbiMcwWuAOC3/YzyfVZGuYYAc192j4/wc6uDR1eE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=V5eq3529o9GLKf4CR+s250JMtUhyKHm+uRJ+x+QqAeY38tMkk0gtU3WVq/VhgTNcx
 WE+Opu/0m9nG63xUwRt9QhUJ3PCMQk6u+3Jd9imYe0S/7XMQGRWKbY60/ab9KW33Wr
 QPPGaV3ihwUQGZ5rdTmc/TRU8+sVn3MYiI5qVD64=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D662660F3B
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH 3/7] iommu/arm-smmu: Add a SMMU variant for the Adreno GPU
Date: Tue, 20 Aug 2019 13:06:28 -0600
Message-Id: <1566327992-362-4-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566327992-362-1-git-send-email-jcrouse@codeaurora.org>
References: <1566327992-362-1-git-send-email-jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_120643_612103_3A534363 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a SMMU model for the Adreno GPU and use it to enable split
pagetable support if the conditions are right.

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/iommu/arm-smmu-impl.c | 15 +++++++++++++++
 drivers/iommu/arm-smmu.c      |  2 ++
 drivers/iommu/arm-smmu.h      |  1 +
 3 files changed, 18 insertions(+)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index 3f88cd0..5d197dd 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -147,6 +147,18 @@ static const struct arm_smmu_impl arm_mmu500_impl = {
 	.reset = arm_mmu500_reset,
 };
 
+static int qcom_adreno_init_context(struct arm_smmu_domain *smmu_domain)
+{
+	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1 &&
+		smmu_domain->cfg.fmt == ARM_SMMU_CTX_FMT_AARCH64)
+		smmu_domain->split_pagetables = true;
+
+	return 0;
+}
+
+static const struct arm_smmu_impl qcom_adreno_impl = {
+	.init_context = qcom_adreno_init_context,
+};
 
 struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 {
@@ -162,6 +174,9 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 		break;
 	case CAVIUM_SMMUV2:
 		return cavium_smmu_impl_init(smmu);
+	case QCOM_ADRENO_SMMUV2:
+		smmu->impl = &qcom_adreno_impl;
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 39e81ef..3f41cf7 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1858,6 +1858,7 @@ ARM_SMMU_MATCH_DATA(arm_mmu401, ARM_SMMU_V1_64K, GENERIC_SMMU);
 ARM_SMMU_MATCH_DATA(arm_mmu500, ARM_SMMU_V2, ARM_MMU500);
 ARM_SMMU_MATCH_DATA(cavium_smmuv2, ARM_SMMU_V2, CAVIUM_SMMUV2);
 ARM_SMMU_MATCH_DATA(qcom_smmuv2, ARM_SMMU_V2, QCOM_SMMUV2);
+ARM_SMMU_MATCH_DATA(qcom_adreno_smmuv2, ARM_SMMU_V2, QCOM_ADRENO_SMMUV2);
 
 static const struct of_device_id arm_smmu_of_match[] = {
 	{ .compatible = "arm,smmu-v1", .data = &smmu_generic_v1 },
@@ -1867,6 +1868,7 @@ static const struct of_device_id arm_smmu_of_match[] = {
 	{ .compatible = "arm,mmu-500", .data = &arm_mmu500 },
 	{ .compatible = "cavium,smmu-v2", .data = &cavium_smmuv2 },
 	{ .compatible = "qcom,smmu-v2", .data = &qcom_smmuv2 },
+	{ .compatible = "qcom,adreno-smmu-v2", .data = &qcom_adreno_smmuv2 },
 	{ },
 };
 
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 91a4eb8..e5a2cc8 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -222,6 +222,7 @@ enum arm_smmu_implementation {
 	ARM_MMU500,
 	CAVIUM_SMMUV2,
 	QCOM_SMMUV2,
+	QCOM_ADRENO_SMMUV2,
 };
 
 struct arm_smmu_device {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
