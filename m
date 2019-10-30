Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003C1EA62F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 23:31:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qGyK5nzaH7pL8dXIFYzqszwviCTlHBy0bkdMNdD9tR4=; b=I9ecEJ0YtOv5f7
	LbUCXXh9Hc1sJdCBqeVPDsMgco9ZG+Dr5g+FaTJzchsRUnkQJGMdF8VI/7Yz/FOjFlJKBUkIk9qU1
	HtzTSlSEJS8SB38MJsonea67e4Wq5gdw+5ESDq091NcvSD3qFgADqbKkvuhD4y2xJDMdoENSV2DxR
	PEad3rXHxZ4irp117Ws+6tVAXDSF79lC8RBRzw9V0YbwWr+r8nr4VGjMPHA1qthdqpykIpiD/wLm6
	1/FqWFSqu/sTxuXJf97Eyhdc4cOb1Io3BX/ONuB+KPOxQJ9lUWPt292goKx8wCHk2l+neru+y+f7K
	qdAAOAiHe2joLRDwxcWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPwUl-0004bm-Kq; Wed, 30 Oct 2019 22:31:15 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPwUb-0004aR-F3; Wed, 30 Oct 2019 22:31:07 +0000
Received: by mail-oi1-f196.google.com with SMTP id g81so3451928oib.8;
 Wed, 30 Oct 2019 15:31:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qOyb6xwSXBQhRNmmLVTHJ8ZN8A8MXdjpaKKPYA60ksk=;
 b=sCodJYlEvSxF96mBmBe/7MTe3aEYZPVNSHk7i/Nj9xunWFVk4prxkHzlXcby9DcgC4
 IAfAk7VypNsPZBZzAi5sV/QTuRBEwKyvT5P079nfoYl6yODfrmm7TBowX9TbX+pkm/tg
 mCS7KOo46b32ZtAk5Hwt83+RRtH6CLEsrebXu7rU777B5E5aVpwEXCNJTQ6xcHUcwM3u
 p5NZhRdLt1supaBtLz1TQaW0jea42jBbdct2fIuWml3CdcFsxuYdrjCsqyiU5Y7nOwqD
 4ETOFDfaMzc79N2gXao6EPmth6IJF68nn+omtMkyMkL1PFw/dQWeC1k5WmYxo7JCGYDM
 Zayw==
X-Gm-Message-State: APjAAAVhBZ8JHQ0eIan4Jtcdz04fcAnBFl+f2FMfxZtiOJL+N/mcNNCm
 49KFxYNCdZTwlFcLbMAyfQ==
X-Google-Smtp-Source: APXvYqw4OHLP8Td/ZdiCy7qaroqU9ZokrEOW9lgkFTUa45FgWsVOUF9TEx1ScgGAC39DI+vA9aWfYw==
X-Received: by 2002:aca:4b0d:: with SMTP id y13mr1251145oia.151.1572474661402; 
 Wed, 30 Oct 2019 15:31:01 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id w4sm480797otp.22.2019.10.30.15.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 15:30:59 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v4] PCI: of: Add inbound resource parsing to helpers
Date: Wed, 30 Oct 2019 17:30:57 -0500
Message-Id: <20191030223057.20554-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_153105_514831_BFA44645 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Simon Horman <horms@verge.net.au>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extend devm_of_pci_get_host_bridge_resources() and
pci_parse_request_of_pci_ranges() helpers to also parse the inbound
addresses from DT 'dma-ranges' and populate a resource list with the
translated addresses. This will help ensure 'dma-ranges' is always
parsed in a consistent way.

Cc: Jingoo Han <jingoohan1@gmail.com>
Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Cc: Will Deacon <will@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Toan Le <toan@os.amperecomputing.com>
Cc: Ley Foon Tan <lftan@altera.com>
Cc: Tom Joseph <tjoseph@cadence.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: Ryder Lee <ryder.lee@mediatek.com>
Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Cc: Simon Horman <horms@verge.net.au>
Cc: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: rfi@lists.rocketboards.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-renesas-soc@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Tested-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com> # for AArdvark
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
Lorenzo, Just sending this one patch. Let me know if you want the whole 
series.

v4:
 - Keep inbound resources sorted because iova_reserve_pci_windows()
   depends on it
v3:
 - Fix some >80 char lines
v2:
 - Fix crash in INIT_LIST_HEAD when ib_resources is NULL
---
 .../pci/controller/dwc/pcie-designware-host.c |  3 +-
 drivers/pci/controller/pci-aardvark.c         |  2 +-
 drivers/pci/controller/pci-ftpci100.c         |  3 +-
 drivers/pci/controller/pci-host-common.c      |  2 +-
 drivers/pci/controller/pci-v3-semi.c          |  3 +-
 drivers/pci/controller/pci-versatile.c        |  3 +-
 drivers/pci/controller/pci-xgene.c            |  3 +-
 drivers/pci/controller/pcie-altera.c          |  2 +-
 drivers/pci/controller/pcie-cadence-host.c    |  2 +-
 drivers/pci/controller/pcie-iproc-platform.c  |  3 +-
 drivers/pci/controller/pcie-mediatek.c        |  2 +-
 drivers/pci/controller/pcie-mobiveil.c        |  3 +-
 drivers/pci/controller/pcie-rcar.c            |  3 +-
 drivers/pci/controller/pcie-rockchip-host.c   |  3 +-
 drivers/pci/controller/pcie-xilinx-nwl.c      |  3 +-
 drivers/pci/controller/pcie-xilinx.c          |  3 +-
 drivers/pci/of.c                              | 51 ++++++++++++++++++-
 drivers/pci/pci.h                             |  8 ++-
 include/linux/pci.h                           |  9 ++--
 19 files changed, 88 insertions(+), 23 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
index aeec8b65eb97..f7b1d80c4a0a 100644
--- a/drivers/pci/controller/dwc/pcie-designware-host.c
+++ b/drivers/pci/controller/dwc/pcie-designware-host.c
@@ -342,7 +342,8 @@ int dw_pcie_host_init(struct pcie_port *pp)
 	if (!bridge)
 		return -ENOMEM;
 
-	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
+					      &bridge->dma_ranges, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index 9cbeba507f0c..b34eaa2cd762 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -939,7 +939,7 @@ static int advk_pcie_probe(struct platform_device *pdev)
 	}
 
 	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
-					      &bus);
+					      &bridge->dma_ranges, &bus);
 	if (ret) {
 		dev_err(dev, "Failed to parse resources\n");
 		return ret;
diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
index 75603348b88a..66288b94e92d 100644
--- a/drivers/pci/controller/pci-ftpci100.c
+++ b/drivers/pci/controller/pci-ftpci100.c
@@ -477,7 +477,8 @@ static int faraday_pci_probe(struct platform_device *pdev)
 	if (IS_ERR(p->base))
 		return PTR_ERR(p->base);
 
-	ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
+	ret = pci_parse_request_of_pci_ranges(dev, &host->windows,
+					      &host->dma_ranges, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
index c8cb9c5188a4..250a3fc80ec6 100644
--- a/drivers/pci/controller/pci-host-common.c
+++ b/drivers/pci/controller/pci-host-common.c
@@ -27,7 +27,7 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
 	struct pci_config_window *cfg;
 
 	/* Parse our PCI ranges and request their resources */
-	err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
+	err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
 	if (err)
 		return ERR_PTR(err);
 
diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
index 96677520f6c1..2209c7671115 100644
--- a/drivers/pci/controller/pci-v3-semi.c
+++ b/drivers/pci/controller/pci-v3-semi.c
@@ -776,7 +776,8 @@ static int v3_pci_probe(struct platform_device *pdev)
 	if (IS_ERR(v3->config_base))
 		return PTR_ERR(v3->config_base);
 
-	ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
+	ret = pci_parse_request_of_pci_ranges(dev, &host->windows,
+					      &host->dma_ranges, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
index eae1b859990b..b911359b6d81 100644
--- a/drivers/pci/controller/pci-versatile.c
+++ b/drivers/pci/controller/pci-versatile.c
@@ -92,7 +92,8 @@ static int versatile_pci_probe(struct platform_device *pdev)
 	if (IS_ERR(versatile_cfg_base[1]))
 		return PTR_ERR(versatile_cfg_base[1]);
 
-	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
+					      NULL, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
index 7d0f0395a479..9408269d943d 100644
--- a/drivers/pci/controller/pci-xgene.c
+++ b/drivers/pci/controller/pci-xgene.c
@@ -627,7 +627,8 @@ static int xgene_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
+					      &bridge->dma_ranges, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
index ba025efeae28..b447c3e4abad 100644
--- a/drivers/pci/controller/pcie-altera.c
+++ b/drivers/pci/controller/pcie-altera.c
@@ -800,7 +800,7 @@ static int altera_pcie_probe(struct platform_device *pdev)
 	}
 
 	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
-					      NULL);
+					      &bridge->dma_ranges, NULL);
 	if (ret) {
 		dev_err(dev, "Failed add resources\n");
 		return ret;
diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
index 97e251090b4f..a8f7a6284c3e 100644
--- a/drivers/pci/controller/pcie-cadence-host.c
+++ b/drivers/pci/controller/pcie-cadence-host.c
@@ -211,7 +211,7 @@ static int cdns_pcie_host_init(struct device *dev,
 	int err;
 
 	/* Parse our PCI ranges and request their resources */
-	err = pci_parse_request_of_pci_ranges(dev, resources, &bus_range);
+	err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
 	if (err)
 		return err;
 
diff --git a/drivers/pci/controller/pcie-iproc-platform.c b/drivers/pci/controller/pcie-iproc-platform.c
index 375d815f7301..ff0a81a632a1 100644
--- a/drivers/pci/controller/pcie-iproc-platform.c
+++ b/drivers/pci/controller/pcie-iproc-platform.c
@@ -95,7 +95,8 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
 	if (IS_ERR(pcie->phy))
 		return PTR_ERR(pcie->phy);
 
-	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
+					      &bridge->dma_ranges, NULL);
 	if (ret) {
 		dev_err(dev, "unable to get PCI host bridge resources\n");
 		return ret;
diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index d9206a3cd56b..cb982891b22b 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -1034,7 +1034,7 @@ static int mtk_pcie_setup(struct mtk_pcie *pcie)
 	int err;
 
 	err = pci_parse_request_of_pci_ranges(dev, windows,
-					      &bus);
+					      &host->dma_ranges, &bus);
 	if (err)
 		return err;
 
diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index 4eab8624ce4d..257ba49c177c 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -875,7 +875,8 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	}
 
 	/* parse the host bridge base addresses from the device tree file */
-	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
+					      &bridge->dma_ranges, NULL);
 	if (ret) {
 		dev_err(dev, "Getting bridge resources failed\n");
 		return ret;
diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
index f6a669a9af41..b8d6e86a5539 100644
--- a/drivers/pci/controller/pcie-rcar.c
+++ b/drivers/pci/controller/pcie-rcar.c
@@ -1138,7 +1138,8 @@ static int rcar_pcie_probe(struct platform_device *pdev)
 	pcie->dev = dev;
 	platform_set_drvdata(pdev, pcie);
 
-	err = pci_parse_request_of_pci_ranges(dev, &pcie->resources, NULL);
+	err = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
+					      &bridge->dma_ranges, NULL);
 	if (err)
 		goto err_free_bridge;
 
diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index f375e55ea02e..ee83f8494ee9 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -1004,7 +1004,8 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (err < 0)
 		goto err_deinit_port;
 
-	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, &bus_res);
+	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
+					      &bridge->dma_ranges, &bus_res);
 	if (err)
 		goto err_remove_irq_domain;
 
diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
index e135a4b60489..9bd1427f2fd6 100644
--- a/drivers/pci/controller/pcie-xilinx-nwl.c
+++ b/drivers/pci/controller/pcie-xilinx-nwl.c
@@ -843,7 +843,8 @@ static int nwl_pcie_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
+	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
+					      &bridge->dma_ranges, NULL);
 	if (err) {
 		dev_err(dev, "Getting bridge resources failed\n");
 		return err;
diff --git a/drivers/pci/controller/pcie-xilinx.c b/drivers/pci/controller/pcie-xilinx.c
index 257702288787..98e55297815b 100644
--- a/drivers/pci/controller/pcie-xilinx.c
+++ b/drivers/pci/controller/pcie-xilinx.c
@@ -645,7 +645,8 @@ static int xilinx_pcie_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
+	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
+					      &bridge->dma_ranges, NULL);
 	if (err) {
 		dev_err(dev, "Getting bridge resources failed\n");
 		return err;
diff --git a/drivers/pci/of.c b/drivers/pci/of.c
index f3da49a31db4..7d5c7783dfdc 100644
--- a/drivers/pci/of.c
+++ b/drivers/pci/of.c
@@ -257,7 +257,9 @@ EXPORT_SYMBOL_GPL(of_pci_check_probe_only);
  */
 int devm_of_pci_get_host_bridge_resources(struct device *dev,
 			unsigned char busno, unsigned char bus_max,
-			struct list_head *resources, resource_size_t *io_base)
+			struct list_head *resources,
+			struct list_head *ib_resources,
+			resource_size_t *io_base)
 {
 	struct device_node *dev_node = dev->of_node;
 	struct resource *res, tmp_res;
@@ -340,6 +342,48 @@ int devm_of_pci_get_host_bridge_resources(struct device *dev,
 		pci_add_resource_offset(resources, res,	res->start - range.pci_addr);
 	}
 
+	/* Check for dma-ranges property */
+	if (!ib_resources)
+		return 0;
+	err = of_pci_dma_range_parser_init(&parser, dev_node);
+	if (err)
+		return 0;
+
+	dev_dbg(dev, "Parsing dma-ranges property...\n");
+	for_each_of_pci_range(&parser, &range) {
+		struct resource_entry *entry;
+		/*
+		 * If we failed translation or got a zero-sized region
+		 * then skip this range
+		 */
+		if (((range.flags & IORESOURCE_TYPE_BITS) != IORESOURCE_MEM) ||
+		    range.cpu_addr == OF_BAD_ADDR || range.size == 0)
+			continue;
+
+		dev_info(dev, "IB MEM %#010llx..%#010llx -> %#010llx\n",
+			 range.cpu_addr,
+			 range.cpu_addr + range.size - 1, range.pci_addr);
+
+
+		err = of_pci_range_to_resource(&range, dev_node, &tmp_res);
+		if (err)
+			continue;
+
+		res = devm_kmemdup(dev, &tmp_res, sizeof(tmp_res), GFP_KERNEL);
+		if (!res) {
+			err = -ENOMEM;
+			goto failed;
+		}
+
+		/* Keep the resource list sorted */
+		resource_list_for_each_entry(entry, ib_resources)
+			if (entry->res->start > res->start)
+				break;
+
+		pci_add_resource_offset(&entry->node, res,
+					res->start - range.pci_addr);
+	}
+
 	return 0;
 
 failed:
@@ -482,6 +526,7 @@ EXPORT_SYMBOL_GPL(of_irq_parse_and_map_pci);
 
 int pci_parse_request_of_pci_ranges(struct device *dev,
 				    struct list_head *resources,
+				    struct list_head *ib_resources,
 				    struct resource **bus_range)
 {
 	int err, res_valid = 0;
@@ -489,8 +534,10 @@ int pci_parse_request_of_pci_ranges(struct device *dev,
 	struct resource_entry *win, *tmp;
 
 	INIT_LIST_HEAD(resources);
+	if (ib_resources)
+		INIT_LIST_HEAD(ib_resources);
 	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, resources,
-						    &iobase);
+						    ib_resources, &iobase);
 	if (err)
 		return err;
 
diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
index 3f6947ee3324..6692c4fe4290 100644
--- a/drivers/pci/pci.h
+++ b/drivers/pci/pci.h
@@ -633,11 +633,15 @@ static inline void pci_release_bus_of_node(struct pci_bus *bus) { }
 #if defined(CONFIG_OF_ADDRESS)
 int devm_of_pci_get_host_bridge_resources(struct device *dev,
 			unsigned char busno, unsigned char bus_max,
-			struct list_head *resources, resource_size_t *io_base);
+			struct list_head *resources,
+			struct list_head *ib_resources,
+			resource_size_t *io_base);
 #else
 static inline int devm_of_pci_get_host_bridge_resources(struct device *dev,
 			unsigned char busno, unsigned char bus_max,
-			struct list_head *resources, resource_size_t *io_base)
+			struct list_head *resources,
+			struct list_head *ib_resources,
+			resource_size_t *io_base)
 {
 	return -EINVAL;
 }
diff --git a/include/linux/pci.h b/include/linux/pci.h
index f9088c89a534..5cb94916eaa1 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -2278,6 +2278,7 @@ struct irq_domain;
 struct irq_domain *pci_host_bridge_of_msi_domain(struct pci_bus *bus);
 int pci_parse_request_of_pci_ranges(struct device *dev,
 				    struct list_head *resources,
+				    struct list_head *ib_resources,
 				    struct resource **bus_range);
 
 /* Arch may override this (weak) */
@@ -2286,9 +2287,11 @@ struct device_node *pcibios_get_phb_of_node(struct pci_bus *bus);
 #else	/* CONFIG_OF */
 static inline struct irq_domain *
 pci_host_bridge_of_msi_domain(struct pci_bus *bus) { return NULL; }
-static inline int pci_parse_request_of_pci_ranges(struct device *dev,
-						  struct list_head *resources,
-						  struct resource **bus_range)
+static inline int
+pci_parse_request_of_pci_ranges(struct device *dev,
+				struct list_head *resources,
+				struct list_head *ib_resources,
+				struct resource **bus_range)
 {
 	return -EINVAL;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
