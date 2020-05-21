Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75C61DDB02
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 01:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+c/p3PU/jDUCv1o493mEKrXmkPzIx8SBMDRTaoYLFBg=; b=VkL5m71XUWLZ3+
	Az3JDQJJxdWjruk3srlLQBNEyAU7eV7bnRDdl7PaAGmtTIB0do0RlmClMTvWlWJ4pdor6rHsCAxTG
	7eVqviYwVp9bkBBHbsY48d8GJf8dNBnClEH8ubNdlVo2vH+kBl8iMFxwzPEc1+FiPufUiQ5NhUo2t
	8vpyRGFSHKiEah21dMotQp4HpE42si6oQFbzPxTLOgJ8j5VUrfR4pQjKofg9Wq0AWZ6ms0sKL4Nlk
	HlvSriWY3uatURlxJcSuAa1wAysU2BJ/s34Xl/YL0K80qQE7Hsf5FZbpw4OWPj5h7GJ86W1sQ2Vd/
	vYvjOK431BzrGdM6eaeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbufM-0000gR-LY; Thu, 21 May 2020 23:31:56 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbues-0000T5-2Q
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 23:31:27 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ec70efc0000>; Thu, 21 May 2020 16:30:04 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 21 May 2020 16:31:23 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 21 May 2020 16:31:23 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 21 May
 2020 23:31:23 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Thu, 21 May 2020 23:31:23 +0000
Received: from vdumpa-ubuntu.nvidia.com (Not Verified[172.17.173.140]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5ec70f4b0000>; Thu, 21 May 2020 16:31:23 -0700
From: Krishna Reddy <vdumpa@nvidia.com>
To: 
Subject: [PATCH v5 0/5] Nvidia Arm SMMUv2 Implementation
Date: Thu, 21 May 2020 16:31:02 -0700
Message-ID: <20200521233107.11968-1-vdumpa@nvidia.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1590103804; bh=M6pyOSXeBOTReqc8kunREzZAoNiV34NpWkSM15LmbZE=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 MIME-Version:X-NVConfidentiality:Content-Transfer-Encoding:
 Content-Type;
 b=aKVeXdDGaA5yxJZ9pHolRgPOdSbkNSWg3kK+lUBbUZhQQ8Vb9s4KmPGN9/eDyh2pn
 fwDfQe0yzIv0NLTsZykdKRyWp7YXPKDD9rb2BCOeMz9ZQU95HlzqW4bBv4MjjCZQeY
 1AuoNyiplaMpTgMHcLGdmQIvZwp06S12ZAgkh7foMDbF0n+bKbFY049vuCdHxdDUiB
 Zm9ouLoxsGAurFj20nn9lIZ8ObBzDoZ115+7yTax6wXfbLZ9ooXQHifZuFA3OCdySY
 Rl4b0eFi+F6pYDD4heoETKWAe46D4SFwnqLowoCothFcJbF/1ZXSonGYkjp6ZaQQRr
 KB17wiPqbDPFg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_163126_121881_499C6C88 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: snikam@nvidia.com, mperttunen@nvidia.com, bhuntsman@nvidia.com,
 will@kernel.org, joro@8bytes.org, linux-kernel@vger.kernel.org,
 praithatha@nvidia.com, talho@nvidia.com, iommu@lists.linux-foundation.org,
 nicolinc@nvidia.com, linux-tegra@vger.kernel.org, yhsu@nvidia.com,
 treding@nvidia.com, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 bbiswas@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v5:
Rebased on top of git://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git next

v4 - https://lkml.org/lkml/2019/10/30/1054
v3 - https://lkml.org/lkml/2019/10/18/1601
v2 - https://lkml.org/lkml/2019/9/2/980
v1 - https://lkml.org/lkml/2019/8/29/1588

Krishna Reddy (5):
  iommu/arm-smmu: add NVIDIA implementation for dual ARM MMU-500 usage
  dt-bindings: arm-smmu: Add binding for Tegra194 SMMU
  iommu/arm-smmu: Add global/context fault implementation hooks
  arm64: tegra: Add DT node for T194 SMMU
  arm64: tegra: enable SMMU for SDHCI and EQOS on T194

 .../devicetree/bindings/iommu/arm,smmu.yaml   |   5 +
 MAINTAINERS                                   |   2 +
 arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  81 ++++++
 drivers/iommu/Makefile                        |   2 +-
 drivers/iommu/arm-smmu-impl.c                 |   3 +
 drivers/iommu/arm-smmu-nvidia.c               | 261 ++++++++++++++++++
 drivers/iommu/arm-smmu.c                      |  11 +-
 drivers/iommu/arm-smmu.h                      |   4 +
 8 files changed, 366 insertions(+), 3 deletions(-)
 create mode 100644 drivers/iommu/arm-smmu-nvidia.c


base-commit: 365f8d504da50feaebf826d180113529c9383670
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
