Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 351561FF859
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OQN4wwf0WmvLhWA5ybMJlgpzVXl+TkeMrBavpDsI6k=; b=iIAYB38MjPtzy/
	nVPApsAxFcWMvvC8ycKNBZgs2PP0v3bvGulJlFUfGqkGVe+XybCPuzdxlOBi4NcPII3E3r7V9pTIc
	rz5VJIctqJMesisgXb8k3E0h22IJTsxWfzUyJ2iEEJt8dVjANmHNyn6S2lTm2zeNJoRwBxuyonLDL
	UmlKAhIQ52n9Ymot4I4+1nek4T3HFyHN01cZixPjUpDPLnlYZ3oJVLbQWG3vc+DWk/w++mjVspvzN
	4nIU1Su9vucOoGcjCFmXA48adwnhETuYbZpxxqY4ipv9yAIMvnoJV+S2AjF6YyxGgoISX3jt8agKU
	esstZnbJh3OH92RmgPLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlww4-0000oo-GU; Thu, 18 Jun 2020 15:58:40 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwqP-0002GB-O9
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:52:58 +0000
Received: by mail-ej1-x641.google.com with SMTP id p20so6897259ejd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 08:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MNKD6Dmbg1TaE6fvYxzmdVGqFWuaOjJYtMjLhWmnIvo=;
 b=fDbtc15FP1PMKFiVJC1xPK+dnPneh4gHR5Z5pyZz6iDbXrnrg7Gai4MJxSBwm5mM9v
 NGRaKISThUuuwgRt+TMw/RfEMNNwRvvCO988/Cysnqn3CIqtZE78iqHHATKrUvig9huz
 5bDTNN+8IoMVQimN2851pvQMREQWtJ9Y/CFGobZqLvRXU5qzw9C9YZmBwdZ6YbFi5CLN
 2ELl6LeunpXJFw9N3rafo00si6+tSLlbAoJPAInGGLozdmWbUReNSH6gjn+rshCdWJcQ
 PeYvdxW62Le2lQd7JDTWKinVvZq+ztbeM4jyLNX8bNHJB3Q3vj6RoJT4QVMe457y1ZGE
 erhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MNKD6Dmbg1TaE6fvYxzmdVGqFWuaOjJYtMjLhWmnIvo=;
 b=JnpbuK6yfWTu1QHNBCwgpDf1UQwV4TBqIxVcEp9rtIYQ+574q/vCh2SYwDeollM6Ko
 hVt5kzyX9zkUHQI3S6yVF0AVE25zg6Aapvm8ibVFK0tEiqlAbnJVya91DCrLhXZ+tckt
 tNg4jKTzToMMtMKtLLgi3V9bqXigWRjUmnlORzBuNhWqZ13sdn+dmkENFYLR+zzHSUz8
 Oow7ByU+KkKo8hfuwmEDebiEd/kKeHMyVqXcVe+DHp2F9IviT4WfKZ307lPnHu/GfJ+y
 XmEWxlCgsDHZEuv7bcqkusX0gLknzDSiOFm/Tf5aSzu5q/OkeOnStM46PmsmJY8aPrp9
 enhg==
X-Gm-Message-State: AOAM530GvknenOZyNIQU6+xnWlCH/L4/wS/s17aoGpbvo6/9YU908ROA
 mzJPATNzy8bO/QCSC/oPA1YHEg==
X-Google-Smtp-Source: ABdhPJztByorObtVQlxC6WShKEAqlvU9oXK33GgelOz6P5sV8o7rZktu08Gnv9xaL32FeH+u69sT9A==
X-Received: by 2002:a17:906:4e59:: with SMTP id
 g25mr4478633ejw.60.1592495568467; 
 Thu, 18 Jun 2020 08:52:48 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id 63sm2402267edy.8.2020.06.18.08.52.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 08:52:48 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
Subject: [PATCH v8 09/12] iommu/arm-smmu-v3: Check for SVA features
Date: Thu, 18 Jun 2020 17:51:22 +0200
Message-Id: <20200618155125.1548969-10-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618155125.1548969-1-jean-philippe@linaro.org>
References: <20200618155125.1548969-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_085249_798714_B0DDC909 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: fenghua.yu@intel.com, jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, catalin.marinas@arm.com,
 joro@8bytes.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 robin.murphy@arm.com, hch@infradead.org, zhengxiang9@huawei.com,
 Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org, will@kernel.org,
 xuzaibo@huawei.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Aggregate all sanity-checks for sharing CPU page tables with the SMMU
under a single ARM_SMMU_FEAT_SVA bit. For PCIe SVA, users also need to
check FEAT_ATS and FEAT_PRI. For platform SVA, they will have to check
FEAT_STALLS.

Introduce ARM_SMMU_FEAT_BTM (Broadcast TLB Maintenance), but don't
enable it at the moment. Since the entire VMID space is shared with the
CPU, enabling DVM (by clearing SMMU_CR2.PTM) could result in
over-invalidation and affect performance of stage-2 mappings.

Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v7->v8: Use id_aa64mmfr0_parange_to_phys_shift()
---
 drivers/iommu/arm-smmu-v3.c | 48 +++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 5506add42c9c8..e2d5171bfb7b9 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -654,6 +654,8 @@ struct arm_smmu_device {
 #define ARM_SMMU_FEAT_STALL_FORCE	(1 << 13)
 #define ARM_SMMU_FEAT_VAX		(1 << 14)
 #define ARM_SMMU_FEAT_RANGE_INV		(1 << 15)
+#define ARM_SMMU_FEAT_BTM		(1 << 16)
+#define ARM_SMMU_FEAT_SVA		(1 << 17)
 	u32				features;
 
 #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
@@ -3894,6 +3896,49 @@ static int arm_smmu_device_reset(struct arm_smmu_device *smmu, bool bypass)
 	return 0;
 }
 
+static bool arm_smmu_supports_sva(struct arm_smmu_device *smmu)
+{
+	unsigned long reg, fld;
+	unsigned long oas;
+	unsigned long asid_bits;
+
+	u32 feat_mask = ARM_SMMU_FEAT_BTM | ARM_SMMU_FEAT_COHERENCY;
+
+	if ((smmu->features & feat_mask) != feat_mask)
+		return false;
+
+	if (!(smmu->pgsize_bitmap & PAGE_SIZE))
+		return false;
+
+	/*
+	 * Get the smallest PA size of all CPUs (sanitized by cpufeature). We're
+	 * not even pretending to support AArch32 here. Abort if the MMU outputs
+	 * addresses larger than what we support.
+	 */
+	reg = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
+	fld = cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR0_PARANGE_SHIFT);
+	oas = id_aa64mmfr0_parange_to_phys_shift(fld);
+	if (smmu->oas < oas)
+		return false;
+
+	/* We can support bigger ASIDs than the CPU, but not smaller */
+	fld = cpuid_feature_extract_unsigned_field(reg, ID_AA64MMFR0_ASID_SHIFT);
+	asid_bits = fld ? 16 : 8;
+	if (smmu->asid_bits < asid_bits)
+		return false;
+
+	/*
+	 * See max_pinned_asids in arch/arm64/mm/context.c. The following is
+	 * generally the maximum number of bindable processes.
+	 */
+	if (IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
+		asid_bits--;
+	dev_dbg(smmu->dev, "%d shared contexts\n", (1 << asid_bits) -
+		num_possible_cpus() - 2);
+
+	return true;
+}
+
 static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
 {
 	u32 reg;
@@ -4093,6 +4138,9 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
 
 	smmu->ias = max(smmu->ias, smmu->oas);
 
+	if (arm_smmu_supports_sva(smmu))
+		smmu->features |= ARM_SMMU_FEAT_SVA;
+
 	dev_info(smmu->dev, "ias %lu-bit, oas %lu-bit (features 0x%08x)\n",
 		 smmu->ias, smmu->oas, smmu->features);
 	return 0;
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
