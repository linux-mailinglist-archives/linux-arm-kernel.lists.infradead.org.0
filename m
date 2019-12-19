Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1E6126713
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 17:31:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nu5cOMdtmDnfZmoYfFeoYIKuzUGn0xbVM/eCOWzg7hk=; b=enQhj9hspmNwJ4
	QqzIw/IvNTaJMLVHXWrpB6XX2wpZ/V1l64DXs97nepbf7TVhlhO8p8/wl+5pmHWWP7RERw/U3tYhR
	hRpD/AbKeVfGmGrpv+CcrPkwei3w/Xadc40ks0yWNSEDgelJIVpV+IPi6Ef+tHO6FWOyW5qTozD8H
	gfjgCqrHW7MxA9KNS+OE6Ufn5hQEgSgsjGyKxg5/XvX13N4GxHBJ7z71Lk6OoXdj1r0KKyCC8dxCk
	j/eHxKFVdNxVX5XjPK8JOtrNG37ab6vn3pitaCBytBh91Kxtjg3Ng2uxJJ8x7wxXjJTqj+e+0CluS
	h8Do5BNM0LdQP/2zwqvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihyi8-0008QM-Om; Thu, 19 Dec 2019 16:31:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihyhu-0008PN-3F
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 16:31:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id 20so6165288wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 08:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qvpO6T6lCyQjsFcC/B3MAQOfFJPvli4NlBcE8bVnq2o=;
 b=ybmj/yFMV4WPp7svNei7QMmCl8bEZOgf5I1OmMiNuceKiEvs5FOwc+5QNBcmfQrlON
 DofenBUgXZTyi4JhcRiIepGkKcdGY4BtKidQwP7/JHO1FEOJNjzrzX8jKjeJNf5cwrSN
 tS2rRvNKSfBvhZDS+GHaReUR5s84Sru30RnnKkOevGMAjdhnFV1FNoTdrYF5xTS2C5Pz
 pBv91NSiFLc4P/2cJ1BRlji6oxczL+VzlLLYhsrAz88xLoCnUc9XjeqfwlqEjDnliWJA
 9uGe7CZ4PKzluz2OcGmuwW1v9QwotUUAWENXlNB7vZEd8IAreHDTExzizhbd8YlzdFMR
 HnXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qvpO6T6lCyQjsFcC/B3MAQOfFJPvli4NlBcE8bVnq2o=;
 b=hx6ZczvRzpcJM7ex+m/t8xDYOwefrWNkXpSi8VBmWdm3ujmPV2O9Xxwy6ehcCSLWmo
 +Zxv89D4085H2T3G14mIGB12kIHkRYYNqtrz4vT108wnS6OcABlJBATa/BQ++AVT+l6/
 tbVmXbJ4XulE/ohXbTQA33V910ZGfdGLyUnof1vei9dx7OSxohOYuaTsawRQnt04qplH
 zlV6qAjatui86m6mycEg1Fv0y9Px8AiVsZ9pHKyUtEFpLt6/HLNEBWEh3SLGqBv5KzWW
 WY0ph+CRz199DB4dwYrPpHmGNN5YdNIJGyBEBUSmYpNPb4g91qC5zaYs1MGOIQly3620
 5NPg==
X-Gm-Message-State: APjAAAWTXSdl3xyQngZ9MScA9XSb2zDMcjtZXP4eJq/bgS3Rh+nJoPTb
 /oDwvP1QcXmYGj4FfB8MngH+jw==
X-Google-Smtp-Source: APXvYqxbh4xLAjFUzI3q0HQZiQKtrGjMkp4J2NYL+c3vK40JxUXhicQB54JCrIL/QmT7sGb7qr24dA==
X-Received: by 2002:a1c:b456:: with SMTP id d83mr10758320wmf.172.1576773080107; 
 Thu, 19 Dec 2019 08:31:20 -0800 (PST)
Received: from localhost.localdomain (adsl-84-227-176-239.adslplus.ch.
 [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id u22sm7092068wru.30.2019.12.19.08.31.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 08:31:19 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v4 01/13] iommu/arm-smmu-v3: Drop __GFP_ZERO flag from DMA
 allocation
Date: Thu, 19 Dec 2019 17:30:21 +0100
Message-Id: <20191219163033.2608177-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_083122_273073_B32A38FA 
X-CRM114-Status: GOOD (  11.05  )
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

Since commit 518a2f1925c3 ("dma-mapping: zero memory returned from
dma_alloc_*"), dma_alloc_* always initializes memory to zero, so there
is no need to use dma_zalloc_* or pass the __GFP_ZERO flag anymore.

The flag was introduced by commit 04fa26c71be5 ("iommu/arm-smmu: Convert
DMA buffer allocations to the managed API"), since the managed API
didn't provide a dmam_zalloc_coherent() function.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index effe72eb89e7..d4e8b7f8d9f4 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1675,7 +1675,7 @@ static int arm_smmu_init_l2_strtab(struct arm_smmu_device *smmu, u32 sid)
 
 	desc->span = STRTAB_SPLIT + 1;
 	desc->l2ptr = dmam_alloc_coherent(smmu->dev, size, &desc->l2ptr_dma,
-					  GFP_KERNEL | __GFP_ZERO);
+					  GFP_KERNEL);
 	if (!desc->l2ptr) {
 		dev_err(smmu->dev,
 			"failed to allocate l2 stream table for SID %u\n",
@@ -2161,8 +2161,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 		return asid;
 
 	cfg->cdptr = dmam_alloc_coherent(smmu->dev, CTXDESC_CD_DWORDS << 3,
-					 &cfg->cdptr_dma,
-					 GFP_KERNEL | __GFP_ZERO);
+					 &cfg->cdptr_dma, GFP_KERNEL);
 	if (!cfg->cdptr) {
 		dev_warn(smmu->dev, "failed to allocate context descriptor\n");
 		ret = -ENOMEM;
@@ -2883,7 +2882,7 @@ static int arm_smmu_init_strtab_2lvl(struct arm_smmu_device *smmu)
 
 	l1size = cfg->num_l1_ents * (STRTAB_L1_DESC_DWORDS << 3);
 	strtab = dmam_alloc_coherent(smmu->dev, l1size, &cfg->strtab_dma,
-				     GFP_KERNEL | __GFP_ZERO);
+				     GFP_KERNEL);
 	if (!strtab) {
 		dev_err(smmu->dev,
 			"failed to allocate l1 stream table (%u bytes)\n",
@@ -2910,7 +2909,7 @@ static int arm_smmu_init_strtab_linear(struct arm_smmu_device *smmu)
 
 	size = (1 << smmu->sid_bits) * (STRTAB_STE_DWORDS << 3);
 	strtab = dmam_alloc_coherent(smmu->dev, size, &cfg->strtab_dma,
-				     GFP_KERNEL | __GFP_ZERO);
+				     GFP_KERNEL);
 	if (!strtab) {
 		dev_err(smmu->dev,
 			"failed to allocate linear stream table (%u bytes)\n",
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
