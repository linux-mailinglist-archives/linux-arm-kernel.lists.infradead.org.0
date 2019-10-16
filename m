Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A3AD9B55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVXxHdqFxFsLf/p9Dy86q4gXmZtR6q/FzGIYVdWvgRc=; b=SWu9PeRsjIyQI9
	54bRV9dlGdpwtpjNxYpAeFMHuI2RhRtdFsfUr7WI75URZN8b08mm2UISlH9dIWIJty0yrETD2xzdo
	NuhaYAL/YHI0SLYi1EshitEJHJi1yrAVS/4jYicTILy3+h87/UzztMPFbMVhtM5JYQ4wY+ikYahCf
	BkfTCDh15FS7iwewwAjC66WQI1impn3FN0QPqjgve8iHPGYHEzBoBAFOzrXJ98CvF5c6dUEAWRc6t
	JqD6KokXixrp0wEARugf/+lOVi8RA/HyGn/1GAp2bay99Sctl1l/9If+GFSddl1dWkRR9y6Xil7Qp
	UqL23Ok4JCE02fHvTbIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpiC-0002st-RC; Wed, 16 Oct 2019 20:16:00 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZZ-00022E-6L; Wed, 16 Oct 2019 20:07:06 +0000
Received: by mail-oi1-f195.google.com with SMTP id k25so83049oiw.13;
 Wed, 16 Oct 2019 13:07:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EDKT0k2rW2df/qxcfzGpJ4gbuqrSVLzlSAOOYJLl1ZU=;
 b=uWLyss2Am/JvcBUAsDDoXquPzw8axhWV88i3wk/PvFafHVXiYEJusGbPEtEHrFw2zp
 SC2B8xQ5z6mMGW+yaK+FsZV9AdMhI9TscSGaWE1tsbAWym/P7DQM2CQq2vKM0xGPXGyJ
 SVvavK7hTbCDJVzzgeO2WJQtNb4qazPjIRNndHPrV0we2/j4Xb8POJPfJKAE6D3N5Kcc
 /AnjtVtefAUk2+8hXsEF1lELp2oq2yKRUQD+ZmTcNhx5+IGPv4SpT2PPPQ5ZP+zu54nV
 OtJAPAxznpVazPZ2MGdQ8e0xvfX7jxgYE73IDaHK3/ce+fxE3/svXFnj4Tu70qsbsr8V
 jqaw==
X-Gm-Message-State: APjAAAUHhqRekAR71Cltr07SZKq0yRqnqz47mtP12ID2ckQnij4nO98M
 wgMXE8dsliii1vLbRU5mBg==
X-Google-Smtp-Source: APXvYqy5QNsQYGo2OxYTIHoisvgxNgeFY9E1I7izTYC+dFVMgvQdtLKYCMk+PvbGpjM7lphnHGqeAg==
X-Received: by 2002:aca:6509:: with SMTP id m9mr91546oim.63.1571256423758;
 Wed, 16 Oct 2019 13:07:03 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.07.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:07:03 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 07/25] PCI: iproc: Use pci_parse_request_of_pci_ranges()
Date: Wed, 16 Oct 2019 15:06:29 -0500
Message-Id: <20191016200647.32050-8-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130705_260214_4B441919 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the iProc host bridge to use the common
pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list, so just use
bridge->windows directly.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- New patch

 drivers/pci/controller/pcie-iproc-platform.c | 8 ++------
 drivers/pci/controller/pcie-iproc.c          | 5 -----
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/controller/pcie-iproc-platform.c b/drivers/pci/controller/pcie-iproc-platform.c
index 9ee6200a66f4..375d815f7301 100644
--- a/drivers/pci/controller/pcie-iproc-platform.c
+++ b/drivers/pci/controller/pcie-iproc-platform.c
@@ -43,8 +43,6 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
 	struct iproc_pcie *pcie;
 	struct device_node *np = dev->of_node;
 	struct resource reg;
-	resource_size_t iobase = 0;
-	LIST_HEAD(resources);
 	struct pci_host_bridge *bridge;
 	int ret;

@@ -97,8 +95,7 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
 	if (IS_ERR(pcie->phy))
 		return PTR_ERR(pcie->phy);

-	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &resources,
-						    &iobase);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
 	if (ret) {
 		dev_err(dev, "unable to get PCI host bridge resources\n");
 		return ret;
@@ -113,10 +110,9 @@ static int iproc_pcie_pltfm_probe(struct platform_device *pdev)
 		pcie->map_irq = of_irq_parse_and_map_pci;
 	}

-	ret = iproc_pcie_setup(pcie, &resources);
+	ret = iproc_pcie_setup(pcie, &bridge->windows);
 	if (ret) {
 		dev_err(dev, "PCIe controller setup failed\n");
-		pci_free_resource_list(&resources);
 		return ret;
 	}

diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
index 2d457bfdaf66..223335ee791a 100644
--- a/drivers/pci/controller/pcie-iproc.c
+++ b/drivers/pci/controller/pcie-iproc.c
@@ -1498,10 +1498,6 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
 		return ret;
 	}

-	ret = devm_request_pci_bus_resources(dev, res);
-	if (ret)
-		return ret;
-
 	ret = phy_init(pcie->phy);
 	if (ret) {
 		dev_err(dev, "unable to initialize PCIe PHY\n");
@@ -1543,7 +1539,6 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
 		if (iproc_pcie_msi_enable(pcie))
 			dev_info(dev, "not using iProc MSI\n");

-	list_splice_init(res, &host->windows);
 	host->busnr = 0;
 	host->dev.parent = dev;
 	host->ops = &iproc_pcie_ops;
--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
