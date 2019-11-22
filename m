Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6635F107B79
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 00:33:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=plWtcXL+s3bKkJXLS6iAYLVaAUEPxirE0J8hvwo9NEo=; b=RLYpY7VlXwkDmLjAroXjWRSI40
	vDtIqCVlgC6dgP822vZAIByiX5BtjTMXH1KUI0D+9A9N0YigYNCkXb6ZRYICCzlt/SyB49Jir8tKr
	oATF8gmVIx6OtFZOmZeSI1NmsLGntngdw2WgOG+seZ9yEAG2quNZtAz5GZPMe4ieJ6222Ljv8D/U4
	yAQ/Q+a/BcU1FnVTCL+NJUfMEr4JTuFi+j0/j6RW16iQw+of1ZsU+sHphPw71fv7IM219MdC+fdMH
	fIEejnm0YuXumqsHllCLkm0HKBcC6dgrjO3DZJY4UXW3s5pLcJ6tTTdEC+mLan89Sae2La5SFmuQd
	BZr1py4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYIQe-0003a3-9m; Fri, 22 Nov 2019 23:33:32 +0000
Received: from a27-188.smtp-out.us-west-2.amazonses.com ([54.240.27.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYIPA-0002VW-QB
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 23:32:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574465517;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References;
 bh=ujD+t6S3GdDVcNP4xWAN1Vtk6wbhhHyNGHYlJn0JQRA=;
 b=HOS4TBokxsrQY7TVmJ3HrfAXDnxEPiCcYe8AkDS2hc9zIFtfM73+p08efXuDoN59
 /MO7cyCmiGZ5w78emh2UheYe9k+I6k9XQtrNZ1Y3RwSlz7D2Tps2d12GTw3dWkArpza
 0FfHWBKmJlDBdxQIglgh0kq3h8E9BUhYDuxAGo84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574465517;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:Feedback-ID;
 bh=ujD+t6S3GdDVcNP4xWAN1Vtk6wbhhHyNGHYlJn0JQRA=;
 b=fJDMUDzei3VeNEQuu6X0LdXVrgQ24nW/+wJe8Fh9VKE6oLEFihWESyUSHBt7IO+x
 8e99BMObCEjBB8SgxCFFK0qD0eUUpYCrsf+s9uklh7vFnx6cphBcHa+6Lz2rP08F7Gr
 xo2OzTA9Qs4xdO22HkVXk5u1UvLqoRKRpBoyCuY4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A2E06C76F4D
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v2 5/8] drm/msm: Attach the IOMMU device during initialization
Date: Fri, 22 Nov 2019 23:31:57 +0000
Message-ID: <0101016e9575384f-2718e26b-931f-4e5d-9028-3fa8a587fcc6-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574465484-7115-1-git-send-email-jcrouse@codeaurora.org>
References: <1574465484-7115-1-git-send-email-jcrouse@codeaurora.org>
X-SES-Outgoing: 2019.11.22-54.240.27.188
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_153200_912207_5D116E28 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Jonathan Marek <jonathan@marek.ca>, Sam Ravnborg <sam@ravnborg.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, David Airlie <airlied@linux.ie>,
 Sean Paul <sean@poorly.run>, robin.murphy@arm.com,
 dri-devel@lists.freedesktop.org, Georgi Djakov <georgi.djakov@linaro.org>,
 Bruce Wang <bzwang@chromium.org>, Rob Clark <robdclark@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Drew Davenport <ddavenport@chromium.org>,
 Jeykumar Sankaran <jsanka@codeaurora.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>, will@kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Everywhere an IOMMU object is created by msm_gpu_create_address_space
the IOMMU device is attached immediately after. Instead of carrying around
the infrastructure to do the attach from the device specific code do it
directly in the msm_iommu_init() function. This gets it out of the way for
more aggressive cleanups that follow.

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c  |  8 --------
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c |  4 ----
 drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c |  7 -------
 drivers/gpu/drm/msm/msm_gem_vma.c        | 23 +++++++++++++++++++----
 drivers/gpu/drm/msm/msm_gpu.c            | 11 +----------
 drivers/gpu/drm/msm/msm_gpummu.c         |  6 ------
 drivers/gpu/drm/msm/msm_iommu.c          | 15 +++++++--------
 drivers/gpu/drm/msm/msm_mmu.h            |  1 -
 8 files changed, 27 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
index 6c92f0f..b082b23 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
@@ -704,7 +704,6 @@ static int _dpu_kms_mmu_init(struct dpu_kms *dpu_kms)
 {
 	struct iommu_domain *domain;
 	struct msm_gem_address_space *aspace;
-	int ret;
 
 	domain = iommu_domain_alloc(&platform_bus_type);
 	if (!domain)
@@ -720,13 +719,6 @@ static int _dpu_kms_mmu_init(struct dpu_kms *dpu_kms)
 		return PTR_ERR(aspace);
 	}
 
-	ret = aspace->mmu->funcs->attach(aspace->mmu);
-	if (ret) {
-		DPU_ERROR("failed to attach iommu %d\n", ret);
-		msm_gem_address_space_put(aspace);
-		return ret;
-	}
-
 	dpu_kms->base.aspace = aspace;
 	return 0;
 }
diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c
index dda0543..9dba37c 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c
@@ -518,10 +518,6 @@ struct msm_kms *mdp4_kms_init(struct drm_device *dev)
 		}
 
 		kms->aspace = aspace;
-
-		ret = aspace->mmu->funcs->attach(aspace->mmu);
-		if (ret)
-			goto fail;
 	} else {
 		DRM_DEV_INFO(dev->dev, "no iommu, fallback to phys "
 				"contig buffers for scanout\n");
diff --git a/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c b/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c
index e43ecd4..653dab2 100644
--- a/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c
+++ b/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c
@@ -736,13 +736,6 @@ struct msm_kms *mdp5_kms_init(struct drm_device *dev)
 		}
 
 		kms->aspace = aspace;
-
-		ret = aspace->mmu->funcs->attach(aspace->mmu);
-		if (ret) {
-			DRM_DEV_ERROR(&pdev->dev, "failed to attach iommu: %d\n",
-				ret);
-			goto fail;
-		}
 	} else {
 		DRM_DEV_INFO(&pdev->dev,
 			 "no iommu, fallback to phys contig buffers for scanout\n");
diff --git a/drivers/gpu/drm/msm/msm_gem_vma.c b/drivers/gpu/drm/msm/msm_gem_vma.c
index 1af5354..91d993a 100644
--- a/drivers/gpu/drm/msm/msm_gem_vma.c
+++ b/drivers/gpu/drm/msm/msm_gem_vma.c
@@ -131,8 +131,8 @@ msm_gem_address_space_create(struct device *dev, struct iommu_domain *domain,
 		const char *name)
 {
 	struct msm_gem_address_space *aspace;
-	u64 size = domain->geometry.aperture_end -
-		domain->geometry.aperture_start;
+	u64 start = domain->geometry.aperture_start;
+	u64 size = domain->geometry.aperture_end - start;
 
 	aspace = kzalloc(sizeof(*aspace), GFP_KERNEL);
 	if (!aspace)
@@ -141,9 +141,18 @@ msm_gem_address_space_create(struct device *dev, struct iommu_domain *domain,
 	spin_lock_init(&aspace->lock);
 	aspace->name = name;
 	aspace->mmu = msm_iommu_new(dev, domain);
+	if (IS_ERR(aspace->mmu)) {
+		int ret = PTR_ERR(aspace->mmu);
 
-	drm_mm_init(&aspace->mm, (domain->geometry.aperture_start >> PAGE_SHIFT),
-		size >> PAGE_SHIFT);
+		kfree(aspace);
+		return ERR_PTR(ret);
+	}
+
+	/*
+	 * Attaching the IOMMU device changes the aperture values so use the
+	 * cached values instead
+	 */
+	drm_mm_init(&aspace->mm, start >> PAGE_SHIFT, size >> PAGE_SHIFT);
 
 	kref_init(&aspace->kref);
 
@@ -164,6 +173,12 @@ msm_gem_address_space_create_a2xx(struct device *dev, struct msm_gpu *gpu,
 	spin_lock_init(&aspace->lock);
 	aspace->name = name;
 	aspace->mmu = msm_gpummu_new(dev, gpu);
+	if (IS_ERR(aspace->mmu)) {
+		int ret = PTR_ERR(aspace->mmu);
+
+		kfree(aspace);
+		return ERR_PTR(ret);
+	}
 
 	drm_mm_init(&aspace->mm, (va_start >> PAGE_SHIFT),
 		size >> PAGE_SHIFT);
diff --git a/drivers/gpu/drm/msm/msm_gpu.c b/drivers/gpu/drm/msm/msm_gpu.c
index 18f3a5c..f7bf80e 100644
--- a/drivers/gpu/drm/msm/msm_gpu.c
+++ b/drivers/gpu/drm/msm/msm_gpu.c
@@ -808,7 +808,6 @@ msm_gpu_create_address_space(struct msm_gpu *gpu, struct platform_device *pdev,
 		uint64_t va_start, uint64_t va_end)
 {
 	struct msm_gem_address_space *aspace;
-	int ret;
 
 	/*
 	 * Setup IOMMU.. eventually we will (I think) do this once per context
@@ -833,17 +832,9 @@ msm_gpu_create_address_space(struct msm_gpu *gpu, struct platform_device *pdev,
 			va_start, va_end);
 	}
 
-	if (IS_ERR(aspace)) {
+	if (IS_ERR(aspace))
 		DRM_DEV_ERROR(gpu->dev->dev, "failed to init mmu: %ld\n",
 			PTR_ERR(aspace));
-		return ERR_CAST(aspace);
-	}
-
-	ret = aspace->mmu->funcs->attach(aspace->mmu);
-	if (ret) {
-		msm_gem_address_space_put(aspace);
-		return ERR_PTR(ret);
-	}
 
 	return aspace;
 }
diff --git a/drivers/gpu/drm/msm/msm_gpummu.c b/drivers/gpu/drm/msm/msm_gpummu.c
index 34980d8..0ad0f84 100644
--- a/drivers/gpu/drm/msm/msm_gpummu.c
+++ b/drivers/gpu/drm/msm/msm_gpummu.c
@@ -21,11 +21,6 @@ struct msm_gpummu {
 #define GPUMMU_PAGE_SIZE SZ_4K
 #define TABLE_SIZE (sizeof(uint32_t) * GPUMMU_VA_RANGE / GPUMMU_PAGE_SIZE)
 
-static int msm_gpummu_attach(struct msm_mmu *mmu)
-{
-	return 0;
-}
-
 static void msm_gpummu_detach(struct msm_mmu *mmu)
 {
 }
@@ -85,7 +80,6 @@ static void msm_gpummu_destroy(struct msm_mmu *mmu)
 }
 
 static const struct msm_mmu_funcs funcs = {
-		.attach = msm_gpummu_attach,
 		.detach = msm_gpummu_detach,
 		.map = msm_gpummu_map,
 		.unmap = msm_gpummu_unmap,
diff --git a/drivers/gpu/drm/msm/msm_iommu.c b/drivers/gpu/drm/msm/msm_iommu.c
index ad58cfe..544c519 100644
--- a/drivers/gpu/drm/msm/msm_iommu.c
+++ b/drivers/gpu/drm/msm/msm_iommu.c
@@ -23,13 +23,6 @@ static int msm_fault_handler(struct iommu_domain *domain, struct device *dev,
 	return 0;
 }
 
-static int msm_iommu_attach(struct msm_mmu *mmu)
-{
-	struct msm_iommu *iommu = to_msm_iommu(mmu);
-
-	return iommu_attach_device(iommu->domain, mmu->dev);
-}
-
 static void msm_iommu_detach(struct msm_mmu *mmu)
 {
 	struct msm_iommu *iommu = to_msm_iommu(mmu);
@@ -66,7 +59,6 @@ static void msm_iommu_destroy(struct msm_mmu *mmu)
 }
 
 static const struct msm_mmu_funcs funcs = {
-		.attach = msm_iommu_attach,
 		.detach = msm_iommu_detach,
 		.map = msm_iommu_map,
 		.unmap = msm_iommu_unmap,
@@ -76,6 +68,7 @@ static const struct msm_mmu_funcs funcs = {
 struct msm_mmu *msm_iommu_new(struct device *dev, struct iommu_domain *domain)
 {
 	struct msm_iommu *iommu;
+	int ret;
 
 	iommu = kzalloc(sizeof(*iommu), GFP_KERNEL);
 	if (!iommu)
@@ -85,5 +78,11 @@ struct msm_mmu *msm_iommu_new(struct device *dev, struct iommu_domain *domain)
 	msm_mmu_init(&iommu->base, dev, &funcs);
 	iommu_set_fault_handler(domain, msm_fault_handler, iommu);
 
+	ret = iommu_attach_device(iommu->domain, dev);
+	if (ret) {
+		kfree(iommu);
+		return ERR_PTR(ret);
+	}
+
 	return &iommu->base;
 }
diff --git a/drivers/gpu/drm/msm/msm_mmu.h b/drivers/gpu/drm/msm/msm_mmu.h
index 67a623f..bae9e8e 100644
--- a/drivers/gpu/drm/msm/msm_mmu.h
+++ b/drivers/gpu/drm/msm/msm_mmu.h
@@ -10,7 +10,6 @@
 #include <linux/iommu.h>
 
 struct msm_mmu_funcs {
-	int (*attach)(struct msm_mmu *mmu);
 	void (*detach)(struct msm_mmu *mmu);
 	int (*map)(struct msm_mmu *mmu, uint64_t iova, struct sg_table *sgt,
 			unsigned len, int prot);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
