Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 873F71FF84A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1cjozv4sE58TZ24jIUA/7aXeB9dCimnhpFhEZmXqsc=; b=COMx50XoefLo4g
	xJsVo0sXtgdPlVjsfwvMceAIHPZau3JTQWqE3C4YIMxd1knil/cNv+k14blZBUMy+nSXlWUyRV2VV
	+gvJIy27r/boRWvlGoGkCFI5tXwt77dXccDQ0YldvEA+s7JXkmUNKyNCl6deBcnsNEwT44VdsXHI0
	JxEhtJIDB4FRewKlFtUhrIM4ILSWzzk0RA0Btbg1jj/qfj29LqrmfCXF2kZkQNuKtjLsAubSRy2y+
	Q1E4t1hAj1S0Nzv+Z/V7pYkOxc6kMLrO4KhZbM2S5wKlWF80F3tMeVRhgTrN+nhhOZPlhMtSbQvt4
	Cm5uZNd5peWQgEu+TUeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwu3-0007Gv-TV; Thu, 18 Jun 2020 15:56:35 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwqK-0002AV-30
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:52:52 +0000
Received: by mail-ej1-x643.google.com with SMTP id n24so6972561ejd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 08:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RIXfyWsdCSmhkCPoxdMwgb5HoQjrgnKhMBMykTzupqQ=;
 b=sROLygHw732kSPKgqm1mAJj8riM2WWL2GR/3RO14UTzqzDo+ON4NJHm/mIDeC2LCl4
 +RP9frVhkxIRCUhwMIcnsdOC7S0WnA2G6KfJuTe/Je028x/UMJrQov9nesMCYthhJ/lP
 pJ1rzJVPXLe1HLn7VCsYhkZNAAQANsfO/2H3NkbXt6L2YJO5UoWuzfUlEG0dlXco6I1Q
 0c6m2NjRQFUEJEYSQQaKlU23EX57kMW88YOG6S0iyWbgDwJGGwXBOOO7jnrsWYGC/4O9
 KIfikh5Y7YxEg+ObMIpjzN59DZNakYHrfmJokgjdphmsjh21ggon+8JPNKuNaBofykdO
 FZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RIXfyWsdCSmhkCPoxdMwgb5HoQjrgnKhMBMykTzupqQ=;
 b=VpLYwfhS7PT3xEgAGnx1FFOtLmKXfvLLVfanxuKcD2rtikKBE3KBrxtX59vStXCK3b
 CtM0TBA74eQIsStY+NF9s+xHtQZlr+h5cz334oB9lV9L2+HvFR9KaJoOd7AkBjeYQWVL
 hp4FYviz/BlgZpuuQ+92F9MEK3EJzPGM4+J0pMkNRq2wCyrJN+mQDDmRflcEhMaZ9pGr
 zuyIJuTuUS2dCYi1aLGSAFuebgSIYz5XeSprFfJp3n3B346LywxGo6zLtyr/yANo305v
 90h1AbeFehNyZaBEjIFfjaK1GL/pWJpMJPAIDGBMcFuvheSdKYye1+EpFEnSf8uhacsY
 iGow==
X-Gm-Message-State: AOAM533MgSB6TmYCcaR4YHK7p7AQhWybTfuJveZBnfLIUiJLGXdIN/4s
 tmNLB7AlATf3GCJbgEpvDCyCbw==
X-Google-Smtp-Source: ABdhPJxBNDhV30ThfSe9ibwBo1JFl7QA4iTqkJCsARWmrputOq3YDJfzAm2LRPiQdaBFKF1afEsQww==
X-Received: by 2002:a17:906:1f4f:: with SMTP id
 d15mr4481967ejk.206.1592495562342; 
 Thu, 18 Jun 2020 08:52:42 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id 63sm2402267edy.8.2020.06.18.08.52.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 08:52:41 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
Subject: [PATCH v8 03/12] iommu/sva: Add PASID helpers
Date: Thu, 18 Jun 2020 17:51:16 +0200
Message-Id: <20200618155125.1548969-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618155125.1548969-1-jean-philippe@linaro.org>
References: <20200618155125.1548969-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_085244_270147_5A858B87 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
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
Cc: fenghua.yu@intel.com, jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, catalin.marinas@arm.com,
 joro@8bytes.org, robin.murphy@arm.com, hch@infradead.org,
 zhengxiang9@huawei.com, Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org,
 will@kernel.org, xuzaibo@huawei.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Let IOMMU drivers allocate a single PASID per mm. Store the mm in the
IOASID set to allow refcounting and searching mm by PASID, when handling
an I/O page fault.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v7->v8: rename to IOMMU_SVA_LIB (Lu Baolu)
---
 drivers/iommu/Kconfig         |  5 +++
 drivers/iommu/Makefile        |  1 +
 drivers/iommu/iommu-sva-lib.h | 15 +++++++
 drivers/iommu/iommu-sva-lib.c | 85 +++++++++++++++++++++++++++++++++++
 4 files changed, 106 insertions(+)
 create mode 100644 drivers/iommu/iommu-sva-lib.h
 create mode 100644 drivers/iommu/iommu-sva-lib.c

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index b510f67dfa499..74a10e7a8d082 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -102,6 +102,11 @@ config IOMMU_DMA
 	select IRQ_MSI_IOMMU
 	select NEED_SG_DMA_LENGTH
 
+# Shared Virtual Addressing library
+config IOMMU_SVA_LIB
+	bool
+	select IOASID
+
 config FSL_PAMU
 	bool "Freescale IOMMU support"
 	depends on PCI
diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
index 342190196dfb0..0fe5a7f9bc69c 100644
--- a/drivers/iommu/Makefile
+++ b/drivers/iommu/Makefile
@@ -38,3 +38,4 @@ obj-$(CONFIG_S390_IOMMU) += s390-iommu.o
 obj-$(CONFIG_QCOM_IOMMU) += qcom_iommu.o
 obj-$(CONFIG_HYPERV_IOMMU) += hyperv-iommu.o
 obj-$(CONFIG_VIRTIO_IOMMU) += virtio-iommu.o
+obj-$(CONFIG_IOMMU_SVA_LIB) += iommu-sva-lib.o
diff --git a/drivers/iommu/iommu-sva-lib.h b/drivers/iommu/iommu-sva-lib.h
new file mode 100644
index 0000000000000..b40990aef3fde
--- /dev/null
+++ b/drivers/iommu/iommu-sva-lib.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * SVA library for IOMMU drivers
+ */
+#ifndef _IOMMU_SVA_LIB_H
+#define _IOMMU_SVA_LIB_H
+
+#include <linux/ioasid.h>
+#include <linux/mm_types.h>
+
+int iommu_sva_alloc_pasid(struct mm_struct *mm, ioasid_t min, ioasid_t max);
+void iommu_sva_free_pasid(struct mm_struct *mm);
+struct mm_struct *iommu_sva_find(ioasid_t pasid);
+
+#endif /* _IOMMU_SVA_LIB_H */
diff --git a/drivers/iommu/iommu-sva-lib.c b/drivers/iommu/iommu-sva-lib.c
new file mode 100644
index 0000000000000..db7e6c104d6b0
--- /dev/null
+++ b/drivers/iommu/iommu-sva-lib.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Helpers for IOMMU drivers implementing SVA
+ */
+#include <linux/mutex.h>
+#include <linux/sched/mm.h>
+
+#include "iommu-sva-lib.h"
+
+static DEFINE_MUTEX(iommu_sva_lock);
+static DECLARE_IOASID_SET(iommu_sva_pasid);
+
+/**
+ * iommu_sva_alloc_pasid - Allocate a PASID for the mm
+ * @mm: the mm
+ * @min: minimum PASID value (inclusive)
+ * @max: maximum PASID value (inclusive)
+ *
+ * Try to allocate a PASID for this mm, or take a reference to the existing one
+ * provided it fits within the [min, max] range. On success the PASID is
+ * available in mm->pasid, and must be released with iommu_sva_free_pasid().
+ *
+ * Returns 0 on success and < 0 on error.
+ */
+int iommu_sva_alloc_pasid(struct mm_struct *mm, ioasid_t min, ioasid_t max)
+{
+	int ret = 0;
+	ioasid_t pasid;
+
+	if (min == INVALID_IOASID || max == INVALID_IOASID ||
+	    min == 0 || max < min)
+		return -EINVAL;
+
+	mutex_lock(&iommu_sva_lock);
+	if (mm->pasid) {
+		if (mm->pasid >= min && mm->pasid <= max)
+			ioasid_get(mm->pasid);
+		else
+			ret = -EOVERFLOW;
+	} else {
+		pasid = ioasid_alloc(&iommu_sva_pasid, min, max, mm);
+		if (pasid == INVALID_IOASID)
+			ret = -ENOMEM;
+		else
+			mm->pasid = pasid;
+	}
+	mutex_unlock(&iommu_sva_lock);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(iommu_sva_alloc_pasid);
+
+/**
+ * iommu_sva_free_pasid - Release the mm's PASID
+ * @mm: the mm.
+ *
+ * Drop one reference to a PASID allocated with iommu_sva_alloc_pasid()
+ */
+void iommu_sva_free_pasid(struct mm_struct *mm)
+{
+	mutex_lock(&iommu_sva_lock);
+	if (ioasid_put(mm->pasid))
+		mm->pasid = 0;
+	mutex_unlock(&iommu_sva_lock);
+}
+EXPORT_SYMBOL_GPL(iommu_sva_free_pasid);
+
+/* ioasid wants a void * argument */
+static bool __mmget_not_zero(void *mm)
+{
+	return mmget_not_zero(mm);
+}
+
+/**
+ * iommu_sva_find() - Find mm associated to the given PASID
+ * @pasid: Process Address Space ID assigned to the mm
+ *
+ * On success a reference to the mm is taken, and must be released with mmput().
+ *
+ * Returns the mm corresponding to this PASID, or an error if not found.
+ */
+struct mm_struct *iommu_sva_find(ioasid_t pasid)
+{
+	return ioasid_find(&iommu_sva_pasid, pasid, __mmget_not_zero);
+}
+EXPORT_SYMBOL_GPL(iommu_sva_find);
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
