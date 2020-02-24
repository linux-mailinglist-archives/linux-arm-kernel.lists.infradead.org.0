Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857DF16AF09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:27:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bmIdau9YyJrmE6CAMsnZ0v5y5o2tJxRTD2MXXZf7Do=; b=CIoiqCJthwkxDE
	yYtTHEf/VYclwGr3paAeUY0+0GLmi47sMw+Ybby7Jog/AwbYJjJRjrKV88zezLyffjKwbQMcMBl7e
	8QgLzk49qZDvj6AXbgXIbk7k5hPkKKOBcIDxEVu2pcQ8xZI2T+UZfXdJyHP4Y7RjescK0EUMo2747
	ggt61ybFyZAjH8SqndC/zls03zi5CQ+x+NWClWZf03y/IGhL93WWY7zKBB8ISY2Ly/zcAMYdBHVE5
	FL1g5uJgo71ij7V6oE5FHMHN9xGhQC7yG2UVGRYTvDQZWw04r5nDJvq8ue2zbiLmuR36wkCEHQHcY
	pegBHJv13crzmHMKMAxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IRz-0000ES-PY; Mon, 24 Feb 2020 18:27:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IPH-0005Xp-WE
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id g4so5225211wro.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6tqcdrj1xZvDcY7k2ZzEJzD20ZqgKnIoPLeb93yl2Xc=;
 b=aDvzZHPt9iVEQwZJj1vud5mf/cCAG1jb3PpU0tPKkgnq9edj9bpqrHE6Eoktch/Wxe
 YkevW7vtCQ7o4zxdCRdqv7yvITCgSxf6H6szEOP+F3WE5Ip0NrJp+tBFY4ii8waFp1+G
 g6F0duX+U/X1mGeZhsHnDiBNc6YigoXnE6IXag4W7ySDFxe6VvcC+ni71ci5R9yuXX8R
 EIF3HXiiGiaQ+0ZIc7OclYDsNN6BvIE7UZlNby1PK/lZ5772P8Uf8yq5xCyAqHI7MCxu
 HvKguxhEpuIXgThDOS+/Ngh5iwPVr2umzGovygvcHO1ZCp3TmC3j/q2drow2O6jsDj8S
 bnng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6tqcdrj1xZvDcY7k2ZzEJzD20ZqgKnIoPLeb93yl2Xc=;
 b=i60buZ/LTbw/FaMpwx70SGYNXsfSyWdr+PWsxk5mk//OYE4QPSJHaaFZHVY2YnFYtS
 A+utRt39zbofPg1GoTtcmN7GeNwPsmBCPkLpp2Tju6WNq0/++XgnvJiib3f2DiB39NKF
 BGZMuNav+YG5NNzh2q/UeHhpewTZAuCdnsBZvsi1O2AD9BqxDKDGhBQrXl3NmCWiH0Rr
 IN7qAbJ1W2WlpgX0ZcjXVbDUHu+i6A84xKtUoZ7qvzQtQfKefwvBuxCV6k+RPwgQ1aK8
 OWtZ2HvPnL0Bkjtt1lMelSjUljfNcLM/s0NDKZvOu7DIg3aGhmcNHufklQx+TxajG8Nx
 2VAA==
X-Gm-Message-State: APjAAAUe4FN/Us6Rdsn3yX+0ADRy64yVsN161EzEavYgPNBkCcjssrpq
 Yn/VlZQr6rN7X+XiP2kZUwdz+g==
X-Google-Smtp-Source: APXvYqweDyVog+lllJdgzOC5yFjqb0Y6Z6mnJXgAaaIz7bHvgd5fr5XnnlJkWPmoF4mmrIHnKf7dfA==
X-Received: by 2002:adf:fec4:: with SMTP id q4mr9813505wrs.368.1582568678393; 
 Mon, 24 Feb 2020 10:24:38 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:38 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 08/26] iommu/io-pgtable-arm: Move some definitions to a
 header
Date: Mon, 24 Feb 2020 19:23:43 +0100
Message-Id: <20200224182401.353359-9-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102440_073966_AADBE444 
X-CRM114-Status: GOOD (  12.87  )
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
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 robh+dt@kernel.org, yi.l.liu@intel.com, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, christian.koenig@amd.com,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extract some of the most generic TCR defines, so they can be reused by
the page table sharing code.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 drivers/iommu/io-pgtable-arm.c | 27 ++-------------------------
 drivers/iommu/io-pgtable-arm.h | 30 ++++++++++++++++++++++++++++++
 2 files changed, 32 insertions(+), 25 deletions(-)
 create mode 100644 drivers/iommu/io-pgtable-arm.h

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 983b08477e64..75782b525c2f 100644
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
diff --git a/drivers/iommu/io-pgtable-arm.h b/drivers/iommu/io-pgtable-arm.h
new file mode 100644
index 000000000000..ba7cfdf7afa0
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
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
