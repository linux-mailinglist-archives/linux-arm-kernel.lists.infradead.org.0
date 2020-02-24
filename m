Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F1616AEEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:25:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3N1cQxNhQPOoJEIqv+8DdceHpOEj0TzEN3Q4hNxSN30=; b=uF7Q8ySpvqhGqp
	W3/iHE02xO3PNr7FLpcGyuyw1ILdnKmhTjLKn+tO/FNK3gyzraFLS7ofx+XCBY0/7TuMH8U9tf/bc
	icM9W1VfS4Ue3Hffe9UDECvxjL6n/AdS5vABxWK7qV+38MezMFefSLXLezUHWlMCTu3mZIfzjdl4k
	uOPh4ArM3fFQR3e7O0S9HD8ZEHlnOx4GtpYghQhWkfrcDoFJSGq85te7XLKGXwSvHyhIpIGFquMZu
	1Ge2Luv4OpllOdBilsoZ2kP5vXPELMvS2JCd1TwCj4k3brTaQ3ET7K/6IpsIUWrFmPlZYmzfQ+aVz
	SGrfQYwlGKnG1suKelig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IPZ-0005TA-SY; Mon, 24 Feb 2020 18:24:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IP9-0005Rj-4j
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:24:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id e8so11576775wrm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JRxfwTIy/8+3jEzlkFDZdgky1C85KqEMpExdkb37WLo=;
 b=s25B8T+S35H/O6yszlE4ht/8dnZTVbVI45eoc18FEdUcuiqMOkNv2En79g5o74Mjb1
 zO0yPt9INl3chhwisC9rzUkdJf0KZaX+EEaOzn4at8814D7OV6Ve3Y/q4pwkE9wi4gYu
 4NYIQP85Zbbc1PlNfDZfjeA3U8wAvoenL2JO0jnQMn9vhAAuMTLgi9jQn9Q1AdYeuJJU
 BkB5JJMJxdDXUmmSYzWum50ng/h3NEbyy9CZzm/kqZ1bBayTgnMnxX3UOetLLAqiANAe
 ytqloaU+0oK0O/ROB9DQ4hPFo9/4wTvVQGYWlX4dBA8x+YHwhPudv6KQaaVQDMvhpCtT
 SQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JRxfwTIy/8+3jEzlkFDZdgky1C85KqEMpExdkb37WLo=;
 b=X8fCSz20Ap5EDsfgrNgVtrO2xdALixPZxW/rvNll/J5+trRf+IBNoHkShF9GfzITf1
 O8Dovyz7Z2dzwyoh+XLQwtdQlNKZ5+neQa5XRpwhLoKVtNeLifPg084xOHHpEcZqXvxm
 bo0ChWlLvdnnVi4IzshrMnBkcVtZK3o95Nv+w3RT7cwX5Y5STiMQv32IJEX3MtZljiVg
 TGdiSZZm0d7rfHBE0uFvEgjYdRBxswRiyo0nOHkpA8aPTCf4Fqc1kIn/2YG0N2xQGFO8
 NcfZgJM1N7r7JAH2ZYj/Kem/wsIpkwASgY1DlWRZY9g2f9Iwdmi1YFmp0HtDdPmVDQVX
 vUIA==
X-Gm-Message-State: APjAAAWjQ5PZJdt/DwBcvMqkxv5d6AfIvjAQLCDrEUt/0dfqFTRSr/tL
 BhW+M6FEV9ndzZYqYYDe9VUjjS2YC74=
X-Google-Smtp-Source: APXvYqzE3blpq1LSjWRjclFKCyKwQ41mykQ2DJWxVVDjuNwoKAu6osDlQgygC/xn0dF39ObvsiZRIA==
X-Received: by 2002:adf:fec4:: with SMTP id q4mr9813022wrs.368.1582568669522; 
 Mon, 24 Feb 2020 10:24:29 -0800 (PST)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 10:24:29 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
Subject: [PATCH v4 00/26] iommu: Shared Virtual Addressing and SMMUv3 support
Date: Mon, 24 Feb 2020 19:23:35 +0100
Message-Id: <20200224182401.353359-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_102431_186988_96112605 
X-CRM114-Status: GOOD (  13.51  )
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
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 robh+dt@kernel.org, yi.l.liu@intel.com, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, christian.koenig@amd.com,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Shared Virtual Addressing (SVA) allows to share process page tables with
devices using the IOMMU. Add a generic implementation of the IOMMU SVA
API, and add support in the Arm SMMUv3 driver.

Previous versions of this patchset were sent over a year ago [1][2] but
we've made a lot of progress since then:

* ATS support for SMMUv3 was merged in v5.2.
* The bind() and fault reporting APIs have been merged in v5.3.
* IOASID were added in v5.5.
* SMMUv3 PASID was added in v5.6, with some pending for v5.7.

* The first user of the bind() API will be merged in v5.7 [3]. The zip
  accelerator is also the first piece of hardware that I've been able to
  use for testing (previous versions were developed with software models)
  and I now have tools for evaluating SVA performance. Unfortunately I
  still don't have hardware that supports ATS and PRI; the zip accelerator
  uses stall.

These are the remaining changes for SVA support in SMMUv3. Since v3 [1]
I fixed countless bugs and - I think - addressed everyone's comments.
Thanks to recent MMU notifier rework, iommu-sva.c is a lot more
straightforward. I'm still unhappy with the complicated locking in the
SMMUv3 driver resulting from patch 12 (Seize private ASID), but I
haven't found anything better.

Please find all SVA patches on branches sva/current and sva/zip-devel at
https://jpbrucker.net/git/linux

[1] https://lore.kernel.org/linux-iommu/20180920170046.20154-1-jean-philippe.brucker@arm.com/
[2] https://lore.kernel.org/linux-iommu/20180511190641.23008-1-jean-philippe.brucker@arm.com/
[3] https://lore.kernel.org/linux-iommu/1581407665-13504-1-git-send-email-zhangfei.gao@linaro.org/

Jean-Philippe Brucker (26):
  mm/mmu_notifiers: pass private data down to alloc_notifier()
  iommu/sva: Manage process address spaces
  iommu: Add a page fault handler
  iommu/sva: Search mm by PASID
  iommu/iopf: Handle mm faults
  iommu/sva: Register page fault handler
  arm64: mm: Pin down ASIDs for sharing mm with devices
  iommu/io-pgtable-arm: Move some definitions to a header
  iommu/arm-smmu-v3: Manage ASIDs with xarray
  arm64: cpufeature: Export symbol read_sanitised_ftr_reg()
  iommu/arm-smmu-v3: Share process page tables
  iommu/arm-smmu-v3: Seize private ASID
  iommu/arm-smmu-v3: Add support for VHE
  iommu/arm-smmu-v3: Enable broadcast TLB maintenance
  iommu/arm-smmu-v3: Add SVA feature checking
  iommu/arm-smmu-v3: Add dev_to_master() helper
  iommu/arm-smmu-v3: Implement mm operations
  iommu/arm-smmu-v3: Hook up ATC invalidation to mm ops
  iommu/arm-smmu-v3: Add support for Hardware Translation Table Update
  iommu/arm-smmu-v3: Maintain a SID->device structure
  iommu/arm-smmu-v3: Ratelimit event dump
  dt-bindings: document stall property for IOMMU masters
  iommu/arm-smmu-v3: Add stall support for platform devices
  PCI/ATS: Add PRI stubs
  PCI/ATS: Export symbols of PRI functions
  iommu/arm-smmu-v3: Add support for PRI

 .../devicetree/bindings/iommu/iommu.txt       |   18 +
 arch/arm64/include/asm/mmu.h                  |    1 +
 arch/arm64/include/asm/mmu_context.h          |   11 +-
 arch/arm64/kernel/cpufeature.c                |    1 +
 arch/arm64/mm/context.c                       |  103 +-
 drivers/iommu/Kconfig                         |   13 +
 drivers/iommu/Makefile                        |    2 +
 drivers/iommu/arm-smmu-v3.c                   | 1354 +++++++++++++++--
 drivers/iommu/io-pgfault.c                    |  533 +++++++
 drivers/iommu/io-pgtable-arm.c                |   27 +-
 drivers/iommu/io-pgtable-arm.h                |   30 +
 drivers/iommu/iommu-sva.c                     |  596 ++++++++
 drivers/iommu/iommu-sva.h                     |   64 +
 drivers/iommu/iommu.c                         |    1 +
 drivers/iommu/of_iommu.c                      |    5 +-
 drivers/misc/sgi-gru/grutlbpurge.c            |    4 +-
 drivers/pci/ats.c                             |    4 +
 include/linux/iommu.h                         |   73 +
 include/linux/mmu_notifier.h                  |   10 +-
 include/linux/pci-ats.h                       |    8 +
 mm/mmu_notifier.c                             |    6 +-
 21 files changed, 2699 insertions(+), 165 deletions(-)
 create mode 100644 drivers/iommu/io-pgfault.c
 create mode 100644 drivers/iommu/io-pgtable-arm.h
 create mode 100644 drivers/iommu/iommu-sva.c
 create mode 100644 drivers/iommu/iommu-sva.h

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
