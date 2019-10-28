Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A1EE7698
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:37:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRmRZXo1nVtZVvTAMVJFUOHPOdgWO2fe66EBy0cOXU0=; b=h6ku7qVrZp4+g1
	cGn0iYA8K2V4UZYTSoiIKcDxZBHBjsfaTKoc/7t+nSkzL7z1WdYbtt3i1MsKBE9UIRgj46lmVGxRw
	gEX3NphEuJ9KEOUwTW/FOLPM3MGHqKqvdj39XmFukyHOBkp/3paRDXirrLRUVYYdEWALbmJhCHNts
	l7IV3C43cELzK8b3055aYPFQHkfalJKYRo3ppiz7PIuGaBhH4vbYtA4OFjJUgQdpRivZHXVbdhlHi
	JYP19jmR2M0vQphta8HuycMmbLHC1IKX9zsWkYbgZ0NKfxLCGC8zpe8Ak/t0VFkB0atSmilccBxE1
	1/J3LartWdfQWGaGAUIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP81U-0002qo-8B; Mon, 28 Oct 2019 16:37:40 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xM-0006yG-AY; Mon, 28 Oct 2019 16:33:26 +0000
Received: by mail-ot1-f68.google.com with SMTP id 41so7143516oti.12;
 Mon, 28 Oct 2019 09:33:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jpXNezTP5UvZxbHA0+iXw/Wyg2v2rsj1FOMQAqAf0GA=;
 b=ndIHcSK7uGib6Y9zdHrNxYJ0BuDvmoJ6fRUlUOL4Rv6RVoRUR9a0MJ0e3qOevn0hwN
 Jk/qw4Ht5YKZ1MPHD4+9d3fBLKhDSBXIkic/guHO6zPFrTFQo150XM6HJEpa3QZ+6AsZ
 PIbwSGm8sxkUqQjmISGo6Ee1YsSOHgeZCUNftlEwo8P3TMai83w70fW7aYkbpK3KpVDT
 jxSny5IOSTz+jmeRj4FsSxx+q1v80Ol0XHc3RDEgQIo724ZtTLGwUGvNbOG+HBX3Cma1
 XabrKU63Yi9v2KPK+UiID0SKqUSw78SSbiYV9xZrK2RCXDkmLeEMN2wIKnO+vse0MG/t
 hJdw==
X-Gm-Message-State: APjAAAVF87JlDLhlxhaSxnbg1BWd3A1FKBaMeSuyI3oTSbN1/rzMGDYO
 3Xin3dwVzWv7BGwlTZsThw==
X-Google-Smtp-Source: APXvYqyZIopRAOsgl1zOiXPaW3NtAzvxCuMWMSKxbNh5hFsWDE5ZO6FPWFVruCMbxopnZvC3XLssnA==
X-Received: by 2002:a9d:66e:: with SMTP id 101mr14345496otn.51.1572280403122; 
 Mon, 28 Oct 2019 09:33:23 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:18 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 09/25] PCI: mobiveil: Use pci_parse_request_of_pci_ranges()
Date: Mon, 28 Oct 2019 11:32:40 -0500
Message-Id: <20191028163256.8004-10-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093324_392204_A6ACB898 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Convert the Mobiveil host bridge to use the common
pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list first. Just
use bridge->windows directly and remove all the temporary list handling.

Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-mobiveil.c | 26 +++++++-------------------
 1 file changed, 7 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
index a45a6447b01d..4eab8624ce4d 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/pcie-mobiveil.c
@@ -140,7 +140,6 @@ struct mobiveil_msi {			/* MSI information */
 
 struct mobiveil_pcie {
 	struct platform_device *pdev;
-	struct list_head resources;
 	void __iomem *config_axi_slave_base;	/* endpoint config base */
 	void __iomem *csr_axi_slave_base;	/* root port config base */
 	void __iomem *apb_csr_base;	/* MSI register base */
@@ -575,6 +574,7 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
 
 static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 {
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
 	u32 value, pab_ctrl, type;
 	struct resource_entry *win;
 
@@ -631,7 +631,7 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	program_ib_windows(pcie, WIN_NUM_0, 0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
 
 	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry(win, &pcie->resources) {
+	resource_list_for_each_entry(win, &bridge->windows) {
 		if (resource_type(win->res) == IORESOURCE_MEM)
 			type = MEM_WINDOW_TYPE;
 		else if (resource_type(win->res) == IORESOURCE_IO)
@@ -857,7 +857,6 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	struct pci_bus *child;
 	struct pci_host_bridge *bridge;
 	struct device *dev = &pdev->dev;
-	resource_size_t iobase;
 	int ret;
 
 	/* allocate the PCIe port */
@@ -875,11 +874,8 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	INIT_LIST_HEAD(&pcie->resources);
-
 	/* parse the host bridge base addresses from the device tree file */
-	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &pcie->resources, &iobase);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
 	if (ret) {
 		dev_err(dev, "Getting bridge resources failed\n");
 		return ret;
@@ -892,24 +888,19 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	ret = mobiveil_host_init(pcie);
 	if (ret) {
 		dev_err(dev, "Failed to initialize host\n");
-		goto error;
+		return ret;
 	}
 
 	/* initialize the IRQ domains */
 	ret = mobiveil_pcie_init_irq_domain(pcie);
 	if (ret) {
 		dev_err(dev, "Failed creating IRQ Domain\n");
-		goto error;
+		return ret;
 	}
 
 	irq_set_chained_handler_and_data(pcie->irq, mobiveil_pcie_isr, pcie);
 
-	ret = devm_request_pci_bus_resources(dev, &pcie->resources);
-	if (ret)
-		goto error;
-
 	/* Initialize bridge */
-	list_splice_init(&pcie->resources, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = pcie;
 	bridge->busnr = pcie->root_bus_nr;
@@ -920,13 +911,13 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	ret = mobiveil_bringup_link(pcie);
 	if (ret) {
 		dev_info(dev, "link bring-up failed\n");
-		goto error;
+		return ret;
 	}
 
 	/* setup the kernel resources for the newly added PCIe root bus */
 	ret = pci_scan_root_bus_bridge(bridge);
 	if (ret)
-		goto error;
+		return ret;
 
 	bus = bridge->bus;
 
@@ -936,9 +927,6 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	pci_bus_add_devices(bus);
 
 	return 0;
-error:
-	pci_free_resource_list(&pcie->resources);
-	return ret;
 }
 
 static const struct of_device_id mobiveil_pcie_of_match[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
