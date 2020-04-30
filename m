Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C181BFEE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+PPK1y0sX7qQh7kZb49Neb97KmRG9TuUVvDNHo8ADQ=; b=KKDbf1XStdku7v
	M3yxzMk1/0pXiVe7QIHUxeU9KybpZX+BsMLvXJOMts6gBTJLzDEj3EnTOnYuKML5NDwEpQ7nfS7OR
	+oFO6h/Ss67wIVGP+K2Yp0+UXuLRuKo773Kb8aFcoDK5r3xSWIV/yt9ftssI5inyBa89qoVLruhp+
	v1rHCWf9smuGNYqE+/RaLk1h1rCkGSDinSvqiBgf46FPBX2RIhskIdfU3lyAtICbm1VGlOUsxsvmC
	HbuYO7ZfFSUElYnYHSVrbmadIUi7HKcEaspvyztz6JlABI01hVM6VPqlI/HhmX2Mbpu4djBc1U75m
	283bsmyC3cnWqmbZ6ZFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAOF-0003uf-IE; Thu, 30 Apr 2020 14:42:15 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMS-0002Kz-4W
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id f13so7184518wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2L0hzPHWGLBswv0Ij90Q6ICc8/25umeyZAGJVHW4fBk=;
 b=D4G5YjiSHWsHTXULD3PFcP8rhy6rWc/iYxpSP3TW4XHa0KH0MtLZDfwe3xxkM8Szr+
 362lFxM++scrXbUTuTsgn4InbawwN8vHISIvrV6O/t/RRw3wcO9cgLip0bRTWBGfwqQy
 iBTl6c2Cfu2Kb6e6LmSU2cduY6DkE2HgZYDuANcUdqioNQDBByNPgCc0ergGXNda/pCv
 lX9iK3VTqNP7IjSdWfbWU8XblBWhBlJgwSVXT2GAT6rD7OQycv7YAuvpLzB7GvEfYxmS
 9SnOXUBjncv+uWhPnQQ0tZXvY+Avqyz5ZUun61V7++ZU31AYHdeQkKsDCEG5qLwFkleB
 sYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2L0hzPHWGLBswv0Ij90Q6ICc8/25umeyZAGJVHW4fBk=;
 b=cy3svUPaoiKoLwI2CeMnUawjYHhgUFy0J7rcuOpX3VIIK0Od0xLUZVoJx+R3R2Xy4R
 +7rR0y9B7dwN/clQhfuhtqOtLPEW1aqqks61GHiu5GYptrTKrel5oYN73VoF/wDotV+L
 Sf5EWeUh1toi7E1FRKyTsF2KFOmckdfh/Gy35pL1zLUtOrMOfAKuGW+qFDsi23CMYvBU
 zJMYo3Nuc5TarxbJ+xM6OPYJ80loTfUepeasrXAABchQlv76myRBACUUMoyvfopnLyn7
 6SkGNmD1bc4smbrEu75mA44XbTPOyqh2fE+hisAURxUVgKTGsPFtQucr2sYua0tA6qpz
 0DdA==
X-Gm-Message-State: AGi0Puaum5/LDfCJuzRfckO38rnry7hV8lLSQu9C1jgU/ldUUMa42q5f
 egzCjpeqMnamNCb/itzP/DugyA==
X-Google-Smtp-Source: APiQypJ902yLunzLFhsW9cJSnL6j1xh8zi5Vsxtag4R5oUX0XzQxqN12oyzQytGRhJm956zSpPELBg==
X-Received: by 2002:adf:8b1b:: with SMTP id n27mr4098384wra.385.1588257622298; 
 Thu, 30 Apr 2020 07:40:22 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:21 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 04/25] iommu: Add a page fault handler
Date: Thu, 30 Apr 2020 16:34:03 +0200
Message-Id: <20200430143424.2787566-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074024_345853_544A465D 
X-CRM114-Status: GOOD (  27.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Some systems allow devices to handle I/O Page Faults in the core mm. For
example systems implementing the PCIe PRI extension or Arm SMMU stall
model. Infrastructure for reporting these recoverable page faults was
added to the IOMMU core by commit 0c830e6b3282 ("iommu: Introduce device
fault report API"). Add a page fault handler for host SVA.

IOMMU driver can now instantiate several fault workqueues and link them
to IOPF-capable devices. Drivers can choose between a single global
workqueue, one per IOMMU device, one per low-level fault queue, one per
domain, etc.

When it receives a fault event, supposedly in an IRQ handler, the IOMMU
driver reports the fault using iommu_report_device_fault(), which calls
the registered handler. The page fault handler then calls the mm fault
handler, and reports either success or failure with iommu_page_response().
When the handler succeeded, the IOMMU retries the access.

The iopf_param pointer could be embedded into iommu_fault_param. But
putting iopf_param into the iommu_param structure allows us not to care
about ordering between calls to iopf_queue_add_device() and
iommu_register_device_fault_handler().

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v5->v6: Simplify flush. As we're not flushing in the mm exit path
  anymore, we can mandate that IOMMU drivers flush their low-level queue
  themselves before calling iopf_queue_flush_dev(). No need to register
  a flush callback anymore.
---
 drivers/iommu/Kconfig      |   3 +
 drivers/iommu/Makefile     |   1 +
 include/linux/iommu.h      |  51 +++++
 drivers/iommu/io-pgfault.c | 383 +++++++++++++++++++++++++++++++++++++
 4 files changed, 438 insertions(+)
 create mode 100644 drivers/iommu/io-pgfault.c

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index 5327ec663dea1..4f33e489f0726 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -107,6 +107,9 @@ config IOMMU_SVA
 	bool
 	select IOASID
 
+config IOMMU_PAGE_FAULT
+	bool
+
 config FSL_PAMU
 	bool "Freescale IOMMU support"
 	depends on PCI
diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
index 40c800dd4e3ef..bf5cb4ee84093 100644
--- a/drivers/iommu/Makefile
+++ b/drivers/iommu/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_IOMMU_API) += iommu-traces.o
 obj-$(CONFIG_IOMMU_API) += iommu-sysfs.o
 obj-$(CONFIG_IOMMU_DEBUGFS) += iommu-debugfs.o
 obj-$(CONFIG_IOMMU_DMA) += dma-iommu.o
+obj-$(CONFIG_IOMMU_PAGE_FAULT) += io-pgfault.o
 obj-$(CONFIG_IOMMU_IO_PGTABLE) += io-pgtable.o
 obj-$(CONFIG_IOMMU_IO_PGTABLE_ARMV7S) += io-pgtable-arm-v7s.o
 obj-$(CONFIG_IOMMU_IO_PGTABLE_LPAE) += io-pgtable-arm.o
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index b62525747bd91..a1201c94f6ace 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -46,6 +46,7 @@ struct iommu_domain;
 struct notifier_block;
 struct iommu_sva;
 struct iommu_fault_event;
+struct iopf_queue;
 
 /* iommu fault flags */
 #define IOMMU_FAULT_READ	0x0
@@ -347,6 +348,7 @@ struct iommu_fault_param {
  * struct dev_iommu - Collection of per-device IOMMU data
  *
  * @fault_param: IOMMU detected device fault reporting data
+ * @iopf_param:	 I/O Page Fault queue and data
  * @fwspec:	 IOMMU fwspec data
  * @priv:	 IOMMU Driver private data
  *
@@ -356,6 +358,7 @@ struct iommu_fault_param {
 struct dev_iommu {
 	struct mutex lock;
 	struct iommu_fault_param	*fault_param;
+	struct iopf_device_param	*iopf_param;
 	struct iommu_fwspec		*fwspec;
 	void				*priv;
 };
@@ -1067,4 +1070,52 @@ void iommu_debugfs_setup(void);
 static inline void iommu_debugfs_setup(void) {}
 #endif
 
+#ifdef CONFIG_IOMMU_PAGE_FAULT
+extern int iommu_queue_iopf(struct iommu_fault *fault, void *cookie);
+
+extern int iopf_queue_add_device(struct iopf_queue *queue, struct device *dev);
+extern int iopf_queue_remove_device(struct iopf_queue *queue,
+				    struct device *dev);
+extern int iopf_queue_flush_dev(struct device *dev, int pasid);
+extern struct iopf_queue *iopf_queue_alloc(const char *name);
+extern void iopf_queue_free(struct iopf_queue *queue);
+extern int iopf_queue_discard_partial(struct iopf_queue *queue);
+#else /* CONFIG_IOMMU_PAGE_FAULT */
+static inline int iommu_queue_iopf(struct iommu_fault *fault, void *cookie)
+{
+	return -ENODEV;
+}
+
+static inline int iopf_queue_add_device(struct iopf_queue *queue,
+					struct device *dev)
+{
+	return -ENODEV;
+}
+
+static inline int iopf_queue_remove_device(struct iopf_queue *queue,
+					   struct device *dev)
+{
+	return -ENODEV;
+}
+
+static inline int iopf_queue_flush_dev(struct device *dev, int pasid)
+{
+	return -ENODEV;
+}
+
+static inline struct iopf_queue *iopf_queue_alloc(const char *name)
+{
+	return NULL;
+}
+
+static inline void iopf_queue_free(struct iopf_queue *queue)
+{
+}
+
+static inline int iopf_queue_discard_partial(struct iopf_queue *queue)
+{
+	return -ENODEV;
+}
+#endif /* CONFIG_IOMMU_PAGE_FAULT */
+
 #endif /* __LINUX_IOMMU_H */
diff --git a/drivers/iommu/io-pgfault.c b/drivers/iommu/io-pgfault.c
new file mode 100644
index 0000000000000..38732e97faac1
--- /dev/null
+++ b/drivers/iommu/io-pgfault.c
@@ -0,0 +1,383 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Handle device page faults
+ *
+ * Copyright (C) 2020 ARM Ltd.
+ */
+
+#include <linux/iommu.h>
+#include <linux/list.h>
+#include <linux/slab.h>
+#include <linux/workqueue.h>
+
+/**
+ * struct iopf_queue - IO Page Fault queue
+ * @wq: the fault workqueue
+ * @devices: devices attached to this queue
+ * @lock: protects the device list
+ */
+struct iopf_queue {
+	struct workqueue_struct		*wq;
+	struct list_head		devices;
+	struct mutex			lock;
+};
+
+/**
+ * struct iopf_device_param - IO Page Fault data attached to a device
+ * @dev: the device that owns this param
+ * @queue: IOPF queue
+ * @queue_list: index into queue->devices
+ * @partial: faults that are part of a Page Request Group for which the last
+ *           request hasn't been submitted yet.
+ */
+struct iopf_device_param {
+	struct device			*dev;
+	struct iopf_queue		*queue;
+	struct list_head		queue_list;
+	struct list_head		partial;
+};
+
+struct iopf_fault {
+	struct iommu_fault		fault;
+	struct list_head		head;
+};
+
+struct iopf_group {
+	struct iopf_fault		last_fault;
+	struct list_head		faults;
+	struct work_struct		work;
+	struct device			*dev;
+};
+
+static int iopf_complete_group(struct device *dev, struct iopf_fault *iopf,
+			       enum iommu_page_response_code status)
+{
+	struct iommu_page_response resp = {
+		.version		= IOMMU_PAGE_RESP_VERSION_1,
+		.pasid			= iopf->fault.prm.pasid,
+		.grpid			= iopf->fault.prm.grpid,
+		.code			= status,
+	};
+
+	if (iopf->fault.prm.flags & IOMMU_FAULT_PAGE_REQUEST_PASID_VALID)
+		resp.flags = IOMMU_PAGE_RESP_PASID_VALID;
+
+	return iommu_page_response(dev, &resp);
+}
+
+static enum iommu_page_response_code
+iopf_handle_single(struct iopf_fault *iopf)
+{
+	/* TODO */
+	return -ENODEV;
+}
+
+static void iopf_handle_group(struct work_struct *work)
+{
+	struct iopf_group *group;
+	struct iopf_fault *iopf, *next;
+	enum iommu_page_response_code status = IOMMU_PAGE_RESP_SUCCESS;
+
+	group = container_of(work, struct iopf_group, work);
+
+	list_for_each_entry_safe(iopf, next, &group->faults, head) {
+		/*
+		 * For the moment, errors are sticky: don't handle subsequent
+		 * faults in the group if there is an error.
+		 */
+		if (status == IOMMU_PAGE_RESP_SUCCESS)
+			status = iopf_handle_single(iopf);
+
+		if (!(iopf->fault.prm.flags &
+		      IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE))
+			kfree(iopf);
+	}
+
+	iopf_complete_group(group->dev, &group->last_fault, status);
+	kfree(group);
+}
+
+/**
+ * iommu_queue_iopf - IO Page Fault handler
+ * @evt: fault event
+ * @cookie: struct device, passed to iommu_register_device_fault_handler.
+ *
+ * Add a fault to the device workqueue, to be handled by mm.
+ *
+ * Return: 0 on success and <0 on error.
+ */
+int iommu_queue_iopf(struct iommu_fault *fault, void *cookie)
+{
+	int ret;
+	struct iopf_group *group;
+	struct iopf_fault *iopf, *next;
+	struct iopf_device_param *iopf_param;
+
+	struct device *dev = cookie;
+	struct dev_iommu *param = dev->iommu;
+
+	lockdep_assert_held(&param->lock);
+
+	if (fault->type != IOMMU_FAULT_PAGE_REQ)
+		/* Not a recoverable page fault */
+		return -EOPNOTSUPP;
+
+	/*
+	 * As long as we're holding param->lock, the queue can't be unlinked
+	 * from the device and therefore cannot disappear.
+	 */
+	iopf_param = param->iopf_param;
+	if (!iopf_param)
+		return -ENODEV;
+
+	if (!(fault->prm.flags & IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE)) {
+		iopf = kzalloc(sizeof(*iopf), GFP_KERNEL);
+		if (!iopf)
+			return -ENOMEM;
+
+		iopf->fault = *fault;
+
+		/* Non-last request of a group. Postpone until the last one */
+		list_add(&iopf->head, &iopf_param->partial);
+
+		return 0;
+	}
+
+	group = kzalloc(sizeof(*group), GFP_KERNEL);
+	if (!group) {
+		/*
+		 * The caller will send a response to the hardware. But we do
+		 * need to clean up before leaving, otherwise partial faults
+		 * will be stuck.
+		 */
+		ret = -ENOMEM;
+		goto cleanup_partial;
+	}
+
+	group->dev = dev;
+	group->last_fault.fault = *fault;
+	INIT_LIST_HEAD(&group->faults);
+	list_add(&group->last_fault.head, &group->faults);
+	INIT_WORK(&group->work, iopf_handle_group);
+
+	/* See if we have partial faults for this group */
+	list_for_each_entry_safe(iopf, next, &iopf_param->partial, head) {
+		if (iopf->fault.prm.grpid == fault->prm.grpid)
+			/* Insert *before* the last fault */
+			list_move(&iopf->head, &group->faults);
+	}
+
+	queue_work(iopf_param->queue->wq, &group->work);
+	return 0;
+
+cleanup_partial:
+	list_for_each_entry_safe(iopf, next, &iopf_param->partial, head) {
+		if (iopf->fault.prm.grpid == fault->prm.grpid) {
+			list_del(&iopf->head);
+			kfree(iopf);
+		}
+	}
+	return ret;
+}
+EXPORT_SYMBOL_GPL(iommu_queue_iopf);
+
+/**
+ * iopf_queue_flush_dev - Ensure that all queued faults have been processed
+ * @dev: the endpoint whose faults need to be flushed.
+ * @pasid: the PASID affected by this flush
+ *
+ * The IOMMU driver calls this before releasing a PASID, to ensure that all
+ * pending faults for this PASID have been handled, and won't hit the address
+ * space of the next process that uses this PASID. The driver must make sure
+ * that no new fault is added to the queue. In particular it must flush its
+ * low-level queue before calling this function.
+ *
+ * Return: 0 on success and <0 on error.
+ */
+int iopf_queue_flush_dev(struct device *dev, int pasid)
+{
+	int ret = 0;
+	struct iopf_device_param *iopf_param;
+	struct dev_iommu *param = dev->iommu;
+
+	if (!param)
+		return -ENODEV;
+
+	mutex_lock(&param->lock);
+	iopf_param = param->iopf_param;
+	if (iopf_param)
+		flush_workqueue(iopf_param->queue->wq);
+	else
+		ret = -ENODEV;
+	mutex_unlock(&param->lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(iopf_queue_flush_dev);
+
+/**
+ * iopf_queue_discard_partial - Remove all pending partial fault
+ * @queue: the queue whose partial faults need to be discarded
+ *
+ * When the hardware queue overflows, last page faults in a group may have been
+ * lost and the IOMMU driver calls this to discard all partial faults. The
+ * driver shouldn't be adding new faults to this queue concurrently.
+ *
+ * Return: 0 on success and <0 on error.
+ */
+int iopf_queue_discard_partial(struct iopf_queue *queue)
+{
+	struct iopf_fault *iopf, *next;
+	struct iopf_device_param *iopf_param;
+
+	if (!queue)
+		return -EINVAL;
+
+	mutex_lock(&queue->lock);
+	list_for_each_entry(iopf_param, &queue->devices, queue_list) {
+		list_for_each_entry_safe(iopf, next, &iopf_param->partial, head)
+			kfree(iopf);
+	}
+	mutex_unlock(&queue->lock);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(iopf_queue_discard_partial);
+
+/**
+ * iopf_queue_add_device - Add producer to the fault queue
+ * @queue: IOPF queue
+ * @dev: device to add
+ *
+ * Return: 0 on success and <0 on error.
+ */
+int iopf_queue_add_device(struct iopf_queue *queue, struct device *dev)
+{
+	int ret = -EBUSY;
+	struct iopf_device_param *iopf_param;
+	struct dev_iommu *param = dev->iommu;
+
+	if (!param)
+		return -ENODEV;
+
+	iopf_param = kzalloc(sizeof(*iopf_param), GFP_KERNEL);
+	if (!iopf_param)
+		return -ENOMEM;
+
+	INIT_LIST_HEAD(&iopf_param->partial);
+	iopf_param->queue = queue;
+	iopf_param->dev = dev;
+
+	mutex_lock(&queue->lock);
+	mutex_lock(&param->lock);
+	if (!param->iopf_param) {
+		list_add(&iopf_param->queue_list, &queue->devices);
+		param->iopf_param = iopf_param;
+		ret = 0;
+	}
+	mutex_unlock(&param->lock);
+	mutex_unlock(&queue->lock);
+
+	if (ret)
+		kfree(iopf_param);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(iopf_queue_add_device);
+
+/**
+ * iopf_queue_remove_device - Remove producer from fault queue
+ * @queue: IOPF queue
+ * @dev: device to remove
+ *
+ * Caller makes sure that no more faults are reported for this device.
+ *
+ * Return: 0 on success and <0 on error.
+ */
+int iopf_queue_remove_device(struct iopf_queue *queue, struct device *dev)
+{
+	int ret = 0;
+	struct iopf_fault *iopf, *next;
+	struct iopf_device_param *iopf_param;
+	struct dev_iommu *param = dev->iommu;
+
+	if (!param || !queue)
+		return -EINVAL;
+
+	mutex_lock(&queue->lock);
+	mutex_lock(&param->lock);
+	iopf_param = param->iopf_param;
+	if (iopf_param && iopf_param->queue == queue) {
+		list_del(&iopf_param->queue_list);
+		param->iopf_param = NULL;
+	} else {
+		ret = -EINVAL;
+	}
+	mutex_unlock(&param->lock);
+	mutex_unlock(&queue->lock);
+	if (ret)
+		return ret;
+
+	/* Just in case some faults are still stuck */
+	list_for_each_entry_safe(iopf, next, &iopf_param->partial, head)
+		kfree(iopf);
+
+	kfree(iopf_param);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(iopf_queue_remove_device);
+
+/**
+ * iopf_queue_alloc - Allocate and initialize a fault queue
+ * @name: a unique string identifying the queue (for workqueue)
+ *
+ * Return: the queue on success and NULL on error.
+ */
+struct iopf_queue *iopf_queue_alloc(const char *name)
+{
+	struct iopf_queue *queue;
+
+	queue = kzalloc(sizeof(*queue), GFP_KERNEL);
+	if (!queue)
+		return NULL;
+
+	/*
+	 * The WQ is unordered because the low-level handler enqueues faults by
+	 * group. PRI requests within a group have to be ordered, but once
+	 * that's dealt with, the high-level function can handle groups out of
+	 * order.
+	 */
+	queue->wq = alloc_workqueue("iopf_queue/%s", WQ_UNBOUND, 0, name);
+	if (!queue->wq) {
+		kfree(queue);
+		return NULL;
+	}
+
+	INIT_LIST_HEAD(&queue->devices);
+	mutex_init(&queue->lock);
+
+	return queue;
+}
+EXPORT_SYMBOL_GPL(iopf_queue_alloc);
+
+/**
+ * iopf_queue_free - Free IOPF queue
+ * @queue: queue to free
+ *
+ * Counterpart to iopf_queue_alloc(). The driver must not be queuing faults or
+ * adding/removing devices on this queue anymore.
+ */
+void iopf_queue_free(struct iopf_queue *queue)
+{
+	struct iopf_device_param *iopf_param, *next;
+
+	if (!queue)
+		return;
+
+	list_for_each_entry_safe(iopf_param, next, &queue->devices, queue_list)
+		iopf_queue_remove_device(queue, iopf_param->dev);
+
+	destroy_workqueue(queue->wq);
+	kfree(queue);
+}
+EXPORT_SYMBOL_GPL(iopf_queue_free);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
