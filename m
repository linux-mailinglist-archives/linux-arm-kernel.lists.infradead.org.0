Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69952E768B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:37:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxJuPn4Bosk6vsW65ykLyCgz22a/cy0M9FZh1APJuUw=; b=aYGED1f1RJTS/P
	VRMTA+Fdg4ZeIQtlgXTK+qK1fgupiuVVNjEQHxoK3NOSFPGHXsv+MECcOSaa/YReY7N5kp9KXsqNu
	GdLHeBDBLO6O1eHYwz46/BrFpTqaQivHVIKf/s5QlAb6ARl8XXCpBNTK/Re9gHDyPUDHM4+kHUdhW
	oYhLv0hZxIlzV7lL23/kc0+6mOMJ5J76DD7PxQguiWIwsEDQ+zKr2PDoce7IJDUl/Bsqu7S2J1sXe
	l21hPPlXlc5+CtAC1pIsTnEk8XebtM4sheVkrGztBi29/vzpkXL6o6DtZEVDi5l5DiqugWD7fIkke
	ghWa7lzH5pr4W/KzRAaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP80u-0002NZ-7b; Mon, 28 Oct 2019 16:37:04 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xG-0006uT-QA; Mon, 28 Oct 2019 16:33:20 +0000
Received: by mail-ot1-f65.google.com with SMTP id r14so2410211otn.5;
 Mon, 28 Oct 2019 09:33:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nW63jMBvuV1jC5LkGgClq/3WYdWidZxNV+2Nh/Z21ew=;
 b=gldLjJLPYciNDCr5Dzx99nuKVcl09LppImYAOrdp5Orur/u2X9GKZHajsxdrjewbko
 zqzZZS1MlX29vKPny8pivW38vni089L0m/Vtigw0SZ0ulbhqUx1QEXR+z6Fw/4cuxzOV
 KvsRryjlGDW/oJdKPn3sa3C6LRw8sT6eNvd6n3aJJUiO5y9VweDY+HSbPI7sYTh6msZo
 9+0wxRu5MmV/MjwBPchBjMiEVDjWFg/+5OwM1qX4WfnyVdpcyfnX8BMM1jkXtKkJZIpZ
 3m+X4GInUrq9zK48FBho6OHelMFpfd/9X4JfzsWIcR4aKszcF2Adpn2F/f2AJKzuU7ea
 SSNg==
X-Gm-Message-State: APjAAAU3j9m0aEBDJ9mB9hzrl8zHmhq/zhPmpRzW+UZA+/C5+n43ghKK
 iNkDsTSjF1NK0/xgsAhffA==
X-Google-Smtp-Source: APXvYqxhr3QGGC8pHRguZ0KGcav4CFccx7LcyeEsqrM8IAog45S1MROIl6X64sUTv9Rs+FE/3FigSg==
X-Received: by 2002:a05:6830:1695:: with SMTP id
 k21mr11501497otr.339.1572280396672; 
 Mon, 28 Oct 2019 09:33:16 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:16 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 08/25] PCI: mediatek: Use pci_parse_request_of_pci_ranges()
Date: Mon, 28 Oct 2019 11:32:39 -0500
Message-Id: <20191028163256.8004-9-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093319_170450_706DBC62 
X-CRM114-Status: GOOD (  14.33  )
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

Convert Mediatek host bridge to use the common
pci_parse_request_of_pci_ranges().

Cc: Ryder Lee <ryder.lee@mediatek.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- Use resource_list_get_entry_of_type
---
 drivers/pci/controller/pcie-mediatek.c | 43 ++++++++------------------
 1 file changed, 13 insertions(+), 30 deletions(-)

diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index 626a7c352dfd..d9206a3cd56b 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -216,7 +216,6 @@ struct mtk_pcie {
 	void __iomem *base;
 	struct clk *free_ck;
 
-	struct resource mem;
 	struct list_head ports;
 	const struct mtk_pcie_soc *soc;
 	unsigned int busnr;
@@ -661,11 +660,19 @@ static int mtk_pcie_setup_irq(struct mtk_pcie_port *port,
 static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
 {
 	struct mtk_pcie *pcie = port->pcie;
-	struct resource *mem = &pcie->mem;
+	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
+	struct resource *mem = NULL;
+	struct resource_entry *entry;
 	const struct mtk_pcie_soc *soc = port->pcie->soc;
 	u32 val;
 	int err;
 
+	entry = resource_list_first_type(&host->windows, IORESOURCE_MEM);
+	if (entry)
+		mem = entry->res;
+	if (!mem)
+		return -EINVAL;
+
 	/* MT7622 platforms need to enable LTSSM and ASPM from PCIe subsys */
 	if (pcie->base) {
 		val = readl(pcie->base + PCIE_SYS_CFG_V2);
@@ -1023,39 +1030,15 @@ static int mtk_pcie_setup(struct mtk_pcie *pcie)
 	struct mtk_pcie_port *port, *tmp;
 	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
 	struct list_head *windows = &host->windows;
-	struct resource_entry *win, *tmp_win;
-	resource_size_t io_base;
+	struct resource *bus;
 	int err;
 
-	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    windows, &io_base);
+	err = pci_parse_request_of_pci_ranges(dev, windows,
+					      &bus);
 	if (err)
 		return err;
 
-	err = devm_request_pci_bus_resources(dev, windows);
-	if (err < 0)
-		return err;
-
-	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry_safe(win, tmp_win, windows) {
-		switch (resource_type(win->res)) {
-		case IORESOURCE_IO:
-			err = devm_pci_remap_iospace(dev, win->res, io_base);
-			if (err) {
-				dev_warn(dev, "error %d: failed to map resource %pR\n",
-					 err, win->res);
-				resource_list_destroy_entry(win);
-			}
-			break;
-		case IORESOURCE_MEM:
-			memcpy(&pcie->mem, win->res, sizeof(*win->res));
-			pcie->mem.name = "non-prefetchable";
-			break;
-		case IORESOURCE_BUS:
-			pcie->busnr = win->res->start;
-			break;
-		}
-	}
+	pcie->busnr = bus->start;
 
 	for_each_available_child_of_node(node, child) {
 		int slot;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
