Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9864216AEFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:26:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rO3Rvl9oocd1pDP4QpFL+G7Cug59v3M4PWiu0x4vb10=; b=A+urLlT27umF5i
	jlwN3Cqm3SgeTcKbXvXv0+4pQJgfKFsB0LoP6mkW42QdtyunlvSUusnKy21HRIUl14xX1a3rSPjEn
	MahLCAFxXL8sChpJ2ahjQ9cEBDPd+dKxZq4WL3QusDa7vYw5N5lYCZx1eyR+AKejvLdclPDYrRilb
	gAGbv9xRwVqe5SNThkiHm3YLldQcBY/8i2fyvStJ54TkpNoMHCp/mjJO6uE0oZ4tPLFXhvqtLmP38
	aLfwS3z2ZHksizyhBBUBb0xsS2dvf1YgVEuDroIt/M086qCcsNfyyLAp0RuXdBmC030/+0UsCAOVR
	ridXGC31lJQWOT52NZVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IRA-00082D-Oy; Mon, 24 Feb 2020 18:26:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPF-0005Vy-GS
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id g3so11536479wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5ke1+5YSOcxDNzSzBBGnaN+kOVlCxvSlETx/6pQryQw=;
 b=hQ7R/j32SLrNiw6cB+MKzedjV5jb7wC2uDlPXljxSGn/Mm+e8K6vJRpSEh03PvC4u9
 6SWVO6jkqy8f1MhFEXuwvn5CVzySq1eAR0OMIHnH231Ilx59ro788ZXbVKhAb08vEu3x
 2DRDRX3reoEDjA1nXPvHdhi3NlMMHALRilHOP4FbegQ6bDl+MXF72BSCvs01Iga0ey/V
 lRA5BpuJcyT4Bo+4XEn4NxJCsLV3waRxK/XqqsUDdfn1vY0NKse5RC5ThKKbEOiOSL6S
 WBTlf6zQcjBQmTv4KAcSJKa3LHmn9N03VuV6CMiAjWvmhiZgf7OibmnfYlq8z45tqDXq
 +QmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5ke1+5YSOcxDNzSzBBGnaN+kOVlCxvSlETx/6pQryQw=;
 b=rtfb4/ZQP0VGKgBVl+rqQIUtYRhdg+CuUs6cuJ9lnToZPevmUngtL0ypN1pirAoCz4
 xuBJEUleFwjKE6htolg1B6x0N1+/1OUSa39NBIeBQEm4xapq4urBhmFldQsNNpSkQD7E
 e1+fxVNLD1ovKNm80QpNbVzMvMHVpnWekdAdgtqheYXlVw6wSCW9KItA+TBye5VcK7cF
 w1HkF5Jg7wm46k8D+jMz+FLH0HTV7bnHuIWyiN0L/yLSmtMLATZGQCRfqfLeyQl1d3JK
 ILVzuSWKBoq+Ny7TOkz9lZ8ZPy8D4HDU3sfu7dvUFGpIk7d7wL/hvj8LmRuiB/9TgtdS
 vO3w==
X-Gm-Message-State: APjAAAUaN285uEcjuvviYzVfpL2ShMhdEZAgdR6Oi7cvl+4ElY3R5TKt
 jLN9lKLAFS3CYd8XZXYMyc7k8dyQAnQ=
X-Google-Smtp-Source: APXvYqxKuED5BtGA+H9sncjVVYaPSWdkOdWHekAifEqs9Cn+ZBcftrmVm7FgSaad06EVLWBinDxKzg==
X-Received: by 2002:adf:df83:: with SMTP id z3mr67641748wrl.389.1582568676229; 
 Mon, 24 Feb 2020 10:24:36 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:35 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 06/26] iommu/sva: Register page fault handler
Date: Mon, 24 Feb 2020 19:23:41 +0100
Message-Id: <20200224182401.353359-7-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102437_615674_A1D9A654 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

When enabling SVA, register the fault handler. Device driver will register
an I/O page fault queue before or after calling iommu_sva_enable. The
fault queue must be flushed before any io_mm is freed, to make sure that
its PASID isn't used in any fault queue, and can be reallocated. Add
iopf_queue_flush() calls in a few strategic locations.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/Kconfig     |  1 +
 drivers/iommu/iommu-sva.c | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
index e4a42e1708b4..211684e785ea 100644
--- a/drivers/iommu/Kconfig
+++ b/drivers/iommu/Kconfig
@@ -106,6 +106,7 @@ config IOMMU_DMA
 config IOMMU_SVA
 	bool
 	select IOASID
+	select IOMMU_PAGE_FAULT
 	select IOMMU_API
 	select MMU_NOTIFIER
 
diff --git a/drivers/iommu/iommu-sva.c b/drivers/iommu/iommu-sva.c
index bfd0c477f290..494ca0824e4b 100644
--- a/drivers/iommu/iommu-sva.c
+++ b/drivers/iommu/iommu-sva.c
@@ -366,6 +366,8 @@ static void io_mm_release(struct mmu_notifier *mn, struct mm_struct *mm)
 			dev_WARN(dev, "possible leak of PASID %u",
 				 io_mm->pasid);
 
+		iopf_queue_flush_dev(dev, io_mm->pasid);
+
 		/* unbind() frees the bond, we just detach it */
 		io_mm_detach_locked(bond);
 	}
@@ -442,11 +444,20 @@ static void iommu_sva_unbind_locked(struct iommu_bond *bond)
 
 void iommu_sva_unbind_generic(struct iommu_sva *handle)
 {
+	int pasid;
 	struct iommu_param *param = handle->dev->iommu_param;
 
 	if (WARN_ON(!param))
 		return;
 
+	/*
+	 * Caller stopped the device from issuing PASIDs, now make sure they are
+	 * out of the fault queue.
+	 */
+	pasid = iommu_sva_get_pasid_generic(handle);
+	if (pasid != IOMMU_PASID_INVALID)
+		iopf_queue_flush_dev(handle->dev, pasid);
+
 	mutex_lock(&param->sva_lock);
 	mutex_lock(&iommu_sva_lock);
 	iommu_sva_unbind_locked(to_iommu_bond(handle));
@@ -484,6 +495,10 @@ int iommu_sva_enable(struct device *dev, struct iommu_sva_param *sva_param)
 		goto err_unlock;
 	}
 
+	ret = iommu_register_device_fault_handler(dev, iommu_queue_iopf, dev);
+	if (ret)
+		goto err_unlock;
+
 	dev->iommu_param->sva_param = new_param;
 	mutex_unlock(&param->sva_lock);
 	return 0;
@@ -521,6 +536,7 @@ int iommu_sva_disable(struct device *dev)
 		goto out_unlock;
 	}
 
+	iommu_unregister_device_fault_handler(dev);
 	kfree(param->sva_param);
 	param->sva_param = NULL;
 out_unlock:
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
