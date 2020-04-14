Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61421A86BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5tdPRnye9vnoRyURi8l48FrUd3HroW5xJcAgFdIDGoc=; b=WMh6AwjZLE/ZaX
	kH2pO54SA4+/gtY8Mj70x81PHOm48ex0eWrJeIMTNFZaqKzpC/EBUdFzvpMbrx7IHVRC3+Vv6Yo9Y
	LO26CU0qyXTJjsKKEIO79uQ+wY8WoR3ViUMismwjCB97qPhivggia9qerIlJvHxruszDgqBymSjbQ
	0Shp76jYZPBd8l99AKcZjikD9Dxp5dMTXUr1zfjj8Zp+CX06v40cQdYoDsaXnktQB2f16lRput/Zq
	9NOJ1vohbMxkBjaEqrJLQHsjtqH7lot8AzwR9d8/9GZwLICIcniAFuZQF055DJm8solXhtiO9OmXc
	IdFOJrhYH4QVSdXxLilw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOzF-000225-7H; Tue, 14 Apr 2020 17:04:37 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOyx-0001yV-DQ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:04:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id z6so14954699wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fDR92FG/W9XzyoEKCk0ZF8N6Phe9WGPiX+0dpA5beXc=;
 b=NEj+O1VPlDE3+b9GRhqJpb7imwatVrbEHRPijSau+X9Vbg+US5qIqjILEeTsiMZyzd
 Jbi8pl9C2UJZk5wt+F2ohcMMgOlmn6vRXNL+oLg3PX1OQyFq5Vi7QeyaSHWpCnKH9wwW
 BQcMuKVX1Kxci3T4tlG5aUlteOmxPqpT3W6wO26dWN/t7wdHaxqmgBUfDWUgwMMU2ufA
 pOJXldxAAh12JJAT7GYE/YQAYLgMhCdkm9Y3ZNUlaySCcDtsLm5njdvcwhqHN+ekOPfb
 7Kguikc/vkv7QzJrcpWobUk53WblaNZeBLUQoi01vtQvlCASM3Ery/NF+KrJ8hZbl8nn
 tsaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fDR92FG/W9XzyoEKCk0ZF8N6Phe9WGPiX+0dpA5beXc=;
 b=ZXAd/2gG0UtNXVh0kstZNERBjEDa8lMnhNM3JTQVdHw2TOt0szyvIWa4Y3YEm8A3dA
 M+3xzHugo6hTl0yaJ+aW1FwLheow8c+96JXWgxx+P7VYzQXHA22V3ZRjcXaDg3qkW740
 oAZ8UkGmKQ67JXsNEClLI9b/S1Qhw5SY+ybjysvMr4cy7akRGZHfzZHsMGl7hJuM/ZGT
 AHzNenH8OTt5r8+UtWrEZRUMtLrqoyTg2v9ZXNxt6JXYgG7gJAfQ6ujYPjqGxHYtbIRa
 bBNLMhmNQninxHwhZ5Vlqa2wIDInwp2dzNYMGbk+klqaYIKU+Ys4jUaN6wAZPs0qnz4J
 V03A==
X-Gm-Message-State: AGi0PubkLhRQwnBwZasBrzJSm0phLmKb3zFGLlfXLsO+psMjdl6lq76+
 JcLbbUA6l7iIwVBjrs4l5vHEqg==
X-Google-Smtp-Source: APiQypIdArRSrPXSdknP2IMK7ppxpSO4QpwtmnnSeA+CSALQDIlf3m4G7fjFu80JrmrhRYEK5Otokw==
X-Received: by 2002:a1c:4e16:: with SMTP id g22mr723817wmh.157.1586883857511; 
 Tue, 14 Apr 2020 10:04:17 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id x18sm19549147wrs.11.2020.04.14.10.04.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:04:16 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v5 00/25] iommu: Shared Virtual Addressing and SMMUv3 support
Date: Tue, 14 Apr 2020 19:02:28 +0200
Message-Id: <20200414170252.714402-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_100419_460318_32ACC2D1 
X-CRM114-Status: GOOD (  12.45  )
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

Shared Virtual Addressing (SVA) allows to share process page tables with
devices using the IOMMU. Add a generic implementation of the IOMMU SVA
API, and add support in the Arm SMMUv3 driver.

Since v4 [1] I changed the PASID lifetime. It isn't released when the
corresponding process address space dies, but when the device driver calls
unbind. This alleviates the mmput() path as we don't need to ensure that
the device driver stops DMA there anymore. For more details see my
proposal from last week [2], which is a requirement for this series. As a
result patch 1 has separate clear() and detach() operations, and patch 17
has a new context descriptor state. 

Other changes are a simplification of the locking in patch 1 and overall
cleanups following review comments.

[1] [PATCH v4 00/26] iommu: Shared Virtual Addressing and SMMUv3 support
    https://lore.kernel.org/linux-iommu/20200224182401.353359-1-jean-philippe@linaro.org/
[2] [PATCH 0/2] iommu: Remove iommu_sva_ops::mm_exit()
    https://lore.kernel.org/linux-iommu/20200408140427.212807-1-jean-philippe@linaro.org/

Jean-Philippe Brucker (25):
  mm/mmu_notifiers: pass private data down to alloc_notifier()
  iommu/sva: Manage process address spaces
  iommu: Add a page fault handler
  iommu/sva: Search mm by PASID
  iommu/iopf: Handle mm faults
  iommu/sva: Register page fault handler
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
  iommu/arm-smmu-v3: Implement mm operations
  iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops
  iommu/arm-smmu-v3: Add support for Hardware Translation Table Update
  iommu/arm-smmu-v3: Maintain a SID->device structure
  dt-bindings: document stall property for IOMMU masters
  iommu/arm-smmu-v3: Add stall support for platform devices
  PCI/ATS: Add PRI stubs
  PCI/ATS: Export PRI functions
  iommu/arm-smmu-v3: Add support for PRI

 drivers/iommu/Kconfig                         |   13 +
 drivers/iommu/Makefile                        |    2 +
 .../devicetree/bindings/iommu/iommu.txt       |   18 +
 arch/arm64/include/asm/mmu.h                  |    1 +
 arch/arm64/include/asm/mmu_context.h          |   11 +-
 drivers/iommu/io-pgtable-arm.h                |   30 +
 drivers/iommu/iommu-sva.h                     |   78 +
 include/linux/iommu.h                         |   75 +
 include/linux/mmu_notifier.h                  |   11 +-
 include/linux/pci-ats.h                       |    8 +
 arch/arm64/kernel/cpufeature.c                |    1 +
 arch/arm64/mm/context.c                       |  103 +-
 drivers/iommu/arm-smmu-v3.c                   | 1398 +++++++++++++++--
 drivers/iommu/io-pgfault.c                    |  525 +++++++
 drivers/iommu/io-pgtable-arm.c                |   27 +-
 drivers/iommu/iommu-sva.c                     |  557 +++++++
 drivers/iommu/iommu.c                         |    1 +
 drivers/iommu/of_iommu.c                      |    5 +-
 drivers/misc/sgi-gru/grutlbpurge.c            |    5 +-
 drivers/pci/ats.c                             |    4 +
 mm/mmu_notifier.c                             |    6 +-
 21 files changed, 2716 insertions(+), 163 deletions(-)
 create mode 100644 drivers/iommu/io-pgtable-arm.h
 create mode 100644 drivers/iommu/iommu-sva.h
 create mode 100644 drivers/iommu/io-pgfault.c
 create mode 100644 drivers/iommu/iommu-sva.c

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
