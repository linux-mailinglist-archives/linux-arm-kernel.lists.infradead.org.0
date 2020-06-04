Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A461EEE6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 01:45:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qN0kTgsylKQ8+pWIENqyf4owl3EO66qU/TKn1wtxcoo=; b=qNso9oH2BvsS/k
	lnhae48+itiANQshwMoIlYX0u+kxBpTqJjfUowXwqi8bhGxR1keZCc9VeLOgPelR6Ewj95wxORY+n
	yN8NjTwPlTVpx/zVcf4YFT4K9UsDvtZ/OouSCdc/ZCoopr4VJ7YQpUhwDOzeNBsTA4GBWBblfFtzZ
	YT8Pm3EncV+lAwEoODzESBaJgkn/exCBBr54UhDOmrwQxHWBqHHgslT/429eAmEuF7/qLQT1WO/DK
	JHO3USFUb7oWkqB+FyuzJ5d+Is6Qht1Vyv9HaY98qm5ZbwPGo5r6ul8NSR/WLJH4y6cI+GLmt7LE5
	wpGHrqTu51qZdH8Q5G1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgzY8-00053r-TM; Thu, 04 Jun 2020 23:45:28 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgzX2-0002PE-M7
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 23:44:22 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ed986f10000>; Thu, 04 Jun 2020 16:42:41 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 04 Jun 2020 16:44:20 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 04 Jun 2020 16:44:20 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 4 Jun
 2020 23:44:12 +0000
Received: from rnnvemgw01.nvidia.com (10.128.109.123) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Thu, 4 Jun 2020 23:44:12 +0000
Received: from vdumpa-ubuntu.nvidia.com (Not Verified[172.17.173.140]) by
 rnnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5ed9874b0004>; Thu, 04 Jun 2020 16:44:12 -0700
From: Krishna Reddy <vdumpa@nvidia.com>
To: 
Subject: [PATCH v6 3/4] iommu/arm-smmu: Add global/context fault
 implementation hooks
Date: Thu, 4 Jun 2020 16:44:13 -0700
Message-ID: <20200604234414.21912-4-vdumpa@nvidia.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200604234414.21912-1-vdumpa@nvidia.com>
References: <20200604234414.21912-1-vdumpa@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1591314161; bh=XEWwDzSnAreryGBzc4HvqeqSxvljF9DfDJ/mUCpyvzo=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:MIME-Version:X-NVConfidentiality:
 Content-Transfer-Encoding:Content-Type;
 b=rYHPOU57msb4RCk8eRt+ENwtGN4XZ/hOkC/h6CV8GaqKF58Bam7mp90CBkR3vSXTu
 YBv5kw7EThAaiZ8hjUUhypdMWwciqXuujteYLmRr/26Aq5VQM50QpEYnArfRQb5rkJ
 cMdItgoiqq6ugCEbIjAqalAdjDKLpeDzQdK9TLD3YGzVX/dIQq7/YeC1saIRwsS89E
 z7NQm97haox01RTaDGdfLdBA9TJM63gRT9+bVeI+4QB5CM/IlGkHMBrZ5L6lofD2vO
 /uPBXMOV7/w5OpT1/4/HYA5hAzesNRbYPXoh+bNT2Vp+BokYudRud6pbmX54mrsQ6q
 5YdjcpxRv6B+w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_164420_745469_49A814C3 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: snikam@nvidia.com, mperttunen@nvidia.com, bhuntsman@nvidia.com,
 will@kernel.org, joro@8bytes.org, linux-kernel@vger.kernel.org,
 praithatha@nvidia.com, talho@nvidia.com, iommu@lists.linux-foundation.org,
 nicolinc@nvidia.com, linux-tegra@vger.kernel.org, yhsu@nvidia.com,
 treding@nvidia.com, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 bbiswas@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add global/context fault hooks to allow NVIDIA SMMU implementation
handle faults across multiple SMMUs.

Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
---
 drivers/iommu/arm-smmu-nvidia.c | 100 ++++++++++++++++++++++++++++++++
 drivers/iommu/arm-smmu.c        |  11 +++-
 drivers/iommu/arm-smmu.h        |   3 +
 3 files changed, 112 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/arm-smmu-nvidia.c b/drivers/iommu/arm-smmu-nvidia.c
index dafc293a45217..5999b6a770992 100644
--- a/drivers/iommu/arm-smmu-nvidia.c
+++ b/drivers/iommu/arm-smmu-nvidia.c
@@ -117,6 +117,104 @@ static int nsmmu_reset(struct arm_smmu_device *smmu)
 	return 0;
 }
 
+static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
+{
+	return container_of(dom, struct arm_smmu_domain, domain);
+}
+
+static irqreturn_t nsmmu_global_fault_inst(int irq,
+					       struct arm_smmu_device *smmu,
+					       int inst)
+{
+	u32 gfsr, gfsynr0, gfsynr1, gfsynr2;
+
+	gfsr = readl_relaxed(nsmmu_page(smmu, inst, 0) + ARM_SMMU_GR0_sGFSR);
+	gfsynr0 = readl_relaxed(nsmmu_page(smmu, inst, 0) +
+				ARM_SMMU_GR0_sGFSYNR0);
+	gfsynr1 = readl_relaxed(nsmmu_page(smmu, inst, 0) +
+				ARM_SMMU_GR0_sGFSYNR1);
+	gfsynr2 = readl_relaxed(nsmmu_page(smmu, inst, 0) +
+				ARM_SMMU_GR0_sGFSYNR2);
+
+	if (!gfsr)
+		return IRQ_NONE;
+
+	dev_err_ratelimited(smmu->dev,
+		"Unexpected global fault, this could be serious\n");
+	dev_err_ratelimited(smmu->dev,
+		"\tGFSR 0x%08x, GFSYNR0 0x%08x, GFSYNR1 0x%08x, GFSYNR2 0x%08x\n",
+		gfsr, gfsynr0, gfsynr1, gfsynr2);
+
+	writel_relaxed(gfsr, nsmmu_page(smmu, inst, 0) + ARM_SMMU_GR0_sGFSR);
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t nsmmu_global_fault(int irq, void *dev)
+{
+	int inst;
+	irqreturn_t irq_ret = IRQ_NONE;
+	struct arm_smmu_device *smmu = dev;
+
+	for (inst = 0; inst < to_nvidia_smmu(smmu)->num_inst; inst++) {
+		irq_ret = nsmmu_global_fault_inst(irq, smmu, inst);
+		if (irq_ret == IRQ_HANDLED)
+			return irq_ret;
+	}
+
+	return irq_ret;
+}
+
+static irqreturn_t nsmmu_context_fault_bank(int irq,
+					    struct arm_smmu_device *smmu,
+					    int idx, int inst)
+{
+	u32 fsr, fsynr, cbfrsynra;
+	unsigned long iova;
+
+	fsr = arm_smmu_cb_read(smmu, idx, ARM_SMMU_CB_FSR);
+	if (!(fsr & ARM_SMMU_FSR_FAULT))
+		return IRQ_NONE;
+
+	fsynr = readl_relaxed(nsmmu_page(smmu, inst, smmu->numpage + idx) +
+			      ARM_SMMU_CB_FSYNR0);
+	iova = readq_relaxed(nsmmu_page(smmu, inst, smmu->numpage + idx) +
+			     ARM_SMMU_CB_FAR);
+	cbfrsynra = readl_relaxed(nsmmu_page(smmu, inst, 1) +
+				  ARM_SMMU_GR1_CBFRSYNRA(idx));
+
+	dev_err_ratelimited(smmu->dev,
+	"Unhandled context fault: fsr=0x%x, iova=0x%08lx, fsynr=0x%x, cbfrsynra=0x%x, cb=%d\n",
+			    fsr, iova, fsynr, cbfrsynra, idx);
+
+	writel_relaxed(fsr, nsmmu_page(smmu, inst, smmu->numpage + idx) +
+			    ARM_SMMU_CB_FSR);
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t nsmmu_context_fault(int irq, void *dev)
+{
+	int inst, idx;
+	irqreturn_t irq_ret = IRQ_NONE;
+	struct iommu_domain *domain = dev;
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+
+	for (inst = 0; inst < to_nvidia_smmu(smmu)->num_inst; inst++) {
+		/* Interrupt line shared between all context faults.
+		 * Check for faults across all contexts.
+		 */
+		for (idx = 0; idx < smmu->num_context_banks; idx++) {
+			irq_ret = nsmmu_context_fault_bank(irq, smmu,
+							   idx, inst);
+
+			if (irq_ret == IRQ_HANDLED)
+				return irq_ret;
+		}
+	}
+
+	return irq_ret;
+}
+
 static const struct arm_smmu_impl nvidia_smmu_impl = {
 	.read_reg = nsmmu_read_reg,
 	.write_reg = nsmmu_write_reg,
@@ -124,6 +222,8 @@ static const struct arm_smmu_impl nvidia_smmu_impl = {
 	.write_reg64 = nsmmu_write_reg64,
 	.reset = nsmmu_reset,
 	.tlb_sync = nsmmu_tlb_sync,
+	.global_fault = nsmmu_global_fault,
+	.context_fault = nsmmu_context_fault,
 };
 
 struct arm_smmu_device *nvidia_smmu_impl_init(struct arm_smmu_device *smmu)
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 243bc4cb2705b..d720e1e191176 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -673,6 +673,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 	enum io_pgtable_fmt fmt;
 	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
+	irqreturn_t (*context_fault)(int irq, void *dev);
 
 	mutex_lock(&smmu_domain->init_mutex);
 	if (smmu_domain->smmu)
@@ -835,7 +836,9 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 	 * handler seeing a half-initialised domain state.
 	 */
 	irq = smmu->irqs[smmu->num_global_irqs + cfg->irptndx];
-	ret = devm_request_irq(smmu->dev, irq, arm_smmu_context_fault,
+	context_fault = (smmu->impl && smmu->impl->context_fault) ?
+			 smmu->impl->context_fault : arm_smmu_context_fault;
+	ret = devm_request_irq(smmu->dev, irq, context_fault,
 			       IRQF_SHARED, "arm-smmu-context-fault", domain);
 	if (ret < 0) {
 		dev_err(smmu->dev, "failed to request context IRQ %d (%u)\n",
@@ -2107,6 +2110,7 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 	struct arm_smmu_device *smmu;
 	struct device *dev = &pdev->dev;
 	int num_irqs, i, err;
+	irqreturn_t (*global_fault)(int irq, void *dev);
 
 	smmu = devm_kzalloc(dev, sizeof(*smmu), GFP_KERNEL);
 	if (!smmu) {
@@ -2193,9 +2197,12 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 		smmu->num_context_irqs = smmu->num_context_banks;
 	}
 
+	global_fault = (smmu->impl && smmu->impl->global_fault) ?
+			smmu->impl->global_fault : arm_smmu_global_fault;
+
 	for (i = 0; i < smmu->num_global_irqs; ++i) {
 		err = devm_request_irq(smmu->dev, smmu->irqs[i],
-				       arm_smmu_global_fault,
+				       global_fault,
 				       IRQF_SHARED,
 				       "arm-smmu global fault",
 				       smmu);
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index d88374b68da31..f8ce34c07d961 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -18,6 +18,7 @@
 #include <linux/io-64-nonatomic-hi-lo.h>
 #include <linux/io-pgtable.h>
 #include <linux/iommu.h>
+#include <linux/irqreturn.h>
 #include <linux/mutex.h>
 #include <linux/spinlock.h>
 #include <linux/types.h>
@@ -387,6 +388,8 @@ struct arm_smmu_impl {
 	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
 			 int status);
 	int (*def_domain_type)(struct device *dev);
+	irqreturn_t (*global_fault)(int irq, void *dev);
+	irqreturn_t (*context_fault)(int irq, void *dev);
 };
 
 static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
