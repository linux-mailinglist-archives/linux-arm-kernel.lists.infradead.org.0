Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5524AA039
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wxNrW8XhAtYr0LBqBOnrD8jt8B5h/cOgDsU43kEMt2s=; b=W1CeI9ugCa7AQL
	pweemeeomzXuVwuSxMOCTTFtcEy/9+3W+pYEVu/+YfZcAq3VQEesRuojSGpgMNtbGqEsWb8kSe0Rk
	OKi14i8qP47KUVZBFXa6b7JxAPFS4uXAJub8fLCApyICuWbrOSdNv8+GHRWbNI4Ffzr1mqeZ8kDi/
	Mq1DRvTGRgwQuDzmPP68nD68l9Gvk3cG12xjz/XJVQICGsqopwoMhIZe8qj6jBD7udZl3sKtxhHLQ
	4wQvrbVLM3YGeDGl4yyxtDVUvER06Bu+41u8eWJ0AUnbR0Mml/crs7G3/HWa5/zgAmATM0T7Q5DYz
	Kj26JxXZlR/ZdOKKAYJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pHS-00028f-Ut; Thu, 05 Sep 2019 10:46:22 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pHD-0001yG-9u
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:46:09 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d70e770000a>; Thu, 05 Sep 2019 03:46:08 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Thu, 05 Sep 2019 03:46:06 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Thu, 05 Sep 2019 03:46:06 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 5 Sep
 2019 10:46:01 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Thu, 5 Sep 2019 10:46:01 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d70e7630002>; Thu, 05 Sep 2019 03:46:00 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V4 0/6] PCI: tegra: Enable PCIe C5 controller of Tegra194 in
 p2972-0000 platform
Date: Thu, 5 Sep 2019 16:15:47 +0530
Message-ID: <20190905104553.2884-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567680368; bh=YC2A14ccqRxtxcn75mXI1dozxpBOosnoSmsvsyfnYmk=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 X-NVConfidentiality:MIME-Version:Content-Type;
 b=h7w1/lHCXzCaLLHTK+O6GLMLqzoa0L15XNlxklPoeAIAYlTPo9qnb/TgA8+RA6/NK
 LwSSZLM2y+oVs2bqt/8rIsiBUuUJbb+YoQHJNEkRTMvI6jvX9M6+LGLXg/H+N8s1p1
 kg/uW2AvO2Q/c3BW9k/cRB+IzuptrKaSxvtLoA2LvKzh4B8gqeTozPht2ap29Zgz35
 PYtYAAX+yOqcHKI5WXHr90tO30NgWCvbVZus/+PHd6KZwyz3Ye2Ml3VjFDD6h99R6n
 G2g2gMD9fNjx27Wce/pUOCbhWV2SManYwaj5TScqus+Uw3v9IyIbmI9aJte9qfA3eu
 vUkmUjfg7BEOQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_034608_325007_DC9854A8 
X-CRM114-Status: UNSURE (   6.56  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

V4:
* Rebased (Patch-4/6 particularly) on top of Lorenzo's pci/tegra branch

V3:
* Addressed some more review comments from Andrew Murray and Thierry Reding

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
 drivers/pci/controller/dwc/pcie-tegra194.c    | 94 ++++++++++++++++++-
 5 files changed, 172 insertions(+), 4 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
