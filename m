Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0795612672A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:33:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Dehw91zq8dEiNX9yRMyOnC8ZLD6doYsjyQ4L0XtLgI=; b=IqR6wzGzEgbdCv
	msYSutF9jgmU047+KUOtE2h1rGfJoF2opF/o5cLxbErbF8Dhmn3rhzJrFXxr/4tunaqNovOZkq0PX
	NtlUAJfA7+k+kjVRuk8KB40alkUdpeOvc7QzSNfZYpZoSiEXq56/9Xp+ZKx3H1wfib5YXVwVqGIlA
	/72Lpmytzo+zAQVC5bbOv4URcot3nJXI05PaCjbp9JRwMBQHXuSKqmUmEG1QuqwXrPumTEIuXnYJp
	5nw9DQ8WDSZMuRj8Iuo5G/qzrZZw8q+MsIlgnffx/jP461qrSoe5ymV3NC9HZheR3+5QaUEADmo9+
	hHe7/kF2wxcUT/oCnTRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihyjw-0001Tl-1x; Thu, 19 Dec 2019 16:33:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyi0-0008U0-9Q
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:31:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so6640722wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dMO+Cx5tpHWBU9PvT9K3Ldxua2I75lUQvV4E3iN+Pd4=;
 b=L6Y6F/bZ0X6GnA6kcBZgaXAVjxtjAyEeEzKHLOb7dyE7Xra2EWhN3E2FV1pD/3jeqF
 Yl8MP7t7E6fc/B1SRXICTfrmmBAqXUHJRLw5pJcf29pPUWZ1hZGmH2wiA4Q4PGQA5yp0
 drBOPo+Htx1MMDuIrvO0MavmC3p3Oar5PL9ngjx84tC3hJqd1xQdZ22JINufiVYFahyt
 GQ4Ctzcx0fW8SfJ45uPErgBMYQESIqhJ9DHjaOzF4X5fsvpQM9FzqurIZlWcCEO3++B3
 Y7uc8Bvn0GLBhxmFJ814rKwcuODaQ3avmBF9ttywapAxu57HzjwpSg6Vq2j/vEVr+wcg
 pXvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dMO+Cx5tpHWBU9PvT9K3Ldxua2I75lUQvV4E3iN+Pd4=;
 b=L9f+hoBhAHFcCweRFX6Dl3t6h6pr8P5e4wisZUfotRnHNQHTy1klOPhMoz0POd6efY
 eOL0f4l1j1BiY4v/6kghO75WuHbkZHh0AvcZPCxZk9JGGVzmyYWjD5yEPwnORb/TKvBM
 0gWepsz6CsRCF5BRxvk2c7iwatV3PHU+dCwpdteyr5Ks+xQ4idghYZERq+ny/e27c5f9
 cD4Sh7+o9P6J+bQeaHEDmvBcVVuvgxwmNqfrU30RLDhZG+pdg0xLOdHAv3Cd0l3lO6/S
 dbmQ03SmiT1pm+buRPwR7wbhDjBUITpvAVnAE5RSbtFXpZ//KYo84ZPgTtlElm0qOJt1
 16WA==
X-Gm-Message-State: APjAAAUSBNOv1/zpSHwiR7+4ZybHmgLVtTcIdo6rwfywMTJ+ZLQChaRO
 kvKFySfdYBYmdHMi1qQMIv/cxA==
X-Google-Smtp-Source: APXvYqyln7ft1HEYcBhtMdztDRUtjwcelgdooZlJCblVVFeLkALxpO+iJ6Q80B/Q1/dimC5vv0QgKA==
X-Received: by 2002:adf:ce87:: with SMTP id r7mr10031904wrn.245.1576773086823; 
 Thu, 19 Dec 2019 08:31:26 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch.
 [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 08:31:26 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v4 06/13] iommu/arm-smmu-v3: Add context descriptor tables
 allocators
Date: Thu, 19 Dec 2019 17:30:26 +0100
Message-Id: <20191219163033.2608177-7-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083128_442916_5E878010 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Support for SSID will require allocating context descriptor tables. Move
the context descriptor allocation to separate functions.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
