Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EDF126738
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKZYezAXmT72PrBHkFHXz9aNOdvfVgO3jqthW/R5dbc=; b=IxzSyOfGDuLqTg
	n+DilBDruSGDzq1oDP2KXMEStvcUmOZdv/qnXfMlP2lw58hNsXOim6J3blF9kiudz7SOv99cRvNRL
	T/ERugAv95UwfqXwT+6/O6qRmKcHymDX0PQaKiR9zoFtEyl+fFt2B7A8/7vH63wvp/C8EcUPaGSju
	kpnHSFS6B64VflDiYaCtyhOKyMzfnaAIGYrrnMDbEGKGzZTZYb+j2pOzxz3e7d1sBmtjN5TnxwZgi
	+rXzrfWkDt5+Mst64zewbA0tdYro1lGjUHyQ6lvr0WI7qaPI9CKZytj9ns9ynVeOBjX11CdJTYGUr
	JM5AhoJEhilfKbGGCrCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihylJ-0002kE-K2; Thu, 19 Dec 2019 16:34:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyi6-00008k-3Q
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:31:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id f129so6286324wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FClVKTteeYiGIMx90m+9aFZ0WcdcaYLYnXI1Jq7jvMc=;
 b=dVa09UAoV/Ufe3pLZu6gsSLLARiyTwRsvru9uTf5ei5oJX+/gtAaAVOkhB6Wl+vItg
 TLQDPSEubVHdQkFrML0dbihEI/108yo5jOebwu+/At0WJx3L1L+sGTaTjqIqybL22yas
 OzE7dJqFXfUdZ1u/Vdxl8rB3DKI6euddicPI5K7MG87jySSyEqETdUEQDMNkoBQN62Kh
 qLRGwDYmZOkmolNEjFdrvM2nQlY35GiY0PVv0wyeA7wi/oCRRpTrG05kCWphObH7Khac
 eJ58b7LRxC2D/IgcAJpxzCS90HItB5prmBVHbyQDmo2yI/t+64ItLMZuWJpJP//ioSBQ
 tQ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FClVKTteeYiGIMx90m+9aFZ0WcdcaYLYnXI1Jq7jvMc=;
 b=rYqlwzLe98J17FEGUqgvFKQJEoFQe8MZE5uxua/OHVXaptytukHLxU2krTVCJI/hji
 oXJt+QwHBwAxaLY4g55+tE2e/iMQbq2NCrWRuG6QCX0nZJbQ8niLul6nReDyA9Gap6Vi
 4FxOrn/DHjcU7Goou8DsswsJHhod7FFe4uYxoqJrdzcjgGltpEcN7vXAmQwVHm/L71Tk
 eI/9R4bw/MrU677gAZmky/0slO9kR+yrEonLuFNlMdaDsqoFdUwc35welQyAcS880ifO
 4xOTdDOlkXzXyh2MhsCJt5k5a32tmpK7C4QoxJAXR8SWcB3uPlhGnOerOS9bkStbN0de
 rGaA==
X-Gm-Message-State: APjAAAWPM0SgqMwcQFtnbs0RH/h0QMzKA9y/4ul0zT9nBzprCUhOti5l
 5Usd1NEs+Tz2VnK2yvK07Bq3OQ==
X-Google-Smtp-Source: APXvYqx/BNzinka8ZodEfXzw2HnQ8ZI2qetrt+VM/mDeUtGONpuIEa7HZoqOPjObFUzkWV2Uz/ez+g==
X-Received: by 2002:a1c:f30e:: with SMTP id q14mr10974894wmq.65.1576773092179; 
 Thu, 19 Dec 2019 08:31:32 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch.
 [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 08:31:31 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v4 10/13] iommu/arm-smmu-v3: Add second level of context
 descriptor table
Date: Thu, 19 Dec 2019 17:30:30 +0100
Message-Id: <20191219163033.2608177-11-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083134_225161_53AB8B72 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The SMMU can support up to 20 bits of SSID. Add a second level of page
tables to accommodate this. Devices that support more than 1024 SSIDs now
have a table of 1024 L1 entries (8kB), pointing to tables of 1024 context
descriptors (64kB), allocated on demand.

Tested-by: Zhangfei Gao <zhangfei.gao@linaro.org>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 154 +++++++++++++++++++++++++++++++++---
 1 file changed, 144 insertions(+), 10 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index b825a5639afc..bf106a7b53eb 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -224,6 +224,7 @@
 
 #define STRTAB_STE_0_S1FMT		GENMASK_ULL(5, 4)
 #define STRTAB_STE_0_S1FMT_LINEAR	0
+#define STRTAB_STE_0_S1FMT_64K_L2	2
 #define STRTAB_STE_0_S1CTXPTR_MASK	GENMASK_ULL(51, 6)
 #define STRTAB_STE_0_S1CDMAX		GENMASK_ULL(63, 59)
 
@@ -263,7 +264,20 @@
 
 #define STRTAB_STE_3_S2TTB_MASK		GENMASK_ULL(51, 4)
 
-/* Context descriptor (stage-1 only) */
+/*
+ * Context descriptors.
+ *
+ * Linear: when less than 1024 SSIDs are supported
+ * 2lvl: at most 1024 L1 entries,
+ *       1024 lazy entries per table.
+ */
+#define CTXDESC_SPLIT			10
+#define CTXDESC_L2_ENTRIES		(1 << CTXDESC_SPLIT)
+
+#define CTXDESC_L1_DESC_DWORDS		1
+#define CTXDESC_L1_DESC_VALID		1
+#define CTXDESC_L1_DESC_L2PTR_MASK	GENMASK_ULL(51, 12)
+
 #define CTXDESC_CD_DWORDS		8
 #define CTXDESC_CD_0_TCR_T0SZ		GENMASK_ULL(5, 0)
 #define ARM64_TCR_T0SZ			GENMASK_ULL(5, 0)
@@ -575,7 +589,12 @@ struct arm_smmu_cd_table {
 };
 
 struct arm_smmu_s1_cfg {
-	struct arm_smmu_cd_table	table;
+	/* Leaf tables or linear table */
+	struct arm_smmu_cd_table	*tables;
+	size_t				num_tables;
+	/* First level tables, when two levels are used */
+	__le64				*l1ptr;
+	dma_addr_t			l1ptr_dma;
 	struct arm_smmu_ctx_desc	cd;
 	u8				s1fmt;
 	u8				s1cdmax;
@@ -1521,9 +1540,48 @@ static void arm_smmu_free_cd_leaf_table(struct arm_smmu_device *smmu,
 {
 	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
 
+	if (!table->ptr)
+		return;
 	dmam_free_coherent(smmu->dev, size, table->ptr, table->ptr_dma);
 }
 
+static void arm_smmu_write_cd_l1_desc(__le64 *dst,
+				      struct arm_smmu_cd_table *table)
+{
+	u64 val = (table->ptr_dma & CTXDESC_L1_DESC_L2PTR_MASK) |
+		  CTXDESC_L1_DESC_VALID;
+
+	WRITE_ONCE(*dst, cpu_to_le64(val));
+}
+
+static __le64 *arm_smmu_get_cd_ptr(struct arm_smmu_domain *smmu_domain,
+				   u32 ssid)
+{
+	__le64 *l1ptr;
+	unsigned int idx;
+	struct arm_smmu_cd_table *table;
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
+
+	if (cfg->s1fmt == STRTAB_STE_0_S1FMT_LINEAR)
+		return cfg->tables[0].ptr + ssid * CTXDESC_CD_DWORDS;
+
+	idx = ssid >> CTXDESC_SPLIT;
+	table = &cfg->tables[idx];
+	if (!table->ptr) {
+		if (arm_smmu_alloc_cd_leaf_table(smmu, table,
+						 CTXDESC_L2_ENTRIES))
+			return NULL;
+
+		l1ptr = cfg->l1ptr + idx * CTXDESC_L1_DESC_DWORDS;
+		arm_smmu_write_cd_l1_desc(l1ptr, table);
+		/* An invalid L1CD can be cached */
+		arm_smmu_sync_cd(smmu_domain, ssid, false);
+	}
+	idx = ssid & (CTXDESC_L2_ENTRIES - 1);
+	return table->ptr + idx * CTXDESC_CD_DWORDS;
+}
+
 static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
 {
 	u64 val = 0;
@@ -1556,8 +1614,14 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 	u64 val;
 	bool cd_live;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
-	__le64 *cdptr = smmu_domain->s1_cfg.table.ptr + ssid *
-			CTXDESC_CD_DWORDS;
+	__le64 *cdptr;
+
+	if (WARN_ON(ssid >= (1 << smmu_domain->s1_cfg.s1cdmax)))
+		return -E2BIG;
+
+	cdptr = arm_smmu_get_cd_ptr(smmu_domain, ssid);
+	if (!cdptr)
+		return -ENOMEM;
 
 	val = le64_to_cpu(cdptr[0]);
 	cd_live = !!(val & CTXDESC_CD_0_V);
@@ -1604,20 +1668,87 @@ static int arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 
 static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
 {
+	int ret;
+	size_t size = 0;
+	size_t max_contexts;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
-	cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
-	return arm_smmu_alloc_cd_leaf_table(smmu, &cfg->table,
-					    1 << cfg->s1cdmax);
+	max_contexts = 1 << cfg->s1cdmax;
+
+	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB) ||
+	    max_contexts <= CTXDESC_L2_ENTRIES) {
+		cfg->s1fmt = STRTAB_STE_0_S1FMT_LINEAR;
+		cfg->num_tables = 1;
+	} else {
+		cfg->s1fmt = STRTAB_STE_0_S1FMT_64K_L2;
+		cfg->num_tables = DIV_ROUND_UP(max_contexts,
+					       CTXDESC_L2_ENTRIES);
+
+		size = cfg->num_tables * (CTXDESC_L1_DESC_DWORDS << 3);
+		cfg->l1ptr = dmam_alloc_coherent(smmu->dev, size,
+						 &cfg->l1ptr_dma,
+						 GFP_KERNEL);
+		if (!cfg->l1ptr) {
+			dev_warn(smmu->dev,
+				 "failed to allocate L1 context table\n");
+			return -ENOMEM;
+		}
+	}
+
+	cfg->tables = devm_kzalloc(smmu->dev, sizeof(struct arm_smmu_cd_table) *
+				   cfg->num_tables, GFP_KERNEL);
+	if (!cfg->tables) {
+		ret = -ENOMEM;
+		goto err_free_l1;
+	}
+
+	/*
+	 * Only allocate a leaf table for linear case. With two levels, leaf
+	 * tables are allocated lazily.
+	 */
+	if (cfg->s1fmt == STRTAB_STE_0_S1FMT_LINEAR) {
+		ret = arm_smmu_alloc_cd_leaf_table(smmu, &cfg->tables[0],
+						   max_contexts);
+		if (ret)
+			goto err_free_tables;
+	}
+
+	return 0;
+
+err_free_tables:
+	devm_kfree(smmu->dev, cfg->tables);
+	cfg->tables = NULL;
+err_free_l1:
+	if (cfg->l1ptr) {
+		dmam_free_coherent(smmu->dev, size, cfg->l1ptr, cfg->l1ptr_dma);
+		cfg->l1ptr = NULL;
+		cfg->l1ptr_dma = 0;
+	}
+	return ret;
 }
 
 static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
 {
+	int i;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
+	size_t num_leaf_entries = 1 << cfg->s1cdmax;
+	struct arm_smmu_cd_table *table = cfg->tables;
+
+	if (cfg->l1ptr) {
+		size_t size = cfg->num_tables * (CTXDESC_L1_DESC_DWORDS << 3);
 
-	arm_smmu_free_cd_leaf_table(smmu, &cfg->table, 1 << cfg->s1cdmax);
+		dmam_free_coherent(smmu->dev, size, cfg->l1ptr, cfg->l1ptr_dma);
+		cfg->l1ptr = NULL;
+		cfg->l1ptr_dma = 0;
+		num_leaf_entries = CTXDESC_L2_ENTRIES;
+	}
+
+	for (i = 0; i < cfg->num_tables; i++, table++)
+		arm_smmu_free_cd_leaf_table(smmu, table, num_leaf_entries);
+	devm_kfree(smmu->dev, cfg->tables);
+	cfg->tables = NULL;
 }
 
 /* Stream table manipulation functions */
@@ -1737,6 +1868,9 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 	}
 
 	if (s1_cfg) {
+		dma_addr_t ptr_dma = s1_cfg->l1ptr ? s1_cfg->l1ptr_dma :
+				     s1_cfg->tables[0].ptr_dma;
+
 		BUG_ON(ste_live);
 		dst[1] = cpu_to_le64(
 			 FIELD_PREP(STRTAB_STE_1_S1DSS, STRTAB_STE_1_S1DSS_SSID0) |
@@ -1749,7 +1883,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 		   !(smmu->features & ARM_SMMU_FEAT_STALL_FORCE))
 			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
 
-		val |= (s1_cfg->table.ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
+		val |= (ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
 			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS) |
 			FIELD_PREP(STRTAB_STE_0_S1CDMAX, s1_cfg->s1cdmax) |
 			FIELD_PREP(STRTAB_STE_0_S1FMT, s1_cfg->s1fmt);
@@ -2265,7 +2399,7 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
 		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
-		if (cfg->table.ptr) {
+		if (cfg->tables) {
 			arm_smmu_free_cd_tables(smmu_domain);
 			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
 		}
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
