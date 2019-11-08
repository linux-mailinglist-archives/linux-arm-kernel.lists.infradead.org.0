Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D742F4FA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxHnqWHxq6rKFmbuospXEu2BNn2sKw7fA3+TIhMWV9g=; b=gc+IkKIXRHCi9e
	uniqJbx5/yO58DJfsloqA5ed83bLxE3QpV/EzGnLoxdac8W3rsx9CQ92uclU/ZkgUmeF/cfizeILp
	pomiC5AzhffbSas4YigSyaoWZTvHwA39Nt9lGg1p1Oo+NKQSZ6Gr6Nv9EAxSHzxqN5iGpNq2pgYM1
	LDGe21VHvDpBZCOrLeEm60vFqtq5E4Q/ymbTKqtWhuSopjjkpNZCXR5HViMYM48hNhAFqdbL+trvZ
	z/ExCc3i8cB8qbYdYqlt1o8FbANWdaMCBVYvVP/u34EUjGJRxjxo2XIbwZSBeponJ0P5Zfi/zGGeH
	+l52Mdk+7M5cdZFaI5WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6BT-0006H3-CE; Fri, 08 Nov 2019 15:28:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6A2-00050a-Q9
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 15:26:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id l17so5796771wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 07:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mnbYxHwwKDCCUndGgMW6LrNDIvr5LwgLaOHQExbW9co=;
 b=vt/ucZmgN0eSNi3NEFrhHunIf8tyXq2gAai53SFY8mpYU92IidJLVOzDyQcqjyhBSr
 T8V4hxDutApsmCo8XT8vx9ZyQFWiamm0n6iIZ6FFeHocN8Ilpv/vzaCesmkkAXgGkqp6
 Vv2LFDzC6AYGjeW0gkZmEjdOetkTjsCxun2mwuwI0nmbuKtRd8RcHpIsYdLXB0gSL+9r
 7hn0cuTBF5GHBLoTjJ8AKFErIUJQ81Cx/c+1Ke/nQnNGY8yjrhGxGvT7Hv8IlzeQ2+co
 xdCufQTFaCf7u30IWO/faFmuYxPTNPO9uhAlm1Xm/j5QVooBAWITKWn/y10ru9QdDfzP
 a70g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mnbYxHwwKDCCUndGgMW6LrNDIvr5LwgLaOHQExbW9co=;
 b=rzQfdgTzLZSeydqmg4tkJH4zTDW1deWyq4hxl6yCcUJCsnfD84B8o4+aAfqofgAiuH
 jhmlc3lOrfoR4JcmvtsI5AgLzE1vFKbgPtpSZyKGhMjyVXANdlRFTGwlvwemXYeTI14p
 YIUPtxquafseidz8/WEZyqBBBCfhdeinqM1S0yUCPa/Uft6CRpSdaKhmjYm/xYjFzwlP
 MkYSO+KnvtRMbbDCqVBe6w5WG4B9BerQro3MYWoC4EkeIRJA+fyoWO33Co8yC+/gnbRq
 7L5mlKbXIN2EoaBY9+sHMkFSlzd3AKNG+kisCIIRv6CU+LNsFrv236atzgCZiI1mTppR
 N7Tg==
X-Gm-Message-State: APjAAAWePFMweFYaM87bHrb+rIkyaVlXl7DJgmobvd2CCHoFKuMsnb6Q
 cGQvMi2wSQgenw/MKzQhl9aWgg==
X-Google-Smtp-Source: APXvYqy+bosXn9E/2BngGdRAG7TJf93oTjX1Hlh96tiGRrvYJauDofVa8+d0UIoSPSzm1vkNaKSd6g==
X-Received: by 2002:a7b:c747:: with SMTP id w7mr9236169wmk.62.1573226813391;
 Fri, 08 Nov 2019 07:26:53 -0800 (PST)
Received: from localhost.localdomain ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id w18sm6579232wrp.31.2019.11.08.07.26.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 07:26:52 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 5/8] iommu/arm-smmu-v3: Add support for Substream IDs
Date: Fri,  8 Nov 2019 16:25:05 +0100
Message-Id: <20191108152508.4039168-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108152508.4039168-1-jean-philippe@linaro.org>
References: <20191108152508.4039168-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_072654_993863_F06AF4E9 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, zhangfei.gao@linaro.org, will@kernel.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At the moment, the SMMUv3 driver implements only one stage-1 or stage-2
page directory per device. However SMMUv3 allows more than one address
space for some devices, by providing multiple stage-1 page directories. In
addition to the Stream ID (SID), that identifies a device, we can now have
Substream IDs (SSID) identifying an address space. In PCIe, SID is called
Requester ID (RID) and SSID is called Process Address-Space ID (PASID).

Prepare the driver for SSID support, by adding context descriptor tables
in STEs (previously a single static context descriptor). A complete
stage-1 walk is now performed like this by the SMMU:

      Stream tables          Ctx. tables          Page tables
        +--------+   ,------->+-------+   ,------->+-------+
        :        :   |        :       :   |        :       :
        +--------+   |        +-------+   |        +-------+
   SID->|  STE   |---'  SSID->|  CD   |---'  IOVA->|  PTE  |--> IPA
        +--------+            +-------+            +-------+
        :        :            :       :            :       :
        +--------+            +-------+            +-------+

Implement a single level of context descriptor table for now, but as with
stream and page tables, an SSID can be split to index multiple levels of
tables.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 132 ++++++++++++++++++++++++++++++------
 1 file changed, 111 insertions(+), 21 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 122bed0168a3..df7d45503c65 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -227,6 +227,11 @@
 #define STRTAB_STE_0_S1CTXPTR_MASK	GENMASK_ULL(51, 6)
 #define STRTAB_STE_0_S1CDMAX		GENMASK_ULL(63, 59)
 
+#define STRTAB_STE_1_S1DSS		GENMASK_ULL(1, 0)
+#define STRTAB_STE_1_S1DSS_TERMINATE	0x0
+#define STRTAB_STE_1_S1DSS_BYPASS	0x1
+#define STRTAB_STE_1_S1DSS_SSID0	0x2
+
 #define STRTAB_STE_1_S1C_CACHE_NC	0UL
 #define STRTAB_STE_1_S1C_CACHE_WBRA	1UL
 #define STRTAB_STE_1_S1C_CACHE_WT	2UL
@@ -329,6 +334,7 @@
 #define CMDQ_PREFETCH_1_SIZE		GENMASK_ULL(4, 0)
 #define CMDQ_PREFETCH_1_ADDR_MASK	GENMASK_ULL(63, 12)
 
+#define CMDQ_CFGI_0_SSID		GENMASK_ULL(31, 12)
 #define CMDQ_CFGI_0_SID			GENMASK_ULL(63, 32)
 #define CMDQ_CFGI_1_LEAF		(1UL << 0)
 #define CMDQ_CFGI_1_RANGE		GENMASK_ULL(4, 0)
@@ -446,8 +452,11 @@ struct arm_smmu_cmdq_ent {
 
 		#define CMDQ_OP_CFGI_STE	0x3
 		#define CMDQ_OP_CFGI_ALL	0x4
+		#define CMDQ_OP_CFGI_CD		0x5
+		#define CMDQ_OP_CFGI_CD_ALL	0x6
 		struct {
 			u32			sid;
+			u32			ssid;
 			union {
 				bool		leaf;
 				u8		span;
@@ -566,6 +575,7 @@ struct arm_smmu_cd_table {
 };
 
 struct arm_smmu_s1_cfg {
+	u8				s1fmt;
 	u8				s1cdmax;
 	struct arm_smmu_cd_table	table;
 	struct arm_smmu_ctx_desc	cd;
@@ -860,10 +870,16 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
 		cmd[1] |= FIELD_PREP(CMDQ_PREFETCH_1_SIZE, ent->prefetch.size);
 		cmd[1] |= ent->prefetch.addr & CMDQ_PREFETCH_1_ADDR_MASK;
 		break;
+	case CMDQ_OP_CFGI_CD:
+		cmd[0] |= FIELD_PREP(CMDQ_CFGI_0_SSID, ent->cfgi.ssid);
+		/* Fallthrough */
 	case CMDQ_OP_CFGI_STE:
 		cmd[0] |= FIELD_PREP(CMDQ_CFGI_0_SID, ent->cfgi.sid);
 		cmd[1] |= FIELD_PREP(CMDQ_CFGI_1_LEAF, ent->cfgi.leaf);
 		break;
+	case CMDQ_OP_CFGI_CD_ALL:
+		cmd[0] |= FIELD_PREP(CMDQ_CFGI_0_SID, ent->cfgi.sid);
+		break;
 	case CMDQ_OP_CFGI_ALL:
 		/* Cover the entire SID range */
 		cmd[1] |= FIELD_PREP(CMDQ_CFGI_1_RANGE, 31);
@@ -1456,6 +1472,33 @@ static int arm_smmu_cmdq_issue_sync(struct arm_smmu_device *smmu)
 }
 
 /* Context descriptor manipulation functions */
+static void arm_smmu_sync_cd(struct arm_smmu_domain *smmu_domain,
+			     int ssid, bool leaf)
+{
+	size_t i;
+	unsigned long flags;
+	struct arm_smmu_master *master;
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	struct arm_smmu_cmdq_ent cmd = {
+		.opcode	= CMDQ_OP_CFGI_CD,
+		.cfgi	= {
+			.ssid	= ssid,
+			.leaf	= leaf,
+		},
+	};
+
+	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
+	list_for_each_entry(master, &smmu_domain->devices, domain_head) {
+		for (i = 0; i < master->num_sids; i++) {
+			cmd.cfgi.sid = master->sids[i];
+			arm_smmu_cmdq_issue_cmd(smmu, &cmd);
+		}
+	}
+	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
+
+	arm_smmu_cmdq_issue_sync(smmu);
+}
+
 static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
 					struct arm_smmu_cd_table *table,
 					size_t num_entries)
@@ -1481,6 +1524,11 @@ static void arm_smmu_free_cd_leaf_table(struct arm_smmu_device *smmu,
 	dmam_free_coherent(smmu->dev, size, table->ptr, table->ptr_dma);
 }
 
+static __le64 *arm_smmu_get_cd_ptr(struct arm_smmu_s1_cfg *cfg, u32 ssid)
+{
+	return cfg->table.ptr + ssid * CTXDESC_CD_DWORDS;
+}
+
 static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
 {
 	u64 val = 0;
@@ -1498,34 +1546,68 @@ static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
 	return val;
 }
 
-static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
-				    struct arm_smmu_s1_cfg *cfg)
+static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
+				   int ssid, struct arm_smmu_ctx_desc *cd)
 {
 	u64 val;
-	__le64 *cdptr = cfg->table.ptr;
+	bool cd_live;
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	__le64 *cdptr = arm_smmu_get_cd_ptr(&smmu_domain->s1_cfg, ssid);
 
 	/*
-	 * We don't need to issue any invalidation here, as we'll invalidate
-	 * the STE when installing the new entry anyway.
+	 * This function handles the following cases:
+	 *
+	 * (1) Install primary CD, for normal DMA traffic (SSID = 0).
+	 * (2) Install a secondary CD, for SID+SSID traffic.
+	 * (3) Update ASID of a CD. Atomically write the first 64 bits of the
+	 *     CD, then invalidate the old entry and mappings.
+	 * (4) Remove a secondary CD.
 	 */
-	val = arm_smmu_cpu_tcr_to_cd(cfg->cd.tcr) |
-#ifdef __BIG_ENDIAN
-	      CTXDESC_CD_0_ENDI |
-#endif
-	      CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
-	      CTXDESC_CD_0_AA64 | FIELD_PREP(CTXDESC_CD_0_ASID, cfg->cd.asid) |
-	      CTXDESC_CD_0_V;
 
-	/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
-	if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
-		val |= CTXDESC_CD_0_S;
+	if (!cdptr)
+		return -ENOMEM;
 
-	cdptr[0] = cpu_to_le64(val);
+	val = le64_to_cpu(cdptr[0]);
+	cd_live = !!(val & CTXDESC_CD_0_V);
 
-	val = cfg->cd.ttbr & CTXDESC_CD_1_TTB0_MASK;
-	cdptr[1] = cpu_to_le64(val);
+	if (!cd) { /* (4) */
+		val = 0;
+	} else if (cd_live) { /* (3) */
+		val &= ~CTXDESC_CD_0_ASID;
+		val |= FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid);
+		/*
+		 * Until CD+TLB invalidation, both ASIDs may be used for tagging
+		 * this substream's traffic
+		 */
+	} else { /* (1) and (2) */
+		cdptr[1] = cpu_to_le64(cd->ttbr & CTXDESC_CD_1_TTB0_MASK);
+		cdptr[2] = 0;
+		cdptr[3] = cpu_to_le64(cd->mair);
 
-	cdptr[3] = cpu_to_le64(cfg->cd.mair);
+		/*
+		 * STE is live, and the SMMU might fetch this CD at any
+		 * time. Ensure that it observes the rest of the CD before we
+		 * enable it.
+		 */
+		arm_smmu_sync_cd(smmu_domain, ssid, true);
+
+		val = arm_smmu_cpu_tcr_to_cd(cd->tcr) |
+#ifdef __BIG_ENDIAN
+			CTXDESC_CD_0_ENDI |
+#endif
+			CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
+			CTXDESC_CD_0_AA64 |
+			FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid) |
+			CTXDESC_CD_0_V;
+
+		/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
+		if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
+			val |= CTXDESC_CD_0_S;
+	}
+
+	WRITE_ONCE(cdptr[0], cpu_to_le64(val));
+	arm_smmu_sync_cd(smmu_domain, ssid, true);
+	return 0;
 }
 
 static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
@@ -1533,6 +1615,7 @@ static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
+	cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
 	return arm_smmu_alloc_cd_leaf_table(smmu, &cfg->table,
 					    1 << cfg->s1cdmax);
 }
@@ -1664,6 +1747,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 	if (s1_cfg) {
 		BUG_ON(ste_live);
 		dst[1] = cpu_to_le64(
+			 FIELD_PREP(STRTAB_STE_1_S1DSS, STRTAB_STE_1_S1DSS_SSID0) |
 			 FIELD_PREP(STRTAB_STE_1_S1CIR, STRTAB_STE_1_S1C_CACHE_WBRA) |
 			 FIELD_PREP(STRTAB_STE_1_S1COR, STRTAB_STE_1_S1C_CACHE_WBRA) |
 			 FIELD_PREP(STRTAB_STE_1_S1CSH, ARM_SMMU_SH_ISH) |
@@ -1674,7 +1758,9 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
 
 		val |= (s1_cfg->table.ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
-			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS);
+			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS) |
+			FIELD_PREP(STRTAB_STE_0_S1CDMAX, s1_cfg->s1cdmax) |
+			FIELD_PREP(STRTAB_STE_0_S1FMT, s1_cfg->s1fmt);
 	}
 
 	if (s2_cfg) {
@@ -2224,10 +2310,14 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
 
-	arm_smmu_write_ctx_desc(smmu, cfg);
+	ret = arm_smmu_write_ctx_desc(smmu_domain, 0, &cfg->cd);
+	if (ret)
+		goto out_free_tables;
 
 	return 0;
 
+out_free_tables:
+	arm_smmu_free_cd_tables(smmu_domain);
 out_free_asid:
 	arm_smmu_bitmap_free(smmu->asid_map, asid);
 	return ret;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
