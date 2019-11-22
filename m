Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9756106B8D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uEX5iMT+ardzNb4ZnHo/iPb+hnPUi3vZHW0W8vKdsJ8=; b=u6adzfZxrJhqy3
	9JWmW2RTiMkes3i/ArZpzzjqpES36xRoA/uM7p9oFTyefzZRDYJdzF/bgTjxQBLDAgikKUp05mb0a
	5DC6CbCN9KEJlVWjT+vMk4MC5LRuYU9Tbi0sx/o3FdzxS1hTo1RR2XnpxDfA4AO0m1uYq8UEObz+Y
	ZAY56eHuDjRDuxhRim4ID7Q/PKFUWA4VroRIvAeIdqSw5/xLm6ceDHs4d3qE8K+16Swx7Fm2e0bxd
	Oq03s62kxnj2AsawoRvfcw0ItYjW9uBr+NFBVU2RW7dpsz6wdTUWKPcxrUCTczf0Ua/Rio3gow/rd
	t9jileQS+wx5CapEgtfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6RP-0007M9-IQ; Fri, 22 Nov 2019 10:45:31 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6RB-0007LF-KX
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:45:19 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5dd7bc350000>; Fri, 22 Nov 2019 02:45:09 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 22 Nov 2019 02:45:13 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 22 Nov 2019 02:45:13 -0800
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 22 Nov
 2019 10:45:13 +0000
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 22 Nov
 2019 10:45:12 +0000
Received: from rnnvemgw01.nvidia.com (10.128.109.123) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Fri, 22 Nov 2019 10:45:12 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.48]) by
 rnnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5dd7bc340001>; Fri, 22 Nov 2019 02:45:12 -0800
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH 0/6] Add support for PCIe endpoint mode in Tegra194
Date: Fri, 22 Nov 2019 16:14:59 +0530
Message-ID: <20191122104505.8986-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1574419509; bh=vATyB0+qpRWIt2ybVc4KqLiFa7LEkPRGlbViOEQbviw=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=KqQDAnmlYAl+sJswyU11Z4ld8H/PkEOizunUfmeq2krHgNHVIFw2ZffRQkM1Qq3gE
 rd6ibZCzjQLDwpiYVY8tNdiPvw4Ml5StGxLGXw0oGVScbC7N0IoVbbiEMLdBAiNRH2
 OZgUnAmh8imkitAomhGQkh7YqQeQlujCHxm6OdYAb7OUppy+k1brkmLJB1NphPBke1
 g06oQdCEdy/aOrxQTn39Yi/dwBP4uqkOZTmXmGptNI3RTyFqyxLTimSXpLjpq7RPZY
 7+8dAJ4s5cCun7COd99n0mEphqVZhOqJt45JAsbonDBQKOjCH75aNwC9i0z45Qc/kE
 OxaGzsow64WBQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024517_735141_2355CC73 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tegra194 has three (C0, C4 & C5) dual mode PCIe controllers that can operate
either in root port mode or in end point mode but only in one mode at a time.
Platform P2972-0000 supports enabling endpoint mode for C5 controller. This
patch series adds support for PCIe endpoint mode in both the driver as well as
in DT.
This patch series depends on the changes made for Synopsys DesignWare endpoint
mode subsystem that are currently under review
@ https://patchwork.kernel.org/project/linux-pci/list/?series=202211
which in turn depends on the patch made by Kishon
@ https://patchwork.kernel.org/patch/10975123/
which is also under review.

Vidya Sagar (6):
  soc/tegra: bpmp: Update ABI header
  dt-bindings: PCI: tegra: Add DT support for PCIe EP nodes in Tegra194
  PCI: tegra: Add support for PCIe endpoint mode in Tegra194
  arm64: tegra: Add PCIe endpoint controllers nodes for Tegra194
  arm64: tegra: Enable GPIO controllers nodes for P2972-0000 platform
  arm64: tegra: Add support for PCIe endpoint mode in P2972-0000
    platform

 .../bindings/pci/nvidia,tegra194-pcie-ep.txt  | 138 ++++
 .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  37 +
 arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  99 +++
 drivers/pci/controller/dwc/Kconfig            |  30 +-
 drivers/pci/controller/dwc/pcie-tegra194.c    | 751 +++++++++++++++++-
 include/soc/tegra/bpmp-abi.h                  |  10 +-
 6 files changed, 1048 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie-ep.txt

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
