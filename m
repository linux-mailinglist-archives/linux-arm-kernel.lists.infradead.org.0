Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6503D12F860
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 13:44:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WpzHcIu3p9BRoPmjeHkti1Q5v6noBxgmpU28lOJD5x0=; b=TMNBMq2hGltbkf
	lDsMY6ZUUU4U620NOVpvGIvibuQ98YEnKinl7HmpjNmYNN9ryIAkmchQKVrs+itbSuvlX0sGAsyRy
	X5ZKDTIDfG2gaWmkekHbakhGfI2U4Vr88RbsZdURS5bQzVKsSLtLN8PU2v4dZ9Wbx/HNKn8CdWnsA
	siSRlv2C13wBWnrp+QAa/oab0vSouYsqXOv1m5pIlMVYuySyWM9tgRwnTs0tgytssBtoIHBAgVrQV
	/+L+EqCV2xykq7TFkUKxk35bBpcECys0ajz87QztNZm8ikmB8sxlOLiETQeJgvJQm/M1GhDrIFUhf
	JOD95DI5w+z6tiyaV67Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inMJT-0002od-PA; Fri, 03 Jan 2020 12:44:23 +0000
Received: from hqnvemgate26.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inMJN-0002nn-IY
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 12:44:19 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e0f370d0000>; Fri, 03 Jan 2020 04:43:57 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 03 Jan 2020 04:44:12 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 03 Jan 2020 04:44:12 -0800
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 3 Jan
 2020 12:44:12 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Fri, 3 Jan 2020 12:44:12 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.48]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e0f37180001>; Fri, 03 Jan 2020 04:44:11 -0800
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V2 0/5] Add support for PCIe endpoint mode in Tegra194
Date: Fri, 3 Jan 2020 18:13:59 +0530
Message-ID: <20200103124404.20662-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1578055437; bh=av4maRAzw0Y30U4hvGLMR0lUrFrmERz6SpyIVwF8MaU=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=kOnlSzPmwzAb6pUqs88wdbOW2ZUWJV4ffBY0mTwnSRoFzNfI92gDKcMp0aGCFFESp
 +ijP5z3Zo2uIew/Z9CzVcqe1X+PbgCNhk7E79XQmb14L9ftLnySjW08XIxEZQJExGw
 B09zwgUHj6fxtAbmgqRK8lS4baD3z88Uu3bUuZJdBfyScXIdDgG5FB+8kFVBItEam/
 hpk9//f8C0+5sQytRKzY2IBEhVfho0VLJZDH93Le7Un8TyDgftAlq6UYebmtPfwaBU
 nk84UsVsW783Lmv11vSjGg1RWmVkZeOSrLMdAfT6OzxUdqDfaTsN1XJ+bTO3hTBNGG
 VRlPMhnw5xbgw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_044417_623060_878B96C9 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

V2:
* Addressed Thierry & Bjorn's review comments
* Added EP mode specific binding documentation to already existing binding documentation file
* Removed patch that enables GPIO controller nodes explicitly as they are enabled already

Vidya Sagar (5):
  soc/tegra: bpmp: Update ABI header
  dt-bindings: PCI: tegra: Add DT support for PCIe EP nodes in Tegra194
  PCI: tegra: Add support for PCIe endpoint mode in Tegra194
  arm64: tegra: Add PCIe endpoint controllers nodes for Tegra194
  arm64: tegra: Add support for PCIe endpoint mode in P2972-0000
    platform

 .../bindings/pci/nvidia,tegra194-pcie.txt     | 125 ++-
 .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  18 +
 arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  99 +++
 drivers/pci/controller/dwc/Kconfig            |  30 +-
 drivers/pci/controller/dwc/pcie-tegra194.c    | 782 +++++++++++++++++-
 include/soc/tegra/bpmp-abi.h                  |  10 +-
 6 files changed, 1021 insertions(+), 43 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
