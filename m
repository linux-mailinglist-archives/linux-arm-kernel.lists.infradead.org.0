Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D1316AF0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:27:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCp5D2uC5JNSfVex7n0EKL0MXukyXrd7XcxQBPu90KI=; b=pEeCgnK5C3VGOZ
	5hyh0J6nK9dK0X8/XXVUrpZ78M5O6VoeX8isTc6nVH4X1+xTlTE5FZBtt2uJVsCB4P4E1EzzB26sg
	qIlX0DkvUddpSLnkJhqmli1fBG5myk1JgbDqnzMYFLtzo1CT5MXwo9pM2r2mhhnxtk20WmNoFBqSn
	QwZoOBbG2Bxy3CodkyGVt0jfwJMzzeWVnDJ0bJ45g/dj4q+xr2aNyTQRt+lMTRjhxsNOesfbMcWez
	WhriFB0cMSsTDwxlO8KrkN1rUlFTiLyknS27FDQVKDeDg3iYlyYJAT9BbWCqY7QB1dmEdl4gCD8PD
	MrGa1Ee4AmhQnnwBHvrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ISL-0000hK-FA; Mon, 24 Feb 2020 18:27:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPJ-0005Yf-DS
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so296785wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PQBZlQXWcV9D5kUq6nU/sNwIcBZzF9eb/NGOMt8k20I=;
 b=eI8yYEK7OL2vRGcpG1JnOgsMhuDCO4FXpzt9iuYs7rxQMKyOhp9KhI6x7vaf9IwPZ/
 kMlSIfxdQt4lS/U4vVf8kxi+HenGZEauzOVE872pbr0e0ieZwNbK4HR43P+vIbiIkTgR
 AF8PX2d3e5ts8X9Qh0BYqeVSmsTe8bm5BUlC8jxx/e59zILlRqOXfDm/mQsDIUPuqxDf
 hsc3maRZYuhQQqz6cSJLqhQ/dmVNWbW/E/G8tYAVuNtffl8+B1msnQ3Z2BW0+KVqWXHV
 3KMq1zSe1xIGVjkKk+tQ8XnwBg/DWJIWVCFiRRrxgiTV3h6Ci5Dkon9FjvCNhrGQPYi9
 5JFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PQBZlQXWcV9D5kUq6nU/sNwIcBZzF9eb/NGOMt8k20I=;
 b=bKqkwOdEsZvOs5bFGcHvR3DcVVvNZP/vpROcpaV6/4AoNb+yU1FWr+of9s8Tql6nwP
 9C45p86lvDMeb22AKttho5HKs64x7XikVWG7F3B0gHdQwa8shOx/EXh0qiO4kXbiSICA
 EH7cTaMkc5iygBi6m1DFG7Fx5OlSNZpb4GdxIsfbcNuRRcoxeywBbgBxxpsHLvwQMO22
 +TroQdAaSyh0A/XOz8synC22iUrQsdv5mGgxYv8Pd4qEdsmnFyx3iMtfcpja41csIRQ0
 ksJr+R7YQBunBCNnqyW0oGNWUxv/NptmhFaVliM06TLjw3kREpjNbwk360NqW8y8eaeQ
 fsCg==
X-Gm-Message-State: APjAAAUSB/d9ke+GImCsiHO0jy0taLaR8VQzL/K70cebv4PSJEEcRcZo
 eIWHFrC3WDnGRKG8Ml/VulnOqg==
X-Google-Smtp-Source: APXvYqy8MSJlJty3XKxuu4hz13wjSc+2uWe+QAIoI4+u4Wyj/t1n6Km8w38KIy+F6OJ89qWYqndYGw==
X-Received: by 2002:a7b:cc97:: with SMTP id p23mr303798wma.89.1582568679409;
 Mon, 24 Feb 2020 10:24:39 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:39 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 09/26] iommu/arm-smmu-v3: Manage ASIDs with xarray
Date: Mon, 24 Feb 2020 19:23:44 +0100
Message-Id: <20200224182401.353359-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102441_552061_5F44107A 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, catalin.marinas@arm.com,
 joro@8bytes.org, robin.murphy@arm.com, robh+dt@kernel.org, yi.l.liu@intel.com,
 Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>

In preparation for sharing some ASIDs with the CPU, use a global xarray to
store ASIDs and their context. ASID#1 is not reserved, and the ASID
space is global.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 87ae31ef35a1..7737b70e74cd 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -651,7 +651,6 @@ struct arm_smmu_device {
 
 #define ARM_SMMU_MAX_ASIDS		(1 << 16)
 	unsigned int			asid_bits;
-	DECLARE_BITMAP(asid_map, ARM_SMMU_MAX_ASIDS);
 
 #define ARM_SMMU_MAX_VMIDS		(1 << 16)
 	unsigned int			vmid_bits;
@@ -711,6 +710,8 @@ struct arm_smmu_option_prop {
 	const char *prop;
 };
 
+static DEFINE_XARRAY_ALLOC1(asid_xa);
+
 static struct arm_smmu_option_prop arm_smmu_options[] = {
 	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
 	{ ARM_SMMU_OPT_PAGE0_REGS_ONLY, "cavium,cn9900-broken-page1-regspace"},
@@ -1742,6 +1743,14 @@ static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
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
@@ -2388,10 +2397,9 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
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
@@ -2406,14 +2414,15 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
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
 
@@ -2446,7 +2455,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 out_free_cd_tables:
 	arm_smmu_free_cd_tables(smmu_domain);
 out_free_asid:
-	arm_smmu_bitmap_free(smmu->asid_map, asid);
+	arm_smmu_free_asid(&cfg->cd);
 	return ret;
 }
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
