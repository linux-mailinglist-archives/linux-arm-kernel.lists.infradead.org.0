Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A525313C20E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAkOOREvOeRngFJS+wOs8BKyYnyi9kVuXzdnuq2Mofk=; b=CjyQANfatW3EaX
	cc/6vp2tw14t0eO9fb2KtNlaTXoCQ/lrw48S64gw/U57USfvGR0nkNKjcEd8Q0/72dSlIQ8xRxY6n
	hJ/K0HN9JTAgkckcLFBSxO+/Qugz2LI6Cv7OyGhdSxUtySAXleYVYmoZjnTy3B2MzbdqILBWCbEBV
	bqGPQHnfGjtwpO2IYJYdiOQCteoQGGwiLmhzFCHqYYR4MZH2T6g2u1JmyAfXiZnst3+4rgnbeHBLw
	r7dKS+ujedcPtfys8wobItUf/tgbsfda48/iJUZDudFGT3Gatenm4gUEE5TgD0WEOKPcOxQ5N+oKf
	lGkVlh27Ql5kkNVc/d3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriDO-0000Fp-6z; Wed, 15 Jan 2020 12:56:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriAx-0005bl-KJ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:53:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so17779803wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 04:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=in26yMaZg6abF2yqvUJjPFZYANziWWa0eLADh6G3Ifo=;
 b=KYkxSNqGoykHOtMF+QyweVPd8z8QHaDFJVOOc82qJ9FI/2oPuBi1AFY3YgT9l6pkPL
 ynQwh/VbngNEoEnwC9LmKtcklVpWETBB2Ha8Kd8oI7sx82tx8Udfgc5ZjFjeFwD1/Wuh
 clU032RmX0bz4skodakrFBabzvmrj4eyUSoIpbKPqu5YLQ5MPO9VrstW/PZAR14aI920
 MHgh+jcXHtVnEEms5hTJ3MtiNE3Ffl3TxLuRiYRGWbxq15sDaKrIZU0y8HgNBJxGoKa6
 s2gU7h9se5LnGBCRJKbKaBCC/0VH8TTIhEHK/BWjyF3CwfAMX2My9A7j1V6uDO5lvMEq
 Ginw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=in26yMaZg6abF2yqvUJjPFZYANziWWa0eLADh6G3Ifo=;
 b=NfKxxDNCfhJEjtOfSPUGf0qZGGdlcXPWELJBsrJzQEu3Qa+iITKlOoH+I69y6ZdmA0
 k9qGvZ/Kxz5sfaUWLKP3ITElpIM7Kp8MGg9VKRPkJPXghCbUKmMUWU29gzJ+Mqur91+/
 HA5oyfCvOs9W9ZOEe082FnJ0al7rwxplS7L3kt3x/EtIfASBw9EHBq1aEPlqZV3ku62M
 tBecNdZzJ0VxqVhTZb3jWMCkWqwULv/9tt2GX+ZbFtN4fevwLSnO0AmB8fS7SFuvTjsY
 QFMn0EPWnrs1lD6Qmi82DuBkQ3PIXiYi00G1KEfkVUdupM6TBQNHej61DGofwiTglTxs
 ZOfQ==
X-Gm-Message-State: APjAAAUbJos6WbY3YB9fy4uIz52V4OI2gW+Og4EFNS+ma/Cyl89oxAJe
 H1EY5gts0yrC60+gYW4d7roqHw==
X-Google-Smtp-Source: APXvYqyohJNdvB6MKflgoRReAN7/MUNP/x8LeCEXk7CBOIMa+UpMWhsowT73ysRp4ydr7ualZQdvEg==
X-Received: by 2002:a1c:a702:: with SMTP id q2mr34068062wme.6.1579092814518;
 Wed, 15 Jan 2020 04:53:34 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:2266:ba60:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id d12sm25196171wrp.62.2020.01.15.04.53.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 04:53:34 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, will@kernel.org
Subject: [PATCH v5 06/13] iommu/arm-smmu-v3: Add context descriptor tables
 allocators
Date: Wed, 15 Jan 2020 13:52:32 +0100
Message-Id: <20200115125239.136759-7-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115125239.136759-1-jean-philippe@linaro.org>
References: <20200115125239.136759-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045335_682164_FFDBA69E 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Support for SSID will require allocating context descriptor tables. Move
the context descriptor allocation to separate functions.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 47 +++++++++++++++++++++++++++----------
 1 file changed, 34 insertions(+), 13 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index e7c7e34d385f..a3438e256bd0 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -563,11 +563,13 @@ struct arm_smmu_ctx_desc {
 struct arm_smmu_ctx_desc_cfg {
 	__le64				*cdtab;
 	dma_addr_t			cdtab_dma;
+	unsigned int			num_l1_ents;
 };
 
 struct arm_smmu_s1_cfg {
 	struct arm_smmu_ctx_desc_cfg	cdcfg;
 	struct arm_smmu_ctx_desc	cd;
+	u8				s1cdmax;
 };
 
 struct arm_smmu_s2_cfg {
@@ -1502,6 +1504,35 @@ static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
 	cdptr[3] = cpu_to_le64(cfg->cd.mair);
 }
 
+static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
+{
+	size_t l1size;
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
+	struct arm_smmu_ctx_desc_cfg *cdcfg = &cfg->cdcfg;
+
+	cdcfg->num_l1_ents = 1UL << cfg->s1cdmax;
+	l1size = cdcfg->num_l1_ents * (CTXDESC_CD_DWORDS << 3);
+	cdcfg->cdtab = dmam_alloc_coherent(smmu->dev, l1size, &cdcfg->cdtab_dma,
+					   GFP_KERNEL);
+	if (!cdcfg->cdtab) {
+		dev_warn(smmu->dev, "failed to allocate context descriptor\n");
+		return -ENOMEM;
+	}
+	return 0;
+}
+
+static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
+{
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	struct arm_smmu_ctx_desc_cfg *cdcfg = &smmu_domain->s1_cfg.cdcfg;
+	size_t l1size = cdcfg->num_l1_ents * (CTXDESC_CD_DWORDS << 3);
+
+	dmam_free_coherent(smmu->dev, l1size, cdcfg->cdtab, cdcfg->cdtab_dma);
+	cdcfg->cdtab_dma = 0;
+	cdcfg->cdtab = NULL;
+}
+
 /* Stream table manipulation functions */
 static void
 arm_smmu_write_strtab_l1_desc(__le64 *dst, struct arm_smmu_strtab_l1_desc *desc)
@@ -2145,11 +2176,7 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
 		if (cfg->cdcfg.cdtab) {
-			dmam_free_coherent(smmu_domain->smmu->dev,
-					   CTXDESC_CD_DWORDS << 3,
-					   cfg->cdcfg.cdtab,
-					   cfg->cdcfg.cdtab_dma);
-
+			arm_smmu_free_cd_tables(smmu_domain);
 			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
 		}
 	} else {
@@ -2173,15 +2200,9 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	if (asid < 0)
 		return asid;
 
-	cfg->cdcfg.cdtab = dmam_alloc_coherent(smmu->dev,
-					       CTXDESC_CD_DWORDS << 3,
-					       &cfg->cdcfg.cdtab_dma,
-					       GFP_KERNEL);
-	if (!cfg->cdcfg.cdtab) {
-		dev_warn(smmu->dev, "failed to allocate context descriptor\n");
-		ret = -ENOMEM;
+	ret = arm_smmu_alloc_cd_tables(smmu_domain);
+	if (ret)
 		goto out_free_asid;
-	}
 
 	cfg->cd.asid	= (u16)asid;
 	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
