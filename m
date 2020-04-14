Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED05B1A86F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7n7BhHVaPfA/xbDvfnSfwLvPeCUecGikCemgCr+1rI=; b=YeXEpDZTpALa5F
	hual/cpFo65EB0bdVkACD+LlryxgWrbsE+PbDmnf6hmwXhri6Pk8Y93OZRXvwh6KZibPWyqR9mTq0
	r2gMDygIwR/VIYLt4m+rwZZF12rX/v3xk2SsTVUzOqahZpVt94N3vec+HGIDJag4lUHD/grngBdyV
	rdf09H+7XV3qHzMChSG8LyO/LuqO0coFnctjA9DjonxiwvpfusXj2AYUx9YsNCGR4jDG5dRcTcg6E
	tf8wP7DGJHCUGFnY/BIadQurb/opIupPasqRSoVAkrmNcCDscdhwwUGAPgs8cgX7nT/efrlGBy/xv
	PMAJTedxEQRBTVj6/6aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP21-0007CR-FF; Tue, 14 Apr 2020 17:07:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOzA-0002AD-TU
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id a201so14546831wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uHUqHTfoGR+1ZkqPou9Z5HBhwxdn8u/b73K/p08vGt4=;
 b=hSOw4eWIOpcUGkqXNPQ9dtdmR/ipT2mxWsiI3pMLVH0qgRPNjHSMENCRjHZ4NJar66
 7/UT+rWF0VVOTwd6Qq1Ko5BGuW+jxJLwAD3xaf5wYQROloGanuLGb7IPMnVJv7HK78+I
 6ngZrW4BxXtksLmLmfoiWffLmjWadvjH0C7qLcRN+lO7dVaEm1JGvGctjkYtl4N944aK
 W3n+wj6bEmpU/CznO6UiFv/JDUuQBgZiEQyXklusRoJ6jwr/CH6Wy/hgVNh5izNnczuz
 90748Du66RWc5+QokDus/aLjad+8nROeHW3JEc7vfg8mwm0Xu+810td/BaN7JKL0CQ6H
 pY3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uHUqHTfoGR+1ZkqPou9Z5HBhwxdn8u/b73K/p08vGt4=;
 b=LISu8jd55zLwjeZ/qHLoAGUDwSydIMMyfhfDcqWVED0CWm2OfaU6IZf3hbROxPGNw6
 7RAhIr4NFYPUQQvxZv+QbJ+o4UGEIdhoIBMOKr59XoORmXipGNOG4lgV66vvPdjJHWRQ
 LW1i8thyQ6goyMOP7GCgZQ9sCXRBtsOxI7iQA8WjSpXkZ/LNXI0YkUIvoaEjDQQ4Aies
 a/ThjV5NqaMSjugMS+qqTWIq+y5t3MLQ8LPR/Refdla0yk8/eeImfUSq8+2ZmQKvwrUU
 /WADg5QQrFtydgigl5PRrs/860pJr1GdCM0GxUTmzQI85XXls7lp14wzRLDdRFxcNMDk
 XhYg==
X-Gm-Message-State: AGi0PuaFVTT9xdi5kVs3NEXVRmLGNaGL6s5McYavv/W5dU730m17lSpV
 //ZW6KuOnXugvVI9sfbs+Y06ow==
X-Google-Smtp-Source: APiQypKS0JuC3gKtoh+XCp+shpu7gwSGraLZSLm/eXL7WMGLNhlt6UWbZ/JnbP6LfEz+El1lwsxHkg==
X-Received: by 2002:a1c:2506:: with SMTP id l6mr784909wml.44.1586883871278;
 Tue, 14 Apr 2020 10:04:31 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:30 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 10/25] iommu/arm-smmu-v3: Manage ASIDs with xarray
Date: Tue, 14 Apr 2020 19:02:38 +0200
Message-Id: <20200414170252.714402-11-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100433_049865_42E28BB7 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, catalin.marinas@arm.com, joro@8bytes.org,
 robin.murphy@arm.com, jgg@ziepe.ca, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
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
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
