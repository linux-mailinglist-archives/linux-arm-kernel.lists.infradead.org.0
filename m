Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3B3EA811
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 01:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t1qyuqKbfEUx4pTf0Rh95AQ7RzWTOng1CCvmxNhfsew=; b=WsHXknq/1xNArB
	21Oglo8dbUZmN161scA0WS/5aE6UOfv8D+JrQf1WMs0fbZ9RBGFV+jf6Od52EYbEfSJ5zdB3EG9Hn
	OMJM17G3ia1rM8LdOc7BwEGolwLj4gTyrbH+a6AIShvu7m98gwUn8FkMiv8KroGKNHh0qTx2xgA6p
	XTc51hyi4qNnxclgnibqqGRgxN/MrEJ3zCU2ukRZpFSIMUv5Gq+eXTzo5hg7gR8TgVdkJ8a8VJwB2
	ij1Bvs9lKdNnwZE7LKQYk7AlTTLpUbd3ZLDTYkr9lRxoe25NWqQ3TeAjbXKp+AZxX/DcvsoIpg2uO
	6t1kGuA0M+gFP89HzGRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPy0q-00088N-2M; Thu, 31 Oct 2019 00:08:28 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPxzx-0007XA-IG
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 00:07:35 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5dba25c80000>; Wed, 30 Oct 2019 17:07:36 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 30 Oct 2019 17:07:30 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 30 Oct 2019 17:07:30 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 31 Oct
 2019 00:07:29 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Thu, 31 Oct 2019 00:07:29 +0000
Received: from vdumpa-ubuntu.nvidia.com (Not Verified[172.17.173.140]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5dba25c10000>; Wed, 30 Oct 2019 17:07:29 -0700
From: Krishna Reddy <vdumpa@nvidia.com>
To: 
Subject: [PATCH v4 0/6] Nvidia Arm SMMUv2 Implementation
Date: Wed, 30 Oct 2019 17:07:11 -0700
Message-ID: <1572480437-28449-1-git-send-email-vdumpa@nvidia.com>
X-Mailer: git-send-email 2.7.4
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1572480456; bh=twA38AxT+vglESgZl57xrwZUdLq1unS/ukF862ESTCs=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=CXOTXa9hDqtYTPrMUbv9IfoOpO1/9f9EMLBpdpoSn/wVbLzM2MUmiJbuX19RhEED5
 cRqL83gefTkE5qRcLQqUj3AeUxKVImFw6srlsXgK/TD21H9rHkLtByRtQgneUKgp/j
 pO7ItNbHh9tNWRuWYejbSAmpotFxxVnf0SlPz43D6W3/dlONflBdcVZCB8x5+sNiaE
 BuUki5rEoQxXfhU0sf22IksBlRcasT+hvRYTzQ2v0UIF4QMGOKSvCPfCNKvyNgBMgG
 6osi9xp+E0Q/pGpH3D3ke0shqbjzBCmE2HBGmZTq1pWp4KJxj0u2UuSXbLoPy7yUZV
 VvoYeDvWLT4Qg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_170733_611376_7E19A7C3 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: snikam@nvidia.com, jtukkinen@nvidia.com, mperttunen@nvidia.com,
 will@kernel.org, joro@8bytes.org, linux-kernel@vger.kernel.org,
 praithatha@nvidia.com, talho@nvidia.com, olof@lixom.net,
 iommu@lists.linux-foundation.org, nicolinc@nvidia.com,
 linux-tegra@vger.kernel.org, yhsu@nvidia.com, treding@nvidia.com,
 robin.murphy@arm.com, avanbrunt@nvidia.com,
 linux-arm-kernel@lists.infradead.org, bbiswas@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v4:
Rebased on top of https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/ for-joerg/arm-smmu/updates.
Updated arm-smmu-nvidia.c to use the tlb_sync implementation hook.
Dropped patch that updates arm_smmu_flush_ops for override as it is no longer necessary.

v3 - https://lkml.org/lkml/2019/10/18/1601
v2 - https://lkml.org/lkml/2019/9/2/980
v1 - https://lkml.org/lkml/2019/8/29/1588

Krishna Reddy (6):
  iommu/arm-smmu: add NVIDIA implementation for dual ARM MMU-500 usage
  dt-bindings: arm-smmu: Add binding for Tegra194 SMMU
  iommu/arm-smmu: Add global/context fault implementation hooks
  arm64: tegra: Add Memory controller DT node on T194
  arm64: tegra: Add DT node for T194 SMMU
  arm64: tegra: enable SMMU for SDHCI and EQOS on T194

 .../devicetree/bindings/iommu/arm,smmu.txt         |   4 +
 MAINTAINERS                                        |   2 +
 arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi     |   4 +
 arch/arm64/boot/dts/nvidia/tegra194.dtsi           |  88 +++++++
 drivers/iommu/Makefile                             |   2 +-
 drivers/iommu/arm-smmu-impl.c                      |   3 +
 drivers/iommu/arm-smmu-nvidia.c                    | 261 +++++++++++++++++++++
 drivers/iommu/arm-smmu.c                           |  11 +-
 drivers/iommu/arm-smmu.h                           |   4 +
 9 files changed, 376 insertions(+), 3 deletions(-)
 create mode 100644 drivers/iommu/arm-smmu-nvidia.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
