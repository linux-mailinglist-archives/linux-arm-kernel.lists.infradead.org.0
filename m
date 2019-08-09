Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FB1880D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oIhChj4B+szwAH3UngOaEsx0heVvIfPJLTWm6lBCd/w=; b=KNHRzKtyhLfrIS
	oD7C8u/ZvvDRPMWN6uDo+0IVF5TqwWP5SYNOi1qEyKA2vjkEzMopQodzMS5vd30hXxP2adegEfYGW
	GdStVIDR2OwiRiafhr0raHJyHWl1j8g1Okuld8ecwZSzSJcabU3xqhs4VoA9YMrbsfwcvHQoxig3b
	zOpFL2KWgUMwtM3jFDeCfxrRZRwiIswRQIeD4RKr98CwX0w28FKEXSq8+xvNzrIhgqs/9kchHjBhU
	2hHC6IcEjLMzZ5t8an2EqDQdyEty0ZoRj1uiYNsu/RgNWst0BkMTH8Q6I9r6S8F8OatrovhLVqd9+
	p/J7jkcuRq/SV7dTLcsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8NN-00013H-Ju; Fri, 09 Aug 2019 17:08:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8ND-000121-Ul
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:08:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1093015A2;
 Fri,  9 Aug 2019 10:08:13 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CAA4F3F575;
 Fri,  9 Aug 2019 10:08:11 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 00/15] Arm SMMU refactoring
Date: Fri,  9 Aug 2019 18:07:37 +0100
Message-Id: <cover.1565369764.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100816_038577_B55B770D 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 gregory.clement@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

This is a big refactoring of arm-smmu in order to help cope with the
various divergent implementation details currently flying around. So
far we've been accruing various quirks and errata workarounds within
the main flow of the driver, but given that it's written to an
architecture rather than any particular hardware implementation, after
a point these start to become increasingly invasive and potentially
conflict with each other.

These patches clean up the existing quirks handled by the driver to
lay a foundation on which we can continue to add more in a maintainable
fashion. The idea is that major vendor customisations can then be kept
in arm-smmu-<vendor>.c implementation files out of each others' way.

A branch is available at:

  git://linux-arm.org/linux-rm  iommu/smmu-impl

which I'll probably keep tweaking until I'm happy with the names of
things; I just didn't want to delay this initial posting any lomnger.

Robin.


Robin Murphy (15):
  iommu/arm-smmu: Convert GR0 registers to bitfields
  iommu/arm-smmu: Convert GR1 registers to bitfields
  iommu/arm-smmu: Convert context bank registers to bitfields
  iommu/arm-smmu: Rework cb_base handling
  iommu/arm-smmu: Split arm_smmu_tlb_inv_range_nosync()
  iommu/arm-smmu: Get rid of weird "atomic" write
  iommu/arm-smmu: Abstract GR1 accesses
  iommu/arm-smmu: Abstract context bank accesses
  iommu/arm-smmu: Abstract GR0 accesses
  iommu/arm-smmu: Rename arm-smmu-regs.h
  iommu/arm-smmu: Add implementation infrastructure
  iommu/arm-smmu: Move Secure access quirk to implementation
  iommu/arm-smmu: Add configuration implementation hook
  iommu/arm-smmu: Add reset implementation hook
  iommu/arm-smmu: Add context init implementation hook

 MAINTAINERS                   |   3 +-
 drivers/iommu/Makefile        |   2 +-
 drivers/iommu/arm-smmu-impl.c | 165 ++++++++++
 drivers/iommu/arm-smmu-regs.h | 210 -------------
 drivers/iommu/arm-smmu.c      | 570 +++++++++++-----------------------
 drivers/iommu/arm-smmu.h      | 386 +++++++++++++++++++++++
 drivers/iommu/qcom_iommu.c    |  15 +-
 7 files changed, 743 insertions(+), 608 deletions(-)
 create mode 100644 drivers/iommu/arm-smmu-impl.c
 delete mode 100644 drivers/iommu/arm-smmu-regs.h
 create mode 100644 drivers/iommu/arm-smmu.h

-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
