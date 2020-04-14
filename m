Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5E31A86D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6p6up0j2faxEYpY1v5quQ25o5OnfW7PdF8Lz+CxWnY=; b=FsGVVN+k4LhV7e
	uX/0BgqzdHTvHcY0DyunDFPzQgPCLvXah+H6YjPofjNBfaL4NRjJsEwuW8dVvNxkPgHfh1dCl9tvI
	pCZnKHPapeXo8zfLgQUwmeqll/31uV3UqowmK7GnOnfoLY9aWD6/MQKy0QJPUIxSHf884k808B7Ej
	O/y0qz0qZhP+2LzVr2Ln/OSy5hGZ8LG5G1HW5tZXgoY+mD+jS4Fl0cs35n555P46SWEDFLIrE/jK0
	Q3O9HLllwIvUQ2L0n0Ok9DjSSiSHD1bCeD07aAVOc56O3q1dFsfRE+HAkdz1GmIijetGlebR48SbO
	q1R2l3BqTXikmZrhYGmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP0l-0005x1-1I; Tue, 14 Apr 2020 17:06:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOz2-000215-IS
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id g12so7074373wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VGMc5wLgmgx1eLWq9RQ7RG7NMxWRw2tpIDY5WHUtd3w=;
 b=s8kwev4qB+FwMlvJnZIEgUlpsfPv5PqQmyfezwvPiaaBckIACLW3XMkbvKRq6DnKDi
 t2UKqeUTPQYcigtkMp+zlJsyJsWC29+hzyF/YILdw1kem5LX+rUdahvgddngTIewGKPI
 Ls9qOOWbX1+GZLw2eHVDQ0C+3Q+XuIo7i0CpC5yzUkrPvbUvTws6yMxrz4kHGk4gH7S2
 lLF7B3VkEZoHfACdrS90vN31rEj3/80zND2C7VWgfzHYgNywd5gdWfI831crvwFJA6Fr
 T0J9K0/WC/Dm3PeoZXFwuI8vTy1x6RYRQz3w1oY7B7IC5RAT8PsArjVC3oEpvuMEqYG7
 NofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VGMc5wLgmgx1eLWq9RQ7RG7NMxWRw2tpIDY5WHUtd3w=;
 b=I4CVnmdG7f4a4h9iPVXLgn4bSnsCl0EhiQZfcXgqhdWvwbJwCidi2HYp2R20iNG7lw
 WvP9FWGqR49zpeacWJ6Vq0lxAdU9QCU+FynaUEYTmvMgeNqUF0eJ1exnPyM8rSAnmH92
 EKWZ2MhGMGSP2Y/mEkGaZz4PA5di91PWdVwLT+ahLQoppbPF49TlOPbG4rw+C75Cy4Ku
 XNEX1sQiM5lSAutmURdVs1SzUc/reKF+UJh63CdGUcgR8xFqLxb5BzJzpAbBArt9efN4
 GOdDNq6778ovbz7AHIofKz4B53VQS41kPSv8nZBy+RkSjHap5vJhdJYdXlDkp+I8l0BE
 fzdw==
X-Gm-Message-State: AGi0PuYE2sPselSeyv3n+hIF7BjvFgt02Qsc+uBT2NFIceVo8z9iiYi/
 FoFd+iMIFRk9AmYt3n6vDeQZSQ==
X-Google-Smtp-Source: APiQypL42n0W5SIMAbcNDaJARHcsQO61MSaD9RMrsbqmlsVv6uHGjdhQFjv16aEzCb2QZXgo0ox3nw==
X-Received: by 2002:a1c:e906:: with SMTP id q6mr775518wmc.62.1586883863302;
 Tue, 14 Apr 2020 10:04:23 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:22 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 04/25] iommu/sva: Search mm by PASID
Date: Tue, 14 Apr 2020 19:02:32 +0200
Message-Id: <20200414170252.714402-5-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414170252.714402-1-jean-philippe@linaro.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100424_607345_B4B6CD32 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, catalin.marinas@arm.com, joro@8bytes.org,
 robin.murphy@arm.com, jgg@ziepe.ca, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The fault handler will need to find an mm given its PASID. This is the
reason we have an IDR for storing address spaces, so hook it up.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 include/linux/iommu.h     |  9 +++++++++
 drivers/iommu/iommu-sva.c | 19 +++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 5a3d092c2568a..4b9c25d7246d5 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -1081,6 +1081,15 @@ void iommu_debugfs_setup(void);
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
 
diff --git a/drivers/iommu/iommu-sva.c b/drivers/iommu/iommu-sva.c
index 7fecc74a9f7d6..b177d6cbf4fff 100644
--- a/drivers/iommu/iommu-sva.c
+++ b/drivers/iommu/iommu-sva.c
@@ -525,3 +525,22 @@ int iommu_sva_get_pasid_generic(struct iommu_sva *handle)
 	return bond->io_mm->pasid;
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
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
