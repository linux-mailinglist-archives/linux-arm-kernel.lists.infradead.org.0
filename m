Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0863D16AF1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:29:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4kBObOJi7c+l9PqxRMoFB7l98MKKMnHQvLGN536COI=; b=AUWn04gQe15GZO
	t7dBJoioXrJ8xKLbkNEcgcD3rmSj54LF/cOa9NG98NB1XRQQCHUE0pKDqIihzmTl0XdmAd8KPnUAv
	cENIOuTClLIbVGxvW2k14zbI7WcznfclkuLfZ+a5iQ2eU9h5GrABXh4VWpLN2Obq/r17zzwLNlLXJ
	Fzpg40Pk1lZ+HCtDeCmZCOS6o8tSDVvu7XM9GpITf9q+pBrA1gBkGm5g/VYOFjIOdk8z/eqHvvubQ
	hvOxf1Zy2LLiAmCtyLdxljRP/0poK7477+CyV5bA9YTGV3yWT4RoozlwBi3NnWT8uhVgBjuo+nMp9
	6av/yj/3JV9mW97n4ZgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IU3-0002PI-B6; Mon, 24 Feb 2020 18:29:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPQ-0005in-Fx
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id c84so336694wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1/v4/yX+Rb+z7FmgKRxusFg6LNtZiO3DMXvnBgeOuHA=;
 b=zxiRGOVQbUYycQsFrjTLJX2IpngMLUiFnM9zOzjXR47e2SetqBWdJnpHlovEcuPFBv
 FexG3YDDT1ALrD/D+FKHkP2MIXaGBqx7A0sQaHVDRDNDQVr6jS2GdDb8Dv4EB4Ft15Rc
 X+Oex0fYMVCjcbrMtfUHVdIYJ1+hcTCMOOiPeqQ4R0z6xH0F4B7muTW0XjymSxneLuIP
 UjsAEBRJN0lKsKcUb0AF5d72SsOmuIZT45CPqq1FHWour+tr4KPFS8ATERhupHhS/6vO
 NnLNTmMYIpRJABwOkWxXIjD1Zqj0p9uyUCjjFEDFuUat5g+KAY0cf2+EDDRSjS2adgZy
 cP3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1/v4/yX+Rb+z7FmgKRxusFg6LNtZiO3DMXvnBgeOuHA=;
 b=TwjQwGn8lYsxfwMSQ/3pOfMFAf+j2wbX7T0ASbzaA6KgtcuqJ3mhy3BQUf/CvuXRYk
 Bt3bc2GwyfBsDHT7UXXOKIKRJYmHjnbpNjbh7DlnF/VARVYHEYz4CSk31vfyMMtQP3iQ
 PTa49UmCH8dH16EBoyriONJAJJYPV6yUrpdwEtV3xq9kIkMYlPsqPTVuoI78FmeOfSl2
 EPtXmtPtS7uOF8VWLQfn3e9y2m34e/QPea29XbMfU+p/p23kmLb4bgg/Iy+Nm8knxsNr
 7FpPhFTQy62Z6E6yiEM1uEtRNGmY0Ojy4NyYWkphoHEKkln2MUKWY0hi3jN6MefyVAJc
 WgBg==
X-Gm-Message-State: APjAAAVp20ZTbe0qQh9k0jmfp/vnGJSmZSQtw+Z6+DdZAP7WC7ZG+gf/
 Dxy8nI9zSr0iuNcojbTmDIVilw==
X-Google-Smtp-Source: APXvYqxqoFKehhPoecAVUtglmpmoNhk6pIi6LUZIxLg0IgobfRPy8bO8YntSNF9Wq6iiPuinGYBuMA==
X-Received: by 2002:a05:600c:2255:: with SMTP id
 a21mr309717wmm.79.1582568687070; 
 Mon, 24 Feb 2020 10:24:47 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:46 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 16/26] iommu/arm-smmu-v3: Add dev_to_master() helper
Date: Mon, 24 Feb 2020 19:23:51 +0100
Message-Id: <20200224182401.353359-17-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102448_559522_531D4BF5 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 robh+dt@kernel.org, yi.l.liu@intel.com, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, christian.koenig@amd.com,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We'll need to frequently find the SMMU master associated to a device
when implementing SVA. Move it to a separate function.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/arm-smmu-v3.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 77a846440ba6..54bd6913d648 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -747,6 +747,15 @@ static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
 	return container_of(dom, struct arm_smmu_domain, domain);
 }
 
+static struct arm_smmu_master *dev_to_master(struct device *dev)
+{
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+
+	if (!fwspec)
+		return NULL;
+	return fwspec->iommu_priv;
+}
+
 static void parse_driver_options(struct arm_smmu_device *smmu)
 {
 	int i = 0;
@@ -2940,15 +2949,13 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 {
 	int ret = 0;
 	unsigned long flags;
-	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct arm_smmu_device *smmu;
+	struct arm_smmu_master *master = dev_to_master(dev);
 	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
-	struct arm_smmu_master *master;
 
-	if (!fwspec)
+	if (!master)
 		return -ENOENT;
 
-	master = fwspec->iommu_priv;
 	smmu = master->smmu;
 
 	arm_smmu_detach_dev(master);
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
