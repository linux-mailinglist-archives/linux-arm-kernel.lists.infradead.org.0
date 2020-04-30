Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCC61BFEEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3wrxpU3eLErF/Lp3v23lY3yhcHsMats4bIK148bkFA=; b=OsLEXQRvZ3kL6W
	9ked/vk4tq0CxgHG9Ec8Bdck9lpaQRmi96Urkj3/EPyiZMpipQSFRl6Bw5I6FXQmMQOXsAF/1vQak
	icBkqexktQhzSlIPlhWupzpbaWi4lHqdAtZet78Y9G86wI68v9MM7E2kCAJzn5Rmaut1jfABCuP71
	hJdGDb0gsqEmfrH13RVVGkaMvY+PG5gdlwzyBa77C7Wcu8PilvMfNv/Bn4HfVScgAsfP6O3Ddf5b4
	1wi/xGdgVi+6enyURFN0IS6Sokc9YEPlBYHNcHXR1sW2L2djIYm76XIO5jyMhaMhcc6rlgUSXd5+H
	QApc4Rz5xx08T1LXl61Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAQt-00065B-G1; Thu, 30 Apr 2020 14:44:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMd-0002Vh-Q8
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id d17so7202715wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o9p0tsqlSzCrf847KmF0Jc5zS+3Cbp+9M5kBgXSmkSE=;
 b=ZtUI8P3RpElTPIGqdjH/DV6kjTjOH19h5pOFvhRkzVcRtbRxANMGCNmy6mhXm5QQob
 OAhvfcqzCO4qj+VH+3ysNL7KNAEivMcothmkRFtJj26/pev8uYCWvgXekOicKRMagS1W
 W+elb+sxcVGzzPTKfRGNIW5lhmiZZnix+/pmV8fPycbQz3sP6DA1j9EvDQ1sDMarlbol
 /5TO6+SDIJCjNVxavwHJvZQ0QehJWYHZx2Rvsuw1NCCFTxvOlkTIAG+f6VywAiiep6Hg
 WLZ6+ly0VB0ezaDfEm+W7Po6Q/NUtBxDHkkiWjBcX7fAwEQzMLIBra55cOZHtCAoI3JY
 fgJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o9p0tsqlSzCrf847KmF0Jc5zS+3Cbp+9M5kBgXSmkSE=;
 b=eNIztTGCTZQ0qol57Cy9V7MBTWZPHyi8nnOIoeFYLCPr6tjKQWpxbdPcaiHyCRdzPu
 q6cFiWlOe2KCeNZQwc4B54qM57lg21Z96EfuAIxHwYZDGL/Vvqs46tK4HwklT9VbHGvP
 s7HIkSVVckIL1O21fJXQX4DxkEhN++9OBAWZL1VJavqJyv4q82tTSfFEqywCALq5Inla
 XQF6MPWl0YPeo6AUTw7ySXIbkie9rrylCTeunvuJL0j42pUem45bFMFkamlU6n/mSTZk
 0QfrHH7Fl4ZNVlK5mtbZXsWfloZTr3B++LF/C5lKh3rC6tuiv3v1fMow64g3F7v7+DSr
 m18Q==
X-Gm-Message-State: AGi0PubTlg8793KUXX7zn3XBLoCTgvNt5TExzCY8d84TuFZCJO0xXIsO
 vvLl1BUkCFJaxH0SdguDc4fTCg==
X-Google-Smtp-Source: APiQypKsBcylUV5b7TA1Fm8amCYZw0VtaGJPx0H1kxtTCy7ARSEDLbGOkB5H2wJXISq/PY7iJO7CVg==
X-Received: by 2002:a5d:6acc:: with SMTP id u12mr4610113wrw.198.1588257633890; 
 Thu, 30 Apr 2020 07:40:33 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:33 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 13/25] iommu/arm-smmu-v3: Add support for VHE
Date: Thu, 30 Apr 2020 16:34:12 +0200
Message-Id: <20200430143424.2787566-14-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074035_882703_473AB102 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
index aad49d565c592..3a70d032d4e71 100644
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
@@ -480,6 +481,8 @@ struct arm_smmu_cmdq_ent {
 		#define CMDQ_OP_TLBI_NH_ASID	0x11
 		#define CMDQ_OP_TLBI_NH_VA	0x12
 		#define CMDQ_OP_TLBI_EL2_ALL	0x20
+		#define CMDQ_OP_TLBI_EL2_ASID	0x21
+		#define CMDQ_OP_TLBI_EL2_VA	0x22
 		#define CMDQ_OP_TLBI_S12_VMALL	0x28
 		#define CMDQ_OP_TLBI_S2_IPA	0x2a
 		#define CMDQ_OP_TLBI_NSNH_ALL	0x30
@@ -651,6 +654,7 @@ struct arm_smmu_device {
 #define ARM_SMMU_FEAT_STALL_FORCE	(1 << 13)
 #define ARM_SMMU_FEAT_VAX		(1 << 14)
 #define ARM_SMMU_FEAT_RANGE_INV		(1 << 15)
+#define ARM_SMMU_FEAT_E2H		(1 << 16)
 	u32				features;
 
 #define ARM_SMMU_OPT_SKIP_PREFETCH	(1 << 0)
@@ -924,6 +928,8 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
 		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_NUM, ent->tlbi.num);
 		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_SCALE, ent->tlbi.scale);
 		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_VMID, ent->tlbi.vmid);
+		/* Fallthrough */
+	case CMDQ_OP_TLBI_EL2_VA:
 		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_ASID, ent->tlbi.asid);
 		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_LEAF, ent->tlbi.leaf);
 		cmd[1] |= FIELD_PREP(CMDQ_TLBI_1_TTL, ent->tlbi.ttl);
@@ -945,6 +951,9 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
 	case CMDQ_OP_TLBI_S12_VMALL:
 		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_VMID, ent->tlbi.vmid);
 		break;
+	case CMDQ_OP_TLBI_EL2_ASID:
+		cmd[0] |= FIELD_PREP(CMDQ_TLBI_0_ASID, ent->tlbi.asid);
+		break;
 	case CMDQ_OP_ATC_INV:
 		cmd[0] |= FIELD_PREP(CMDQ_0_SSV, ent->substream_valid);
 		cmd[0] |= FIELD_PREP(CMDQ_ATC_0_GLOBAL, ent->atc.global);
@@ -1538,7 +1547,8 @@ static int arm_smmu_cmdq_batch_submit(struct arm_smmu_device *smmu,
 static void arm_smmu_tlb_inv_asid(struct arm_smmu_device *smmu, u16 asid)
 {
 	struct arm_smmu_cmdq_ent cmd = {
-		.opcode = CMDQ_OP_TLBI_NH_ASID,
+		.opcode	= smmu->features & ARM_SMMU_FEAT_E2H ?
+			CMDQ_OP_TLBI_EL2_ASID : CMDQ_OP_TLBI_NH_ASID,
 		.tlbi.asid = asid,
 	};
 
@@ -2088,13 +2098,16 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
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
@@ -2490,7 +2503,8 @@ static void arm_smmu_tlb_inv_range(unsigned long iova, size_t size,
 		return;
 
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
-		cmd.opcode	= CMDQ_OP_TLBI_NH_VA;
+		cmd.opcode	= smmu->features & ARM_SMMU_FEAT_E2H ?
+				  CMDQ_OP_TLBI_EL2_VA : CMDQ_OP_TLBI_NH_VA;
 		cmd.tlbi.asid	= smmu_domain->s1_cfg.cd.asid;
 	} else {
 		cmd.opcode	= CMDQ_OP_TLBI_S2_IPA;
@@ -3795,7 +3809,11 @@ static int arm_smmu_device_reset(struct arm_smmu_device *smmu, bool bypass)
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
@@ -3953,8 +3971,11 @@ static int arm_smmu_device_hw_probe(struct arm_smmu_device *smmu)
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
