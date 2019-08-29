Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D70A2A1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TwEcGuLc5+cS/mc8ofl9YLbWNjIz62UNl0LdFLx2uCs=; b=OATIBSrSjgvdPb
	x2izGoL+SeQzSPuMbo+Iza7tCQoiJ7jgChsFdah5H0KyTrpEuh3EO8dl10nVuxT2k33iCVTxc/p5E
	CfQjVVS+cgfbv5xEpBtnD5EO3PujD0y64TDFfzBR+0KFk8XgteYCfzxs6x++yi4qUklw9k7vYmKGF
	RQSeRYPOGWb88kgN+A78ddHuimpA3xp/5wvnpoE6xzYaqPQHTXUUxEz++4OTL1j8h3qQqB4/zhKmt
	ZCoI0sCKXnNgXzpxCC2dajEgzPxYVcFn01BvOOijWovs17+R5LjEfxRH7BeEGT4eKmhmbOsK+JQao
	ZaTfgiFa7GpWifDC2YJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TCI-0001cV-9t; Thu, 29 Aug 2019 22:47:18 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TAm-0000OG-Pb
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:45:48 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d6855980000>; Thu, 29 Aug 2019 15:45:44 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 29 Aug 2019 15:45:42 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 29 Aug 2019 15:45:42 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 29 Aug
 2019 22:45:42 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Thu, 29 Aug 2019 22:45:42 +0000
Received: from vdumpa-ubuntu.nvidia.com (Not Verified[172.17.173.140]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d6855960001>; Thu, 29 Aug 2019 15:45:42 -0700
From: Krishna Reddy <vdumpa@nvidia.com>
To: 
Subject: [PATCH 0/7] Nvidia Arm SMMUv2 Implementation
Date: Thu, 29 Aug 2019 15:47:00 -0700
Message-ID: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
X-Mailer: git-send-email 2.1.4
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567118744; bh=XViQuyFPXRUGjvQSy38KjNjazgSU9GgkmEMvuiC4IJI=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=QpALE+evxkvz2t8B5iHVtf2dNEUPUWPvjULE+doad73wTU+7rj0j6O1bdNpVgq578
 1OBqgXS7PT0sQOHrrgIRx91SwEbqWNhDLPXLNxmmsZkZlTew9lHA6PnPoFunH0IP6i
 WzyjNcXU1WX7j0FiYtib2AjWSLhiWktGBh+jaIWE9bdZfsfnOSumlSntbGOE3QZbQu
 eJDuY3xzzQ7aj3Nb95YTQVgC8wLfW5X5ahSocRZGg+24yAVWrAhqnB1t4N7S50yTmG
 ywFwt6FKf7J4VgLBLFSQsq0n60zLBCYYwgYfgA4cHnqWmMpvguvVFuZGojRkOYs2qC
 gXhdlXukqQbCQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154545_214337_E835B636 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: snikam@nvidia.com, thomasz@nvidia.com, jtukkinen@nvidia.com,
 mperttunen@nvidia.com, praithatha@nvidia.com, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, talho@nvidia.com, olof@lixom.net,
 yhsu@nvidia.com, linux-tegra@vger.kernel.org, treding@nvidia.com,
 avanbrunt@nvidia.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,
Nvidia Arm SMMUv2 implementation has two ARM SMMU(MMU-500) instances
that are used together for SMMU translations. The IOVA accesses from
HW devices are interleaved across these two SMMU instances and need
to be programmed identical except during tlb sync and fault handling.

This patch set adds Nvidia Arm SMMUv2 Implementation on top of ARM SMMU
driver to handle Nvidia specific implementation. It is also adding
hooks for tlb sync and fault handling to allow vendor specific
implementation for the same.

Please review the patch set and provide the feedback.

This patch set is based on the following branch as it is dependent on the
Arm SMMU Refactor changes from Robin Murphy that are present in this branch.

https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git for-joerg/arm-smmu/updates


Krishna Reddy (7):
  iommu/arm-smmu: add Nvidia SMMUv2 implementation
  dt-bindings: arm-smmu: Add binding for nvidia,smmu-v2
  iommu/arm-smmu: Add tlb_sync implementation hook
  iommu/arm-smmu: Add global/context fault implementation hooks
  arm64: tegra: Add Memory controller DT node on T194
  arm64: tegra: Add DT node for T194 SMMU
  arm64: tegra: enable SMMU for SDHCI and EQOS

 .../devicetree/bindings/iommu/arm,smmu.txt         |   1 +
 MAINTAINERS                                        |   2 +
 arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi     |   4 +
 arch/arm64/boot/dts/nvidia/tegra194.dtsi           |  86 +++++++
 drivers/iommu/Makefile                             |   2 +-
 drivers/iommu/arm-smmu-impl.c                      |   2 +
 drivers/iommu/arm-smmu-nvidia.c                    | 256 +++++++++++++++++++++
 drivers/iommu/arm-smmu.c                           |  16 +-
 drivers/iommu/arm-smmu.h                           |  10 +
 9 files changed, 375 insertions(+), 4 deletions(-)
 create mode 100644 drivers/iommu/arm-smmu-nvidia.c

-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
