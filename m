Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C73A1BFEE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cm/imv40PIpe93BaYJTkzFebYpTdursdKEsgfLzWYS0=; b=eE0wvbZfPsYtim
	3wLx4uy8Y4e+MRvNyR2qc3Tsguhyqa72qkiZa/IVNVesDFQPJfFoKrAMqdgYs9l342EC9eR4an5Yp
	6bk81TYfZKOXLkbim6HBHj8D7bN+8EmtJ9g4FWOTykaYCx2Lx0e/+zC2wjnu1QcKxVrpXhzCk8i37
	5in1VFSEl5IopjOkGdcUYMMDWjAVCwfZ2SyuVZ1Yckc9wDupCC1vuFmYNuaXNWlANc6kgGuXQ2nXV
	1gNtRgxD7plBdYEqisQChmvzkzT9bX915J6l3WmF5vhgdOH2Fk2ZnIJU84w7bBcJkT7sCD7p1rKbY
	4E1soa1Cx0TC41kE8BcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAOv-0004Nr-6n; Thu, 30 Apr 2020 14:42:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAMX-0002QX-Aa
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id k1so7247380wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A4g2MUm95A8vqce0Clcy1vClGPiS8qWrRsLIZv825ks=;
 b=UKQPK0H1AfjHhmhias/B6F2uiehuVlmX9uNQaTC/eIERhp1uuCi3NjwqhMPvCkYml9
 TIP9tvDR/dd3/TIlW2XWQ9gEVMVrtKdJT4954SMiKdXJEwvUnGnxLZwZRpAvuVXa/Ryh
 v29bboFRz/NIzieeGHUX/Sk/+LvKRwsY05+gk91gLlfOzc045XTpFNkh1es/T/4EtJdH
 K+ywTD6nGF2EKYFqtcMFpAGKYNV240R+oPuUDDPMjrg7MUM4q5Dl5i/6c8rytMXYUtMM
 bSDsli4HaKlobXA6aKDQb6ZXjkvfqhFvnunxbJ0H35R1n/m6stCpgd2aoqFiyTW3n7x5
 lCdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A4g2MUm95A8vqce0Clcy1vClGPiS8qWrRsLIZv825ks=;
 b=gm9MZU23Ydo6MmoPEDS+DAluJnxB+ptn+0JtDfzPB7VUuqcMWkNssYNe4l1D12Y8PX
 FXvW7MSle+aB+0BQMeSwcDo0aVFSKva180K99ZwrlOmPq8w1HZXujQT8JvuitrZf+JRp
 c/OHTGZKHUcbVVvNzTtn6g4jgMj0uG5gQd8KHcox/8+/kcJypwDW3XwkQAXebO/gFvDL
 UEcorgHHKLy9brpGUFheVzC13sLDtst0uKZSszH95QHaDGMnQ9lZrYnQWcZywr1guBNE
 jV43KW8jYlmHjnArtbz8ScE6fvSWK7S8VGrYHVMTbrfyieiYZAHSCG8bO88na/Levhtr
 Ui6A==
X-Gm-Message-State: AGi0PuZDN2325ejF31SRFBjgcDPAuowYhVTYeMNchJRlNRPbzpvdedWe
 BUwVyeXFqfVTJTpaMiSY9g2B2g==
X-Google-Smtp-Source: APiQypISpfemZuOHOoY/XW6qkuY6DwYhB+l4cJZx0Y+98tF9fBGdV2EJ4CVYyTjwpT8nIv4VWOpAig==
X-Received: by 2002:a5d:634d:: with SMTP id b13mr4170605wrw.353.1588257628116; 
 Thu, 30 Apr 2020 07:40:28 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:27 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 08/25] iommu/io-pgtable-arm: Move some definitions to a
 header
Date: Thu, 30 Apr 2020 16:34:07 +0200
Message-Id: <20200430143424.2787566-9-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430143424.2787566-1-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074030_209852_73069F06 
X-CRM114-Status: GOOD (  12.72  )
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

Extract some of the most generic TCR defines, so they can be reused by
the page table sharing code.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
v5->v6: Update MAINTAINERS
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
index 26f281d9f32a4..c637d38764594 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1463,8 +1463,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	Documentation/devicetree/bindings/iommu/arm,smmu*
 F:	drivers/iommu/arm-smmu*
-F:	drivers/iommu/io-pgtable-arm-v7s.c
-F:	drivers/iommu/io-pgtable-arm.c
+F:	drivers/iommu/io-pgtable-arm*
 
 ARM SUB-ARCHITECTURES
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
