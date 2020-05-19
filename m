Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F061D9EA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cG/as2CQy9p1OYTt7S9DUTKzPPa1mz1TAAZMLVCpsfo=; b=Ahe8no/L2KtoPC
	A9CQ1jS2xE+AXHqphA0GAfwIrra2cwPMgeWvTWIKJa2z6HTP8fuayu1ac5iv2gl00Hrip9uFYb2zd
	e3zKA+SKVuFy0osyDNiUiv5YJaoeTCMJ3odHykTGBuZmbLO7a8wyNNgNA7I3mQaF528FLAeKyL4A5
	+vCKmBAxrwTxAgKKhPM+0PsoKYV63X1gdjPnDNMyBEzHUDHwxEk7/B7As/0a8DIE2nZ8dETE8sVec
	RusLiRumwnvvi2pD3yyIolkETypASWugvUCGhqfJVSKuQiNyjXxkVMbujKhavj2c8C0OtUy4ZlJbo
	q3zOYVkThUKp+jlRdg5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6Z4-0006Dh-UH; Tue, 19 May 2020 18:02:06 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6Yh-0006Bg-Pz
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 18:01:45 +0000
Received: by mail-wr1-x441.google.com with SMTP id i15so371773wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 11:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bX55m437g7MeykE1US3Tftk0H5lzLx6XUpXZp2Kvxoc=;
 b=M9vyZZ9mATtJfZDUOxfdmdgx0RZHnvTGKbSm5F+JwH4itQZSpjYwKXYMCkR2huFvi2
 twh626xwy7oiPNTooN5mL8olWtFlkxdKNWun/7JJy52nt9PxCNGgU3iNKo7o3OgGBjBv
 GtcGwtOW+y4rz0r0Z0/zqBdnL/m4CdO70VTsExVbCbEatxP0xilLLUZJnBsBvKMv2tyJ
 vq/V4yM3GGmE/FtHGK5VR9w0BMSpmTebXfbAaoplg6/qbzV58lFR5DsR+sAVolk1TARd
 9BUbrrk/lyNFvpD6HXmUxfASJGR586E46CfIK9SG/6YNZ8RwjVHLC9QEQCyMTEN7B8Bf
 1ctA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bX55m437g7MeykE1US3Tftk0H5lzLx6XUpXZp2Kvxoc=;
 b=DE86hS0scrF3aUx7jmeFP1YqPzpjxef4hBXYfH9bpWtZ+EPvN/pAmcm29BCfuBQT7U
 TMnYH1JA7ftr7o5BkUtUJudNieYpUwQTk38bZfXMRu2ry8NpqKoteRcnHr9ZKodrcvgC
 WAHdpbsLB5DTW+uczRoXhB01SS0hd/YajByDdBn/e5b1VPqoPFfUbwP/5NMOopETE9Il
 1VI/NlDFH5Q0JSV94pTJAo5jQq51fh4M9c35mezaY1NLtFibqFpdOtsYusZ1b2FCyQ49
 k/oL79rqZTYj8OKyZzS+Ia5AgiQ4mc170w2I4dhYHXrHDzWrS9C0vzzqJrWgsx8j07ZP
 HbPQ==
X-Gm-Message-State: AOAM530zLZrf6IFl+IUiyZS1pW+TIx+cXLpjXM3nZvjnE2TXlV9kBYP8
 k9IWmdR6AALhkcGYQYc8LF2zUw==
X-Google-Smtp-Source: ABdhPJx1fsDPOtceAXONrGmaumNlQajybGcyP41uWlcXsFpwhVtjyrg3sPruM6jEsNsAR5hEmsZ2Cw==
X-Received: by 2002:adf:ec88:: with SMTP id z8mr125600wrn.44.1589911301763;
 Tue, 19 May 2020 11:01:41 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id 1sm510496wmz.13.2020.05.19.11.01.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 11:01:41 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v7 00/24] iommu: Shared Virtual Addressing for SMMUv3
Date: Tue, 19 May 2020 19:54:38 +0200
Message-Id: <20200519175502.2504091-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_110143_854953_26D551A4 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Since v6 [1]:
* Rename ioasid_free() to ioasid_put() in patch 02, requiring changes to
  the Intel drivers.
* Use mmu_notifier_register() in patch 16 to avoid copying the ops and
  simplify the invalidate() notifier in patch 17.
* As a result, replace context spinlock with a mutex. Simplified locking in
  patch 11 (That patch still looks awful, but I think the series is more
  readable overall). And I've finally been able to remove the GFP_ATOMIC
  allocations.
* Use a single patch (04) for io-pgfault.c, since the code was simplified
  in v6. Fixed partial list in patch 04.

[1] https://lore.kernel.org/linux-iommu/20200430143424.2787566-1-jean-philippe@linaro.org/

Jean-Philippe Brucker (24):
  mm: Add a PASID field to mm_struct
  iommu/ioasid: Add ioasid references
  iommu/sva: Add PASID helpers
  iommu: Add a page fault handler
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

 drivers/iommu/Kconfig                         |   12 +
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
 drivers/iommu/arm-smmu-v3.c                   | 1552 +++++++++++++++--
 drivers/iommu/intel-iommu.c                   |    4 +-
 drivers/iommu/intel-svm.c                     |    6 +-
 drivers/iommu/io-pgfault.c                    |  459 +++++
 drivers/iommu/io-pgtable-arm.c                |   27 +-
 drivers/iommu/ioasid.c                        |   38 +-
 drivers/iommu/iommu-sva.c                     |   85 +
 drivers/iommu/of_iommu.c                      |    5 +-
 drivers/pci/ats.c                             |    4 +
 MAINTAINERS                                   |    3 +-
 23 files changed, 2286 insertions(+), 165 deletions(-)
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
