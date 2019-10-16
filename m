Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB227D9B38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ua/TA/GCucUaH1J0NIzwWwH0qdM7BnmMQslY3i8r25w=; b=Fv5a5JbIBbs4Ay
	8BvlXlgPxK0NoVdDgZMgqB5NYfrT/5yXB+BlyTEZVXjBdz5UvKICDxaeFlC6EyMSUOaygYg33EICQ
	RtDAkUrl8gTYYcnCq8wvb530Qc0cEzNp38PRJmez6pq7nlo3n45B+4fwVAV2axlBSV5KNY7Z+UbNX
	AsG+1OrXO/uXgg5UCyorSp6V9Fii8TTXGghrTjIYnIrbiTWDvjosAgzbCgO+K3wulnR2946IcueBh
	vZS+oacYiWZ8OqLJzGnh8wDnmhcfd5wcZg9kF12eUp130sXAhhtos8sqt1WSsG9mG4V5DPojyRGC1
	I471ocp8MOx+VV2YrnVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpgN-0008F0-BC; Wed, 16 Oct 2019 20:14:07 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZT-0001wQ-VX; Wed, 16 Oct 2019 20:07:02 +0000
Received: by mail-ot1-f67.google.com with SMTP id e11so21280283otl.5;
 Wed, 16 Oct 2019 13:06:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JIj9ILT7VVE9OfDmkYQ8ktnxwCT3rx9dL7R3IKVsvuI=;
 b=awOh5GNXv5Yoda06uyayBHBgKg7H2Q/Yfdy5eLlxahPHVEMtGdv4pZkCZ8HvNE4ov4
 RqMrCFWd7rDE8POXXMCEoi7VvTXA+vcGDLuraLmKj+Of4/LSlaKPjU8VML0DPAwnXeBD
 8+ZQ/csM36xnWeIsdBUPKlFH4d3SadOZU1T5NW/5L80jcY7zkOaO65PX/UBkC+H4yRG4
 I8fHi9e4+zHg0Hsi2qYHU3pCksj+cabaA5A8GpzC+//fTGCw0+2KTd4J4OMXs3LhRBpB
 wRKfu2oLpD9xGudnCC3NEynKxcS1UVBgW6mjDkeWKqFQ+kdAc/vmNH6LFp4yxM3De5n2
 /gpQ==
X-Gm-Message-State: APjAAAWwZn9muq+K6MfndfUe3KR8yA+wd02wVm/0RY9SPvpAIOFkNLLo
 DPuWqDpZwIOYgC/qkqdt/A==
X-Google-Smtp-Source: APXvYqxoimT0iMDdNMBOkPALG3bNj2ukak3LOt++z8YyoJ8J+qkFKwFheJMFoSp4/qlthDVO+w/7CQ==
X-Received: by 2002:a9d:61cd:: with SMTP id h13mr49260otk.84.1571256418364;
 Wed, 16 Oct 2019 13:06:58 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.06.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:06:57 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 04/25] PCI: altera: Use pci_parse_request_of_pci_ranges()
Date: Wed, 16 Oct 2019 15:06:26 -0500
Message-Id: <20191016200647.32050-5-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130700_061595_1F6DD942 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Convert altera host bridge to use the common
pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list first. Just
use bridge->windows directly and remove all the temporary list handling.

If an I/O range is present, then it will now be mapped. It's expected
that h/w which doesn't support I/O range will not define one.

Cc: Ley Foon Tan <lftan@altera.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: rfi@lists.rocketboards.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- Remove temporary resource list
---
 drivers/pci/controller/pcie-altera.c | 41 ++--------------------------
 1 file changed, 2 insertions(+), 39 deletions(-)

diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
index d2497ca43828..ba025efeae28 100644
--- a/drivers/pci/controller/pcie-altera.c
+++ b/drivers/pci/controller/pcie-altera.c
@@ -92,7 +92,6 @@ struct altera_pcie {
 	u8			root_bus_nr;
 	struct irq_domain	*irq_domain;
 	struct resource		bus_range;
-	struct list_head	resources;
 	const struct altera_pcie_data	*pcie_data;
 };
 
@@ -670,39 +669,6 @@ static void altera_pcie_isr(struct irq_desc *desc)
 	chained_irq_exit(chip, desc);
 }
 
-static int altera_pcie_parse_request_of_pci_ranges(struct altera_pcie *pcie)
-{
-	int err, res_valid = 0;
-	struct device *dev = &pcie->pdev->dev;
-	struct resource_entry *win;
-
-	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &pcie->resources, NULL);
-	if (err)
-		return err;
-
-	err = devm_request_pci_bus_resources(dev, &pcie->resources);
-	if (err)
-		goto out_release_res;
-
-	resource_list_for_each_entry(win, &pcie->resources) {
-		struct resource *res = win->res;
-
-		if (resource_type(res) == IORESOURCE_MEM)
-			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
-	}
-
-	if (res_valid)
-		return 0;
-
-	dev_err(dev, "non-prefetchable memory resource required\n");
-	err = -EINVAL;
-
-out_release_res:
-	pci_free_resource_list(&pcie->resources);
-	return err;
-}
-
 static int altera_pcie_init_irq_domain(struct altera_pcie *pcie)
 {
 	struct device *dev = &pcie->pdev->dev;
@@ -833,9 +799,8 @@ static int altera_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	INIT_LIST_HEAD(&pcie->resources);
-
-	ret = altera_pcie_parse_request_of_pci_ranges(pcie);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
+					      NULL);
 	if (ret) {
 		dev_err(dev, "Failed add resources\n");
 		return ret;
@@ -853,7 +818,6 @@ static int altera_pcie_probe(struct platform_device *pdev)
 	cra_writel(pcie, P2A_INT_ENA_ALL, P2A_INT_ENABLE);
 	altera_pcie_host_init(pcie);
 
-	list_splice_init(&pcie->resources, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = pcie;
 	bridge->busnr = pcie->root_bus_nr;
@@ -884,7 +848,6 @@ static int altera_pcie_remove(struct platform_device *pdev)
 
 	pci_stop_root_bus(bridge->bus);
 	pci_remove_root_bus(bridge->bus);
-	pci_free_resource_list(&pcie->resources);
 	altera_pcie_irq_teardown(pcie);
 
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
