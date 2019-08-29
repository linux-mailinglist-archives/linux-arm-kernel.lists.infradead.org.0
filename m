Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC50A2A2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUYR5/xlt4NwI/70wr3zDF9Z4Ahc0AWlxZ/VTwggG6E=; b=hwonIVyoiMmdIG
	FjJK8Zz2nFMPoTb00HrJs5dE7qmrE14lBYR6trngeWBfo3wvLT66zqdN5ts/Ap7rZ5Pnwc7V1A23m
	IoOQ3QoIPE90g70PBkEBjYSDRNDPYMFYQU1Rrq/idoR8jfZQpHqDvoBoytZYoUl1wyNBgJ1NqUKz4
	ZrH/+HLFA51xE5ZGqxOuTjtouoIdLhuop8CbdA+d3tmazt0wvPvZ/N3HxSDnwV6X+2sidDDPSbsqy
	ducNSJqByS8VgtaatImhV1R78c6UOzga3pE0d8WfhRquHL4Jr6uub1Znw9IeO1G/IdnQ2B+QDjrx/
	NfYJkHucd4Tya5m8j50w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TCW-0001qP-VP; Thu, 29 Aug 2019 22:47:33 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TAn-0000Og-0z
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:45:49 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d6855990000>; Thu, 29 Aug 2019 15:45:45 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 29 Aug 2019 15:45:42 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 29 Aug 2019 15:45:42 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 29 Aug
 2019 22:45:42 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Thu, 29 Aug 2019 22:45:42 +0000
Received: from vdumpa-ubuntu.nvidia.com (Not Verified[172.17.173.140]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d6855960004>; Thu, 29 Aug 2019 15:45:42 -0700
From: Krishna Reddy <vdumpa@nvidia.com>
To: 
Subject: [PATCH 3/7] iommu/arm-smmu: Add tlb_sync implementation hook
Date: Thu, 29 Aug 2019 15:47:03 -0700
Message-ID: <1567118827-26358-4-git-send-email-vdumpa@nvidia.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567118745; bh=Qq0A43BsZP0MLsEUdMxePp0CnQyOBmpCwcS4GNqhIwI=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=SETcj59pTDZu7dAjxr+G4/tON0DucDkrqJmjU9b2Vp/j5mVgV506/KTY7TWiES7dq
 FSnXf78/9zCbPduY/VOxiTmw46udWor3aXVXHnx0FarTAMv07rRHDKG/MAXsRUPSbZ
 ZbrJWKJKfqIPB4MR/8ZBlwqTpvrCUBWnQrP6GzMeE0Cg7O4MI6u6w8y3NPVvDXQs0g
 CnnmuEG4sd0G7f3eNmwY3plnUx4zkub4xJCp4AozN622Mm41vEs4Kf5yWY0Kp6uHFp
 2ZsLVIBt+dnk69uHRIol44KO9enc8Xajmc1K7ng75HDHnbVtuqTMauRILHDKDN5Sr8
 qBLG9txfgjuCw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154545_221044_FB17489B 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: snikam@nvidia.com, thomasz@nvidia.com, jtukkinen@nvidia.com,
 mperttunen@nvidia.com, praithatha@nvidia.com, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, talho@nvidia.com, olof@lixom.net,
 yhsu@nvidia.com, linux-tegra@vger.kernel.org, treding@nvidia.com,
 avanbrunt@nvidia.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tlb_sync hook allows nvidia smmu handle tlb sync
across multiple SMMUs as necessary.

Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
---
 drivers/iommu/arm-smmu-nvidia.c | 32 ++++++++++++++++++++++++++++++++
 drivers/iommu/arm-smmu.c        |  8 +++++---
 drivers/iommu/arm-smmu.h        |  4 ++++
 3 files changed, 41 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/arm-smmu-nvidia.c b/drivers/iommu/arm-smmu-nvidia.c
index d93ceda..a429b2c 100644
--- a/drivers/iommu/arm-smmu-nvidia.c
+++ b/drivers/iommu/arm-smmu-nvidia.c
@@ -56,11 +56,43 @@ static void nsmmu_write_reg64(struct arm_smmu_device *smmu,
 		writeq_relaxed(val, nsmmu_page(smmu, i, page) + offset);
 }
 
+static void nsmmu_tlb_sync_wait(struct arm_smmu_device *smmu, int page,
+				int sync, int status, int inst)
+{
+	u32 reg;
+	unsigned int spin_cnt, delay;
+
+	for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
+		for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
+			reg = readl_relaxed(
+			      nsmmu_page(smmu, inst, page) + status);
+			if (!(reg & sTLBGSTATUS_GSACTIVE))
+				return;
+			cpu_relax();
+		}
+		udelay(delay);
+	}
+	dev_err_ratelimited(smmu->dev,
+			    "TLB sync timed out -- SMMU may be deadlocked\n");
+}
+
+static void nsmmu_tlb_sync(struct arm_smmu_device *smmu, int page,
+			   int sync, int status)
+{
+	int i;
+
+	arm_smmu_writel(smmu, page, sync, 0);
+
+	for (i = 0; i < to_nsmmu(smmu)->num_inst; i++)
+		nsmmu_tlb_sync_wait(smmu, page, sync, status, i);
+}
+
 static const struct arm_smmu_impl nsmmu_impl = {
 	.read_reg = nsmmu_read_reg,
 	.write_reg = nsmmu_write_reg,
 	.read_reg64 = nsmmu_read_reg64,
 	.write_reg64 = nsmmu_write_reg64,
+	.tlb_sync = nsmmu_tlb_sync,
 };
 
 struct arm_smmu_device *nvidia_smmu_impl_init(struct arm_smmu_device *smmu)
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 46e1641..f5454e71 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -52,9 +52,6 @@
  */
 #define QCOM_DUMMY_VAL -1
 
-#define TLB_LOOP_TIMEOUT		1000000	/* 1s! */
-#define TLB_SPIN_COUNT			10
-
 #define MSI_IOVA_BASE			0x8000000
 #define MSI_IOVA_LENGTH			0x100000
 
@@ -244,6 +241,11 @@ static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu, int page,
 	unsigned int spin_cnt, delay;
 	u32 reg;
 
+	if (smmu->impl->tlb_sync) {
+		smmu->impl->tlb_sync(smmu, page, sync, status);
+		return;
+	}
+
 	arm_smmu_writel(smmu, page, sync, QCOM_DUMMY_VAL);
 	for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
 		for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 9645bf1..d3217f1 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -207,6 +207,8 @@ enum arm_smmu_cbar_type {
 /* Maximum number of context banks per SMMU */
 #define ARM_SMMU_MAX_CBS		128
 
+#define TLB_LOOP_TIMEOUT		1000000	/* 1s! */
+#define TLB_SPIN_COUNT			10
 
 /* Shared driver definitions */
 enum arm_smmu_arch_version {
@@ -336,6 +338,8 @@ struct arm_smmu_impl {
 	int (*cfg_probe)(struct arm_smmu_device *smmu);
 	int (*reset)(struct arm_smmu_device *smmu);
 	int (*init_context)(struct arm_smmu_domain *smmu_domain);
+	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
+			 int status);
 };
 
 static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
