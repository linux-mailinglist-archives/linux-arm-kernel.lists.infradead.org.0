Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAC616AF08
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:27:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUiboY05d6pJfM4isxTrP0jmFON58QCydNFnGGevMWI=; b=XQs6bBmBoQcaoq
	UqApk0Taplytko9mIaSr5bs6wxIBy5j5lUNofvtPpK9fo4CQmNIzf5rAP8pYZ+eq/pj20p9avoawj
	GoxeSQR/fnpfeq8rLA6l791YxWc33mXZjQp99VmpOnsW6NHZhl1O6eCFcgAUwn1+b093RmgbFSXvw
	+ovNVrHTcl3be7KxLKcwn0e+52NZyh0oNeTT2p3nUshc8+dfAnufV7XzGVbIxivGgTBOpVWFyKOhH
	7P/vVJJL6ik67o7IMnSZHRd2gDvl7hFOYrviqY94b/aN8GsSVbXTCMmndDE3mFOlm8IajP/1x4T2o
	LSHxhPRHMp9CiNneK1xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IRm-0008Ug-QR; Mon, 24 Feb 2020 18:27:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPE-0005Uq-Pd
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:39 +0000
Received: by mail-wr1-x443.google.com with SMTP id r11so11568975wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4BAEKhOJP+vfPilA/A1esaPeb85rQ2xVF1xbquVY184=;
 b=M99vGkY31vfp3/5YFldshvaVVuOLujfh7ojFCDTnoKW41IMEWZ1aa749ylDMF02mL8
 EsF76A/xd0+D9G0LiMy/75wIjbUpTj5ggp4qwOihccmc7SvybU8lVP0RrXN+zijYA5Qc
 apJfsPNlPuSkqhHR1soKd4ou/vRywxfhU5WwI8xMxkH50xEZuIxIVA73IGnf8LHXAHCj
 UjbtPVxpTDPbVdR0XSSIE6QUa8HgvKgCyzUv3n8pFmnjopnM1ov1eMApD+8zJk5ozwNB
 OxiUpbtucYRP2+G9IoH1N/DTaBxGAqy/M1yy3lxCR8X1HtuJnfAnMQlEHu+w73fAfXiH
 B1Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4BAEKhOJP+vfPilA/A1esaPeb85rQ2xVF1xbquVY184=;
 b=OLcGJZiubXJXIMf3a5Xztn7HeDwsoWKVGdH2sQcu16t9ToGXn9rfbdVo3XYCocbZ8b
 oJACuucZyvEcgchpeXHhLcScrjigL/r8mwMZyXY7MVCejFLvxJ/9mh97qesK7c0p6L04
 1ugA/PnUmcNzl9ttM1iWZehEi2b9n10rma4jyvOCy8Jo4aqlq/FpnwrKGFfqz6/ZV4fs
 UlZaqfiUdlwAlJPZO6sdIMdVk8yBx+Pfo7HX7DsxwbxVbMm6C9jIQZTDnZ+i5eJAL7/I
 AakLSwaYzHSSxgqhLd83bL/PQ+k46xuJSMkihOACqeRK2Z/w3IVqEIUF/6vJVT7pUfol
 Dx7Q==
X-Gm-Message-State: APjAAAUJWCs4z7zBJV8j7duVIWr+YJTdtXh86g0FZLHPOUnjDtEH/FR6
 o4tpuq3RBmqvaTDgAcS+G55iFQ==
X-Google-Smtp-Source: APXvYqzHbo1uSnOjPvq1dly/T3bNuAsEH0s+K/Vbu0r956R09tVR+hP/VVgCejHxcU6EI1GRu4bYzg==
X-Received: by 2002:a5d:4651:: with SMTP id j17mr69088399wrs.237.1582568675196; 
 Mon, 24 Feb 2020 10:24:35 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:34 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 05/26] iommu/iopf: Handle mm faults
Date: Mon, 24 Feb 2020 19:23:40 +0100
Message-Id: <20200224182401.353359-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102436_851325_721ABEFC 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, catalin.marinas@arm.com,
 joro@8bytes.org, robin.murphy@arm.com, robh+dt@kernel.org, yi.l.liu@intel.com,
 Jonathan.Cameron@huawei.com, zhangfei.gao@linaro.org, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>

When a recoverable page fault is handled by the fault workqueue, find the
associated mm and call handle_mm_fault.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/io-pgfault.c | 86 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 84 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/io-pgfault.c b/drivers/iommu/io-pgfault.c
index 76e153c59fe3..ffa9f14e0803 100644
--- a/drivers/iommu/io-pgfault.c
+++ b/drivers/iommu/io-pgfault.c
@@ -7,6 +7,7 @@
 
 #include <linux/iommu.h>
 #include <linux/list.h>
+#include <linux/sched/mm.h>
 #include <linux/slab.h>
 #include <linux/workqueue.h>
 
@@ -76,8 +77,65 @@ static int iopf_complete(struct device *dev, struct iopf_fault *iopf,
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
+
+	/*
+	 * If the process exits while we're handling the fault on its mm, we
+	 * can't do mmput(). exit_mmap() would release the MMU notifier, calling
+	 * iommu_notifier_release(), which has to flush the fault queue that
+	 * we're executing on... So mmput_async() moves the release of the mm to
+	 * another thread, if we're the last user.
+	 */
+	mmput_async(mm);
+
+	return status;
 }
 
 static void iopf_handle_group(struct work_struct *work)
@@ -111,6 +169,30 @@ static void iopf_handle_group(struct work_struct *work)
  *
  * Add a fault to the device workqueue, to be handled by mm.
  *
+ * This module doesn't handle PCI PASID Stop Marker; IOMMU drivers must discard
+ * them before reporting faults. A PASID Stop Marker (LRW = 0b100) doesn't
+ * expect a response. It may be generated when disabling a PASID (issuing a
+ * PASID stop request) by some PCI devices.
+ *
+ * The PASID stop request is triggered by the mm_exit() callback. When the
+ * callback returns from the device driver, no page request is generated for
+ * this PASID anymore and outstanding ones have been pushed to the IOMMU (as per
+ * PCIe 4.0r1.0 - 6.20.1 and 10.4.1.2 - Managing PASID TLP Prefix Usage). Some
+ * PCI devices will wait for all outstanding page requests to come back with a
+ * response before completing the PASID stop request. Others do not wait for
+ * page responses, and instead issue this Stop Marker that tells us when the
+ * PASID can be reallocated.
+ *
+ * It is safe to discard the Stop Marker because it is an optimization.
+ * a. Page requests, which are posted requests, have been flushed to the IOMMU
+ *    when mm_exit() returns,
+ * b. We flush all fault queues after mm_exit() returns and before freeing the
+ *    PASID.
+ *
+ * So even though the Stop Marker might be issued by the device *after* the stop
+ * request completes, outstanding faults will have been dealt with by the time
+ * we free the PASID.
+ *
  * Return: 0 on success and <0 on error.
  */
 int iommu_queue_iopf(struct iommu_fault *fault, void *cookie)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
