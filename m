Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66D01BFEE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fISrDQTY9p2CFjmGacmnB3n5YbCWjzg1HUKQszscTWo=; b=soSPhjAp09DfMU
	6ulcmrFeHoviYsq3a8gQkGkgc2oU8LLn8OcZNWm01vJi4MFjz0Nzo4cW5XXHSsBw8WfmXYPJ0xavq
	+DTzt94IaBeqCeu097j0sDrMjMsQJ99puDKEdHlG0dvJhBYbPND2G5n1vYXlVibHXcfh6I5BDBxcb
	yeVt+AHypgHUzYymx0XBdHFhoxVBniITKTpUqFljk1pz+AYkcC/Z09JEkpVWyvNke1MvlyC/su0rR
	C7Xkc9zkxVPdTWCbptVyiiFpgOjEesI1AodPo24fNkiRlAj1dYYWUFFZUVvLzknxOYv/8ED7EsmKu
	t/gDaRSYfe061a9f1sWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAOa-00048e-6l; Thu, 30 Apr 2020 14:42:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMT-0002M9-OO
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so7208926wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iB79dQWmb3AvvVXZjQ0zsRWqvSDeK4D4Xz99psG6JTA=;
 b=kqqBCMB8wIC1y8Rio6R5IHwLudVi7bFHNMpl4mEWV+Y0muWKmz6UZdqzNbGIyv5bpm
 ftjPpJIsHT6qnfm1WBiwXzW0T9u+mx+BLucZZwSt+n6HlLu3OSGZht29vm6F8Fq8duSi
 0TYRzwrsU8ORGEfBJC7KXIFiwOnmGJYql/QapNaZMjA07wOmNmtpjrTa1KxyQZxnN62Z
 meBoHmfPL1kKNc3YQBwMO5g0U/lUxxsuQYzgsH2pPZ1Ihf9zgWxIu2o1K0uh+IY+I4GC
 l8gVonWj4kZ5mCvht3R6nzU1dVk4MyhI6+2z+1XxRDDZELQYysBCbFL9Ocg1hZBxd3G7
 mkow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iB79dQWmb3AvvVXZjQ0zsRWqvSDeK4D4Xz99psG6JTA=;
 b=GrUDOdxxz0yNz1DDBtiy2g44LCdmoxoyDhfUFRj0Q2x/B2xdtus27p/Lu3dSS4CULH
 NknWSxfLWXNamqSxFtty/kLPq/2D6Zc2MkDzayTwTQVhwQoxbpTn2E6jaJXvGeoR3krL
 koMHbAYq7d22bXQwLD71RFR4zKdUmYR7ERB7j75GmMNtEdCq1GuqOpcVxd1w92GKN/ri
 4wKymmvJOELsGiv1gvolvH4GOi/IB4FeVvddgRjVxtGJIUwE/fOrQc3T20Xze6DYw6NG
 rAkD//FT43qgkSw0LnM4aQl5xGnHEUvZOY9iams7yCQ9RxkiLdQgz0Eemejbg6sk7Pzg
 DBww==
X-Gm-Message-State: AGi0Pubcteky/s2Vl4H9HrZo7v3e6a/5tC56e37mRqS1DuAb4/eGgt1C
 NNFiD3nUmvllagazoUAbQsulmg==
X-Google-Smtp-Source: APiQypKo5YoV4AJzsHf9kucHEPOc1ER//OsvvC5CHY6aaljoQYE5sAtc1uK8eedAg1itVao5PaJXJA==
X-Received: by 2002:adf:82f5:: with SMTP id 108mr4154957wrc.43.1588257623760; 
 Thu, 30 Apr 2020 07:40:23 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:22 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 05/25] iommu/iopf: Handle mm faults
Date: Thu, 30 Apr 2020 16:34:04 +0200
Message-Id: <20200430143424.2787566-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074026_386900_D3A4BDF0 
X-CRM114-Status: GOOD (  18.61  )
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

When a recoverable page fault is handled by the fault workqueue, find the
associated mm and call handle_mm_fault.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v5->v6: select CONFIG_IOMMU_SVA
---
 drivers/iommu/Kconfig      |  1 +
 drivers/iommu/io-pgfault.c | 79 +++++++++++++++++++++++++++++++++++++-
 2 files changed, 78 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index 4f33e489f0726..1e64ee6592e16 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -109,6 +109,7 @@ config IOMMU_SVA
 
 config IOMMU_PAGE_FAULT
 	bool
+	select IOMMU_SVA
 
 config FSL_PAMU
 	bool "Freescale IOMMU support"
diff --git a/drivers/iommu/io-pgfault.c b/drivers/iommu/io-pgfault.c
index 38732e97faac1..09a71dc4de20a 100644
--- a/drivers/iommu/io-pgfault.c
+++ b/drivers/iommu/io-pgfault.c
@@ -7,9 +7,12 @@
 
 #include <linux/iommu.h>
 #include <linux/list.h>
+#include <linux/sched/mm.h>
 #include <linux/slab.h>
 #include <linux/workqueue.h>
 
+#include "iommu-sva.h"
+
 /**
  * struct iopf_queue - IO Page Fault queue
  * @wq: the fault workqueue
@@ -68,8 +71,57 @@ static int iopf_complete_group(struct device *dev, struct iopf_fault *iopf,
 static enum iommu_page_response_code
 iopf_handle_single(struct iopf_fault *iopf)
 {
-	/* TODO */
-	return -ENODEV;
+	vm_fault_t ret;
+	struct mm_struct *mm;
+	struct vm_area_struct *vma;
+	unsigned int access_flags = 0;
+	unsigned int fault_flags = FAULT_FLAG_REMOTE;
+	struct iommu_fault_page_request *prm = &iopf->fault.prm;
+	enum iommu_page_response_code status = IOMMU_PAGE_RESP_INVALID;
+
+	if (!(prm->flags & IOMMU_FAULT_PAGE_REQUEST_PASID_VALID))
+		return status;
+
+	mm = iommu_sva_find(prm->pasid);
+	if (IS_ERR_OR_NULL(mm))
+		return status;
+
+	down_read(&mm->mmap_sem);
+
+	vma = find_extend_vma(mm, prm->addr);
+	if (!vma)
+		/* Unmapped area */
+		goto out_put_mm;
+
+	if (prm->perm & IOMMU_FAULT_PERM_READ)
+		access_flags |= VM_READ;
+
+	if (prm->perm & IOMMU_FAULT_PERM_WRITE) {
+		access_flags |= VM_WRITE;
+		fault_flags |= FAULT_FLAG_WRITE;
+	}
+
+	if (prm->perm & IOMMU_FAULT_PERM_EXEC) {
+		access_flags |= VM_EXEC;
+		fault_flags |= FAULT_FLAG_INSTRUCTION;
+	}
+
+	if (!(prm->perm & IOMMU_FAULT_PERM_PRIV))
+		fault_flags |= FAULT_FLAG_USER;
+
+	if (access_flags & ~vma->vm_flags)
+		/* Access fault */
+		goto out_put_mm;
+
+	ret = handle_mm_fault(vma, prm->addr, fault_flags);
+	status = ret & VM_FAULT_ERROR ? IOMMU_PAGE_RESP_INVALID :
+		IOMMU_PAGE_RESP_SUCCESS;
+
+out_put_mm:
+	up_read(&mm->mmap_sem);
+	mmput(mm);
+
+	return status;
 }
 
 static void iopf_handle_group(struct work_struct *work)
@@ -104,6 +156,29 @@ static void iopf_handle_group(struct work_struct *work)
  *
  * Add a fault to the device workqueue, to be handled by mm.
  *
+ * This module doesn't handle PCI PASID Stop Marker; IOMMU drivers must discard
+ * them before reporting faults. A PASID Stop Marker (LRW = 0b100) doesn't
+ * expect a response. It may be generated when disabling a PASID (issuing a
+ * PASID stop request) by some PCI devices.
+ *
+ * The PASID stop request is issued by the device driver before unbind(). Once
+ * it completes, no page request is generated for this PASID anymore and
+ * outstanding ones have been pushed to the IOMMU (as per PCIe 4.0r1.0 - 6.20.1
+ * and 10.4.1.2 - Managing PASID TLP Prefix Usage). Some PCI devices will wait
+ * for all outstanding page requests to come back with a response before
+ * completing the PASID stop request. Others do not wait for page responses, and
+ * instead issue this Stop Marker that tells us when the PASID can be
+ * reallocated.
+ *
+ * It is safe to discard the Stop Marker because it is an optimization.
+ * a. Page requests, which are posted requests, have been flushed to the IOMMU
+ *    when the stop request completes.
+ * b. We flush all fault queues on unbind() before freeing the PASID.
+ *
+ * So even though the Stop Marker might be issued by the device *after* the stop
+ * request completes, outstanding faults will have been dealt with by the time
+ * we free the PASID.
+ *
  * Return: 0 on success and <0 on error.
  */
 int iommu_queue_iopf(struct iommu_fault *fault, void *cookie)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
