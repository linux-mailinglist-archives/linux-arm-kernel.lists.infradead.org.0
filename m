Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D35E76B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdMJGKhTH8aWZTRGOSgh5r3VB93j5bv+fvmU7s1p0fI=; b=VwnR7c03qoUdnp
	B1/1P3hk9dGX7kQUd8cjU3oTiIniCQpTd4x2mEAVR4nL0DnPeKOFKUuzi7kK8F/ZmMYRxlUuYwSFl
	b5V3YnGlsRpD2D3CmAyfIzSGs4Me0iQAbeETmmkPloSdqZDnItzNrGIrfyOhA/usLviipjGvzrM56
	zeGeSaAufJD++b4yZWuwsKJ0UA+2/cGIOspXm5rthJ7icHVNmQ3N6/QUAUVkoj3Pt3lOKp/H9BgyN
	cLd/p2ZKqyJLtK7ZjARv3d4nFe78ytEIoMGKJT6nTnrOQuEQQD24IR2yNWVkSZ+6cMH6vJj8L3Lqr
	xifGZqdog+h6qV6r7XHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP83N-0004qf-Kb; Mon, 28 Oct 2019 16:39:37 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xa-0007CU-Ux; Mon, 28 Oct 2019 16:33:40 +0000
Received: by mail-oi1-f195.google.com with SMTP id n16so4147075oig.2;
 Mon, 28 Oct 2019 09:33:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n3y2Ka8WRhcKcfj2aX8DHqGH9IJEnrEYNwvqAJMp1K8=;
 b=KdI4VtBQRNnPq2BiM2c9QxTMMqQXNzOEkqzzr3UH27mSHgABLlpek96jAk/GPgCgdH
 gr3Ydh2CDIy/D7v4MPxY7pGw26vTIo1VkQ0gxSEWCjb6qs2WoKYHAj+q9nfXApKV8JHb
 6v3OOa4qyTpmP1SWLyUb35dtZxjSABLMp68/mTHretB/y/xaqTCJnwfu5R+T9pmS3nze
 RUmeoWnmAFxA62svujHzCY7EqZ/4JcyKIblG1Lo3jBYKTdaYuIvK/nIswMxyKl9USjHo
 FJxJur8z7+IWs/cOluC/TXEqXv3CjmaBbBzjak7qj96cgV3QJjng6cmqHTn9L2ZmGgxR
 wc8A==
X-Gm-Message-State: APjAAAWO8Z5E8WgO7ofskZDX7/swd8aS0F/Jjvaf2oQI8DRvrTBabft9
 IdNqC29S7Hs32Y7K92ULaw==
X-Google-Smtp-Source: APXvYqz8N1xGkSsjPvO3LqrYhKkvX8lmGh2l+7Jzyk4LSNNz1GUewrj62TSLCJt13u7SybQIhsO2YA==
X-Received: by 2002:aca:1e0c:: with SMTP id m12mr170767oic.18.1572280417514;
 Mon, 28 Oct 2019 09:33:37 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:36 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 15/25] PCI: xilinx-nwl: Use
 pci_parse_request_of_pci_ranges()
Date: Mon, 28 Oct 2019 11:32:46 -0500
Message-Id: <20191028163256.8004-16-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093339_046264_69851166 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
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

Convert the xilinx-nwl host bridge to use the common
pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list first. Just
use bridge->windows directly and remove all the temporary list handling.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-xilinx-nwl.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
index 45c0f344ccd1..e135a4b60489 100644
--- a/drivers/pci/controller/pcie-xilinx-nwl.c
+++ b/drivers/pci/controller/pcie-xilinx-nwl.c
@@ -821,8 +821,6 @@ static int nwl_pcie_probe(struct platform_device *pdev)
 	struct pci_bus *child;
 	struct pci_host_bridge *bridge;
 	int err;
-	resource_size_t iobase = 0;
-	LIST_HEAD(res);
 
 	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
 	if (!bridge)
@@ -845,24 +843,18 @@ static int nwl_pcie_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &res,
-						    &iobase);
+	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
 	if (err) {
 		dev_err(dev, "Getting bridge resources failed\n");
 		return err;
 	}
 
-	err = devm_request_pci_bus_resources(dev, &res);
-	if (err)
-		goto error;
-
 	err = nwl_pcie_init_irq_domain(pcie);
 	if (err) {
 		dev_err(dev, "Failed creating IRQ Domain\n");
-		goto error;
+		return err;
 	}
 
-	list_splice_init(&res, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = pcie;
 	bridge->busnr = pcie->root_busno;
@@ -874,13 +866,13 @@ static int nwl_pcie_probe(struct platform_device *pdev)
 		err = nwl_pcie_enable_msi(pcie);
 		if (err < 0) {
 			dev_err(dev, "failed to enable MSI support: %d\n", err);
-			goto error;
+			return err;
 		}
 	}
 
 	err = pci_scan_root_bus_bridge(bridge);
 	if (err)
-		goto error;
+		return err;
 
 	bus = bridge->bus;
 
@@ -889,10 +881,6 @@ static int nwl_pcie_probe(struct platform_device *pdev)
 		pcie_bus_configure_settings(child);
 	pci_bus_add_devices(bus);
 	return 0;
-
-error:
-	pci_free_resource_list(&res);
-	return err;
 }
 
 static struct platform_driver nwl_pcie_driver = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
