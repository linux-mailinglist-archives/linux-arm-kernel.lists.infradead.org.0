Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A8216AF06
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibhJ/fsv/BYw6So4WGg2wzRv/L51MLLlugRuauXY5jE=; b=nuBJSedeDptT/G
	yFdSAMaZPBzR4cCjoKUYEn88QBB908dgtqKPoI+Lq72PX3zBCH1IgrvAjgxvLsCFJPT6RZeqXX7KX
	DcK5IKbupiDNBlBWcHwgm7aQZfCCVpKAPyNw0JBLWC9iRe0jdiXvmAbgCN5hHRoN5TqvNrS/FClo3
	eHDbcoi5qygAjMgAUIDgCQdHffgGM5biHBkaipxXQ2LQfoQxFgpFsH3cCz+BEI0U4m+6FT+DzoP0a
	er8ztlce3WfssGWQUM2Bz1M5sFFpuWVAaTgpdIkrrvYyFy40lHOEH8s8qimI+fMjG6rnybidFmcB1
	NjM3DquYjPJYjjiEk4dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IRZ-0008FT-BC; Mon, 24 Feb 2020 18:27:01 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPD-0005TO-9u
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id e8so11577216wrm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t1PrCtZ92DmYIwAPbSp2v0XRYBlM5YZLGBrm+uzQwJw=;
 b=k7mwUwe4f2eaHon/rtOusNwQtFja3+krXzwRGZ76SMD3QIwZYajs0PGl8nhuOu3e/Q
 1apHjKKThGa9F78oa6DJmFMg6Kv3M0zbTmO8+Eugcb2SS/fYXhJ75yn9RhWShh6+ftqW
 SUfddUdmPp4ujwFKVXozNBlY07/fSNyDISwYswJ30vRiZLJreuqTJ9fsed4djsvvIOny
 CMUJVS9RaKMUHia7+nXA9mZRl4QIa/ovZElpv9c2ACyb/VTFsnCnfWqipmg5gOCNeNSo
 PYeBPGGuW7xmjQCqEwsgxBu69OnvQazgX6XmX1S0LvnK/9wPepXn8vuUv4vl+VoCv6/L
 MvGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t1PrCtZ92DmYIwAPbSp2v0XRYBlM5YZLGBrm+uzQwJw=;
 b=dn+etli1fYcG4EBVGe7/xsqjzoCB+WZghuLyVKaV3t16uFzO0IDC5vHoBaD0hfSndZ
 ScVVzRZsu5zvGMLNz0Xn22/a5x7/uY/s+DeY6BN3ISQM9Kzz3UH1AmI8JVMYfK47b5J0
 zkknCArXU81sYdo+tnETcJ8e/bfx6yXyXH8sssph+DCQagz78Ki2Qpok9V8X0V7ieagu
 r7Lfpg2sk7E4WzQhGAUbwjwnglYOeFOHrvRqmPYTWY+vMIQgBKQbXGivbYysRuoHkhDb
 tn7i0SdI/2voLIPcpvReLjR3dYwcfTjrm+b7JgR7UFmRvo4oJ5jyV766uLgCoIPnhKn9
 sLbA==
X-Gm-Message-State: APjAAAU++ndfbc3oDtBfqBGmlYaxKKngxBecGrv4o9hTJx+HYGSNd8Tt
 uNQfY/zWtwZH2eT4Y0ro8mWu1Q==
X-Google-Smtp-Source: APXvYqyJoaGCAZwRcxK03cHvWfZ3rPd9BodvC//3q8tPBefjV5p8k/3KCURkzx9rn1YbvnVHRvzLqg==
X-Received: by 2002:adf:e908:: with SMTP id f8mr4337597wrm.37.1582568674081;
 Mon, 24 Feb 2020 10:24:34 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:33 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 04/26] iommu/sva: Search mm by PASID
Date: Mon, 24 Feb 2020 19:23:39 +0100
Message-Id: <20200224182401.353359-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102435_409656_614A2361 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

The fault handler will need to find an mm given its PASID. This is the
reason we have an IDR for storing address spaces, so hook it up.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/iommu-sva.c | 19 +++++++++++++++++++
 include/linux/iommu.h     |  9 +++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/iommu/iommu-sva.c b/drivers/iommu/iommu-sva.c
index 64f1d1c82383..bfd0c477f290 100644
--- a/drivers/iommu/iommu-sva.c
+++ b/drivers/iommu/iommu-sva.c
@@ -559,3 +559,22 @@ int iommu_sva_get_pasid_generic(struct iommu_sva *handle)
 	return pasid;
 }
 EXPORT_SYMBOL_GPL(iommu_sva_get_pasid_generic);
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
+ * Returns the mm corresponding to this PASID, or an error if not found. A
+ * reference to the mm is taken, and must be released with mmput().
+ */
+struct mm_struct *iommu_sva_find(int pasid)
+{
+	return ioasid_find(&shared_pasid, pasid, __mmget_not_zero);
+}
+EXPORT_SYMBOL_GPL(iommu_sva_find);
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index e7bc47ba24f8..e52a8731e7a9 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -1091,6 +1091,15 @@ void iommu_debugfs_setup(void);
 static inline void iommu_debugfs_setup(void) {}
 #endif
 
+#ifdef CONFIG_IOMMU_SVA
+extern struct mm_struct *iommu_sva_find(int pasid);
+#else /* !CONFIG_IOMMU_SVA */
+static inline struct mm_struct *iommu_sva_find(int pasid)
+{
+	return NULL;
+}
+#endif /* !CONFIG_IOMMU_SVA */
+
 #ifdef CONFIG_IOMMU_PAGE_FAULT
 extern int iommu_queue_iopf(struct iommu_fault *fault, void *cookie);
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
