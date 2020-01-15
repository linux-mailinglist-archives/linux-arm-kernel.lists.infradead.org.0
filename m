Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D0713C209
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47Z8VOcx4OJr4LgdPmz1zyO5qiTAIozKo5YvVpVB90I=; b=A2fnLi7vMabB8k
	1+qkMW9GC6qZGwIurBAMRW5C2gAuFu2MHt4pVRaLj0RjfNE8VMXHfDiagAkcKxG+6HY7TGTL6lxSW
	DecHF2GR6VJ1aL+OrFYqnBAzpsLyJpu+Q/XOQQGkBX23l/nHuBeKcbMQWW33Ur7O6t8Opz0d2s+GG
	Qovx5lEA78FRCl+2aceaM20nniMtZMqOUoYqLs6CgGPafOUi1uzGh2i+eG04aQAqSbt+zLZQQO7ad
	/FQCYOiF3fn8oQfvusIYnDvN4DF/39VZoZjYg4NUqRKlEQUF/aL6WmKLknzqjFSkg//WrxbtZkLF2
	1KjZXphsfXmkSz5OtkQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriD6-0008Pg-0a; Wed, 15 Jan 2020 12:55:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriAz-0005cl-4K
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:53:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so15651044wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 04:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4bZ/CepjtRIujasbtp83zulcnzN4LuxoEHojLEWXBkU=;
 b=N5YUZNbidCd+0mRzNLc+mAf25KsWhHqQsu6E/BD8m6TCk1+jFs4VYYA9pSDDDBWId4
 Y5hApgNqdB2zC57TbPT6FWU3AmGXIiVAnflDFar9Vj/5v3nxG0RgzdIJ1hqJv13ymIyH
 xuIkuGjlQJGe/xXOKWEDD9Qt4OZ3IdYsJfxr4Xg2X39vpP+1/UP68dmEs0vkR8U5EAZE
 1Cmoyvl9ipEHHe+paOdzaYxtCyOLtlOSb8OkZvzriI0mbrTKq0wH3IFz42TCEKLRnxp6
 Niz9VcbUIE5HnEsIaK0Y2MD0lCcKevC/g6R+3zJCSnfG+V5zIYecAb8eB+Wf4/XxEOMY
 mhzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4bZ/CepjtRIujasbtp83zulcnzN4LuxoEHojLEWXBkU=;
 b=m1EA6d2HbiEGGAGQZ/AUAcbLP12rzv24uZChVzJk0VtD1pXsJ3hJ4I16/UrGe7OHgH
 c8rRYJxuR69tCu7DcNSfsZP+h6BCkK8U9qCu2VJnCcv5k0zQgQz0APk/tFbxxWyP5vBL
 /j69EjV0Lr4IK5RPD0q0KOsd7F+AkiunKnzxXhBbljQdW61jyOgvKZuzp5iI65o+4nzG
 KbKoxWB0AlRDkb2SWf8JX11miGUOMGgjyRiOeTB3e/vsnMApIINasO9POsvKAzkOELrV
 4Y+bcZqmbsEYmBETvXFDOyOjoMiUbX4xora/LoljY0gdANIoDaKwCk5FOt5NRb5SdwDk
 tLtQ==
X-Gm-Message-State: APjAAAXqU0o57I8amiL8G5ZsYccVOmW7CYzf0j6tQ4gU8olv7X3501KO
 5sYc4dm6TNc5lpeMKLVIYZ8yYw==
X-Google-Smtp-Source: APXvYqzJswflwzFBqrDS/iyaXJeEyvdokU6gQySM/KfhP173tNwKFAxkpp71PBxmimx3BWyqBHC8LA==
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr30902781wro.128.1579092815640; 
 Wed, 15 Jan 2020 04:53:35 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id d12sm25196171wrp.62.2020.01.15.04.53.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 04:53:35 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, will@kernel.org
Subject: [PATCH v5 07/13] iommu/arm-smmu-v3: Add support for Substream IDs
Date: Wed, 15 Jan 2020 13:52:33 +0100
Message-Id: <20200115125239.136759-8-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045337_196321_CDDCAA76 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, joro@8bytes.org,
 guohanjun@huawei.com, rjw@rjwysocki.net, eric.auger@redhat.com,
 robh+dt@kernel.org, jonathan.cameron@huawei.com, sudeep.holla@arm.com,
 bhelgaas@google.com, zhangfei.gao@linaro.org, robin.murphy@arm.com,
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
A complete stage-1 walk goes through the context descriptor table:

      Stream tables       Ctx. Desc. tables       Page tables
        +--------+   ,------->+-------+   ,------->+-------+
        :        :   |        :       :   |        :       :
        +--------+   |        +-------+   |        +-------+
   SID->|  STE   |---'  SSID->|  CD   |---'  IOVA->|  PTE  |--> IPA
        +--------+            +-------+            +-------+
        :        :            :       :            :       :
        +--------+            +-------+            +-------+

Rewrite arm_smmu_write_ctx_desc() to modify context descriptor table
entries. To keep things simple we only implement one level of context
descriptor tables here, but as with stream and page tables, an SSID can
be split to index multiple levels of tables.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 135 ++++++++++++++++++++++++++++++------
 1 file changed, 112 insertions(+), 23 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index a3438e256bd0..6ab0e93518f6 100644
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
@@ -569,6 +578,7 @@ struct arm_smmu_ctx_desc_cfg {
 struct arm_smmu_s1_cfg {
 	struct arm_smmu_ctx_desc_cfg	cdcfg;
 	struct arm_smmu_ctx_desc	cd;
+	u8				s1fmt;
 	u8				s1cdmax;
 };
 
@@ -861,10 +871,16 @@ static int arm_smmu_cmdq_build_cmd(u64 *cmd, struct arm_smmu_cmdq_ent *ent)
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
@@ -1457,6 +1473,33 @@ static int arm_smmu_cmdq_issue_sync(struct arm_smmu_device *smmu)
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
 static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
 {
 	u64 val = 0;
@@ -1474,34 +1517,74 @@ static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
 	return val;
 }
 
-static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
-				    struct arm_smmu_s1_cfg *cfg)
+static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
+				   int ssid, struct arm_smmu_ctx_desc *cd)
 {
-	u64 val;
-	__le64 *cdptr = cfg->cdcfg.cdtab;
-
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
+	u64 val;
+	bool cd_live;
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	__le64 *cdptr = smmu_domain->s1_cfg.cdcfg.cdtab + ssid *
+			CTXDESC_CD_DWORDS;
+
+	val = le64_to_cpu(cdptr[0]);
+	cd_live = !!(val & CTXDESC_CD_0_V);
+
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
 
-	/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
-	if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
-		val |= CTXDESC_CD_0_S;
+		/*
+		 * STE is live, and the SMMU might read dwords of this CD in any
+		 * order. Ensure that it observes valid values before reading
+		 * V=1.
+		 */
+		arm_smmu_sync_cd(smmu_domain, ssid, true);
 
-	cdptr[0] = cpu_to_le64(val);
+		val = arm_smmu_cpu_tcr_to_cd(cd->tcr) |
+#ifdef __BIG_ENDIAN
+			CTXDESC_CD_0_ENDI |
+#endif
+			CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
+			CTXDESC_CD_0_AA64 |
+			FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid) |
+			CTXDESC_CD_0_V;
 
-	val = cfg->cd.ttbr & CTXDESC_CD_1_TTB0_MASK;
-	cdptr[1] = cpu_to_le64(val);
+		/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
+		if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
+			val |= CTXDESC_CD_0_S;
+	}
 
-	cdptr[3] = cpu_to_le64(cfg->cd.mair);
+	/*
+	 * The SMMU accesses 64-bit values atomically. See IHI0070Ca 3.21.3
+	 * "Configuration structures and configuration invalidation completion"
+	 *
+	 *   The size of single-copy atomic reads made by the SMMU is
+	 *   IMPLEMENTATION DEFINED but must be at least 64 bits. Any single
+	 *   field within an aligned 64-bit span of a structure can be altered
+	 *   without first making the structure invalid.
+	 */
+	WRITE_ONCE(cdptr[0], cpu_to_le64(val));
+	arm_smmu_sync_cd(smmu_domain, ssid, true);
+	return 0;
 }
 
 static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
@@ -1511,6 +1594,8 @@ static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 	struct arm_smmu_ctx_desc_cfg *cdcfg = &cfg->cdcfg;
 
+	cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
+
 	cdcfg->num_l1_ents = 1UL << cfg->s1cdmax;
 	l1size = cdcfg->num_l1_ents * (CTXDESC_CD_DWORDS << 3);
 	cdcfg->cdtab = dmam_alloc_coherent(smmu->dev, l1size, &cdcfg->cdtab_dma,
@@ -1652,6 +1737,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 	if (s1_cfg) {
 		BUG_ON(ste_live);
 		dst[1] = cpu_to_le64(
+			 FIELD_PREP(STRTAB_STE_1_S1DSS, STRTAB_STE_1_S1DSS_SSID0) |
 			 FIELD_PREP(STRTAB_STE_1_S1CIR, STRTAB_STE_1_S1C_CACHE_WBRA) |
 			 FIELD_PREP(STRTAB_STE_1_S1COR, STRTAB_STE_1_S1C_CACHE_WBRA) |
 			 FIELD_PREP(STRTAB_STE_1_S1CSH, ARM_SMMU_SH_ISH) |
@@ -1662,7 +1748,9 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
 
 		val |= (s1_cfg->cdcfg.cdtab_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
-			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS);
+			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS) |
+			FIELD_PREP(STRTAB_STE_0_S1CDMAX, s1_cfg->s1cdmax) |
+			FIELD_PREP(STRTAB_STE_0_S1FMT, s1_cfg->s1fmt);
 	}
 
 	if (s2_cfg) {
@@ -2467,7 +2555,8 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 		master->ats_enabled = arm_smmu_ats_supported(master);
 
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
-		arm_smmu_write_ctx_desc(smmu, &smmu_domain->s1_cfg);
+		arm_smmu_write_ctx_desc(smmu_domain, 0,
+					&smmu_domain->s1_cfg.cd);
 
 	arm_smmu_install_ste_for_dev(master);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
