Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45300126727
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDDlaAZJ4F0Q6q4hZLsQGm7fjZgjpGtKJlHva2YZRp4=; b=kZNjGuHxJREHtL
	9qQcMxxnxd0fvjmunMrzENLtMAmO2dY/jomiRzljF363PVVxuV8stnlNwjDGaEewu14Z0kM1OY7/C
	lAgRTmwiAYfoAt2RkF9YfvMyAefeuqjd0MQnOT8poRwGIjlG9vXs1hODc+Lx8T+kdScv5+jo9+n1t
	VE8g6as6SboHk0KiVQTyIOxSjA7VKLnU8dBvkljmHeeFExtvhx0HslZBiG0ZC3BchB2sb12TBDDsZ
	6jK7hXFpgOTC2v4uS/oeTrj6cJTO6KGoAx12wvHpCU2iRJaQ92FFeLSqWrZVH4Zy1msIytcJ9poy+
	1uLp28hAefP5NvAfUIww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihyje-0001Ex-FE; Thu, 19 Dec 2019 16:33:10 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyhy-0008SK-U8
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:31:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so6639728wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y2ql+LZRHzKAFXmCII7idFGR9pobHaST91PSU352afA=;
 b=OlzF5XbaVii57zrhytb/hwfGmYY4T7zMd5P2PTa89/4Vy01jLCbHqt7K0XyMZgnegn
 JbGdWFoGavtJMLBnbSNDbH0SIeT8uLqLacuLaI4B9rXcVV/gOHlQjkjK0vUQZcIKDL5F
 s+JrJ0Fnt/RpzGXCy8Y+mDgeLc3MR2slZvuKXYYLOtpqgO1HD+FxzZIHOguitSlBdnH1
 KjqDahZXqO/cGkh7XElSuIP6Mb9ED2Tq2UIo7t0t8YUfIIV2o58EVF0sWTMkz/tvE7Uj
 c24OEPkN+xpsuKzgpKA+f0Sb+IZaGA+K5wdsa9fFDgHk4+ZU8M0Z7/czyhJ/SpvTD+BW
 qWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y2ql+LZRHzKAFXmCII7idFGR9pobHaST91PSU352afA=;
 b=BzR+qrQqBaIGacpostZmJYgEf4ECKfQvoCrvoc+KCei49iQWJqWOJBov/IYP7kgxe5
 gQlC2XOYuGX3nQlYC1g5e8CJErnNjCIgXGq6LVjXAUz2NWO6TlOk9WpPIHoFHqRSy8Td
 cgphol7gXWjQsLxi8zinXD5wPqPgAmOlH2dxoqJJ30af6fVUGUk9UFVGZTaasdL2Baqc
 mAaKPiw6IXD9Rr0LLVdg5i1ubHx0bQFLpsl4AgqJa/MdAvqdGJXTL2Y7AFIV26wIj7Ky
 pLjbAHv5ZpvYd3kvPDeMWmbX7I+y8bP2CWHFcp5UECP4IoCc+BKD+XMjG7fWVVeCgUvc
 pW2Q==
X-Gm-Message-State: APjAAAVU+WmqehFd8iR0ftUbiSXhbjxW/1FmopbFQXPgb7zUcolrM0fM
 YsUDRVx+igcW/tpAcjAfJBfJEg==
X-Google-Smtp-Source: APXvYqzLMlijHsEnbPH7rLP54YVsmWHa1UMIhidAkqjBJUVYgbgyTqDwXBMidW7+FMak8iErDYI5IA==
X-Received: by 2002:a05:6000:367:: with SMTP id
 f7mr10132123wrf.174.1576773085466; 
 Thu, 19 Dec 2019 08:31:25 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch.
 [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 08:31:25 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v4 05/13] iommu/arm-smmu-v3: Prepare arm_smmu_s1_cfg for SSID
 support
Date: Thu, 19 Dec 2019 17:30:25 +0100
Message-Id: <20191219163033.2608177-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083127_026413_F5EB008B 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

When adding SSID support to the SMMUv3 driver, we'll need to manipulate
leaf pasid tables and context descriptors. Extract the context
descriptor structure and introduce a new table structure.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 44 +++++++++++++++++++++----------------
 1 file changed, 25 insertions(+), 19 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 837b4283b4dc..b287e303b1d7 100644
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
+struct arm_smmu_cd_table {
+	__le64				*ptr;
+	dma_addr_t			ptr_dma;
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
+	struct arm_smmu_cd_table	table;
+	struct arm_smmu_ctx_desc	cd;
 };
 
 struct arm_smmu_s2_cfg {
@@ -1471,6 +1476,7 @@ static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
 				    struct arm_smmu_s1_cfg *cfg)
 {
 	u64 val;
+	__le64 *cdptr = cfg->table.ptr;
 
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
+		val |= (s1_cfg->table.ptr_dma & STRTAB_STE_0_S1CTXPTR_MASK) |
 			FIELD_PREP(STRTAB_STE_0_CFG, STRTAB_STE_0_CFG_S1_TRANS);
 	}
 
@@ -2138,11 +2144,11 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1) {
 		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
-		if (cfg->cdptr) {
+		if (cfg->table.ptr) {
 			dmam_free_coherent(smmu_domain->smmu->dev,
 					   CTXDESC_CD_DWORDS << 3,
-					   cfg->cdptr,
-					   cfg->cdptr_dma);
+					   cfg->table.ptr,
+					   cfg->table.ptr_dma);
 
 			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
 		}
@@ -2167,9 +2173,9 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	if (asid < 0)
 		return asid;
 
-	cfg->cdptr = dmam_alloc_coherent(smmu->dev, CTXDESC_CD_DWORDS << 3,
-					 &cfg->cdptr_dma, GFP_KERNEL);
-	if (!cfg->cdptr) {
+	cfg->table.ptr = dmam_alloc_coherent(smmu->dev, CTXDESC_CD_DWORDS << 3,
+					     &cfg->table.ptr_dma, GFP_KERNEL);
+	if (!cfg->table.ptr) {
 		dev_warn(smmu->dev, "failed to allocate context descriptor\n");
 		ret = -ENOMEM;
 		goto out_free_asid;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
