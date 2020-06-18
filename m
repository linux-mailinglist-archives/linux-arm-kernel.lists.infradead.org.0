Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9B81FF83D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IfuvP4mfysiN3X0ayVQJgWObsskH+l9sbmMssGCr4C0=; b=O8GNm0z1Hgze5y
	SCz3m3glysUAnGSDtyjaBUZMSOC46C3+pPrVM6kTKIhIeDkLUL7O4sf9ZO/SOCb3D3PaIHoX/+Voj
	PYhc6hN3x5XC0NEDWiL4KWIM+z4ifm2t6iaJqhpKBBMbBeRS+Q/mmpfZctzl18wwiAcMLeXiudYzO
	PP61NzlOO1BIRfhse70AXU/xhDnqg7syifr4ZezA/T6pCjGa/ULQh6hOULpHILarr+0SbpVgDLkN/
	vAaRKJw6Jies+E30DjtGv7vwfxRJ+8Go/lRDGmWoVH/A84DtR7D/G58MBJWf3gJBmmoFUT1byJS+e
	83GSi+Y3HQm5eRDqwMPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwsg-0003k5-Mz; Thu, 18 Jun 2020 15:55:10 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwqH-000283-He
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:52:47 +0000
Received: by mail-ej1-x641.google.com with SMTP id dp18so6925944ejc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 08:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NmZThf3a2J6NoF89O5jcQpvbS3tCRuSL8WpQATN4J9s=;
 b=SbiiUTm8b3lLb0G44o0xNz2wAgbRXUJ40PYOfCJkPu1U+7Cz8Q4JukOUgbmBL4er9G
 dJ7Cvj4FRyYN6pkQMQx5jjEvD+YDt6nqjJe71GKRTEca0dl+iI7cVyX+emnBPTvQNZH1
 7pVSfRIPOLiuxhIplgAZNKMP7lTRijVPY3nU7ESh9RJnGqfVgRbjeK36QO9Pakbr47NN
 uESVwsqZ9183zVksg3VwFAlQpoVTv+ObmiUCYcEIKH+gD6ob33Pu/KV8/XRytPEDSHly
 85315iMObHd1V22KfsfQCuO6ehxup/gAkt1TrAqM5SxrS1hQPyM9Ci7EKySAcQPBLKqa
 I3TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NmZThf3a2J6NoF89O5jcQpvbS3tCRuSL8WpQATN4J9s=;
 b=cYlz/oludws0DkESaE3P7atWSLgUOidcrZMTpG3xvPZCFfI2cbpL2QcY/cDXb0Ak8L
 9O+Ix1RWju33yEiaurAQNmkMUxH5jyL+lc0vrI7E4Dq4lW1nhlx279p3AddqSf/veJYU
 6lvmCDvXVmng/KGEL6i6bg33zpBfiNAkaeGF03t1g/MDEgzscKUdz4V0QykjdxEnQS2+
 aKubp/yFLVTrNp/hufG+po5qiWanQ3SY0d1dfyNlavEd8YCOlyxDoUzB6LAqeFQSUS/+
 joMUZz60YUmyCgILc2+EafJ+uelbLMs4FLlkIAcJQLvZUVqa1rB5kCQKVT6hdFI8ag2S
 qm4Q==
X-Gm-Message-State: AOAM532TAdpj3bWoU5oktLgPAbm54lKQvTegzaWHFu88VwpwWFokf07n
 tdm6SeiCfcAc0uKSj5IqEk57kQ==
X-Google-Smtp-Source: ABdhPJzjU3VVFUa1Qo56KhnjygVu/pLnUdL9+i0/7jp5cNFPr0/ZP9y2960Bjo4LpilqevPtcgOLCQ==
X-Received: by 2002:a17:906:d9cd:: with SMTP id
 qk13mr4511193ejb.268.1592495558670; 
 Thu, 18 Jun 2020 08:52:38 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id 63sm2402267edy.8.2020.06.18.08.52.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 08:52:38 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
Subject: [PATCH v8 00/12] iommu: Shared Virtual Addressing for SMMUv3 (PT
 sharing part)
Date: Thu, 18 Jun 2020 17:51:13 +0200
Message-Id: <20200618155125.1548969-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_085241_785122_516F2E13 
X-CRM114-Status: GOOD (  12.18  )
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

Since v7 [1], I split the series into three parts to ease review. This
first one adds page table sharing to the SMMUv3 driver. The second one
adds support for I/O page faults through PRI and Stall, and the last one
adds additional and optional features (DVM, VHE and HTTU). SVA needs the
three parts to work. No significant change apart from that, I just
addressed the previous comments.

I'd rather everything went through the IOMMU tree but I'm assuming patch
1 will also go through the x86 tree as part of [2]. It is definitely
required by patch 3 which is required by patch 11. I don't know how this
kind of conflict is usually resolved, but if it's a problem I could
further shrink the series to only patches 4-10 this cycle.

[1] https://lore.kernel.org/linux-iommu/20200519175502.2504091-1-jean-philippe@linaro.org/
[2] https://lore.kernel.org/linux-iommu/1592418233-17762-1-git-send-email-fenghua.yu@intel.com/

Fenghua Yu (1):
  mm: Define pasid in mm

Jean-Philippe Brucker (11):
  iommu/ioasid: Add ioasid references
  iommu/sva: Add PASID helpers
  arm64: mm: Pin down ASIDs for sharing mm with devices
  iommu/io-pgtable-arm: Move some definitions to a header
  arm64: cpufeature: Export symbol read_sanitised_ftr_reg()
  iommu/arm-smmu-v3: Share process page tables
  iommu/arm-smmu-v3: Seize private ASID
  iommu/arm-smmu-v3: Check for SVA features
  iommu/arm-smmu-v3: Add SVA device feature
  iommu/arm-smmu-v3: Implement iommu_sva_bind/unbind()
  iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops

 drivers/iommu/Kconfig                |   7 +
 drivers/iommu/Makefile               |   1 +
 arch/arm64/include/asm/mmu.h         |   1 +
 arch/arm64/include/asm/mmu_context.h |  11 +-
 drivers/iommu/io-pgtable-arm.h       |  30 ++
 drivers/iommu/iommu-sva-lib.h        |  15 +
 include/linux/ioasid.h               |  10 +-
 include/linux/mm_types.h             |   4 +
 arch/arm64/kernel/cpufeature.c       |   1 +
 arch/arm64/mm/context.c              |  95 +++-
 drivers/iommu/arm-smmu-v3.c          | 702 ++++++++++++++++++++++++++-
 drivers/iommu/intel/iommu.c          |   4 +-
 drivers/iommu/intel/svm.c            |   6 +-
 drivers/iommu/io-pgtable-arm.c       |  27 +-
 drivers/iommu/ioasid.c               |  38 +-
 drivers/iommu/iommu-sva-lib.c        |  85 ++++
 MAINTAINERS                          |   3 +-
 17 files changed, 977 insertions(+), 63 deletions(-)
 create mode 100644 drivers/iommu/io-pgtable-arm.h
 create mode 100644 drivers/iommu/iommu-sva-lib.h
 create mode 100644 drivers/iommu/iommu-sva-lib.c

-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
