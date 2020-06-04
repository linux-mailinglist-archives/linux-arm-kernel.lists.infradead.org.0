Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C371EEE69
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 01:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NO2RpYM5isjf+wk0PfDtkk9Rmm3eIASxFxEcqQV/mV0=; b=T/NlmKVAq3QIfz
	Y7eI+yWCpR66WkGyx6T9GCZV/yJvSxFPpcOt62gebAbIHRuvTtqjdJuvlCpFHcKXcQMayPthE3CAd
	r+mHIEsyayoAbbToKEmQq8ZRFs/gW4qyWvBjrxJ34d8N4a39YOl3g2OxakWoZ5RCAO+OUL+/3Qsu7
	pen/Fj07HARQHrBw88rpeJP+BNj873TcDq5eOxRxQ6EmZJqFLwVzOc48viUaExb039leeU06IBjPL
	m9Z2FndMt3cdfTTRmKdeveZ7VoWpMlCVYlmPfR0AhqXB/uHzaNhgSQ2xEruA1brUAf9iY9Uob7EEY
	2qK6XlnDHNtoEyuhqB7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgzX6-0002M7-2e; Thu, 04 Jun 2020 23:44:24 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgzWw-0002LL-AF
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 23:44:15 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ed986f50001>; Thu, 04 Jun 2020 16:42:45 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 04 Jun 2020 16:44:13 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 04 Jun 2020 16:44:13 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 4 Jun
 2020 23:44:10 +0000
Received: from rnnvemgw01.nvidia.com (10.128.109.123) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Thu, 4 Jun 2020 23:44:10 +0000
Received: from vdumpa-ubuntu.nvidia.com (Not Verified[172.17.173.140]) by
 rnnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5ed987490002>; Thu, 04 Jun 2020 16:44:09 -0700
From: Krishna Reddy <vdumpa@nvidia.com>
To: 
Subject: [PATCH v6 0/4] Nvidia Arm SMMUv2 Implementation
Date: Thu, 4 Jun 2020 16:44:10 -0700
Message-ID: <20200604234414.21912-1-vdumpa@nvidia.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1591314165; bh=1K8sRZ1SkGwFAEYz4zuF0KeLx+srb1vTBWbsBByL7NU=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 MIME-Version:X-NVConfidentiality:Content-Transfer-Encoding:
 Content-Type;
 b=oytOPy++C/iIi0x+cljApZvalwFLriaghJwWsQvzfzAyj36OH6gqpSXNIYgVVdoV+
 EDAP/UyTbZoucW0N/JY0p+GVMvdrcF4WDOwDoh1x5ILJikGQw4wyCc+hSNaMj34TSn
 UsNlmgzIgWtCSVOWGObiPN8vNozhazOYNwPkYFTAa9IiFBKZPsY9bV/rGnscXskrQR
 5batsIh428y1Dj95B8N9NsHIWy6gVUa1jg596iXwoalDdgB5zQSbHc0aDdu4ORG9wK
 7Cavcip58+BgYeqOafr4iPKvEeH2OeEA6Mh75C27kpKKALVcC3XNOJH/PjMAzPCdoZ
 bkkJoj6nFmWcA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_164414_365691_077F7AE0 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes in v6:
Restricted the patch set to driver specific patches.
Fixed the cast warning reported by kbuild test robot.
Rebased on git://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git next

v5 - https://lkml.org/lkml/2020/5/21/1114
v4 - https://lkml.org/lkml/2019/10/30/1054
v3 - https://lkml.org/lkml/2019/10/18/1601
v2 - https://lkml.org/lkml/2019/9/2/980
v1 - https://lkml.org/lkml/2019/8/29/1588

Krishna Reddy (4):
  iommu/arm-smmu: add NVIDIA implementation for dual ARM MMU-500 usage
  dt-bindings: arm-smmu: Add binding for Tegra194 SMMU
  iommu/arm-smmu: Add global/context fault implementation hooks
  iommu/arm-smmu-nvidia: fix the warning reported by kbuild test robot

 .../devicetree/bindings/iommu/arm,smmu.yaml   |   5 +
 MAINTAINERS                                   |   2 +
 drivers/iommu/Makefile                        |   2 +-
 drivers/iommu/arm-smmu-impl.c                 |   3 +
 drivers/iommu/arm-smmu-nvidia.c               | 261 ++++++++++++++++++
 drivers/iommu/arm-smmu.c                      |  11 +-
 drivers/iommu/arm-smmu.h                      |   4 +
 7 files changed, 285 insertions(+), 3 deletions(-)
 create mode 100644 drivers/iommu/arm-smmu-nvidia.c


base-commit: 431275afdc7155415254aef4bd3816a1b8a2ead0
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
