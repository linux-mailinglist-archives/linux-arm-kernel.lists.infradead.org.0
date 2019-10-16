Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35D2D9B6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqFjsDVdJzCp09NYMryqqdKQeWPnHF4vO2vFJSuNQgA=; b=tP4WM9hDTYdz3J
	MJEUF+vJmU97pVZllEajGJiZ06HCXczftaQo/j4BUbQsHd4ZHGl0YiM3cLqEOhUui64BVYDYr3Jnb
	0bgqvhS/kBDHBqK/9c6GBaV3BAsk0yFx/BIhkeh5414jyROuEau/D2K29nLfW5EsxddVGlLYteKFI
	NKd88cN6pLPPuGJZDSDlDyF2lRgX2s8Pl3iA4YjlynRjUatldXMeMwIfvB59LK1yfy2/wz4KmZLMD
	TvF37xmgRryPdy6Y9nxVQsLg+bOAdNEnb86B+JKYUYe/O1pXHzHsaILrfCpYhn8hcC/nbl2DVqoxD
	4eQhTu0XLRHdYuw581CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpje-0004Ar-Ak; Wed, 16 Oct 2019 20:17:30 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZh-0002AC-RH; Wed, 16 Oct 2019 20:07:16 +0000
Received: by mail-oi1-f196.google.com with SMTP id k9so112153oib.7;
 Wed, 16 Oct 2019 13:07:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ka1OUTRrdwoRIdpfE6TTScylmdfPZp0ZecCE90F9O7Y=;
 b=j6F6rREN8ATdXJh9W7+HLgrTOt15Enfs6eMq4qbWYkg8kf8QpvK4TTU4NHeP0HM7e/
 RG/HVV1uxwqRiIO1q68gaMuWwWRFG4jR5fwrtzyBUCaCf0KnBlpM2GWYbLNo09dhR362
 ybmtMd0T9AbhOlM5HwudhMmo7iLJWn8r/9TjSEEQ3j6aWNzW6BsJyIZvbPicrsfRKvU3
 rikSJ8dHixPFGk2fD9Swc//FJ/b7/hAFs6iy2YuiCNd6BxhrSrFcGcrlSq4Wkn/TQQoA
 2corEdwmmbI6Zhh3zx9bxRaC5WomObA5ytDGeEvKAZMolJR5JH+fw+jQYsLnWmqQIOpX
 WDtg==
X-Gm-Message-State: APjAAAWtZJKMnNIbdX1l23Q6Plyg08isOuG7OVBMRLA2ETy51/uoB+KK
 yRZoCP4AcT1STjzkt6AEsg==
X-Google-Smtp-Source: APXvYqxF2w729h5ozTnGpbZgI910+LMJWdeJ1bDzhRRDmJlMoOehKl2opT2euDfK8hJsmlbq0GqAKA==
X-Received: by 2002:aca:b8d6:: with SMTP id i205mr112805oif.116.1571256432630; 
 Wed, 16 Oct 2019 13:07:12 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.07.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:07:12 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 12/25] PCI: v3-semi: Use pci_parse_request_of_pci_ranges()
Date: Wed, 16 Oct 2019 15:06:34 -0500
Message-Id: <20191016200647.32050-13-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130713_966108_3A881AF1 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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

Convert V3 host bridge to use the common
pci_parse_request_of_pci_ranges().

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- New patch

 drivers/pci/controller/pci-v3-semi.c | 35 +++++-----------------------
 1 file changed, 6 insertions(+), 29 deletions(-)

diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
index d219404bad92..96677520f6c1 100644
--- a/drivers/pci/controller/pci-v3-semi.c
+++ b/drivers/pci/controller/pci-v3-semi.c
@@ -241,10 +241,8 @@ struct v3_pci {
 	void __iomem *config_base;
 	struct pci_bus *bus;
 	u32 config_mem;
-	u32 io_mem;
 	u32 non_pre_mem;
 	u32 pre_mem;
-	phys_addr_t io_bus_addr;
 	phys_addr_t non_pre_bus_addr;
 	phys_addr_t pre_bus_addr;
 	struct regmap *map;
@@ -520,35 +518,22 @@ static int v3_integrator_init(struct v3_pci *v3)
 }

 static int v3_pci_setup_resource(struct v3_pci *v3,
-				 resource_size_t io_base,
 				 struct pci_host_bridge *host,
 				 struct resource_entry *win)
 {
 	struct device *dev = v3->dev;
 	struct resource *mem;
 	struct resource *io;
-	int ret;

 	switch (resource_type(win->res)) {
 	case IORESOURCE_IO:
 		io = win->res;
-		io->name = "V3 PCI I/O";
-		v3->io_mem = io_base;
-		v3->io_bus_addr = io->start - win->offset;
-		dev_dbg(dev, "I/O window %pR, bus addr %pap\n",
-			io, &v3->io_bus_addr);
-		ret = devm_pci_remap_iospace(dev, io, io_base);
-		if (ret) {
-			dev_warn(dev,
-				 "error %d: failed to map resource %pR\n",
-				 ret, io);
-			return ret;
-		}
+
 		/* Setup window 2 - PCI I/O */
-		writel(v3_addr_to_lb_base2(v3->io_mem) |
+		writel(v3_addr_to_lb_base2(pci_pio_to_address(io->start)) |
 		       V3_LB_BASE2_ENABLE,
 		       v3->base + V3_LB_BASE2);
-		writew(v3_addr_to_lb_map2(v3->io_bus_addr),
+		writew(v3_addr_to_lb_map2(io->start - win->offset),
 		       v3->base + V3_LB_MAP2);
 		break;
 	case IORESOURCE_MEM:
@@ -732,7 +717,6 @@ static int v3_pci_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	resource_size_t io_base;
 	struct resource *regs;
 	struct resource_entry *win;
 	struct v3_pci *v3;
@@ -741,7 +725,6 @@ static int v3_pci_probe(struct platform_device *pdev)
 	u16 val;
 	int irq;
 	int ret;
-	LIST_HEAD(res);

 	host = pci_alloc_host_bridge(sizeof(*v3));
 	if (!host)
@@ -793,12 +776,7 @@ static int v3_pci_probe(struct platform_device *pdev)
 	if (IS_ERR(v3->config_base))
 		return PTR_ERR(v3->config_base);

-	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, &res,
-						    &io_base);
-	if (ret)
-		return ret;
-
-	ret = devm_request_pci_bus_resources(dev, &res);
+	ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
 	if (ret)
 		return ret;

@@ -852,8 +830,8 @@ static int v3_pci_probe(struct platform_device *pdev)
 	writew(val, v3->base + V3_PCI_CMD);

 	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry(win, &res) {
-		ret = v3_pci_setup_resource(v3, io_base, host, win);
+	resource_list_for_each_entry(win, &host->windows) {
+		ret = v3_pci_setup_resource(v3, host, win);
 		if (ret) {
 			dev_err(dev, "error setting up resources\n");
 			return ret;
@@ -931,7 +909,6 @@ static int v3_pci_probe(struct platform_device *pdev)
 	val |= V3_SYSTEM_M_LOCK;
 	writew(val, v3->base + V3_SYSTEM);

-	list_splice_init(&res, &host->windows);
 	ret = pci_scan_root_bus_bridge(host);
 	if (ret) {
 		dev_err(dev, "failed to register host: %d\n", ret);
--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
