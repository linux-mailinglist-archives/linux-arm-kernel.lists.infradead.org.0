Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100B313C208
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:55:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8DglLG9+u80u51UjkEI4nJv59DqRFZ/8yP7ZYN0aa3o=; b=cnHlAF4EcXNoQa
	Lp4uMq2mCg7DUq1vmEqY7PUfdHrm9o0YU6o3Pbp5LXS4iFjH9RV6eCEt6EqhwRD6RXv7BKOKv5Zoq
	u4b+bS8xdsAeM0s05JcrwIsJzRuuApogsGcXvixXtGBUxyW8TwyLjFxWA0TfMWASeMXHQ9FSe/g+y
	fUlqsxYt4cjMiguV9ubhjKzKEm+Q/8KEsX+YyCtKfhWl3oCrECEnPifhdb4RuCDkRKxreQSIp3G0l
	HedGEkj/Kj9RQ/xsturZrduYVHXMnm5oAiZ4vp7jFdfnTDPGKYKUC7Rkg/uBvhp7HPglEJquIVt4o
	mfmVw4fzhnL7fxiKVZgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriCs-0008BK-EJ; Wed, 15 Jan 2020 12:55:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriAw-0005as-II
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:53:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id y11so15623757wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 04:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K6CSSuB6nIgGj1j0dtfzDyCMzgzvK2deYX3HdVqg7mU=;
 b=K4KJ/UDXF+XRt36wtLUHXD1FivcHN0LNsYHSdz3wzfJ6eZ2Rvsu0h3ikSVmt+psJay
 DMgDu5MB5+bb3S7d5Jmjh2+0WR50qwZZu4wArTK7jaQ11taCtpnDOuLS4HdHdnTb3E00
 ixhKZE7tQ+047OFbSyvHEPCscnIFqsbIgvdng7p2Km3d+C/yyaeFjTG8n+uLXh5VaHZY
 kJMY1xF/TlH5kaYyZYt2KmtjpAHzVrXDkw0oLPixNXrmvm2NnxZfLkP7dDSLdEt1zaoC
 AICaf8xdbKGlJIyYWh0obqVPzd/mNV0gPuCzm4jP8EY99+dV+kGfPCqybyYbma0shiix
 2VMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K6CSSuB6nIgGj1j0dtfzDyCMzgzvK2deYX3HdVqg7mU=;
 b=PpeC5jM1hv4dDONgBfD8qh+BWN9zbZ1prz9kCAqXtBklEghrcxe1Rbz5geQ1k+hxg0
 3Xe9QHBqwsH143XrNCRUkqsxnVMy/YUvv/b8NWGiY8fYev7zfM6x/psM9jeXY5ZXjrzh
 7vZ/lWkfKsCaBQzqoNnqcm5P+3UDTkpRYcGVYSpCa4s8PKnQd2RZRu/WKmY/GC1H3fl+
 joc04hO2OwYxdDvPnrgjdV0weRh4Dw0DBJEWhp+Hiv1slxc6gL8zuMiwy2iY07vYoiBm
 VGGBKkYkvJd/z75BGsVSqf7JA1LLRdjA2V55/95ysLP3bx2bO6QWPWxTLf/A2v8/TLce
 oBWw==
X-Gm-Message-State: APjAAAUjk3nObJ4ee1uJpca9E0CR5RvaDnH+8pOSMUIbZ69GjD4J8xYO
 5NFbBpT2dfDI/U0qZauELswbAw==
X-Google-Smtp-Source: APXvYqyjYUJDyqw5fP5RmGWdo3rZKdkTRbxjHr7iti208dwREaMeQn8r2ydm2Ou0/U52o5/nrrd+iA==
X-Received: by 2002:a5d:5708:: with SMTP id a8mr32550295wrv.79.1579092813387; 
 Wed, 15 Jan 2020 04:53:33 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id d12sm25196171wrp.62.2020.01.15.04.53.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 04:53:32 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, will@kernel.org
Subject: [PATCH v5 05/13] iommu/arm-smmu-v3: Prepare arm_smmu_s1_cfg for SSID
 support
Date: Wed, 15 Jan 2020 13:52:31 +0100
Message-Id: <20200115125239.136759-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045334_614253_0D63C482 
X-CRM114-Status: GOOD (  14.22  )
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

When adding SSID support to the SMMUv3 driver, we'll need to manipulate
leaf pasid tables and context descriptors. Extract the context
descriptor structure and align with the way stream tables are handled.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 46 ++++++++++++++++++++++---------------
 1 file changed, 27 insertions(+), 19 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 837b4283b4dc..e7c7e34d385f 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -553,16 +553,21 @@ struct arm_smmu_strtab_l1_desc {
 	dma_addr_t			l2ptr_dma;
 };
 
+struct arm_smmu_ctx_desc {
+	u16				asid;
+	u64				ttbr;
+	u64				tcr;
+	u64				mair;
+};
+
+struct arm_smmu_ctx_desc_cfg {
+	__le64				*cdtab;
+	dma_addr_t			cdtab_dma;
+};
+
 struct arm_smmu_s1_cfg {
-	__le64				*cdptr;
-	dma_addr_t			cdptr_dma;
-
-	struct arm_smmu_ctx_desc {
-		u16	asid;
-		u64	ttbr;
-		u64	tcr;
-		u64	mair;
-	}				cd;
+	struct arm_smmu_ctx_desc_cfg	cdcfg;
+	struct arm_smmu_ctx_desc	cd;
 };
 
 struct arm_smmu_s2_cfg {
@@ -1471,6 +1476,7 @@ static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
 				    struct arm_smmu_s1_cfg *cfg)
 {
 	u64 val;
+	__le64 *cdptr = cfg->cdcfg.cdtab;
 
 	/*
 	 * We don't need to issue any invalidation here, as we'll invalidate
@@ -1488,12 +1494,12 @@ static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
 	if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
 		val |= CTXDESC_CD_0_S;
 
-	cfg->cdptr[0] = cpu_to_le64(val);
+	cdptr[0] = cpu_to_le64(val);
 
 	val = cfg->cd.ttbr & CTXDESC_CD_1_TTB0_MASK;
-	cfg->cdptr[1] = cpu_to_le64(val);
+	cdptr[1] = cpu_to_le64(val);
 
-	cfg->cdptr[3] = cpu_to_le64(cfg->cd.mair);
+	cdptr[3] = cpu_to_le64(cfg->cd.mair);
 }
 
 /* Stream table manipulation functions */
@@ -1624,7 +1630,7 @@ static void arm_smmu_write_strtab_ent(struct arm_smmu_master *master, u32 sid,
 		   !(smmu->features & ARM_SMMU_FEAT_STALL_FORCE))
 			dst[1] |= cpu_to_le64(STRTAB_STE_1_S1STALLD);
 
-		val |= (s1_cfg->cdptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
+		val |= (s1_cfg->cdcfg.cdtab_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
 			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS);
 	}
 
@@ -2138,11 +2144,11 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
 		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
-		if (cfg->cdptr) {
+		if (cfg->cdcfg.cdtab) {
 			dmam_free_coherent(smmu_domain->smmu->dev,
 					   CTXDESC_CD_DWORDS << 3,
-					   cfg->cdptr,
-					   cfg->cdptr_dma);
+					   cfg->cdcfg.cdtab,
+					   cfg->cdcfg.cdtab_dma);
 
 			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
 		}
@@ -2167,9 +2173,11 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	if (asid < 0)
 		return asid;
 
-	cfg->cdptr = dmam_alloc_coherent(smmu->dev, CTXDESC_CD_DWORDS << 3,
-					 &cfg->cdptr_dma, GFP_KERNEL);
-	if (!cfg->cdptr) {
+	cfg->cdcfg.cdtab = dmam_alloc_coherent(smmu->dev,
+					       CTXDESC_CD_DWORDS << 3,
+					       &cfg->cdcfg.cdtab_dma,
+					       GFP_KERNEL);
+	if (!cfg->cdcfg.cdtab) {
 		dev_warn(smmu->dev, "failed to allocate context descriptor\n");
 		ret = -ENOMEM;
 		goto out_free_asid;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
