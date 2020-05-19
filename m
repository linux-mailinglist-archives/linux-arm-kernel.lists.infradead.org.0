Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFDA1D9EB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=di/t/zjfml+C64766wCTkgO2CepgnEYvFboKA3AWP5U=; b=hMIPMP4KXD7G2U
	IwucGQIjhxOZryjAHlm++9Fm8XWqp+P2jQE64HyyL3NxSDtPowViEh9rgo35ibZCm8tGwXTBHRF1F
	c1Gl218iurRNjb4wXkd1A6YQv29O97smhQYB+pu9k2YT+hQFnRLt5xSt5tjm9gnT6WexlhOH4+oEr
	9SnIRUi1yCPjKSZgkiHfhvI/wAPTJym6E2tMz/Hbwk3loekbK7RWVLI34BGM2soCFXVruZrJKpNB2
	feck7fJcQcSAmV9v5WPtqIUt7U2+bWJQgYL1p1HL8DmZqbsoZhtO+4T7FXAjOz6LQZlYZAAZ9oD7W
	0d4xyyd4AHqIGlCb7FmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6Zt-000769-IC; Tue, 19 May 2020 18:02:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6Yj-0006CQ-HW
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:01:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id e16so393524wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2PFJF5btJNBPprEd/LjKgNayT4ugYCOJnPARFwzNang=;
 b=LrVLTpbGU4NiphecFL5M4ouOgZufinFzBCfZAELELYApdrOCEHujSXy+FUdD42qX8l
 8vjiQkUpQllNaT36Vs+gVTDsK0mCFuQ4hQ5Y5M23lUpiTU6YsaHYDzi9lNFE4T8WHXeb
 NZrBW40uyUB/AajvgtfXJEDwUayE2sLlUwgHNn+HnsB/dijnotLjnkjd83m8g012WOOf
 rdixreNwYbkTse3eCKAZLtShfMQ+jSekNlwF9YLtQB6Hkp2JTm1Q0bhjWGXr1Y9Fvbez
 rfin57fhrSJY8eRT3Rr+KPlNcOf+8a2Yn81ZFbRYIooZJe/UEU5y2m5zLbjU+BdEftqx
 g0yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2PFJF5btJNBPprEd/LjKgNayT4ugYCOJnPARFwzNang=;
 b=VN5ErWnuwQ7bhz+2fqK4BjawSrgIeUYPAZysjHhaYwcNk0Hcg1DM+chC8odtkxCOls
 bRGMHrJiRTQzaPWUmsBQWU+0UGWWNrT9JKNQJpXiCY3w6q/LsW6GJs6pxyx6bke5AKFE
 IgH7T336WR3D4dumvXTzrkGMsSxYpfbo6SJ5btK8H29bWIqqlRbOQ5LGUHmQmsus8pQ9
 mk+WAyyL1ugX+fXQUK11Tj8bA2FWP8gj0c1gOTelasVLI3EwbwcMEbqluTawreQSofpZ
 YD1W0VofKne8OFhcer3B3nqhvXDWB5GvOBwbmuY51i1owvRgLs3JDNt5AQih1nQ6sKc5
 lhnw==
X-Gm-Message-State: AOAM5322gH6IcgqKIuURNSGcc5Zx2rl77ye0h1m45XO7xHgJqkEXpTxd
 NldF1hBiGdSoueFcfRVT+1UqHw==
X-Google-Smtp-Source: ABdhPJztpovo6qlRG1M54wjBp9zTXl5RwTuJ1SnYrJPYt/7mMDTUOS9LfLeUBDTtOc3yWZxPnijhIQ==
X-Received: by 2002:a5d:5048:: with SMTP id h8mr76396wrt.293.1589911303946;
 Tue, 19 May 2020 11:01:43 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.01.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:01:43 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v7 02/24] iommu/ioasid: Add ioasid references
Date: Tue, 19 May 2020 19:54:40 +0200
Message-Id: <20200519175502.2504091-3-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519175502.2504091-1-jean-philippe@linaro.org>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_110145_580887_4F73512E 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Let IOASID users take references to existing ioasids with ioasid_get().
ioasid_put() drops a reference and only frees the ioasid when its
reference number is zero. It returns true if the ioasid was freed.
For drivers that don't call ioasid_get(), ioasid_put() is the same as
ioasid_free().

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v6->v7: rename ioasid_free() to ioasid_put(), add WARN in ioasid_get()
---
 include/linux/ioasid.h      | 10 ++++++++--
 drivers/iommu/intel-iommu.c |  4 ++--
 drivers/iommu/intel-svm.c   |  6 +++---
 drivers/iommu/ioasid.c      | 38 +++++++++++++++++++++++++++++++++----
 4 files changed, 47 insertions(+), 11 deletions(-)

diff --git a/include/linux/ioasid.h b/include/linux/ioasid.h
index 6f000d7a0ddc..e9dacd4b9f6b 100644
--- a/include/linux/ioasid.h
+++ b/include/linux/ioasid.h
@@ -34,7 +34,8 @@ struct ioasid_allocator_ops {
 #if IS_ENABLED(CONFIG_IOASID)
 ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min, ioasid_t max,
 		      void *private);
-void ioasid_free(ioasid_t ioasid);
+void ioasid_get(ioasid_t ioasid);
+bool ioasid_put(ioasid_t ioasid);
 void *ioasid_find(struct ioasid_set *set, ioasid_t ioasid,
 		  bool (*getter)(void *));
 int ioasid_register_allocator(struct ioasid_allocator_ops *allocator);
@@ -48,10 +49,15 @@ static inline ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min,
 	return INVALID_IOASID;
 }
 
-static inline void ioasid_free(ioasid_t ioasid)
+static inline void ioasid_get(ioasid_t ioasid)
 {
 }
 
+static inline bool ioasid_put(ioasid_t ioasid)
+{
+	return false;
+}
+
 static inline void *ioasid_find(struct ioasid_set *set, ioasid_t ioasid,
 				bool (*getter)(void *))
 {
diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index ed21ce6d1238..0230f35480ee 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -5432,7 +5432,7 @@ static void auxiliary_unlink_device(struct dmar_domain *domain,
 	domain->auxd_refcnt--;
 
 	if (!domain->auxd_refcnt && domain->default_pasid > 0)
-		ioasid_free(domain->default_pasid);
+		ioasid_put(domain->default_pasid);
 }
 
 static int aux_domain_add_dev(struct dmar_domain *domain,
@@ -5494,7 +5494,7 @@ static int aux_domain_add_dev(struct dmar_domain *domain,
 	spin_unlock(&iommu->lock);
 	spin_unlock_irqrestore(&device_domain_lock, flags);
 	if (!domain->auxd_refcnt && domain->default_pasid > 0)
-		ioasid_free(domain->default_pasid);
+		ioasid_put(domain->default_pasid);
 
 	return ret;
 }
diff --git a/drivers/iommu/intel-svm.c b/drivers/iommu/intel-svm.c
index 2998418f0a38..86f1264bd07c 100644
--- a/drivers/iommu/intel-svm.c
+++ b/drivers/iommu/intel-svm.c
@@ -353,7 +353,7 @@ int intel_svm_bind_mm(struct device *dev, int *pasid, int flags, struct svm_dev_
 		if (mm) {
 			ret = mmu_notifier_register(&svm->notifier, mm);
 			if (ret) {
-				ioasid_free(svm->pasid);
+				ioasid_put(svm->pasid);
 				kfree(svm);
 				kfree(sdev);
 				goto out;
@@ -371,7 +371,7 @@ int intel_svm_bind_mm(struct device *dev, int *pasid, int flags, struct svm_dev_
 		if (ret) {
 			if (mm)
 				mmu_notifier_unregister(&svm->notifier, mm);
-			ioasid_free(svm->pasid);
+			ioasid_put(svm->pasid);
 			kfree(svm);
 			kfree(sdev);
 			goto out;
@@ -447,7 +447,7 @@ int intel_svm_unbind_mm(struct device *dev, int pasid)
 			kfree_rcu(sdev, rcu);
 
 			if (list_empty(&svm->devs)) {
-				ioasid_free(svm->pasid);
+				ioasid_put(svm->pasid);
 				if (svm->mm)
 					mmu_notifier_unregister(&svm->notifier, svm->mm);
 				list_del(&svm->list);
diff --git a/drivers/iommu/ioasid.c b/drivers/iommu/ioasid.c
index 0f8dd377aada..50ee27bbd04e 100644
--- a/drivers/iommu/ioasid.c
+++ b/drivers/iommu/ioasid.c
@@ -2,7 +2,7 @@
 /*
  * I/O Address Space ID allocator. There is one global IOASID space, split into
  * subsets. Users create a subset with DECLARE_IOASID_SET, then allocate and
- * free IOASIDs with ioasid_alloc and ioasid_free.
+ * free IOASIDs with ioasid_alloc and ioasid_put.
  */
 #include <linux/ioasid.h>
 #include <linux/module.h>
@@ -15,6 +15,7 @@ struct ioasid_data {
 	struct ioasid_set *set;
 	void *private;
 	struct rcu_head rcu;
+	refcount_t refs;
 };
 
 /*
@@ -314,6 +315,7 @@ ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min, ioasid_t max,
 
 	data->set = set;
 	data->private = private;
+	refcount_set(&data->refs, 1);
 
 	/*
 	 * Custom allocator needs allocator data to perform platform specific
@@ -346,11 +348,34 @@ ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min, ioasid_t max,
 EXPORT_SYMBOL_GPL(ioasid_alloc);
 
 /**
- * ioasid_free - Free an IOASID
+ * ioasid_get - obtain a reference to the IOASID
+ */
+void ioasid_get(ioasid_t ioasid)
+{
+	struct ioasid_data *ioasid_data;
+
+	spin_lock(&ioasid_allocator_lock);
+	ioasid_data = xa_load(&active_allocator->xa, ioasid);
+	if (ioasid_data)
+		refcount_inc(&ioasid_data->refs);
+	else
+		WARN_ON(1);
+	spin_unlock(&ioasid_allocator_lock);
+}
+EXPORT_SYMBOL_GPL(ioasid_get);
+
+/**
+ * ioasid_put - Release a reference to an ioasid
  * @ioasid: the ID to remove
+ *
+ * Put a reference to the IOASID, free it when the number of references drops to
+ * zero.
+ *
+ * Return: %true if the IOASID was freed, %false otherwise.
  */
-void ioasid_free(ioasid_t ioasid)
+bool ioasid_put(ioasid_t ioasid)
 {
+	bool free = false;
 	struct ioasid_data *ioasid_data;
 
 	spin_lock(&ioasid_allocator_lock);
@@ -360,6 +385,10 @@ void ioasid_free(ioasid_t ioasid)
 		goto exit_unlock;
 	}
 
+	free = refcount_dec_and_test(&ioasid_data->refs);
+	if (!free)
+		goto exit_unlock;
+
 	active_allocator->ops->free(ioasid, active_allocator->ops->pdata);
 	/* Custom allocator needs additional steps to free the xa element */
 	if (active_allocator->flags & IOASID_ALLOCATOR_CUSTOM) {
@@ -369,8 +398,9 @@ void ioasid_free(ioasid_t ioasid)
 
 exit_unlock:
 	spin_unlock(&ioasid_allocator_lock);
+	return free;
 }
-EXPORT_SYMBOL_GPL(ioasid_free);
+EXPORT_SYMBOL_GPL(ioasid_put);
 
 /**
  * ioasid_find - Find IOASID data
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
