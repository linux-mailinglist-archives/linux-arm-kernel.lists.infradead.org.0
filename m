Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F734A02D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:15:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4DQU2JzI/T2gt9So4gVhz1SqIOLulZPQXh6eJxvF5Qs=; b=kucLupJAQXZozo
	XQoatJ5K/OqDesXjCHtkUxYylvehJMSTPISR+agbkoFuY/6LCkd/L6E1KF8lnygrmw4SJTz2+xwuB
	euzQzqvYIFXKlIHh+8smZxMM0fqt2bhfRtGhkNZ2yn/1tPpRn5L9nCd94EJqwaK58a6VOB0shn2ed
	lE+tkZ7nI+NPTtSKeIkA0IoW/gEiFaaZ3wYTElzomE/pPih3vQTq/BdUZ42yu4DwyU2jFxNzGf5Yt
	N34BBGgnY/PxSeHPlqWBksvQrEsRyqVkuAWIjjvAdJDUHsN1c/eFwkQFho1Ls+uAXqUC6cpJRbkb1
	4WVAn0raVfxRbITxjvQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xnO-0002eb-Fg; Wed, 28 Aug 2019 13:15:30 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xnB-0002du-B1
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:15:18 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d667e650000>; Wed, 28 Aug 2019 06:15:17 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 28 Aug 2019 06:15:15 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 28 Aug 2019 06:15:15 -0700
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 28 Aug
 2019 13:15:14 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Wed, 28 Aug 2019 13:15:14 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d667e5e0000>; Wed, 28 Aug 2019 06:15:14 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V2 0/6] PCI: tegra: Enable PCIe C5 controller of Tegra194 in
 p2972-0000 platform
Date: Wed, 28 Aug 2019 18:44:59 +0530
Message-ID: <20190828131505.28475-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1566998117; bh=6gE8JO5jHpwhTw643om2gL+eYxt+1gqjrcc+vk+Bz10=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=bNPPEbcr+r+cMKTDSkKzK3gEmx4poL2ucpuWpuvcSkyCpliAvdeHrpF7CZCU93/Gk
 uNNAyIh++t4R+FhG6gtUGfEdQebatulERdWJgs/gXLzVas5YZ+WKyPB7ic0qalJf0r
 Ajk1uHov8kWYYmTZTXO1eKBtuXqRu7bGT6GxLF6v4125OboMyt8wbRCsaF8MhDdN8A
 yYEABiCfN+R7vPXJCJ4tHtKDo/sxtfeXyMR5xuutDSM7cnd5ber/qpl0OermQfS14V
 JA7wX9USzmLh2pcWZZC3zTLHPjd6rx4SF3kLV0Vd1LSWJzLHwRDCBjhvaTte6km5V7
 gbe/mLMYwCnLw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_061517_401168_0123697C 
X-CRM114-Status: UNSURE (   7.91  )
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
 gustavo.pimentel@synopsys.com, vidyas@nvidia.com, linux-kernel@vger.kernel.org,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
 digetx@gmail.com, kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series enables Tegra194's C5 controller which owns x16 slot in
p2972-0000 platform. C5 controller's PERST# and CLKREQ# are not configured as
output and bi-directional signals by default and hence they need to be
configured explicitly. Also, x16 slot's 3.3V and 12V supplies are controlled
through GPIOs and hence they need to be enabled through regulator framework.
This patch series adds required infrastructural support to address both the
aforementioned requirements.
Testing done on p2972-0000 platform
- Able to enumerate devices connected to x16 slot (owned by C5 controller)
- Enumerated device's functionality verified
- Suspend-Resume sequence is verified with device connected to x16 slot

V2:
* Changed the order of patches in the series for easy merging
* Addressed review comments from Thierry Reding and Andrew Murray

Vidya Sagar (6):
  dt-bindings: PCI: tegra: Add sideband pins configuration entries
  dt-bindings: PCI: tegra: Add PCIe slot supplies regulator entries
  PCI: tegra: Add support to configure sideband pins
  PCI: tegra: Add support to enable slot regulators
  arm64: tegra: Add configuration for PCIe C5 sideband signals
  arm64: tegra: Add PCIe slot supply information in p2972-0000 platform

 .../bindings/pci/nvidia,tegra194-pcie.txt     | 16 ++++
 .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 24 +++++
 .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  4 +-
 arch/arm64/boot/dts/nvidia/tegra194.dtsi      | 38 +++++++-
 drivers/pci/controller/dwc/pcie-tegra194.c    | 91 ++++++++++++++++++-
 5 files changed, 169 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
