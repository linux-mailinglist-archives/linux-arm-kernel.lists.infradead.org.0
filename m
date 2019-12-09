Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0429A1173CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:13:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXgrZkeHJCxGBiLOT+pbbYorSQ8n91MQd37s1R7YZHg=; b=d/il11DHCBuURf
	aKTbdFZYVq1gUQSQzb1IDskzsFyjslud3wERXjmkiiKn6DEj3f6fzcoErqYzjkv1xsKP01kaYBDpp
	3YZmfiqgr19tlGrlx9fVmVDFtG1sYldLLsA3Q/F4PoAqLkcBumBksIZOsBAqVDJBTfNQD7we0nXeR
	3DL6JWBtvLNjdXj8VFyxuVd2YKOgRdcFjtd/wtmW3/Bvwi52RrBsGsR8D6Cf3A8FSOi/SZOQrW0Zi
	9jQGUs9nSRiwDWDbLHzIYaVkpD29OyenrQ7DfP6TA4qyqf6ECiuAClL6b2WkB/bIWND2FPdxkQe+k
	T8QrSusvAaYrlj9TaHPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNXM-0005vw-67; Mon, 09 Dec 2019 18:13:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNVs-0004dp-17
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:12:05 +0000
Received: by mail-wm1-x341.google.com with SMTP id q9so314415wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 10:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jdXrySEgrRfn+Z3Yzn3toiuPjUb15DophWycH8Ax2iM=;
 b=VibxK8E6UtBa3mBQgrNRNTK2Uy5EViAeROXBoZPkWAJV4yfISCkGICxBo48eLIOqXs
 bGV2zZUhEmFM/xw54TAEvQ/cskYCHlSWqlGKC5caVxRSN2qs3f9kL3LSE0UCpe8xd1mC
 6aCOO+L1vYRFsAm+kApqFs2gSfu5v9IQbfaLlokVl9cFoHtjtp7uwACvN65EJwkGDjuk
 lC1yJl11t5IdjXlA/MdgR461khqpf5lcssK2MIuKnK/YnUetoZ6d55ICNswmZ1Pam3eo
 M5BeNC5VwypX2kYYPk4/2g4I3/75MRHusrqAaPbSLILVqeozuANvUyAurMyuQk6BGOd1
 1QUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jdXrySEgrRfn+Z3Yzn3toiuPjUb15DophWycH8Ax2iM=;
 b=tk9l0pFO8jpm5NFS/OSZP5RzQ68yMRA23Cg4DB5a35mqUFOcCYHioD9sgf3bO1bVss
 xDgU+1SZHrT8I3dc114Kd6+YTRqfOJ2RwSPVJXtjhf1vpekenn+GvASStlLQgsjKdI1W
 Uc84DGwjR2baKg/ZzXXy4DE7A0FUAcHH5jk63OIOdha3WT5mESU12tJoFQnOvcO1JCfK
 QYqRJJg66Uv+J5omPvtxDudJcFFz3x/vyKCiAPx0d1sw/e7jrZPa/5NRo6RpeDdvLngf
 LGj2g4JwtW+Fk8otCzpxV+j/XKaYRgDd9Zx/YL4vFEnm7vXhZBoYayF4fFygj+98QuyW
 rU9A==
X-Gm-Message-State: APjAAAWWWcD1N/rWa1qW8snJDg3khu7YPul4o7EmlBB0xJAgqu4BgrMN
 07uAxiVifgC0IkZ5N44wcGJvUw==
X-Google-Smtp-Source: APXvYqzKY0Spjw9amk9taywIHmgHfBpVJEx9dYQjLXVyXm/cYRHmvbeekPl/e5P3l+lPjG7Irrc6Xg==
X-Received: by 2002:a7b:c956:: with SMTP id i22mr327209wml.65.1575915122599;
 Mon, 09 Dec 2019 10:12:02 -0800 (PST)
Received: from localhost.localdomain (adsl-62-167-101-88.adslplus.ch.
 [62.167.101.88])
 by smtp.gmail.com with ESMTPSA id h2sm309838wrv.66.2019.12.09.10.12.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 10:12:02 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v3 06/13] iommu/arm-smmu-v3: Add context descriptor tables
 allocators
Date: Mon,  9 Dec 2019 19:05:07 +0100
Message-Id: <20191209180514.272727-7-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191209180514.272727-1-jean-philippe@linaro.org>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101204_270058_869C22E8 
X-CRM114-Status: GOOD (  13.08  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 joro@8bytes.org, guohanjun@huawei.com, rjw@rjwysocki.net,
 eric.auger@redhat.com, robh+dt@kernel.org, jonathan.cameron@huawei.com,
 sudeep.holla@arm.com, bhelgaas@google.com, zhangfei.gao@linaro.org,
 will@kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support for SSID will require allocating context descriptor tables. Move
the context descriptor allocation to separate functions.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 57 ++++++++++++++++++++++++++++++-------
 1 file changed, 46 insertions(+), 11 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index b287e303b1d7..43d6a7ded6e4 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -568,6 +568,7 @@ struct arm_smmu_cd_table {
 struct arm_smmu_s1_cfg {
 	struct arm_smmu_cd_table	table;
 	struct arm_smmu_ctx_desc	cd;
+	u8				s1cdmax;
 };
 
 struct arm_smmu_s2_cfg {
@@ -1455,6 +1456,31 @@ static int arm_smmu_cmdq_issue_sync(struct arm_smmu_device *smmu)
 }
 
 /* Context descriptor manipulation functions */
+static int arm_smmu_alloc_cd_leaf_table(struct arm_smmu_device *smmu,
+					struct arm_smmu_cd_table *table,
+					size_t num_entries)
+{
+	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
+
+	table->ptr = dmam_alloc_coherent(smmu->dev, size, &table->ptr_dma,
+					 GFP_KERNEL);
+	if (!table->ptr) {
+		dev_warn(smmu->dev,
+			 "failed to allocate context descriptor table\n");
+		return -ENOMEM;
+	}
+	return 0;
+}
+
+static void arm_smmu_free_cd_leaf_table(struct arm_smmu_device *smmu,
+					struct arm_smmu_cd_table *table,
+					size_t num_entries)
+{
+	size_t size = num_entries * (CTXDESC_CD_DWORDS << 3);
+
+	dmam_free_coherent(smmu->dev, size, table->ptr, table->ptr_dma);
+}
+
 static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
 {
 	u64 val = 0;
@@ -1502,6 +1528,23 @@ static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
 	cdptr[3] = cpu_to_le64(cfg->cd.mair);
 }
 
+static int arm_smmu_alloc_cd_tables(struct arm_smmu_domain *smmu_domain)
+{
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
+
+	return arm_smmu_alloc_cd_leaf_table(smmu, &cfg->table,
+					    1 << cfg->s1cdmax);
+}
+
+static void arm_smmu_free_cd_tables(struct arm_smmu_domain *smmu_domain)
+{
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
+
+	arm_smmu_free_cd_leaf_table(smmu, &cfg->table, 1 << cfg->s1cdmax);
+}
+
 /* Stream table manipulation functions */
 static void
 arm_smmu_write_strtab_l1_desc(__le64 *dst, struct arm_smmu_strtab_l1_desc *desc)
@@ -2145,11 +2188,7 @@ static void arm_smmu_domain_free(struct iommu_domain *domain)
 		struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
 
 		if (cfg->table.ptr) {
-			dmam_free_coherent(smmu_domain->smmu->dev,
-					   CTXDESC_CD_DWORDS << 3,
-					   cfg->table.ptr,
-					   cfg->table.ptr_dma);
-
+			arm_smmu_free_cd_tables(smmu_domain);
 			arm_smmu_bitmap_free(smmu->asid_map, cfg->cd.asid);
 		}
 	} else {
@@ -2173,13 +2212,9 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	if (asid < 0)
 		return asid;
 
-	cfg->table.ptr = dmam_alloc_coherent(smmu->dev, CTXDESC_CD_DWORDS << 3,
-					     &cfg->table.ptr_dma, GFP_KERNEL);
-	if (!cfg->table.ptr) {
-		dev_warn(smmu->dev, "failed to allocate context descriptor\n");
-		ret = -ENOMEM;
+	ret = arm_smmu_alloc_cd_tables(smmu_domain);
+	if (ret)
 		goto out_free_asid;
-	}
 
 	cfg->cd.asid	= (u16)asid;
 	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
