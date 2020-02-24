Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7797D16AF19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:29:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdFzD1GPgreM/CBcKj3eZ4BcJjnvD9u3kvy3S9HTQMc=; b=KGXhl2B+UKBzzK
	ERXGDyZS33WvDwuNwRQjTNU0yXAAtReTtjzFLuV2W5nJxWssuJBdjb7tQPD1g4CsXEuECgYdhJ41M
	RYlUuz7F/9nhzQfnqes/+5a9iLHWgbw/QFl3FQeE+78K/7CcPq1nd9Ur6hTd1WQeCEqGNRXCpEiwF
	VasMSTaAj+whvL8yPDfHK9ekOSg3+C9PU/pxpQIazFuajjH8i/gc8tOXOyNwXcN0/gv5muhh0oyCK
	sItueeICHuXJXSMHK4f7i/hXfEIn3dkwM/J2BJAeOdtnT9x+9b4a85GPThxbpIAq2YXFjFAah+Cd5
	GT3GvCQCcajD/yWwcmgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ITR-0001kt-0a; Mon, 24 Feb 2020 18:28:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPN-0005e7-Ac
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:47 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so357328wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VZzaOtmpBWk0D2v8fL7Zeypf33IeahkaNmnZnif113I=;
 b=K2euF5pVYNAhonoO5khYwI6BsplCOwGWhlMtTnJB4eQ+hn6RIHymr179DQ8eHX+LHa
 ijA3g4exqAAL3q2OKlQHOZnFDKWh5ME3dOyyKFPqXkVVPewgMffh2b2DWu7gNNRtnnHy
 BRADIyENrUMBjQ8oLT1Yl0IqWWoy/AYWp3sxKHFT6fRsl58Sr6YcNAxD4Fy4bkpQB2VC
 3aSEOSl6Eb8t4fyejE57kfgh+AEjcqoA/4+mtGcWcaq8HetByztJ+nLHarJQZsEabl6Y
 NwbtorWE6f18Gu8jhjR4QSq5VNPZ/Bs0VvvIhY0LTSJpXgXsUpfq1VBIqwjOm0VDDjKe
 us+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VZzaOtmpBWk0D2v8fL7Zeypf33IeahkaNmnZnif113I=;
 b=b9PMglLo/LFZkrFlqVVgTLTISCiaAWWrnMV6OWquvawyZxGCeIeCfCSLBj0xzZfN/5
 RwCZXeSBQhBgrgf1AdItTmal/uRZgMmos8nDWlOcu4keln4WmOTux99wOkKJksymXNCK
 twHmOzY5f1PRalu60fACV7J4ks+Qb8WnzXa0yDj5U3IntYW58eY9RMmau7Uw94MQaPoN
 HNMRGoGltibeylg48wv4Xm2notDBUupmYALCKdzr6rKNifGru7e+PmkJAofEpPNY/yGQ
 KPnPKKR+98ttVojTzTIDKoAoq2ajDY4U49XEPU6LtZLQx/GPZ9cBIIEc7eUCuEEq3AXG
 XpRg==
X-Gm-Message-State: APjAAAXaWTIQTO5HAs0JQrlu5B9ABu9RyJE9rOKxcBgBPyUmEIK5SrKP
 IX1qxMy+Kmmh7nkqIDAZC5rq2w==
X-Google-Smtp-Source: APXvYqyY0DtWspDkZQv16SFZHbi9Y8DEMSvPEjuQrwIwdFyNqdguuGmDr8TOpifnv4y3GLYVoeNPfg==
X-Received: by 2002:a1c:7d92:: with SMTP id y140mr283862wmc.145.1582568683758; 
 Mon, 24 Feb 2020 10:24:43 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:43 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 13/26] iommu/arm-smmu-v3: Add support for VHE
Date: Mon, 24 Feb 2020 19:23:48 +0100
Message-Id: <20200224182401.353359-14-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102445_542597_9E8616CB 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

ARMv8.1 extensions added Virtualization Host Extensions (VHE), which allow
to run a host kernel at EL2. When using normal DMA, Device and CPU address
spaces are dissociated, and do not need to implement the same
capabilities, so VHE hasn't been used in the SMMU until now.

With shared address spaces however, ASIDs are shared between MMU and SMMU,
and broadcast TLB invalidations issued by a CPU are taken into account by
the SMMU. TLB entries on both sides need to have identical exception level
in order to be cleared with a single invalidation.

When the CPU is using VHE, enable VHE in the SMMU for all STEs. Normal DMA
mappings will need to use TLBI_EL2 commands instead of TLBI_NH, but
shouldn't be otherwise affected by this change.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 31 ++++++++++++++++++++++++++-----
 1 file changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 2839527ec9ee..77554d89653b 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -13,6 +13,7 @@
 #include <linux/acpi_iort.h>
 #include <linux/bitfield.h>
 #include <linux/bitops.h>
+#include <linux/cpufeature.h>
 #include <linux/crash_dump.h>
 #include <linux/delay.h>
 #include <linux/dma-iommu.h>
@@ -472,6 +473,8 @@ struct arm_smmu_cmdq_ent {
 		#define CMDQ_OP_TLBI_NH_ASID	0x11
 		#define CMDQ_OP_TLBI_NH_VA	0x12
 		#define CMDQ_OP_TLBI_EL2_ALL	0x20
+		#define CMDQ_OP_TLBI_EL2_ASID	0x21
+		#define CMDQ_OP_TLBI_EL2_VA	0x22
 		#define CMDQ_OP_TLBI_S12_VMALL	0x28
 		#define CMDQ_OP_TLBI_S2_IPA	0x2a
 		#define CMDQ_OP_TLBI_NSNH_ALL	0x30
@@ -638,6 +641,7 @@ struct arm_smmu_device {
 #define ARM_SMMU_FEAT_HYP		(1 << 12)
 #define ARM_SMMU_FEAT_STALL_FORCE	(1 << 13)
 #define ARM_SMMU_FEAT_VAX		(1 << 14)
+#define ARM_SMMU_FEAT_E2H		(1 << 15)
 	u32				features;
 
 #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
@@ -909,6 +913,8 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
 		break;
 	case CMDQ_OP_TLBI_NH_VA:
 		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_VMID, ent->tlbi.vmid);
+		/* Fallthrough */
+	case CMDQ_OP_TLBI_EL2_VA:
 		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_ASID, ent->tlbi.asid);
 		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
 		cmd[1] |= ent->tlbi.addr & CMDQ_TLBI_1_VA_MASK;
@@ -924,6 +930,9 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
 	case CMDQ_OP_TLBI_S12_VMALL:
 		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_VMID, ent->tlbi.vmid);
 		break;
+	case CMDQ_OP_TLBI_EL2_ASID:
+		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_ASID, ent->tlbi.asid);
+		break;
 	case CMDQ_OP_ATC_INV:
 		cmd[0] |= FIELD_PREP(CMDQ_0_SSV, ent->substream_valid);
 		cmd[0] |= FIELD_PREP(CMDQ_ATC_0_GLOBAL, ent->atc.global);
@@ -1517,7 +1526,8 @@ static int arm_smmu_cmdq_batch_submit(struct arm_smmu_device *smmu,
 static void arm_smmu_tlb_inv_asid(struct arm_smmu_device *smmu, u16 asid)
 {
 	struct arm_smmu_cmdq_ent cmd = {
-		.opcode = CMDQ_OP_TLBI_NH_ASID,
+		.opcode	= smmu->features & ARM_SMMU_FEAT_E2H ?
+			CMDQ_OP_TLBI_EL2_ASID : CMDQ_OP_TLBI_NH_ASID,
 		.tlbi.asid = asid,
 	};
 
@@ -2075,13 +2085,16 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 	}
 
 	if (s1_cfg) {
+		int strw = smmu->features & ARM_SMMU_FEAT_E2H ?
+			STRTAB_STE_1_STRW_EL2 : STRTAB_STE_1_STRW_NSEL1;
+
 		BUG_ON(ste_live);
 		dst[1] = cpu_to_le64(
 			 FIELD_PREP(STRTAB_STE_1_S1DSS, STRTAB_STE_1_S1DSS_SSID0) |
 			 FIELD_PREP(STRTAB_STE_1_S1CIR, STRTAB_STE_1_S1C_CACHE_WBRA) |
 			 FIELD_PREP(STRTAB_STE_1_S1COR, STRTAB_STE_1_S1C_CACHE_WBRA) |
 			 FIELD_PREP(STRTAB_STE_1_S1CSH, ARM_SMMU_SH_ISH) |
-			 FIELD_PREP(STRTAB_STE_1_STRW, STRTAB_STE_1_STRW_NSEL1));
+			 FIELD_PREP(STRTAB_STE_1_STRW, strw));
 
 		if (smmu->features & ARM_SMMU_FEAT_STALLS &&
 		   !(smmu->features & ARM_SMMU_FEAT_STALL_FORCE))
@@ -2476,7 +2489,8 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
 		return;
 
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
-		cmd.opcode	= CMDQ_OP_TLBI_NH_VA;
+		cmd.opcode	= smmu->features & ARM_SMMU_FEAT_E2H ?
+				  CMDQ_OP_TLBI_EL2_VA : CMDQ_OP_TLBI_NH_VA;
 		cmd.tlbi.asid	= smmu_domain->s1_cfg.cd.asid;
 	} else {
 		cmd.opcode	= CMDQ_OP_TLBI_S2_IPA;
@@ -3743,7 +3757,11 @@ static int arm_smmu_device_reset(struct arm_smmu_device *smmu, bool bypass)
 	writel_relaxed(reg, smmu->base + ARM_SMMU_CR1);
 
 	/* CR2 (random crap) */
-	reg = CR2_PTM | CR2_RECINVSID | CR2_E2H;
+	reg = CR2_PTM | CR2_RECINVSID;
+
+	if (smmu->features & ARM_SMMU_FEAT_E2H)
+		reg |= CR2_E2H;
+
 	writel_relaxed(reg, smmu->base + ARM_SMMU_CR2);
 
 	/* Stream table */
@@ -3901,8 +3919,11 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
 	if (reg & IDR0_MSI)
 		smmu->features |= ARM_SMMU_FEAT_MSI;
 
-	if (reg & IDR0_HYP)
+	if (reg & IDR0_HYP) {
 		smmu->features |= ARM_SMMU_FEAT_HYP;
+		if (cpus_have_cap(ARM64_HAS_VIRT_HOST_EXTN))
+			smmu->features |= ARM_SMMU_FEAT_E2H;
+	}
 
 	/*
 	 * The coherency feature as set by FW is used in preference to the ID
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
