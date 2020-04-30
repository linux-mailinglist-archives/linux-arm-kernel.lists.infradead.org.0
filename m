Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 065391BFEEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JS2bzAjaj4bev757v0QYCz0qbbSKTRZdC1zUSKLLyXc=; b=irLzydrwPZef2H
	FZB/C7F8ke+6Q1z48ErY6wfIBpJRW8dM9T/FmDCNSAcjK8InFumQesscEziVM64wli6ipKe73SPLq
	qzsMbDTwxPTuDJEs6szKbtrO10POVrz+32JESF6n8A3II8F6gbFiEMWCggPx1Jd2GnU59MYLjAvCs
	ZXBw9JDxaJZCMVNnA0QrjDseMHWLCoFi7MVgkHYLKDUBqpZVHA2jM+/TiPX0Tfqb+NYzA/fQlQQJr
	D3pk1cDdHZJIDtd1BjEbJDZmiUSVqMLUQGQcuaxaKpUPJpQXCjQTugsinifDnllGX6f5OYhQmx+fp
	8gcCTtk3eselPimipDzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAQD-0005JF-8P; Thu, 30 Apr 2020 14:44:17 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMY-0002Qr-I0
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id d17so7202364wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z55RW1kLtduCSGKQoCYWPvAlJD4CWYQGRs9RS3l0y7E=;
 b=iCI5D7pHVVfkmnC4A/ii15JNj1VRwK0r2e1J5e51YppXJtat45FgnQY9Fqv1gPNAW+
 IAmBZJcIAdh8rYLUuaSi7GnRStYEp4Ao6YLIZ8+rNAh3QpwpHfzR9kfFqRnsk6s740/S
 nv+FNYwmo+NGO0Ph1zLAqrisEQSA2R7h4SJEdFiP6Iw6Z1kB2GTbBG4OX41JloUQ0so7
 PCX173HHUMsc2bD0/+/IIw+NTdd8GqOReP1RwVIw8QUVCKBWJToFjZRe2E1N8NXndWfd
 wPggX4XPdOtatJKiASYfo+uUPmYQ3Oo11Sz3ctUGXWExOWgtTAZ4p/Jj33ik3ENhaxyl
 +2eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z55RW1kLtduCSGKQoCYWPvAlJD4CWYQGRs9RS3l0y7E=;
 b=oiGCCpKctO7EUMvO23jEwFvoVuWFLE7SMQceNF7jYnnGnypOsRwas1fYu8wRRyhZfr
 IMHhxQY8jlz9HeDjd61JoX5rcSseX+dLJhp+3cnpBo9uaFMcBhNldTQJxfSNbU8c2U9+
 AiZr0LC0a0SaukAbZhEt2gh5lYQSC5KOV/OBBHL+Uu88Cs5VuWMV0iojmzmsncqZwbdV
 fCW6fQ8gjWrG4J08JxlIdzsfY+DX9pHRLF6ujum3/1oeMog53y7Ci3VXNZ/gDNTm8AjT
 iAVLUT+Y0Yxsszt7gq/OqV4eKhMKUWt4Ck4QCNdEHIlms9tSxbV/m7X8fwrqq6bRSMgU
 pFuw==
X-Gm-Message-State: AGi0PuZHpzl4kwQ9XiYISJ/3PViW5cZBvl7VAtrYR13BS+KWOEmtXdle
 83m2PhAe3BPpv1+oEtNl0uXxvy79KR8=
X-Google-Smtp-Source: APiQypLQrLaiUG2ByW+bgKF8WSKNtKeRw5nbtxQ1t2adT3J6FTnarcDi71lbrLRF9PYNpBLH5Y0xrA==
X-Received: by 2002:adf:e591:: with SMTP id l17mr4228393wrm.268.1588257629415; 
 Thu, 30 Apr 2020 07:40:29 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:28 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 09/25] iommu/arm-smmu-v3: Manage ASIDs with xarray
Date: Thu, 30 Apr 2020 16:34:08 +0200
Message-Id: <20200430143424.2787566-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074031_682885_327A74DE 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for sharing some ASIDs with the CPU, use a global xarray to
store ASIDs and their context. ASID#0 is now reserved, and the ASID
space is global.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 60a415e8e2b6f..96ee60002e85e 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -664,7 +664,6 @@ struct arm_smmu_device {
 
 #define ARM_SMMU_MAX_ASIDS		(1 << 16)
 	unsigned int			asid_bits;
-	DECLARE_BITMAP(asid_map, ARM_SMMU_MAX_ASIDS);
 
 #define ARM_SMMU_MAX_VMIDS		(1 << 16)
 	unsigned int			vmid_bits;
@@ -724,6 +723,8 @@ struct arm_smmu_option_prop {
 	const char *prop;
 };
 
+static DEFINE_XARRAY_ALLOC1(asid_xa);
+
 static struct arm_smmu_option_prop arm_smmu_options[] = {
 	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
 	{ ARM_SMMU_OPT_PAGE0_REGS_ONLY, "cavium,cn9900-broken-page1-regspace"},
@@ -1763,6 +1764,14 @@ static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
 	cdcfg->cdtab = NULL;
 }
 
+static void arm_smmu_free_asid(struct arm_smmu_ctx_desc *cd)
+{
+	if (!cd->asid)
+		return;
+
+	xa_erase(&asid_xa, cd->asid);
+}
+
 /* Stream table manipulation functions */
 static void
 arm_smmu_write_strtab_l1_desc(__le64 *dst, struct arm_smmu_strtab_l1_desc *desc)
@@ -2448,10 +2457,9 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
 		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
-		if (cfg->cdcfg.cdtab) {
+		if (cfg->cdcfg.cdtab)
 			arm_smmu_free_cd_tables(smmu_domain);
-			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
-		}
+		arm_smmu_free_asid(&cfg->cd);
 	} else {
 		struct arm_smmu_s2_cfg *cfg = &smmu_domain->s2_cfg;
 		if (cfg->vmid)
@@ -2466,14 +2474,15 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 				       struct io_pgtable_cfg *pgtbl_cfg)
 {
 	int ret;
-	int asid;
+	u32 asid;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 	typeof(&pgtbl_cfg->arm_lpae_s1_cfg.tcr) tcr = &pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 
-	asid = arm_smmu_bitmap_alloc(smmu->asid_map, smmu->asid_bits);
-	if (asid < 0)
-		return asid;
+	ret = xa_alloc(&asid_xa, &asid, &cfg->cd,
+		       XA_LIMIT(1, (1 << smmu->asid_bits) - 1), GFP_KERNEL);
+	if (ret)
+		return ret;
 
 	cfg->s1cdmax = master->ssid_bits;
 
@@ -2506,7 +2515,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 out_free_cd_tables:
 	arm_smmu_free_cd_tables(smmu_domain);
 out_free_asid:
-	arm_smmu_bitmap_free(smmu->asid_map, asid);
+	arm_smmu_free_asid(&cfg->cd);
 	return ret;
 }
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
