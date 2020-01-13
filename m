Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0142139880
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:14:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BA73+piKowN8jcvR/SVkANeoP+ffIMzk2LQPeX52OGY=; b=IhMtbZ2LiE3lj3
	tZVhYVtISNW7xqXrvq/yFhex1ODEZ7ouEncAn9gzS37CVgPCT/UqsR7EeLZeqeWFpHhV0pKoHIPJ8
	FD8vBkSbTbK2jcb0BLegtiKO8fj2qtGEenQNgJEOIVO1Gkhgyx5LGihwieagROjYrzNUb+L44ktjO
	yhwJPR/jpyhAD9+SroqcmgUPExJHpi3E75TM6iKBTQODwO+PgLLkVG207ntqD16MAQWkt07yKZuzN
	tg+VXcPqyqxKxrJkcmj57piFsOMO9w23W1GFjoQnQ29D6FN1N38ayRWw+W5niCgg4/l/MzpToV3kW
	/TlIiG/U17Y3X5GjegqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4EP-00064F-1T; Mon, 13 Jan 2020 18:14:29 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4EG-00063J-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:14:22 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e1cb3450003>; Mon, 13 Jan 2020 10:13:25 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 13 Jan 2020 10:14:19 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 13 Jan 2020 10:14:19 -0800
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 13 Jan
 2020 18:14:19 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Mon, 13 Jan 2020 18:14:18 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.48]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e1cb3760001>; Mon, 13 Jan 2020 10:14:18 -0800
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V3 0/5] Add support for PCIe endpoint mode in Tegra194
Date: Mon, 13 Jan 2020 23:44:06 +0530
Message-ID: <20200113181411.32743-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1578939205; bh=ukCPDfBJa97Io32ATEdGsPQLo4kSyt3NvEM1waEU2A0=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=JeN7eDjmvZEFDBfpvZ0RK/dOgo0664heFWC872xxJrwaHfr3M8qD+jIelKvMjm1hG
 sXkfRISI7h5pfcUFshGKYtJzPWN6Ccu+ig/B8zt/nBQ8WCUjatsEdL1uiL7pYXuO5Q
 LTjZpySBKIYK56GKKJH2NnnPc/kGIBDEGJ7OwLX8kCg71FLgBgELTWRk4Q/W6nyt4K
 r9i+zXUWn9EEhyZe8f/7B+ubPaSzTNAlpioof2NVW0UblEbwILre9IYQrERhufTvZa
 8Ugp7XYBOZB0PZHMGT5Jholn9NTAXD82cmO60ycnO1M2XtUsSjH/0oa3dr8JpyAYRG
 enf/kxX4BIFjg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_101420_961111_1CAB530F 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
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

V3:
* Re-ordered patches in the series to make the driver change as the last patch
* Took care of Thierry's review comments

V2:
* Addressed Thierry & Bjorn's review comments
* Added EP mode specific binding documentation to already existing binding documentation file
* Removed patch that enables GPIO controller nodes explicitly as they are enabled already

Vidya Sagar (5):
  soc/tegra: bpmp: Update ABI header
  dt-bindings: PCI: tegra: Add DT support for PCIe EP nodes in Tegra194
  arm64: tegra: Add PCIe endpoint controllers nodes for Tegra194
  arm64: tegra: Add support for PCIe endpoint mode in P2972-0000
    platform
  PCI: tegra: Add support for PCIe endpoint mode in Tegra194

 .../bindings/pci/nvidia,tegra194-pcie.txt     | 125 ++-
 .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  18 +
 arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  99 +++
 drivers/pci/controller/dwc/Kconfig            |  30 +-
 drivers/pci/controller/dwc/pcie-tegra194.c    | 770 +++++++++++++++++-
 include/soc/tegra/bpmp-abi.h                  |  10 +-
 6 files changed, 1007 insertions(+), 45 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
