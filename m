Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 071701A3223
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 11:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KSu0k8fSLH33QpEhvlrJZSf4e4sp3HQLD8XeGr/9uqE=; b=ryDJjbSLBGHuxi
	Hd03lWL38qC1jsUBL4zaHOoE8KES8EbQLNp8yD7UL5maWnccKnnQZS2mR90CvSgtMDLfCMHiKgyVY
	/CSa45kZZr+fn9UeLtRQ3PW+TkrOpyX4laL/blXlYfmUmahIx2+NYBmVRb9cvz4uIpXokZI5ZY48n
	MjJ5duD706q7BVbqrgnKfwwtqUFrVyFp0pnfPDgIw4VmI5Hj/vfc5LJCZT1wrwzcx5C/6EmEN+pCg
	ggvhg/xszQmZOfl4jyMabgZs0RNQMtDoo/GYWwuGe91igapCQeJ2J4uIP/IXlx/uTSsHrf6jhucJ2
	Fk7KqTYt1ohQ+0vfUf1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMTuf-0002F5-24; Thu, 09 Apr 2020 09:55:57 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMTuY-0002EV-96
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 09:55:51 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e8ef0ee0000>; Thu, 09 Apr 2020 02:54:54 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Thu, 09 Apr 2020 02:55:47 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Thu, 09 Apr 2020 02:55:47 -0700
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 9 Apr
 2020 09:55:47 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Thu, 9 Apr 2020 09:55:47 +0000
Received: from moonraker.nvidia.com (Not Verified[10.26.73.58]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e8ef1210001>; Thu, 09 Apr 2020 02:55:47 -0700
From: Jon Hunter <jonathanh@nvidia.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Vidya Sagar <vidyas@nvidia.com>
Subject: [PATCH] arm64: defconfig: Re-enable Tegra PCIe Host driver
Date: Thu, 9 Apr 2020 10:55:30 +0100
Message-ID: <20200409095530.12004-1-jonathanh@nvidia.com>
X-Mailer: git-send-email 2.17.1
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1586426094; bh=LC+xdxWnqrjeSuG6FbiFd91p56RmdIaWaTsvY+88hs0=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=d+NFzngmRDCjLzZ/7jgwMohEtEFfkoWEYCBhmwabkTUgkH4OZY90wDi4yXlpdmc9w
 00tJIGVHH40hDZKXDwtlYmjsGk+3j+KaJFx90W13XdqW3wRTuCAzD1zprXKMTyFAOK
 2PAyY0JfiuUbkx49MWMKtvEV7ajugZRggGUenD0e6MCfR24Qj15nPpE8NJXYqLpYg+
 U7vSsKs2oSjz/sYFfYrUQOEIKvb0nQdIsGocOk+IhiS7bX+cwqSfw9zwvb1mqYKjwY
 5uQTMY8PVXi8IITDDGpdmxo9fmrwMoJw/6A3ogNJCs9i9Yri3eOsW8aVb7f5wyNzc9
 3iHJK/qyCGQ+A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_025550_332852_37AF2CFC 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-tegra@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit c57247f940e8 ("PCI: tegra: Add support for PCIe endpoint mode in
Tegra194") updated the Tegra PCIe Kconfig symbol for building the Tegra
PCIe host controller driver. Following this change the Tegra PCIe host
controller driver is no longer built by default and so no works without
updating the arm64 defconfig. Fix this by updating the Kconfig symbol
in the arm64 for the Tegra PCIe host controller so that again it is
built by default.

Fixes: c57247f940e8 ("PCI: tegra: Add support for PCIe endpoint mode in Tegra194")

Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
---
Please note that this is needed as a fix for v5.7.

 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 24e534d85045..266ad7b5ce91 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -208,7 +208,7 @@ CONFIG_PCIE_QCOM=y
 CONFIG_PCIE_ARMADA_8K=y
 CONFIG_PCIE_KIRIN=y
 CONFIG_PCIE_HISI_STB=y
-CONFIG_PCIE_TEGRA194=m
+CONFIG_PCIE_TEGRA194_HOST=m
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_FW_LOADER_USER_HELPER=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
