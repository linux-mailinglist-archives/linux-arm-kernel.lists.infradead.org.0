Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F461BFEFB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcoM/haD8BJJKLq6ziDanJwl9iYGkG1rg7sm9JWlt20=; b=UmStXmp2zZFEGZ
	CI8gcwlqKY0apIijIfbLxmqY+UNb4ByYN+fEouYSfM64lTf2SV9OFM677/aVP+1s8We2+vvdzRRab
	I4NJnLaYGU5HPPKByRI4IyS+dtXgTfMhsJy6K0XuhOCRCKrdc4RSfA/71ishBKcoS3h2M7rPco7De
	1awKF3QrhmMFUS9nVUfg7+0Z5t+E8HqAC3NwEWhbUtzG3jFy5HuBZYySWjyy8Xt+r2QiY8a6uWmmz
	fIlqRQe6yzcNMmPRCZ2FUKIiTzboiTNVNB9/J3nwTDYAbNd+h8smkWW/HQT8/rISUGoNs3RGrAsUV
	7fA8Y9MMUkakIxjHBPHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUASi-0001f3-TZ; Thu, 30 Apr 2020 14:46:52 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMi-0002cY-GD
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id u127so2218299wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bz2nKAGBQ7Mb48cdilmVqA9oljK0+KFUQvrEf7l8brs=;
 b=jP7k/LUXcUYun710ylXWDuHjjwfGyMBxy/m1+LSqPLKuqXaA9amtE5TKr16a4HzLn+
 Fm8h54awG/RdW/m4Amcgz5GfpVS0/gUm14HjpIWIj8liLm5GsVy9o/mnfuta6F0438SV
 o2VUiGJVfqjqfvET5zFfGgdOvxpuAVuyqJZ+BXqhVGOLxt3ft4NeSDJNxBnzomKe/D2F
 UBTfIFRMBrPnpJJr4pMbm0CXcJ11pQ8Kvm89HSnTCSjXyad7fKnKyumn30vVpe52AA+S
 4nZ+RYQbGXvPbgvVXO05cOJcwvkAkjMfdcPSmvJInEN3S7JwqjegV5H/ImS2pYL6as4q
 1zsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bz2nKAGBQ7Mb48cdilmVqA9oljK0+KFUQvrEf7l8brs=;
 b=rm+JZmHcBxasKJ+qKaXrSCb3zXaay/JcJbGVlGEPpsPVLgAjv7wjyMdoXJDITh1NdX
 0qwGnAWQVMLDlNn4463RQWK2+Yg/awPz/KdRV9TTL7A9ddwfFha16qZBZhpurHXlKX+I
 v8XjL6cV5b0BX3Qou9ae/TyOtuAUS41fCN4o2S3yDxlgPl7/3G0l66TPYsV/4otN4nuO
 h985jtD2KuaNPQByBY5bloNHO0XVDcU2lK127b373Idy9tcjGbLFlSbFr+PS0rCy2XNk
 DAKBzV40o3sRWmVWKG4zUluYqunNAH4krdEyXmTDGbLE8fVVVEQaYXevDHJUzbUIlrDe
 sWjQ==
X-Gm-Message-State: AGi0Puaj4/ShHzAiP19e3PA0vRZqjGr+gxKRg+Tw2qa1prqkxnW8EcmZ
 3lMcQChFMWoefBii7N2w9J6Epw==
X-Google-Smtp-Source: APiQypKoy2dcJrSt7kSsjpKijdoaghBX3m1a18Lcgqubk0sb+PDF4FirOU0pVOh6QgmFmWaqie9Eyw==
X-Received: by 2002:a1c:e1c1:: with SMTP id y184mr3393189wmg.143.1588257638849; 
 Thu, 30 Apr 2020 07:40:38 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:38 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 17/25] iommu/arm-smmu-v3: Implement iommu_sva_bind/unbind()
Date: Thu, 30 Apr 2020 16:34:16 +0200
Message-Id: <20200430143424.2787566-18-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074040_726182_F9E486D3 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The sva_bind() function allows devices to access process address spaces
using a PASID (aka SSID).

(1) bind() allocates or gets an existing MMU notifier tied to the
    (domain, mm) pair. Each mm gets one PASID.

(2) Any change to the address space calls invalidate_range() which sends
    ATC invalidations (in a subsequent patch).

(3) When the process address space dies, the release() notifier disables
    the CD to allow reclaiming the page tables. Since release() has to
    be light we do not instruct device drivers to stop DMA here, we just
    ignore incoming page faults.

    To avoid any event 0x0a print (C_BAD_CD) we disable translation
    without clearing CD.V. PCIe Translation Requests and Page Requests
    are silently denied. Don't clear the R bit because the S bit can't
    be cleared when STALL_MODEL==0b10 (forced), and clearing R without
    clearing S is useless. Faulting transactions will stall and will be
    aborted by the IOPF handler.

(4) After stopping DMA, the device driver releases the bond by calling
    unbind(). We release the MMU notifier, free the PASID and the bond.

Three structures keep track of bonds:
* arm_smmu_bond: one per (device, mm) pair, the handle returned to the
  device driver for a bind() request.
* arm_smmu_mmu_notifier: one per (domain, mm) pair, deals with ATS/TLB
  invalidations and clearing the context descriptor on mm exit.
* arm_smmu_ctx_desc: one per mm, holds the pinned ASID and pgd.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v5->v6:
* Implement bind() directly instead of going through io_mm_ops
* Don't clear S and R bits in step (3), it doesn't work with
  STALL_FORCE.
---
 drivers/iommu/Kconfig       |   1 +
 drivers/iommu/arm-smmu-v3.c | 256 +++++++++++++++++++++++++++++++++++-
 2 files changed, 253 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index 1e64ee6592e16..f863c4562feeb 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -432,6 +432,7 @@ config ARM_SMMU_V3
 	tristate "ARM Ltd. System MMU Version 3 (SMMUv3) Support"
 	depends on ARM64
 	select IOMMU_API
+	select IOMMU_SVA
 	select IOMMU_IO_PGTABLE_LPAE
 	select GENERIC_MSI_IRQ_DOMAIN
 	help
diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index c7942d0540599..00e5b69bb81a5 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -24,6 +24,7 @@
 #include <linux/iopoll.h>
 #include <linux/module.h>
 #include <linux/mmu_context.h>
+#include <linux/mmu_notifier.h>
 #include <linux/msi.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
@@ -36,6 +37,7 @@
 #include <linux/amba/bus.h>
 
 #include "io-pgtable-arm.h"
+#include "iommu-sva.h"
 
 /* MMIO registers */
 #define ARM_SMMU_IDR0			0x0
@@ -731,8 +733,31 @@ struct arm_smmu_domain {
 
 	struct list_head		devices;
 	spinlock_t			devices_lock;
+
+	struct mmu_notifier_ops		mn_ops;
 };
 
+struct arm_smmu_mmu_notifier {
+	struct mmu_notifier		mn;
+	struct arm_smmu_ctx_desc	*cd;
+	bool				cleared;
+	refcount_t			refs;
+	struct arm_smmu_domain		*domain;
+};
+
+#define mn_to_smmu(mn) container_of(mn, struct arm_smmu_mmu_notifier, mn)
+
+struct arm_smmu_bond {
+	struct iommu_sva		sva;
+	struct mm_struct		*mm;
+	struct arm_smmu_mmu_notifier	*smmu_mn;
+	struct list_head		list;
+	refcount_t			refs;
+};
+
+#define sva_to_bond(handle) \
+	container_of(handle, struct arm_smmu_bond, sva)
+
 struct arm_smmu_option_prop {
 	u32 opt;
 	const char *prop;
@@ -742,6 +767,13 @@ static DEFINE_XARRAY_ALLOC1(asid_xa);
 static DEFINE_SPINLOCK(contexts_lock);
 static DEFINE_MUTEX(arm_smmu_sva_lock);
 
+/*
+ * When a process dies, DMA is still running but we need to clear the pgd. If we
+ * simply cleared the valid bit from the context descriptor, we'd get event 0x0a
+ * which are not recoverable.
+ */
+static struct arm_smmu_ctx_desc invalid_cd = { 0 };
+
 static struct arm_smmu_option_prop arm_smmu_options[] = {
 	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
 	{ ARM_SMMU_OPT_PAGE0_REGS_ONLY, "cavium,cn9900-broken-page1-regspace"},
@@ -1652,7 +1684,9 @@ static int __arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 	 * (2) Install a secondary CD, for SID+SSID traffic.
 	 * (3) Update ASID of a CD. Atomically write the first 64 bits of the
 	 *     CD, then invalidate the old entry and mappings.
-	 * (4) Remove a secondary CD.
+	 * (4) Quiesce the context without clearing the valid bit. Disable
+	 *     translation, and ignore any translation fault.
+	 * (5) Remove a secondary CD.
 	 */
 	u64 val;
 	bool cd_live;
@@ -1669,8 +1703,10 @@ static int __arm_smmu_write_ctx_desc(struct arm_smmu_domain *smmu_domain,
 	val = le64_to_cpu(cdptr[0]);
 	cd_live = !!(val & CTXDESC_CD_0_V);
 
-	if (!cd) { /* (4) */
+	if (!cd) { /* (5) */
 		val = 0;
+	} else if (cd == &invalid_cd) { /* (4) */
+		val |= CTXDESC_CD_0_TCR_EPD0;
 	} else if (cd_live) { /* (3) */
 		val &= ~CTXDESC_CD_0_ASID;
 		val |= FIELD_PREP(CTXDESC_CD_0_ASID, cd->asid);
@@ -1883,7 +1919,6 @@ static struct arm_smmu_ctx_desc *arm_smmu_share_asid(u16 asid)
 	return NULL;
 }
 
-__maybe_unused
 static struct arm_smmu_ctx_desc *arm_smmu_alloc_shared_cd(struct mm_struct *mm)
 {
 	u16 asid;
@@ -1976,7 +2011,6 @@ static struct arm_smmu_ctx_desc *arm_smmu_alloc_shared_cd(struct mm_struct *mm)
 	return ERR_PTR(ret);
 }
 
-__maybe_unused
 static void arm_smmu_free_shared_cd(struct arm_smmu_ctx_desc *cd)
 {
 	if (arm_smmu_free_asid(cd)) {
@@ -2611,6 +2645,8 @@ static bool arm_smmu_capable(enum iommu_cap cap)
 	}
 }
 
+static struct mmu_notifier_ops arm_smmu_mmu_notifier_ops;
+
 static struct iommu_domain *arm_smmu_domain_alloc(unsigned type)
 {
 	struct arm_smmu_domain *smmu_domain;
@@ -2638,6 +2674,7 @@ static struct iommu_domain *arm_smmu_domain_alloc(unsigned type)
 	mutex_init(&smmu_domain->init_mutex);
 	INIT_LIST_HEAD(&smmu_domain->devices);
 	spin_lock_init(&smmu_domain->devices_lock);
+	smmu_domain->mn_ops = arm_smmu_mmu_notifier_ops;
 
 	return &smmu_domain->domain;
 }
@@ -3118,6 +3155,208 @@ arm_smmu_iova_to_phys(struct iommu_domain *domain, dma_addr_t iova)
 	return ops->iova_to_phys(ops, iova);
 }
 
+static struct mmu_notifier *arm_smmu_mmu_notifier_alloc(struct mm_struct *mm)
+{
+	struct arm_smmu_mmu_notifier *smmu_mn;
+
+	smmu_mn = kzalloc(sizeof(*smmu_mn), GFP_KERNEL);
+	if (!smmu_mn)
+		return ERR_PTR(-ENOMEM);
+
+	smmu_mn->cd = arm_smmu_alloc_shared_cd(mm);
+	if (IS_ERR(smmu_mn->cd)) {
+		void *ptr = ERR_CAST(smmu_mn->cd);
+
+		kfree(smmu_mn);
+		return ptr;
+	}
+	refcount_set(&smmu_mn->refs, 1);
+
+	return &smmu_mn->mn;
+}
+
+static void arm_smmu_mmu_notifier_free(struct mmu_notifier *mn)
+{
+	struct arm_smmu_mmu_notifier *smmu_mn = mn_to_smmu(mn);
+
+	arm_smmu_free_shared_cd(smmu_mn->cd);
+	kfree(smmu_mn);
+}
+
+static void arm_smmu_mm_invalidate_range(struct mmu_notifier *mn,
+					 struct mm_struct *mm,
+					 unsigned long start, unsigned long end)
+{
+	/* TODO: invalidate ATS */
+}
+
+static void arm_smmu_mm_release(struct mmu_notifier *mn, struct mm_struct *mm)
+{
+	struct arm_smmu_mmu_notifier *smmu_mn = mn_to_smmu(mn);
+	struct arm_smmu_domain *smmu_domain;
+
+	mutex_lock(&arm_smmu_sva_lock);
+	if (smmu_mn->cleared) {
+		mutex_unlock(&arm_smmu_sva_lock);
+		return;
+	}
+
+	smmu_domain = smmu_mn->domain;
+
+	/*
+	 * DMA may still be running. Keep the cd valid but disable
+	 * translation, so that new events will still result in stall.
+	 */
+	arm_smmu_write_ctx_desc(smmu_domain, mm->pasid, &invalid_cd);
+
+	arm_smmu_tlb_inv_asid(smmu_domain->smmu, smmu_mn->cd->asid);
+	/* TODO: invalidate ATS */
+
+	smmu_mn->cleared = true;
+	mutex_unlock(&arm_smmu_sva_lock);
+}
+
+static struct mmu_notifier_ops arm_smmu_mmu_notifier_ops = {
+	.alloc_notifier		= arm_smmu_mmu_notifier_alloc,
+	.free_notifier		= arm_smmu_mmu_notifier_free,
+	.invalidate_range	= arm_smmu_mm_invalidate_range,
+	.release		= arm_smmu_mm_release,
+};
+
+static struct iommu_sva *
+__arm_smmu_sva_bind(struct device *dev, struct mm_struct *mm)
+{
+	int ret;
+	ioasid_t pasid;
+	struct mmu_notifier *mn;
+	struct arm_smmu_bond *bond;
+	struct arm_smmu_mmu_notifier *smmu_mn;
+	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
+	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+
+	if (!master || !master->sva_enabled)
+		return ERR_PTR(-ENODEV);
+
+	/* If bind() was already called for this (dev, mm) pair, reuse it. */
+	list_for_each_entry(bond, &master->bonds, list) {
+		if (bond->mm == mm) {
+			refcount_inc(&bond->refs);
+			return &bond->sva;
+		}
+	}
+
+	mn = mmu_notifier_get(&smmu_domain->mn_ops, mm);
+	if (IS_ERR(mn))
+		return ERR_CAST(mn);
+
+	smmu_mn = mn_to_smmu(mn);
+	if (smmu_mn->domain)
+		refcount_inc(&smmu_mn->refs);
+
+	bond = kzalloc(sizeof(*bond), GFP_KERNEL);
+	if (!bond) {
+		ret = -ENOMEM;
+		goto err_put_mn;
+	}
+
+	/* Allocate a PASID for this mm if necessary */
+	pasid = iommu_sva_alloc_pasid(mm, 1, (1U << master->ssid_bits) - 1);
+	if (pasid == INVALID_IOASID) {
+		ret = -ENOSPC;
+		goto err_free_bond;
+	}
+	bond->mm = mm;
+	bond->sva.dev = dev;
+	bond->smmu_mn = smmu_mn;
+	refcount_set(&bond->refs, 1);
+
+	ret = arm_smmu_write_ctx_desc(smmu_domain, mm->pasid, smmu_mn->cd);
+	if (ret)
+		goto err_free_pasid;
+
+	bond->sva.dev = dev;
+	list_add(&bond->list, &master->bonds);
+	smmu_mn->domain = smmu_domain;
+	return &bond->sva;
+
+err_free_pasid:
+	iommu_sva_free_pasid(mm);
+err_free_bond:
+	kfree(bond);
+err_put_mn:
+	refcount_dec(&smmu_mn->refs);
+	mmu_notifier_put(mn);
+	return ERR_PTR(ret);
+}
+
+static void __arm_smmu_sva_unbind(struct iommu_sva *handle)
+{
+	struct arm_smmu_mmu_notifier *smmu_mn;
+	struct arm_smmu_bond *bond = sva_to_bond(handle);
+	struct iommu_domain *domain = iommu_get_domain_for_dev(handle->dev);
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+
+	if (!refcount_dec_and_test(&bond->refs))
+		return;
+
+	list_del(&bond->list);
+
+	smmu_mn = bond->smmu_mn;
+	/*
+	 * This is redundant as the MMU notifier already counts refs, but frees
+	 * the bond in a RCU callback which cannot sleep. We have much cleaning
+	 * to do and we hold all the right locks, so duplicate the refcounting.
+	 */
+	if (refcount_dec_and_test(&smmu_mn->refs)) {
+		arm_smmu_write_ctx_desc(smmu_domain, bond->mm->pasid, NULL);
+
+		/*
+		 * If we went through clear(), we've already invalidated, and no
+		 * new TLB entry can have been formed.
+		 */
+		if (!smmu_mn->cleared) {
+			arm_smmu_tlb_inv_asid(smmu_domain->smmu,
+					      smmu_mn->cd->asid);
+			/* TODO: invalidate ATS */
+		}
+	}
+
+	iommu_sva_free_pasid(bond->mm);
+	kfree(bond);
+	mmu_notifier_put(&smmu_mn->mn);
+}
+
+static struct iommu_sva *
+arm_smmu_sva_bind(struct device *dev, struct mm_struct *mm, void *drvdata)
+{
+	struct iommu_sva *handle;
+	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+
+	if (smmu_domain->stage != ARM_SMMU_DOMAIN_S1)
+		return ERR_PTR(-EINVAL);
+
+	mutex_lock(&arm_smmu_sva_lock);
+	handle = __arm_smmu_sva_bind(dev, mm);
+	mutex_unlock(&arm_smmu_sva_lock);
+	return handle;
+}
+
+static void arm_smmu_sva_unbind(struct iommu_sva *handle)
+{
+	mutex_lock(&arm_smmu_sva_lock);
+	__arm_smmu_sva_unbind(handle);
+	mutex_unlock(&arm_smmu_sva_lock);
+}
+
+static int arm_smmu_sva_get_pasid(struct iommu_sva *handle)
+{
+	struct arm_smmu_bond *bond = sva_to_bond(handle);
+
+	return bond->mm->pasid;
+}
+
 static struct platform_driver arm_smmu_driver;
 
 static
@@ -3426,6 +3665,12 @@ static int arm_smmu_dev_disable_sva(struct device *dev)
 	master->sva_enabled = false;
 	mutex_unlock(&arm_smmu_sva_lock);
 
+	/*
+	 * Since the MMU notifier ops are held in the domain, it is not safe to
+	 * free the domain until all MMU notifiers are freed.
+	 */
+	mmu_notifier_synchronize();
+
 	return 0;
 }
 
@@ -3482,6 +3727,9 @@ static struct iommu_ops arm_smmu_ops = {
 	.dev_feat_enabled	= arm_smmu_dev_feature_enabled,
 	.dev_enable_feat	= arm_smmu_dev_enable_feature,
 	.dev_disable_feat	= arm_smmu_dev_disable_feature,
+	.sva_bind		= arm_smmu_sva_bind,
+	.sva_unbind		= arm_smmu_sva_unbind,
+	.sva_get_pasid		= arm_smmu_sva_get_pasid,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
