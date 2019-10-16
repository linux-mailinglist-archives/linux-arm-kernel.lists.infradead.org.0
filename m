Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8F5D9B95
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQg/aimQ30pxfRcJnv4dGhB/AtLeFJFWXZ7Al+LxUMA=; b=OpbRhf8ySACISb
	OJOTTXBKoC/jFtk5UAYW3aeVGcioe9UNx/mq8n09RykPo0PMX0ISdc5qw2cFeXq5rgegSOAqBniY0
	4yfO8uJq3fN/8W5tt5hSJcZYowxRMuxnt3/HPe9wA97F4A5r4C7R2JUmKHWvpFZSXglAkD3WB/McS
	PVw1xC1b1DbmPQp6ZQez6QBicWdOj+NpCSfnuEhPdzXHQUkGUGAzu+qxtaw1ZJHGmaRNnX81jOu2o
	cn4t4r/Osdve1+4XshBUz/3IM7smKR0CBS69uNKfwGxcMWmlLFvW6stCZvZTu+x+3eh/x4e8PkgHU
	6dkIzUxhUid3bCRaXFgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpmy-0000CY-No; Wed, 16 Oct 2019 20:20:56 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZw-0002N9-Qw; Wed, 16 Oct 2019 20:07:38 +0000
Received: by mail-ot1-f68.google.com with SMTP id o44so21291262ota.10;
 Wed, 16 Oct 2019 13:07:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XzKyx3hGWss5OyYjnaux42GwkpReDhw7ttXIKJ3XApk=;
 b=acWwH3ycNX+8yrjh7cPmZ9kqRolRvmm0dOfopdStOpEaMoWzV1uypxtbtizJfiwtgo
 dlKK/j4zwkSSMKJ8XFhskUp7gQVVb2eAttGk8cmyPmvvP2ENOQT0X7gKssysVKx44H8l
 qMIOgl8xMfEqLeL40KL6JFpQY8XMqFOfLwdwQbiYi96Gf8BLGUverGqllfVVqgU8hDqM
 Zrmy4Z75q9rArcS5Bs9dYW9caHndI5hB0h+Nxse9S8UezMhrqrDPjd0m6eMvzSr+yuku
 XUHJet0VreQwxh49zETkYHrgiGSWy4SJvkLGaheAbIPtJH1Eg/3PRekqcI0rKe6gMU86
 MOYg==
X-Gm-Message-State: APjAAAVMFY00MAxkG/MJExZfXqAwahaDXbFLB8odJlvBstWI5OuM18jJ
 +yumsWbLKbx/OI0OyQNBTA==
X-Google-Smtp-Source: APXvYqzuOOI5O9nPE4chqz7q1M50UXLGHgUlkPl19eYyojabF8hEv3WJogI/0IUIWHhrDxD1NedNKw==
X-Received: by 2002:a05:6830:1e59:: with SMTP id
 e25mr36910otj.342.1571256447566; 
 Wed, 16 Oct 2019 13:07:27 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.07.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:07:26 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 20/25] PCI: ftpci100: Use inbound resources for setup
Date: Wed, 16 Oct 2019 15:06:42 -0500
Message-Id: <20191016200647.32050-21-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130728_931610_F1969ED9 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
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

Now that the helpers provide the inbound resources in the host bridge
'dma_ranges' resource list, convert Faraday ftpci100 host bridge to use
the resource list to setup the inbound addresses.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-ftpci100.c | 26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
index 5824913e311b..e6b498de35e1 100644
--- a/drivers/pci/controller/pci-ftpci100.c
+++ b/drivers/pci/controller/pci-ftpci100.c
@@ -375,12 +375,11 @@ static int faraday_pci_setup_cascaded_irq(struct faraday_pci *p)
 	return 0;
 }
 
-static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p,
-					    struct device_node *np)
+static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p)
 {
-	struct of_pci_range range;
-	struct of_pci_range_parser parser;
 	struct device *dev = p->dev;
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(p);
+	struct resource_entry *entry;
 	u32 confreg[3] = {
 		FARADAY_PCI_MEM1_BASE_SIZE,
 		FARADAY_PCI_MEM2_BASE_SIZE,
@@ -389,19 +388,12 @@ static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p,
 	int i = 0;
 	u32 val;
 
-	if (of_pci_dma_range_parser_init(&parser, np)) {
-		dev_err(dev, "missing dma-ranges property\n");
-		return -EINVAL;
-	}
-
-	/*
-	 * Get the dma-ranges from the device tree
-	 */
-	for_each_of_pci_range(&parser, &range) {
-		u64 end = range.pci_addr + range.size - 1;
+	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
+		u64 pci_addr = entry->res->start - entry->offset;
+		u64 end = entry->res->end - entry->offset;
 		int ret;
 
-		ret = faraday_res_to_memcfg(range.pci_addr, range.size, &val);
+		ret = faraday_res_to_memcfg(pci_addr, resource_size(entry->res), &val);
 		if (ret) {
 			dev_err(dev,
 				"DMA range %d: illegal MEM resource size\n", i);
@@ -409,7 +401,7 @@ static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p,
 		}
 
 		dev_info(dev, "DMA MEM%d BASE: 0x%016llx -> 0x%016llx config %08x\n",
-			 i + 1, range.pci_addr, end, val);
+			 i + 1, pci_addr, end, val);
 		if (i <= 2) {
 			faraday_raw_pci_write_config(p, 0, 0, confreg[i],
 						     4, val);
@@ -539,7 +531,7 @@ static int faraday_pci_probe(struct platform_device *pdev)
 			cur_bus_speed = PCI_SPEED_66MHz;
 	}
 
-	ret = faraday_pci_parse_map_dma_ranges(p, dev->of_node);
+	ret = faraday_pci_parse_map_dma_ranges(p);
 	if (ret)
 		return ret;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
