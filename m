Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54594A39E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d5+2asKOhNcS9YCf+WyZBNqLuSRHWvryr9uvZUAftqs=; b=OQQSc+sbqf114N
	1VEeUNyEKdaehmsiQm8VEU4rg73Mnhsb2sVQdVz2eb0tPJ7B52iXdIG8MpKYrqNu4wXN35fmzSRlj
	OmRRNFkhlx4S+7hXlOvoZl2dLM+n98e87Cz1G2iLpexuTRddt/67nZ6faKFs+/DBuXU/56FRaSpZr
	XjNbF78uWYLZ3baJ6MZ5VxhnQr0pD90kBXAQHjIMVG7332Hf9g4pXydwzbebVevCBMCmcYd0D3jtb
	uAXIq7Eu93jbz51TeY7b53Vugya9brJiF6N6PAQ59hV2j6za1DZE/cOg9gbEE7biwc6769JRkVr35
	A7sGqfyX6Gf84MyOBctQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3iVX-0006HN-Bd; Fri, 30 Aug 2019 15:08:11 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3iVM-0006H2-1k
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:08:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id g7so7348138wrx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 08:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0pAZWJp00xZ1ls1Af08EI7mW5qet6OlsQR65F0SwZhs=;
 b=Uhod1U8XJp5hvgo/TUndU/vB/K3LqXxuAeZVAeuRIVdGOfTHzNRkOwN4osOc40UuE5
 1zbifQ3t/DupGF//0a//lbZHwzoTo6QVboCPsr+tvklkQoTjH1/FYdaux2SjAfGCOpZ0
 aaXT7pAXocMPWV0Xg9GtrbNyGi3SmspC4gJtWpFECD2jINQg8+kDPQEGXlrAPljAZ6MO
 Bdigb/DGLDuPQjYHP6+nOeEcj4fW4+9AgzYdVUBteNpxJsrnLzwx/E63kRUe2CI/0SzE
 heoO2mGCnXSSOoKS6wS0YDpnRrp6s8F65jBfDu0Q/tvSU+1uM06S/GMYkDzLMDPtR3BH
 HskQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=0pAZWJp00xZ1ls1Af08EI7mW5qet6OlsQR65F0SwZhs=;
 b=kU5WJi4QXtXT0wPQ1NBzexJ3r02UilwlqxftAip7sl9QXsItrmkUEVua5cPkcHyGem
 0fw6DUVWJGE6ELfxOhJSr3++zVaYItOL9qFHO+3FTUMANdsNh2gclLX5Cp2gePhRl49q
 G49KAG/5JHmSlXGYdrN/Y2c1aXXSso9k7WsMpqZYLJk60eSqxFdlrWjqw4AbXIcoWICS
 +5aAbpfoAk+C4VIUy9rqoCgWrJW9D4+KSqhN9YIpwuKBl53zOktxImCEKse3PcV+w8tX
 WgTbzJtOg5nA85B9jJBVT9iaLcUust9DgJ806k6Z++u5o/8x8mBpwHhTR5tA8hQ9QlnI
 10CA==
X-Gm-Message-State: APjAAAVDSurK2AFzRu39a+hZbg4eLcGBnLkEPY52bLhr8QNmnQWNFit2
 gYBnjnpk23HSHkxVq5hnnBE=
X-Google-Smtp-Source: APXvYqzHQGc0Wx4HRiZiz1ofDsxcHrSk8e6DnIqmyFNiH0txU8A57/I3wSP5Sr5aEeWTtm785SC13w==
X-Received: by 2002:adf:f507:: with SMTP id q7mr19297657wro.210.1567177678081; 
 Fri, 30 Aug 2019 08:07:58 -0700 (PDT)
Received: from localhost.localdomain (ip5b4096c3.dynamic.kabel-deutschland.de.
 [91.64.150.195])
 by smtp.gmail.com with ESMTPSA id 16sm8270956wmx.45.2019.08.30.08.07.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 08:07:57 -0700 (PDT)
From: Krzysztof Wilczynski <kw@linux.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: [PATCH] PCI: Move ATS declarations to linux/pci.h
Date: Fri, 30 Aug 2019 17:07:56 +0200
Message-Id: <20190830150756.21305-1-kw@linux.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_080800_121787_363CDA02 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kswilczynski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-pci@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move ATS function prototypes from include/linux/pci-ats.h to
include/linux/pci.h so users only need to include <linux/pci.h>:

Realted to PRI capability:

  pci_enable_pri()
  pci_disable_pri()
  pci_restore_pri_state()
  pci_reset_pri()

Related to PASID capability:

  pci_enable_pasid()
  pci_disable_pasid()
  pci_restore_pasid_state()
  pci_pasid_features()
  pci_max_pasids()
  pci_prg_resp_pasid_required()

No functional changes intended.

Signed-off-by: Krzysztof Wilczynski <kw@linux.com>
---
 drivers/iommu/amd_iommu.c   |  1 -
 drivers/iommu/arm-smmu-v3.c |  1 -
 drivers/iommu/intel-iommu.c |  1 -
 drivers/iommu/intel-pasid.c |  1 -
 drivers/iommu/intel-svm.c   |  1 -
 drivers/pci/ats.c           |  1 -
 drivers/pci/pci.c           |  1 -
 include/linux/pci-ats.h     | 77 -------------------------------------
 include/linux/pci.h         | 34 ++++++++++++++++
 9 files changed, 34 insertions(+), 84 deletions(-)
 delete mode 100644 include/linux/pci-ats.h

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index 04a9f8443344..d43913386915 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -13,7 +13,6 @@
 #include <linux/acpi.h>
 #include <linux/amba/bus.h>
 #include <linux/platform_device.h>
-#include <linux/pci-ats.h>
 #include <linux/bitmap.h>
 #include <linux/slab.h>
 #include <linux/debugfs.h>
diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 0ad6d34d1e96..3bd9455efc39 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -29,7 +29,6 @@
 #include <linux/of_iommu.h>
 #include <linux/of_platform.h>
 #include <linux/pci.h>
-#include <linux/pci-ats.h>
 #include <linux/platform_device.h>
 
 #include <linux/amba/bus.h>
diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index 4658cda6f3d2..362845b5c88a 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -35,7 +35,6 @@
 #include <linux/syscore_ops.h>
 #include <linux/tboot.h>
 #include <linux/dmi.h>
-#include <linux/pci-ats.h>
 #include <linux/memblock.h>
 #include <linux/dma-contiguous.h>
 #include <linux/dma-direct.h>
diff --git a/drivers/iommu/intel-pasid.c b/drivers/iommu/intel-pasid.c
index 040a445be300..f670315afa67 100644
--- a/drivers/iommu/intel-pasid.c
+++ b/drivers/iommu/intel-pasid.c
@@ -16,7 +16,6 @@
 #include <linux/iommu.h>
 #include <linux/memory.h>
 #include <linux/pci.h>
-#include <linux/pci-ats.h>
 #include <linux/spinlock.h>
 
 #include "intel-pasid.h"
diff --git a/drivers/iommu/intel-svm.c b/drivers/iommu/intel-svm.c
index 780de0caafe8..ee9dfc84f925 100644
--- a/drivers/iommu/intel-svm.c
+++ b/drivers/iommu/intel-svm.c
@@ -13,7 +13,6 @@
 #include <linux/intel-svm.h>
 #include <linux/rculist.h>
 #include <linux/pci.h>
-#include <linux/pci-ats.h>
 #include <linux/dmar.h>
 #include <linux/interrupt.h>
 #include <linux/mm_types.h>
diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
index e18499243f84..3f5fb2d4a763 100644
--- a/drivers/pci/ats.c
+++ b/drivers/pci/ats.c
@@ -10,7 +10,6 @@
  */
 
 #include <linux/export.h>
-#include <linux/pci-ats.h>
 #include <linux/pci.h>
 #include <linux/slab.h>
 
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index f20a3de57d21..c8f2a05e6b37 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -29,7 +29,6 @@
 #include <linux/pm_runtime.h>
 #include <linux/pci_hotplug.h>
 #include <linux/vmalloc.h>
-#include <linux/pci-ats.h>
 #include <asm/setup.h>
 #include <asm/dma.h>
 #include <linux/aer.h>
diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
deleted file mode 100644
index 1ebb88e7c184..000000000000
--- a/include/linux/pci-ats.h
+++ /dev/null
@@ -1,77 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef LINUX_PCI_ATS_H
-#define LINUX_PCI_ATS_H
-
-#include <linux/pci.h>
-
-#ifdef CONFIG_PCI_PRI
-
-int pci_enable_pri(struct pci_dev *pdev, u32 reqs);
-void pci_disable_pri(struct pci_dev *pdev);
-void pci_restore_pri_state(struct pci_dev *pdev);
-int pci_reset_pri(struct pci_dev *pdev);
-
-#else /* CONFIG_PCI_PRI */
-
-static inline int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
-{
-	return -ENODEV;
-}
-
-static inline void pci_disable_pri(struct pci_dev *pdev)
-{
-}
-
-static inline void pci_restore_pri_state(struct pci_dev *pdev)
-{
-}
-
-static inline int pci_reset_pri(struct pci_dev *pdev)
-{
-	return -ENODEV;
-}
-
-#endif /* CONFIG_PCI_PRI */
-
-#ifdef CONFIG_PCI_PASID
-
-int pci_enable_pasid(struct pci_dev *pdev, int features);
-void pci_disable_pasid(struct pci_dev *pdev);
-void pci_restore_pasid_state(struct pci_dev *pdev);
-int pci_pasid_features(struct pci_dev *pdev);
-int pci_max_pasids(struct pci_dev *pdev);
-int pci_prg_resp_pasid_required(struct pci_dev *pdev);
-
-#else  /* CONFIG_PCI_PASID */
-
-static inline int pci_enable_pasid(struct pci_dev *pdev, int features)
-{
-	return -EINVAL;
-}
-
-static inline void pci_disable_pasid(struct pci_dev *pdev)
-{
-}
-
-static inline void pci_restore_pasid_state(struct pci_dev *pdev)
-{
-}
-
-static inline int pci_pasid_features(struct pci_dev *pdev)
-{
-	return -EINVAL;
-}
-
-static inline int pci_max_pasids(struct pci_dev *pdev)
-{
-	return -EINVAL;
-}
-
-static inline int pci_prg_resp_pasid_required(struct pci_dev *pdev)
-{
-	return 0;
-}
-#endif /* CONFIG_PCI_PASID */
-
-
-#endif /* LINUX_PCI_ATS_H*/
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 463486016290..8ac142801890 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -2349,6 +2349,40 @@ static inline bool pci_is_thunderbolt_attached(struct pci_dev *pdev)
 void pci_uevent_ers(struct pci_dev *pdev, enum  pci_ers_result err_type);
 #endif
 
+#ifdef CONFIG_PCI_PRI
+int pci_enable_pri(struct pci_dev *pdev, u32 reqs);
+void pci_disable_pri(struct pci_dev *pdev);
+void pci_restore_pri_state(struct pci_dev *pdev);
+int pci_reset_pri(struct pci_dev *pdev);
+#else /* CONFIG_PCI_PRI */
+static inline int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
+{ return -ENODEV; }
+static inline void pci_disable_pri(struct pci_dev *pdev) { }
+static inline void pci_restore_pri_state(struct pci_dev *pdev) { }
+static inline int pci_reset_pri(struct pci_dev *pdev)
+{ return -ENODEV; }
+#endif /* CONFIG_PCI_PRI */
+
+#ifdef CONFIG_PCI_PASID
+int pci_enable_pasid(struct pci_dev *pdev, int features);
+void pci_disable_pasid(struct pci_dev *pdev);
+void pci_restore_pasid_state(struct pci_dev *pdev);
+int pci_pasid_features(struct pci_dev *pdev);
+int pci_max_pasids(struct pci_dev *pdev);
+int pci_prg_resp_pasid_required(struct pci_dev *pdev);
+#else  /* CONFIG_PCI_PASID */
+static inline int pci_enable_pasid(struct pci_dev *pdev, int features)
+{ return -EINVAL; }
+static inline void pci_disable_pasid(struct pci_dev *pdev) { }
+static inline void pci_restore_pasid_state(struct pci_dev *pdev) { }
+static inline int pci_pasid_features(struct pci_dev *pdev)
+{ return -EINVAL; }
+static inline int pci_max_pasids(struct pci_dev *pdev)
+{ return -EINVAL; }
+static inline int pci_prg_resp_pasid_required(struct pci_dev *pdev)
+{ return 0; }
+#endif /* CONFIG_PCI_PASID */
+
 /* Provide the legacy pci_dma_* API */
 #include <linux/pci-dma-compat.h>
 
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
