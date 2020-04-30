Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E28001BFEE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=isc1kZbrYjz3R9ROMFW2p5g63WVeT0M/L17SNIZpwFU=; b=q0yBFoxe7NNQ6V
	FtSSeK2UNYoeHEG+ucgXXXYkofgN+ULw9fJ0nENef1gXtoNTObW+SaZrDhNlIYAq8j6xdKbK6zoC/
	HyXbiKEaw6/O0YvW+JVGXYjril2qCPScJL/Z+CggmIZPuP0F30X0ZVty9AMEBev1ZjqWzn3R1YiEk
	PI9VkrPH37ABTFfpLjOI7xboStcxxszCr1x62OwJSWiNsvfDhGCVm4sWvLdGFQ2HQqiy4ykreljRi
	RA043ukerez78LC0rAPE2nxacK3ot34BaSYrY4aG1P6xiOmQykYSSpVXql0nj3eOMzEiIBXD9V6dW
	PG56+kyvDsj/aMyLApqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUANz-0003SF-Go; Thu, 30 Apr 2020 14:41:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMQ-0002JJ-Te
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id g13so7214490wrb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q1hatq5aHJx0R9t8uwCtyn8RhcKvbal/ky2u44TDT94=;
 b=MCxsvKs90x61N1oHzFrmVtQMdyghKsGyTHvvdPRwSEBey9Uq7axJbJ07O8bAxBIe5n
 CEZB46onPbKWAF0h+5dud8ZtxQdd65J9fyVAQTwzYTUDkfVTAeFzxYI6HxgJosS3vYe1
 Msx6igRoBSv8E+/+bnophcNGlT84MJ4AtufsoNBtgnzsiSlx8Npu+a8mYBFYIVoJZ/aw
 Lb10HHaDmfBzmOhPJoysfpSLSp+khb9XGFd9xyiWbeAktOvrUDYTbiN1JmCrG+RB5qJH
 pZneZseQkQCxH45G6HtCd7hcoqmHh06Mb0PWkAV0Fzk8yecal8e3zAuw2AgM3oIpTe91
 MooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q1hatq5aHJx0R9t8uwCtyn8RhcKvbal/ky2u44TDT94=;
 b=nGEvwG/3YZgCqbR/D5QzyWc295gwv7KC7HpdIyuLVjK909X2jcHOShpafFJTk15Svv
 z/QStxN58We59g4dSNbGzesQtf7shxYNxCeBTzLRu923xzmNGmez44lrhvckQUgGwHkH
 H9UzzWwFNuDYI4ZrDR3KZnh4Ixvrue9E508EKHxbTPJGuzBGqXv368BudJBaAO6CTIsR
 UTdm9aqj68F40bsyDljmZhvTjxn83Ylr5uqclcioBeV4eOn8sx3ieSgTEEJU2i1ssZcg
 qgF6DWYOBbgj0rrqnY58hOg/TSUuB3PC/qYfb6R7T+julq+fO9nzjgDLRjzWCmAzZkPB
 CjNQ==
X-Gm-Message-State: AGi0PuaQ+4AIxMU1PYxbd2ZBASlEbLTjmTnv2lkUrggngpZesqZaAUJN
 +UmfH7uKVHG0/0kbEwQ3Kkrc3irIxVg=
X-Google-Smtp-Source: APiQypKmA3hmCuHCbQ57+52GKfslTBCMUy7QnU27YXVTt1gy0M70oLF4dUSLPGv+PyNWWYWlo+FzKQ==
X-Received: by 2002:a5d:62cc:: with SMTP id o12mr4212778wrv.75.1588257620897; 
 Thu, 30 Apr 2020 07:40:20 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:19 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 03/25] iommu/sva: Add PASID helpers
Date: Thu, 30 Apr 2020 16:34:02 +0200
Message-Id: <20200430143424.2787566-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074022_997823_D3F0D240 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Let IOMMU drivers allocate a single PASID per mm. Store the mm in the
IOASID set to allow refcounting and searching mm by PASID, when handling
an I/O page fault.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/Kconfig     |  5 +++
 drivers/iommu/Makefile    |  1 +
 drivers/iommu/iommu-sva.h | 15 +++++++
 drivers/iommu/iommu-sva.c | 85 +++++++++++++++++++++++++++++++++++++++
 4 files changed, 106 insertions(+)
 create mode 100644 drivers/iommu/iommu-sva.h
 create mode 100644 drivers/iommu/iommu-sva.c

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index 58b4a4dbfc78b..5327ec663dea1 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -102,6 +102,11 @@ config IOMMU_DMA
 	select IRQ_MSI_IOMMU
 	select NEED_SG_DMA_LENGTH
 
+# Shared Virtual Addressing library
+config IOMMU_SVA
+	bool
+	select IOASID
+
 config FSL_PAMU
 	bool "Freescale IOMMU support"
 	depends on PCI
diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
index 9f33fdb3bb051..40c800dd4e3ef 100644
--- a/drivers/iommu/Makefile
+++ b/drivers/iommu/Makefile
@@ -37,3 +37,4 @@ obj-$(CONFIG_S390_IOMMU) += s390-iommu.o
 obj-$(CONFIG_QCOM_IOMMU) += qcom_iommu.o
 obj-$(CONFIG_HYPERV_IOMMU) += hyperv-iommu.o
 obj-$(CONFIG_VIRTIO_IOMMU) += virtio-iommu.o
+obj-$(CONFIG_IOMMU_SVA) += iommu-sva.o
diff --git a/drivers/iommu/iommu-sva.h b/drivers/iommu/iommu-sva.h
new file mode 100644
index 0000000000000..78f806fcacbe3
--- /dev/null
+++ b/drivers/iommu/iommu-sva.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * SVA library for IOMMU drivers
+ */
+#ifndef _IOMMU_SVA_H
+#define _IOMMU_SVA_H
+
+#include <linux/ioasid.h>
+#include <linux/mm_types.h>
+
+int iommu_sva_alloc_pasid(struct mm_struct *mm, ioasid_t min, ioasid_t max);
+void iommu_sva_free_pasid(struct mm_struct *mm);
+struct mm_struct *iommu_sva_find(ioasid_t pasid);
+
+#endif /* _IOMMU_SVA_H */
diff --git a/drivers/iommu/iommu-sva.c b/drivers/iommu/iommu-sva.c
new file mode 100644
index 0000000000000..3e07b71bde918
--- /dev/null
+++ b/drivers/iommu/iommu-sva.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Helpers for IOMMU drivers implementing SVA
+ */
+#include <linux/mutex.h>
+#include <linux/sched/mm.h>
+
+#include "iommu-sva.h"
+
+static DEFINE_MUTEX(iommu_sva_lock);
+static DECLARE_IOASID_SET(shared_pasid);
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
+		pasid = ioasid_alloc(&shared_pasid, min, max, mm);
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
+	if (ioasid_free(mm->pasid))
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
+	return ioasid_find(&shared_pasid, pasid, __mmget_not_zero);
+}
+EXPORT_SYMBOL_GPL(iommu_sva_find);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
