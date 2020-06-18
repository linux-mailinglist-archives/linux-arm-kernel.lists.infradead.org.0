Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33971FF84C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEoWNIbt8OokOqKuvHDlCdRc0zPu0QXmQWNJRMjpB3U=; b=U2lEI/RmhXLICQ
	Ztw1up/yA+xUSJZ7iYjQDZJiYteXEQlbPLbdM06+qeg0BmOOy66TaQROZki0KPlX9mKJ8UoqOwepd
	ryyemXQbyfCgr0atx8x7Ly7bs/ToRGYW9LqoQnVXS4Era42MQnsel9lYUCsLEau5pXR66/tlKFUM8
	ianvtynlErMddDGNtQY3e/mxcETIhoWSZnhA6q3slmrfIOO4zyeoqjXB8j3B+ONOaWXynXxXhnMQ1
	sWaYfmkgItyF+3UcQ3vyCKhxZVzI6hgWSEaTrCjGrC6BQImwYdP7FNjc0N2BKTsP3zGR4RvM7Dl1d
	1JfwnCv7088YTkHRyPJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwuP-0007bV-2N; Thu, 18 Jun 2020 15:56:57 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwqL-0002Ch-J8
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:52:55 +0000
Received: by mail-ej1-x641.google.com with SMTP id p20so6897034ejd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 08:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FY0aPXr4T1XKvh6YqCT/xGUuNfXzsIgkFE1SNeWNDTU=;
 b=h0r3TSsbVyAd/GgpK2IGqK86/znVI1rJ0Spx39sObm1jycjjG19VLycMXWz+PqwAN1
 oJI824ldExIo5cDBCcj0Ykma1Yj12YE9UxnQUpmC2qwfvxAhm44lkQ/X5pRfLXPtH9Xn
 58s1XcNZnylhoa5mj1clF3V/tN61SIwOU5PuOJz7lf44dVjhinD4zYC005kKGHt8NHyB
 pOmYn3TiDbLE9pcftz7/UUy3qwXjdz10rktsWo+MzTpkvFAVrA3BQxS77yG/SRKHV3bN
 eE4pDvlRXb9dT7bdEDJdIHi9I5KBg2fxj0Ez+BMUb+E08Ehg0Oi7tTdLqUqvYvMJap3t
 WJPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FY0aPXr4T1XKvh6YqCT/xGUuNfXzsIgkFE1SNeWNDTU=;
 b=RF0VekTZyDnG8nZk6QxsRNyTt5W4CdItIHcZx3fmiAEOIbbr/Ynxq7dGQv0Ga/WeHi
 7QXJ0B0jCDUEWaQKhrl9ffDZFSbTV4kcan5nytAvzGdB25ZvBg+vs6U+hwdXRdaQLFEJ
 6IsjCxlCwI/zLelOXFTYDojVcP054XsD3aGTJ/IAzviuNhlyHEisfH8iC4bO/Q1mGoWv
 MRdTIApwcxCYZ+Xcz9R/rAwfJaW9lTXSUQB4lkBP/zlDgUzFLcHFObAPIgWQWVK98dFV
 TM1IEyvWNKA6fJlkbT3MOFHIcGxR9m7jP/PhxmGleWpRaiDn1XQeL62NhHoUnABetME9
 ms0A==
X-Gm-Message-State: AOAM531WuSU1WebO4uOgCj3wXvtA+GrKdfyVDgMlGa1COWcu3+Qh0KTf
 Fv7pAtQiFuPAZCRPULYvXftThlspIkblUQ==
X-Google-Smtp-Source: ABdhPJxPqR2tMmpRqJZE3NxKQ3H6rUsjM+EqJN0+OqhoA1wLKcbML/g//NRUZvq8y8ascWv+p439Rg==
X-Received: by 2002:a17:906:3e0c:: with SMTP id
 k12mr4362788eji.441.1592495564354; 
 Thu, 18 Jun 2020 08:52:44 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id 63sm2402267edy.8.2020.06.18.08.52.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 08:52:43 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
Subject: [PATCH v8 05/12] iommu/io-pgtable-arm: Move some definitions to a
 header
Date: Thu, 18 Jun 2020 17:51:18 +0200
Message-Id: <20200618155125.1548969-6-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618155125.1548969-1-jean-philippe@linaro.org>
References: <20200618155125.1548969-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_085245_672975_D6973104 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
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

Extract some of the most generic TCR defines, so they can be reused by
the page table sharing code.

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/io-pgtable-arm.h | 30 ++++++++++++++++++++++++++++++
 drivers/iommu/io-pgtable-arm.c | 27 ++-------------------------
 MAINTAINERS                    |  3 +--
 3 files changed, 33 insertions(+), 27 deletions(-)
 create mode 100644 drivers/iommu/io-pgtable-arm.h

diff --git a/drivers/iommu/io-pgtable-arm.h b/drivers/iommu/io-pgtable-arm.h
new file mode 100644
index 0000000000000..ba7cfdf7afa03
--- /dev/null
+++ b/drivers/iommu/io-pgtable-arm.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef IO_PGTABLE_ARM_H_
+#define IO_PGTABLE_ARM_H_
+
+#define ARM_LPAE_TCR_TG0_4K		0
+#define ARM_LPAE_TCR_TG0_64K		1
+#define ARM_LPAE_TCR_TG0_16K		2
+
+#define ARM_LPAE_TCR_TG1_16K		1
+#define ARM_LPAE_TCR_TG1_4K		2
+#define ARM_LPAE_TCR_TG1_64K		3
+
+#define ARM_LPAE_TCR_SH_NS		0
+#define ARM_LPAE_TCR_SH_OS		2
+#define ARM_LPAE_TCR_SH_IS		3
+
+#define ARM_LPAE_TCR_RGN_NC		0
+#define ARM_LPAE_TCR_RGN_WBWA		1
+#define ARM_LPAE_TCR_RGN_WT		2
+#define ARM_LPAE_TCR_RGN_WB		3
+
+#define ARM_LPAE_TCR_PS_32_BIT		0x0ULL
+#define ARM_LPAE_TCR_PS_36_BIT		0x1ULL
+#define ARM_LPAE_TCR_PS_40_BIT		0x2ULL
+#define ARM_LPAE_TCR_PS_42_BIT		0x3ULL
+#define ARM_LPAE_TCR_PS_44_BIT		0x4ULL
+#define ARM_LPAE_TCR_PS_48_BIT		0x5ULL
+#define ARM_LPAE_TCR_PS_52_BIT		0x6ULL
+
+#endif /* IO_PGTABLE_ARM_H_ */
diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 04fbd4bf0ff9f..f71a2eade04ab 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -20,6 +20,8 @@
 
 #include <asm/barrier.h>
 
+#include "io-pgtable-arm.h"
+
 #define ARM_LPAE_MAX_ADDR_BITS		52
 #define ARM_LPAE_S2_MAX_CONCAT_PAGES	16
 #define ARM_LPAE_MAX_LEVELS		4
@@ -100,23 +102,6 @@
 #define ARM_LPAE_PTE_MEMATTR_DEV	(((arm_lpae_iopte)0x1) << 2)
 
 /* Register bits */
-#define ARM_LPAE_TCR_TG0_4K		0
-#define ARM_LPAE_TCR_TG0_64K		1
-#define ARM_LPAE_TCR_TG0_16K		2
-
-#define ARM_LPAE_TCR_TG1_16K		1
-#define ARM_LPAE_TCR_TG1_4K		2
-#define ARM_LPAE_TCR_TG1_64K		3
-
-#define ARM_LPAE_TCR_SH_NS		0
-#define ARM_LPAE_TCR_SH_OS		2
-#define ARM_LPAE_TCR_SH_IS		3
-
-#define ARM_LPAE_TCR_RGN_NC		0
-#define ARM_LPAE_TCR_RGN_WBWA		1
-#define ARM_LPAE_TCR_RGN_WT		2
-#define ARM_LPAE_TCR_RGN_WB		3
-
 #define ARM_LPAE_VTCR_SL0_MASK		0x3
 
 #define ARM_LPAE_TCR_T0SZ_SHIFT		0
@@ -124,14 +109,6 @@
 #define ARM_LPAE_VTCR_PS_SHIFT		16
 #define ARM_LPAE_VTCR_PS_MASK		0x7
 
-#define ARM_LPAE_TCR_PS_32_BIT		0x0ULL
-#define ARM_LPAE_TCR_PS_36_BIT		0x1ULL
-#define ARM_LPAE_TCR_PS_40_BIT		0x2ULL
-#define ARM_LPAE_TCR_PS_42_BIT		0x3ULL
-#define ARM_LPAE_TCR_PS_44_BIT		0x4ULL
-#define ARM_LPAE_TCR_PS_48_BIT		0x5ULL
-#define ARM_LPAE_TCR_PS_52_BIT		0x6ULL
-
 #define ARM_LPAE_MAIR_ATTR_SHIFT(n)	((n) << 3)
 #define ARM_LPAE_MAIR_ATTR_MASK		0xff
 #define ARM_LPAE_MAIR_ATTR_DEVICE	0x04
diff --git a/MAINTAINERS b/MAINTAINERS
index 68f21d46614c4..2e3220273e4d5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1499,8 +1499,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	Documentation/devicetree/bindings/iommu/arm,smmu*
 F:	drivers/iommu/arm-smmu*
-F:	drivers/iommu/io-pgtable-arm-v7s.c
-F:	drivers/iommu/io-pgtable-arm.c
+F:	drivers/iommu/io-pgtable-arm*
 
 ARM SUB-ARCHITECTURES
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
