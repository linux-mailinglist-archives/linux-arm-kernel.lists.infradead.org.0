Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AC91173CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hzdmtJmB3EpB6xTw0/9ZxcrhiIPMAOvfH1vPXBPJes=; b=sio6mgq6+mhbBi
	qBjRETwGmEVPrwgiQPR1yITFIHLDQcm3nJk0ElXvEsz+3pnw/rOL9bSLKBe6gx6ddNyKztCwvLuIf
	AVjop+csAhD2D6ILMzFV+vmP/f5NNZA5FrVNG0fra2aY/E5TjJdXLq+DRfL6E0iC7HctxmnwbSv/c
	V0mxIQ1VM03Sv6bJLbh+P0cuXLqahpeqzJuvm5P4xT/NiCinpbwqdDamyIZb6ut9zsS3tr+cuMxXQ
	5TwiRymEDa3edevbgq2mxgDz3M1DwULVGaLzIiSM7DKoEeVCoAAthnMeMdhCm68F6wAJlyAWiIQ+u
	CRwn6LYdcFCXwIr6IfEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNXn-0006aZ-ED; Mon, 09 Dec 2019 18:14:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNVt-0004im-97
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:12:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id f129so314759wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fL1IaFajI5WV4neObvZNmF2pgPZxO07i7k35S4Iliec=;
 b=rP7WbJhPj8VuI7EqB5lAbWvbURLjgkePKEkeKU+JirNiLIbRd/nxg6GvbDqgETIOGM
 wk/8a1U/26zZ+rbc2myR08RXdFVgMBNDqPjO2oDZuNmssr8D2N2pXYO+epntLLNgj6l8
 bRIRo80yDhKwElupMMuF/UF4yngT3VzyYoF9Vj2CwM5kXbenKYnQgnCY5FqUs6YykKJF
 uCEgwLmnTQJSKsVINu/BwL5ajjT+J7aGkYT2h6JRhKEr1M705oa6Up2GOyRdRmVFvPYd
 2cG4Y33gH35tox+cR4Lusbq2Hbjy9t0ycwmtwAYlZWkKWC65bmp1+8ebPw6CNNGcgxBB
 1Axw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fL1IaFajI5WV4neObvZNmF2pgPZxO07i7k35S4Iliec=;
 b=eJUaPWVc/tFiYlj0JdVeO07Sn8mQep65ard5O0Gj3m1WqZpl2tjNuBoMu7MU8Y3kzy
 7qNGIC705FxDiNjPPJQlTw+roTvhD3cuCfATyDYMbHoqsGbaw4xQyPGQkpY37uDAQJpu
 y4su0Uu0usKTRuPRnCzwWQ5IuorgEdfzUKa4nUUu7QtbuJUdODkfblHm5eMxOXE89god
 KtVq2sSadPyeDFhf0es0sGgWxIhXgO5meDbkoeugERbGeRAmvcCDNLlE3sldcJbm1pK9
 i5CsGO0becCfCrqjJ8bNh/EHQjgKJTjTwaJt4GxKrBeUT4MtcTTRUdogMEEajolupnlw
 w1lg==
X-Gm-Message-State: APjAAAXTG70COIodgORlxYqFYP16gxKvQUfJXVVHYJSfvanjmfvJw9EP
 NiwPINCDRUt8RQBiF7ewIqx8mw==
X-Google-Smtp-Source: APXvYqyWrVXWGG8s0TwY2LpvbdAxwpTizCVa+V5ZFJ/BoC41WDP+qfzGHJuWAK4Lsnxz76iwnhu1gA==
X-Received: by 2002:a1c:99d4:: with SMTP id b203mr300591wme.169.1575915123714; 
 Mon, 09 Dec 2019 10:12:03 -0800 (PST)
Received: from localhost.localdomain (adsl-62-167-101-88.adslplus.ch.
 [62.167.101.88])
 by smtp.gmail.com with ESMTPSA id h2sm309838wrv.66.2019.12.09.10.12.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 10:12:03 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v3 07/13] iommu/arm-smmu-v3: Add support for Substream IDs
Date: Mon,  9 Dec 2019 19:05:08 +0100
Message-Id: <20191209180514.272727-8-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209180514.272727-1-jean-philippe@linaro.org>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101205_409515_FCF08384 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, bhelgaas@google.com, zhangfei.gao@linaro.org,
 will@kernel.org, lenb@kernel.org
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

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 125 +++++++++++++++++++++++++++++-------
 1 file changed, 102 insertions(+), 23 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 43d6a7ded6e4..a01071123c34 100644
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
@@ -568,6 +577,7 @@ struct arm_smmu_cd_table {
 struct arm_smmu_s1_cfg {
 	struct arm_smmu_cd_table	table;
 	struct arm_smmu_ctx_desc	cd;
+	u8				s1fmt;
 	u8				s1cdmax;
 };
 
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
@@ -1498,34 +1541,65 @@ static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
 	return val;
 }
 
-static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
-				    struct arm_smmu_s1_cfg *cfg)
+static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
+				   int ssid, struct arm_smmu_ctx_desc *cd)
 {
-	u64 val;
-	__le64 *cdptr = cfg->table.ptr;
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
+	__le64 *cdptr = smmu_domain->s1_cfg.table.ptr + ssid *
+			CTXDESC_CD_DWORDS;
 
-	/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
-	if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
-		val |= CTXDESC_CD_0_S;
+	val = le64_to_cpu(cdptr[0]);
+	cd_live = !!(val & CTXDESC_CD_0_V);
 
-	cdptr[0] = cpu_to_le64(val);
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
+
+		/*
+		 * STE is live, and the SMMU might fetch this CD at any
+		 * time. Ensure that it observes the rest of the CD before we
+		 * enable it.
+		 */
+		arm_smmu_sync_cd(smmu_domain, ssid, true);
 
-	val = cfg->cd.ttbr & CTXDESC_CD_1_TTB0_MASK;
-	cdptr[1] = cpu_to_le64(val);
+		val = arm_smmu_cpu_tcr_to_cd(cd->tcr) |
+#ifdef __BIG_ENDIAN
+			CTXDESC_CD_0_ENDI |
+#endif
+			CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
+			CTXDESC_CD_0_AA64 |
+			FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid) |
+			CTXDESC_CD_0_V;
 
-	cdptr[3] = cpu_to_le64(cfg->cd.mair);
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
@@ -1533,6 +1607,7 @@ static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
+	cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
 	return arm_smmu_alloc_cd_leaf_table(smmu, &cfg->table,
 					    1 << cfg->s1cdmax);
 }
@@ -1664,6 +1739,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 	if (s1_cfg) {
 		BUG_ON(ste_live);
 		dst[1] = cpu_to_le64(
+			 FIELD_PREP(STRTAB_STE_1_S1DSS, STRTAB_STE_1_S1DSS_SSID0) |
 			 FIELD_PREP(STRTAB_STE_1_S1CIR, STRTAB_STE_1_S1C_CACHE_WBRA) |
 			 FIELD_PREP(STRTAB_STE_1_S1COR, STRTAB_STE_1_S1C_CACHE_WBRA) |
 			 FIELD_PREP(STRTAB_STE_1_S1CSH, ARM_SMMU_SH_ISH) |
@@ -1674,7 +1750,9 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
 
 		val |= (s1_cfg->table.ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
-			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS);
+			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS) |
+			FIELD_PREP(STRTAB_STE_0_S1CDMAX, s1_cfg->s1cdmax) |
+			FIELD_PREP(STRTAB_STE_0_S1FMT, s1_cfg->s1fmt);
 	}
 
 	if (s2_cfg) {
@@ -2479,7 +2557,8 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 		master->ats_enabled = arm_smmu_ats_supported(master);
 
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
-		arm_smmu_write_ctx_desc(smmu, &smmu_domain->s1_cfg);
+		arm_smmu_write_ctx_desc(smmu_domain, 0,
+					&smmu_domain->s1_cfg.cd);
 
 	arm_smmu_install_ste_for_dev(master);
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
