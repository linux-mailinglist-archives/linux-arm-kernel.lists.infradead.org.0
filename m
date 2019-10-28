Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC2AE769D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:38:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QW5BYagUm2D44EYR5zvcEm/VlCxDrdqzMaY4gQQC5qo=; b=VD6QsaC2nAnUd1
	ccqpe6gQp4agOKBmVguYfxZBuCaod4QMivYS58RWT0/9jMdXA8/R900YMVlL9o0NEplXUl1RgHh4V
	lmiqoJvNWgo4qsvk5K8a1/3YLdyNgPqKl3quoV1VOuFf9Rz6RbgjjxRwnkZLuHvd2L5cvhDXR/nmY
	1iUso8fFg6cff6FpQi/xlJjFoIuFSSKtTPGSB4+4abTX5v++qsrEYpjEn26Dj4bKQkDub2Z7F4+6j
	KT61E1YpIgA7/tZn5aHtR+751eXnQNB5D6WscrLRa6LPWQX7YqTfNlGFN3h8U/oxo7AU/rIXvuOEP
	WNmf0VOXQ61YtCL17ljw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP81t-0003He-0R; Mon, 28 Oct 2019 16:38:05 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xO-00070Q-Ip; Mon, 28 Oct 2019 16:33:28 +0000
Received: by mail-ot1-f65.google.com with SMTP id d8so7160918otc.7;
 Mon, 28 Oct 2019 09:33:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UQELiRn8smL2MOEFvRnPKMmMFHFucEfGLFrEDxdYNq4=;
 b=r7+F0l0F6v+DXkeBFnh1SkfSVLVFc4uzXmhStoh5kTRMEyhfOOt9ml/R+qzPdvlxr0
 BqmCV0Ja+mW5Y/RppZWeET59NFlKK7xE26OnyXrrEQAgqvpTvuzCXuDCIZvwQh1kSWr0
 W+ZEDlxAuapbT1fbHlvAtTL7PPvmFq/qg+wAz5kXsIHbxwl20kMa+5MtEBDPY75YoyFs
 zZjYAnLh74t2iQECIVGBomLOEa4HRRKSJ/MKpgbscNaxIj6G/fBUZeStez9rWDKnxQxV
 BMJf2ziZDDbxBvZoYtU6hIqTxjdZb9zj9EWaW1K1ubGyC/E1dLSwJ2POl1aUGpEZPh9Q
 8IaA==
X-Gm-Message-State: APjAAAVeqtSEGUwJB2A3uewj56Db6BgmJvA/mXXdijO5D5/1gFvD6dgS
 0BhFfpz63ymmkXvmY3vLjw==
X-Google-Smtp-Source: APXvYqxANS1ZRPDmSCLwaC+UqaafEyt/CiqCsmPHYvwIXbkeNI6RQdz0pkv8fwvcQOzI5WjkAX10Vw==
X-Received: by 2002:a9d:7cc6:: with SMTP id r6mr1731281otn.235.1572280405492; 
 Mon, 28 Oct 2019 09:33:25 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:24 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 10/25] PCI: rockchip: Use pci_parse_request_of_pci_ranges()
Date: Mon, 28 Oct 2019 11:32:41 -0500
Message-Id: <20191028163256.8004-11-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093326_752793_8E640657 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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

Convert the Rockchip host bridge to use the common
pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list first. Just
use bridge->windows directly and remove all the temporary list handling.

Cc: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 36 ++++-----------------
 1 file changed, 7 insertions(+), 29 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ef8e677ce9d1..8d2e6f2e141e 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -950,14 +950,10 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct pci_bus *bus, *child;
 	struct pci_host_bridge *bridge;
+	struct resource *bus_res;
 	struct resource_entry *win;
-	resource_size_t io_base;
-	struct resource	*mem;
-	struct resource	*io;
 	int err;
 
-	LIST_HEAD(res);
-
 	if (!dev->of_node)
 		return -ENODEV;
 
@@ -995,29 +991,20 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (err < 0)
 		goto err_deinit_port;
 
-	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &res, &io_base);
+	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, &bus_res);
 	if (err)
 		goto err_remove_irq_domain;
 
-	err = devm_request_pci_bus_resources(dev, &res);
-	if (err)
-		goto err_free_res;
+	rockchip->root_bus_nr = bus_res->start;
 
 	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry(win, &res) {
+	resource_list_for_each_entry(win, &bridge->windows) {
 		switch (resource_type(win->res)) {
 		case IORESOURCE_IO:
 			io = win->res;
 			io->name = "I/O";
 			rockchip->io_size = resource_size(io);
 			rockchip->io_bus_addr = io->start - win->offset;
-			err = pci_remap_iospace(io, io_base);
-			if (err) {
-				dev_warn(dev, "error %d: failed to map resource %pR\n",
-					 err, io);
-				continue;
-			}
 			rockchip->io = io;
 			break;
 		case IORESOURCE_MEM:
@@ -1026,9 +1013,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 			rockchip->mem_size = resource_size(mem);
 			rockchip->mem_bus_addr = mem->start - win->offset;
 			break;
-		case IORESOURCE_BUS:
-			rockchip->root_bus_nr = win->res->start;
-			break;
 		default:
 			continue;
 		}
@@ -1036,15 +1020,14 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 
 	err = rockchip_pcie_cfg_atu(rockchip);
 	if (err)
-		goto err_unmap_iospace;
+		goto err_remove_irq_domain;
 
 	rockchip->msg_region = devm_ioremap(dev, rockchip->msg_bus_addr, SZ_1M);
 	if (!rockchip->msg_region) {
 		err = -ENOMEM;
-		goto err_unmap_iospace;
+		goto err_remove_irq_domain;
 	}
 
-	list_splice_init(&res, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = rockchip;
 	bridge->busnr = 0;
@@ -1054,7 +1037,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 
 	err = pci_scan_root_bus_bridge(bridge);
 	if (err < 0)
-		goto err_unmap_iospace;
+		goto err_remove_irq_domain;
 
 	bus = bridge->bus;
 
@@ -1068,10 +1051,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	pci_bus_add_devices(bus);
 	return 0;
 
-err_unmap_iospace:
-	pci_unmap_iospace(rockchip->io);
-err_free_res:
-	pci_free_resource_list(&res);
 err_remove_irq_domain:
 	irq_domain_remove(rockchip->irq_domain);
 err_deinit_port:
@@ -1097,7 +1076,6 @@ static int rockchip_pcie_remove(struct platform_device *pdev)
 
 	pci_stop_root_bus(rockchip->root_bus);
 	pci_remove_root_bus(rockchip->root_bus);
-	pci_unmap_iospace(rockchip->io);
 	irq_domain_remove(rockchip->irq_domain);
 
 	rockchip_pcie_deinit_phys(rockchip);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
