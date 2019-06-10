Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 675173BC33
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 20:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOVUANl3xqviexAC4xcCgkUh2BCIEyGCk8tF0rMWJ6o=; b=dFgJzZTuuIe12h
	z6/d9nMxM8m2sfjif2Bo+ZIAtKDu95NyI4vpwCZIdk1XWQ8fszMXiqv8LDvjLMwCoYiVdyK4A4jUm
	2JpOvRyvg9uF34c17CZacIvExtPObsWoixgoRp7jwKQUiOo1s9/CBxe7PP8bnfD12iXaM1TE44HIt
	06yuefcFivy29rC1GKzL08D2XC3mL56/TNyYH7j/w1P9V5/Da7XAaLN0kdnDutfKKxLOyi4icrJNb
	EPX+9s5DFJX+kUBPjwdLQD4MZNnJazBoZSJLA3Zn5qZ5teb4uxpd9sOr6A1IeF+Bb9gbB60+MoNSo
	6gQW3uDyaqYanDGb+/mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haPQm-0003hO-DG; Mon, 10 Jun 2019 18:54:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haPOh-0002Bw-8g
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 18:52:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D804ADA7;
 Mon, 10 Jun 2019 11:51:58 -0700 (PDT)
Received: from ostrya.cambridge.arm.com (ostrya.cambridge.arm.com
 [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 68A3C3F246;
 Mon, 10 Jun 2019 11:51:57 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
To: will.deacon@arm.com
Subject: [PATCH 6/8] iommu/arm-smmu-v3: Support auxiliary domains
Date: Mon, 10 Jun 2019 19:47:12 +0100
Message-Id: <20190610184714.6786-7-jean-philippe.brucker@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_115159_429563_7E64CF60 
X-CRM114-Status: GOOD (  24.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 jacob.jun.pan@linux.intel.com, joro@8bytes.org, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit a3a195929d40 ("iommu: Add APIs for multiple domains per
device"), the IOMMU API gained the concept of auxiliary domains (AUXD),
which allows to control the PASID-tagged address spaces of a device. With
AUXD the PASID address space are not shared with the CPU, but are instead
modified with iommu_map() and iommu_unmap() calls on auxiliary domains.

Add auxiliary domain support to the SMMUv3 driver. Device drivers allocate
an unmanaged IOMMU domain with iommu_domain_alloc(), and attach it to the
device with iommu_aux_attach_domain().

The AUXD API is fairly permissive, and allows to attach an IOMMU domain in
both normal and auxiliary mode at the same time - one device can be
attached to the domain normally, and another device can be attached
through one of its PASIDs. To avoid excessive complexity in the SMMU
implementation we pose some restrictions on supported AUXD usage:

* A domain is either in auxiliary mode or normal mode. And that state is
  sticky. Once detached the domain has to be re-attached in the same mode.

* An auxiliary domain can have a single parent domain. Two devices can be
  attached to the same auxiliary domain only if they are attached to the
  same parent domain.

In practice these shouldn't be problematic, since we have the same kind of
restriction on normal domains and users have been able to cope so far: at
the moment a domain cannot be attached to two devices behind different
SMMUs. When VFIO puts two such devices in the same container, it simply
falls back to allocating two separate IOMMU domains.

Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
---
 drivers/iommu/Kconfig       |   1 +
 drivers/iommu/arm-smmu-v3.c | 276 +++++++++++++++++++++++++++++++++---
 2 files changed, 260 insertions(+), 17 deletions(-)

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index 9b45f70549a7..d326fef3d3a6 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -393,6 +393,7 @@ config ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT
 config ARM_SMMU_V3
 	bool "ARM Ltd. System MMU Version 3 (SMMUv3) Support"
 	depends on ARM64
+	select IOASID
 	select IOMMU_API
 	select IOMMU_IO_PGTABLE_LPAE
 	select GENERIC_MSI_IRQ_DOMAIN
diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 326b71793336..633d829f246f 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -19,6 +19,7 @@
 #include <linux/err.h>
 #include <linux/interrupt.h>
 #include <linux/io-pgtable.h>
+#include <linux/ioasid.h>
 #include <linux/iommu.h>
 #include <linux/iopoll.h>
 #include <linux/init.h>
@@ -641,6 +642,7 @@ struct arm_smmu_master {
 	unsigned int			num_sids;
 	unsigned int			ssid_bits;
 	bool				ats_enabled		:1;
+	bool				auxd_enabled		:1;
 };
 
 /* SMMU private data for an IOMMU domain */
@@ -666,8 +668,14 @@ struct arm_smmu_domain {
 
 	struct iommu_domain		domain;
 
+	/* Unused in aux domains */
 	struct list_head		devices;
 	spinlock_t			devices_lock;
+
+	/* Auxiliary domain stuff */
+	struct arm_smmu_domain		*parent;
+	ioasid_t			ssid;
+	unsigned long			aux_nr_devs;
 };
 
 struct arm_smmu_option_prop {
@@ -675,6 +683,8 @@ struct arm_smmu_option_prop {
 	const char *prop;
 };
 
+static DECLARE_IOASID_SET(private_ioasid);
+
 static struct arm_smmu_option_prop arm_smmu_options[] = {
 	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
 	{ ARM_SMMU_OPT_PAGE0_REGS_ONLY, "cavium,cn9900-broken-page1-regspace"},
@@ -696,6 +706,15 @@ static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
 	return container_of(dom, struct arm_smmu_domain, domain);
 }
 
+static struct arm_smmu_master *dev_to_master(struct device *dev)
+{
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+
+	if (!fwspec)
+		return NULL;
+	return fwspec->iommu_priv;
+}
+
 static void parse_driver_options(struct arm_smmu_device *smmu)
 {
 	int i = 0;
@@ -1776,13 +1795,19 @@ static int arm_smmu_atc_inv_master(struct arm_smmu_master *master,
 }
 
 static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
-				   int ssid, unsigned long iova, size_t size)
+				   unsigned long iova, size_t size)
 {
 	int ret = 0;
+	unsigned int ssid = 0;
 	unsigned long flags;
 	struct arm_smmu_cmdq_ent cmd;
 	struct arm_smmu_master *master;
 
+	if (smmu_domain->parent) {
+		ssid = smmu_domain->ssid;
+		smmu_domain = smmu_domain->parent;
+	}
+
 	if (!(smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS))
 		return 0;
 
@@ -1935,10 +1960,12 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
 		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
-		if (cfg->tables) {
+		if (cfg->tables)
 			arm_smmu_free_cd_tables(smmu_domain);
+		if (cfg->cd.asid)
 			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
-		}
+		if (smmu_domain->ssid)
+			ioasid_free(smmu_domain->ssid);
 	} else {
 		struct arm_smmu_s2_cfg *cfg = &smmu_domain->s2_cfg;
 		if (cfg->vmid)
@@ -1948,11 +1975,10 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 	kfree(smmu_domain);
 }
 
-static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
+static int arm_smmu_domain_finalise_cd(struct arm_smmu_domain *smmu_domain,
 				       struct arm_smmu_master *master,
 				       struct io_pgtable_cfg *pgtbl_cfg)
 {
-	int ret;
 	int asid;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
@@ -1961,16 +1987,30 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	if (asid < 0)
 		return asid;
 
-	ret = arm_smmu_alloc_cd_tables(smmu_domain, master);
-	if (ret)
-		goto out_free_asid;
-
 	cfg->cd.asid	= (u16)asid;
 	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
 	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
+	return 0;
+}
+
+static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
+				       struct arm_smmu_master *master,
+				       struct io_pgtable_cfg *pgtbl_cfg)
+{
+	int ret;
+	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+
+	ret = arm_smmu_domain_finalise_cd(smmu_domain, master, pgtbl_cfg);
+	if (ret)
+		return ret;
+
+	ret = arm_smmu_alloc_cd_tables(smmu_domain, master);
+	if (ret)
+		goto out_free_asid;
 
-	ret = arm_smmu_write_ctx_desc(smmu_domain, 0, &smmu_domain->s1_cfg.cd);
+	ret = arm_smmu_write_ctx_desc(smmu_domain, 0, &cfg->cd);
 	if (ret)
 		goto out_free_table;
 	return 0;
@@ -1978,7 +2018,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 out_free_table:
 	arm_smmu_free_cd_tables(smmu_domain);
 out_free_asid:
-	arm_smmu_bitmap_free(smmu->asid_map, asid);
+	arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
 	return ret;
 }
 
@@ -2031,7 +2071,10 @@ static int arm_smmu_domain_finalise(struct iommu_domain *domain,
 		ias = min_t(unsigned long, ias, VA_BITS);
 		oas = smmu->ias;
 		fmt = ARM_64_LPAE_S1;
-		finalise_stage_fn = arm_smmu_domain_finalise_s1;
+		if (smmu_domain->parent)
+			finalise_stage_fn = arm_smmu_domain_finalise_cd;
+		else
+			finalise_stage_fn = arm_smmu_domain_finalise_s1;
 		break;
 	case ARM_SMMU_DOMAIN_NESTED:
 	case ARM_SMMU_DOMAIN_S2:
@@ -2177,15 +2220,13 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 {
 	int ret = 0;
 	unsigned long flags;
-	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct arm_smmu_device *smmu;
+	struct arm_smmu_master *master = dev_to_master(dev);
 	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
-	struct arm_smmu_master *master;
 
-	if (!fwspec)
+	if (!master)
 		return -ENOENT;
 
-	master = fwspec->iommu_priv;
 	smmu = master->smmu;
 
 	arm_smmu_detach_dev(master);
@@ -2213,6 +2254,10 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 			smmu_domain->s1_cfg.s1cdmax, master->ssid_bits);
 		ret = -EINVAL;
 		goto out_unlock;
+	} else if (smmu_domain->parent) {
+		dev_err(dev, "cannot attach auxiliary domain\n");
+		ret = -EINVAL;
+		goto out_unlock;
 	}
 
 	master->domain = smmu_domain;
@@ -2252,7 +2297,7 @@ arm_smmu_unmap(struct iommu_domain *domain, unsigned long iova, size_t size)
 		return 0;
 
 	ret = ops->unmap(ops, iova, size);
-	if (ret && arm_smmu_atc_inv_domain(smmu_domain, 0, iova, size))
+	if (ret && arm_smmu_atc_inv_domain(smmu_domain, iova, size))
 		return 0;
 
 	return ret;
@@ -2521,6 +2566,194 @@ static void arm_smmu_put_resv_regions(struct device *dev,
 		kfree(entry);
 }
 
+static bool arm_smmu_dev_has_feature(struct device *dev,
+				     enum iommu_dev_features feat)
+{
+	struct arm_smmu_master *master = dev_to_master(dev);
+
+	if (!master)
+		return false;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_AUX:
+		return master->ssid_bits != 0;
+	default:
+		return false;
+	}
+}
+
+static bool arm_smmu_dev_feature_enabled(struct device *dev,
+					 enum iommu_dev_features feat)
+{
+	struct arm_smmu_master *master = dev_to_master(dev);
+
+	if (!master)
+		return false;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_AUX:
+		return master->auxd_enabled;
+	default:
+		return false;
+	}
+}
+
+static int arm_smmu_dev_enable_feature(struct device *dev,
+				       enum iommu_dev_features feat)
+{
+	struct arm_smmu_master *master = dev_to_master(dev);
+
+	if (!arm_smmu_dev_has_feature(dev, feat))
+		return -ENODEV;
+
+	if (arm_smmu_dev_feature_enabled(dev, feat))
+		return -EBUSY;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_AUX:
+		master->auxd_enabled = true;
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int arm_smmu_dev_disable_feature(struct device *dev,
+					enum iommu_dev_features feat)
+{
+	struct arm_smmu_master *master = dev_to_master(dev);
+
+	if (!arm_smmu_dev_feature_enabled(dev, feat))
+		return -EINVAL;
+
+	switch (feat) {
+	case IOMMU_DEV_FEAT_AUX:
+		/* TODO: check if aux domains are still attached? */
+		master->auxd_enabled = false;
+		return 0;
+	default:
+		return -EINVAL;
+	}
+}
+
+static int arm_smmu_aux_attach_dev(struct iommu_domain *domain, struct device *dev)
+{
+	int ret;
+	struct iommu_domain *parent_domain;
+	struct arm_smmu_domain *parent_smmu_domain;
+	struct arm_smmu_master *master = dev_to_master(dev);
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+
+	if (!arm_smmu_dev_feature_enabled(dev, IOMMU_DEV_FEAT_AUX))
+		return -EINVAL;
+
+	parent_domain = iommu_get_domain_for_dev(dev);
+	if (!parent_domain)
+		return -EINVAL;
+	parent_smmu_domain = to_smmu_domain(parent_domain);
+
+	mutex_lock(&smmu_domain->init_mutex);
+	if (smmu_domain->stage != ARM_SMMU_DOMAIN_S1 ||
+	    parent_smmu_domain->stage != ARM_SMMU_DOMAIN_S1) {
+		ret = -EINVAL;
+		goto out_unlock;
+	} else if (smmu_domain->s1_cfg.tables) {
+		/* Already attached as a normal domain */
+		dev_err(dev, "cannot attach domain in auxiliary mode\n");
+		ret = -EINVAL;
+		goto out_unlock;
+	} else if (!smmu_domain->smmu) {
+		ioasid_t ssid = ioasid_alloc(&private_ioasid, 1,
+					     (1UL << master->ssid_bits) - 1,
+					     NULL);
+		if (ssid == INVALID_IOASID) {
+			ret = -EINVAL;
+			goto out_unlock;
+		}
+		smmu_domain->smmu = master->smmu;
+		smmu_domain->parent = parent_smmu_domain;
+		smmu_domain->ssid = ssid;
+
+		ret = arm_smmu_domain_finalise(domain, master);
+		if (ret) {
+			smmu_domain->smmu = NULL;
+			smmu_domain->ssid = 0;
+			smmu_domain->parent = NULL;
+			ioasid_free(ssid);
+			goto out_unlock;
+		}
+	} else if (smmu_domain->parent != parent_smmu_domain) {
+		/* Additional restriction: an aux domain has a single parent */
+		dev_err(dev, "cannot attach aux domain with different parent\n");
+		ret = -EINVAL;
+		goto out_unlock;
+	}
+
+	if (!smmu_domain->aux_nr_devs++)
+		arm_smmu_write_ctx_desc(parent_smmu_domain, smmu_domain->ssid,
+					&smmu_domain->s1_cfg.cd);
+	/*
+	 * Note that all other devices attached to the parent domain can now
+	 * access this context as well.
+	 */
+
+out_unlock:
+	mutex_unlock(&smmu_domain->init_mutex);
+	return ret;
+}
+
+static void arm_smmu_aux_detach_dev(struct iommu_domain *domain, struct device *dev)
+{
+	struct iommu_domain *parent_domain;
+	struct arm_smmu_domain *parent_smmu_domain;
+	struct arm_smmu_master *master = dev_to_master(dev);
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+
+	if (!arm_smmu_dev_feature_enabled(dev, IOMMU_DEV_FEAT_AUX))
+		return;
+
+	parent_domain = iommu_get_domain_for_dev(dev);
+	if (!parent_domain)
+		return;
+	parent_smmu_domain = to_smmu_domain(parent_domain);
+
+	mutex_lock(&smmu_domain->init_mutex);
+	if (!smmu_domain->aux_nr_devs)
+		goto out_unlock;
+
+	if (!--smmu_domain->aux_nr_devs) {
+		arm_smmu_write_ctx_desc(parent_smmu_domain, smmu_domain->ssid,
+					NULL);
+		/*
+		 * TLB doesn't need invalidation since accesses from the device
+		 * can't use this domain's ASID once the CD is clear.
+		 *
+		 * Sadly that doesn't apply to ATCs, which are PASID tagged.
+		 * Invalidate all other devices as well, because even though
+		 * they weren't 'officially' attached to the auxiliary domain,
+		 * they could have formed ATC entries.
+		 */
+		arm_smmu_atc_inv_domain(smmu_domain, 0, 0);
+	} else {
+		struct arm_smmu_cmdq_ent cmd;
+
+		/* Invalidate only this device's ATC */
+		if (master->ats_enabled) {
+			arm_smmu_atc_inv_to_cmd(smmu_domain->ssid, 0, 0, &cmd);
+			arm_smmu_atc_inv_master(master, &cmd);
+		}
+	}
+out_unlock:
+	mutex_unlock(&smmu_domain->init_mutex);
+}
+
+static int arm_smmu_aux_get_pasid(struct iommu_domain *domain, struct device *dev)
+{
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+
+	return smmu_domain->ssid ?: -EINVAL;
+}
+
 static struct iommu_ops arm_smmu_ops = {
 	.capable		= arm_smmu_capable,
 	.domain_alloc		= arm_smmu_domain_alloc,
@@ -2539,6 +2772,13 @@ static struct iommu_ops arm_smmu_ops = {
 	.of_xlate		= arm_smmu_of_xlate,
 	.get_resv_regions	= arm_smmu_get_resv_regions,
 	.put_resv_regions	= arm_smmu_put_resv_regions,
+	.dev_has_feat		= arm_smmu_dev_has_feature,
+	.dev_feat_enabled	= arm_smmu_dev_feature_enabled,
+	.dev_enable_feat	= arm_smmu_dev_enable_feature,
+	.dev_disable_feat	= arm_smmu_dev_disable_feature,
+	.aux_attach_dev		= arm_smmu_aux_attach_dev,
+	.aux_detach_dev		= arm_smmu_aux_detach_dev,
+	.aux_get_pasid		= arm_smmu_aux_get_pasid,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
@@ -3332,6 +3572,8 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	}
 	smmu->dev = dev;
+	/* Reserve ASID 0 for validity check */
+	set_bit(0, smmu->asid_map);
 
 	if (dev->of_node) {
 		ret = arm_smmu_device_dt_probe(pdev, smmu);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
