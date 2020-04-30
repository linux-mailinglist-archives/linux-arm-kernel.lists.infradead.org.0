Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 633801BFEDF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qKOGmyZQjCSnPXPktnrUwqP+PqvWSNIZi18YqEgCp9Y=; b=HkXXvu2yIjoF4Y
	Kd4AFfK5fShSjd4kj+CUaobUjtUQ7z4EaPjCNaf4Z7Oaofc+2INSNG4xBSP/zmZk1QECmRdD8lm2G
	XVxvTd7cgB2OHe5bfByitUhygkGnReujTH3db9dFQfUI8stEqpWPo6UWgKSuG8QNkWE9Z2SI2hilk
	A8rPG3DSL0peqPBnJ7lf8CXO8O1lrbB5tPrTCBJODkA9AP+TrQQN6mLUy2N3Gn1KK3cGS2OUXrSxI
	UvqvJaVrAPTNasgSqWQ7Bz1EX263MnbGFfhbGcJrSltcUZTF/oQldQ8yLbCfZu2m2sVsAgfjXqGhd
	ysB7QwYHkBn3JoEU3BaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUANE-0002qi-9v; Thu, 30 Apr 2020 14:41:12 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAML-0002G8-Bg
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:40:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id r26so2209387wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YYiLFVngM44g0Fy16RMemZHwiB7tGW2h6urXa5JNeA4=;
 b=ZUmjnGJdMThCLpgu6Fn1QVEDSUT+cukEkGuOgFSAHraBV5UE619qvE7lxXPXau+0K9
 ZSHcJOrhjdN8cdq50v47XtlJcbrqef2j4U5/gGNSYSQpruy3HxooSXHs6zM0a7FPLyrf
 N1aYxP7FmR+YZG+U5qEkc7Ou5kN0muT/Fyj74HePtg+qHnxZ/OCxIli3Yg9YjITjQFh/
 9H6GKkTWgkWazMIGgQe+XWGtK1TcSG6alWleOABobFRAn+J2t7Zmt/cdYdpkh/pEJmMD
 jBY9RCioflr2sxajJ38Um+7P1crKRDbyOCc3eBs00MuEh0TbHUtzAb/LNYTvyI9xBJZf
 9UNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YYiLFVngM44g0Fy16RMemZHwiB7tGW2h6urXa5JNeA4=;
 b=sWrRVfLsVcGmxUzhKs6hoEaqdMufPhClyNA7bFUEBxeS06ZIFFXmI/XNnTQ0JTER8D
 GVyuv2bf7bbqVUxtGvENiCXLjnuLhE7wAh7vS/7g+BuyZDk34sjKVIfFr6LVYAypRLDz
 hK9LWjyX0r1VEwDH0bSzZ6/u1m7UMRx340V30xAvz0Yhv8IJra1MxD4+2incTa4nRO2D
 FueVLrgz6hDYPz8kesHoPbfeufxtpj8j7KhHiCSCV6TxUaOSbisM3rIMBpIEF/iYJq3h
 rfQydFjTapntWxcnNURJPUEPPd/cyvQ5GKL2kHvH3jmKmLHFCKq2uI7ipQqT4yh7un9K
 I83g==
X-Gm-Message-State: AGi0PuatcWBH8+tJyLIqeDnkpAQPxwuiCWUWiVqAxtT9hv/E5heIAp3X
 AWzissbjsQPkuPgNeF86UCP8TQ==
X-Google-Smtp-Source: APiQypIMxbfi2gR+oRZoSzUml7oOF8uYXg/WO7r1FPuma7Uj6M8X8kh92jUG0IVhIXNkP7USztJjJQ==
X-Received: by 2002:a7b:cfc9:: with SMTP id f9mr3419281wmm.61.1588257614425;
 Thu, 30 Apr 2020 07:40:14 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id n2sm4153286wrt.33.2020.04.30.07.40.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 07:40:12 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v6 00/25] iommu: Shared Virtual Addressing for SMMUv3
Date: Thu, 30 Apr 2020 16:33:59 +0200
Message-Id: <20200430143424.2787566-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074017_435651_F0F8DD12 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Shared Virtual Addressing (SVA) allows to share process page tables with
devices using the IOMMU, PASIDs and I/O page faults. Add SVA support to
the Arm SMMUv3 driver.

Since v5 [1]:

* Added patches 1-3. Patch 1 adds a PASID field to mm_struct as
  discussed in [1] and [2]. This is also needed for Intel ENQCMD. Patch
  2 adds refcounts to IOASID and patch 3 adds a couple of helpers to
  allocate the PASID.

* Dropped most of iommu-sva.c. After getting rid of io_mm following
  review of v5, there wasn't enough generic code left to justify the
  indirect branch overhead of io_mm_ops in the MMU notifiers. I ended up
  with more glue than useful code, and couldn't find an easy way to deal
  with domains in the SMMU driver (we keep PASID tables per domain,
  while x86 keeps them per device). The direct approach in patch 17 is
  nicer and a little easier to read. The SMMU driver only gained 160
  lines, while iommu-sva lost 470 lines.

  As a result I dropped the MMU notifier patch.

  Jacob, one upside of this rework is that we now free ioasids in
  blocking context, which might help with your addition of notifiers to
  ioasid.c

* Simplified io-pgfault a bit, since flush() isn't called from mm exit
  path anymore.

* Fixed a bug in patch 17 (don't clear the stall bit when stall is
  forced).

You can find the latest version on https://jpbrucker.net/git/linux
branch sva/current, and sva/zip-devel for the Hisilicon zip accelerator.

[1] https://lore.kernel.org/linux-iommu/20200414170252.714402-1-jean-philippe@linaro.org/
[2] https://lore.kernel.org/linux-iommu/1585596788-193989-6-git-send-email-fenghua.yu@intel.com/

Jean-Philippe Brucker (25):
  mm: Add a PASID field to mm_struct
  iommu/ioasid: Add ioasid references
  iommu/sva: Add PASID helpers
  iommu: Add a page fault handler
  iommu/iopf: Handle mm faults
  arm64: mm: Add asid_gen_match() helper
  arm64: mm: Pin down ASIDs for sharing mm with devices
  iommu/io-pgtable-arm: Move some definitions to a header
  iommu/arm-smmu-v3: Manage ASIDs with xarray
  arm64: cpufeature: Export symbol read_sanitised_ftr_reg()
  iommu/arm-smmu-v3: Share process page tables
  iommu/arm-smmu-v3: Seize private ASID
  iommu/arm-smmu-v3: Add support for VHE
  iommu/arm-smmu-v3: Enable broadcast TLB maintenance
  iommu/arm-smmu-v3: Add SVA feature checking
  iommu/arm-smmu-v3: Add SVA device feature
  iommu/arm-smmu-v3: Implement iommu_sva_bind/unbind()
  iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops
  iommu/arm-smmu-v3: Add support for Hardware Translation Table Update
  iommu/arm-smmu-v3: Maintain a SID->device structure
  dt-bindings: document stall property for IOMMU masters
  iommu/arm-smmu-v3: Add stall support for platform devices
  PCI/ATS: Add PRI stubs
  PCI/ATS: Export PRI functions
  iommu/arm-smmu-v3: Add support for PRI

 drivers/iommu/Kconfig                         |   11 +
 drivers/iommu/Makefile                        |    2 +
 .../devicetree/bindings/iommu/iommu.txt       |   18 +
 arch/arm64/include/asm/mmu.h                  |    1 +
 arch/arm64/include/asm/mmu_context.h          |   11 +-
 drivers/iommu/io-pgtable-arm.h                |   30 +
 drivers/iommu/iommu-sva.h                     |   15 +
 include/linux/ioasid.h                        |   10 +-
 include/linux/iommu.h                         |   53 +
 include/linux/mm_types.h                      |    4 +
 include/linux/pci-ats.h                       |    8 +
 arch/arm64/kernel/cpufeature.c                |    1 +
 arch/arm64/mm/context.c                       |  103 +-
 drivers/iommu/arm-smmu-v3.c                   | 1554 +++++++++++++++--
 drivers/iommu/io-pgfault.c                    |  458 +++++
 drivers/iommu/io-pgtable-arm.c                |   27 +-
 drivers/iommu/ioasid.c                        |   30 +-
 drivers/iommu/iommu-sva.c                     |   85 +
 drivers/iommu/of_iommu.c                      |    5 +-
 drivers/pci/ats.c                             |    4 +
 MAINTAINERS                                   |    3 +-
 21 files changed, 2275 insertions(+), 158 deletions(-)
 create mode 100644 drivers/iommu/io-pgtable-arm.h
 create mode 100644 drivers/iommu/iommu-sva.h
 create mode 100644 drivers/iommu/io-pgfault.c
 create mode 100644 drivers/iommu/iommu-sva.c

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
