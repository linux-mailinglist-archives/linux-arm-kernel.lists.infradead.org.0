Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7850D9B4F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AG/TFz+P7y2XZJ6TiPggMP45lXAWsad+TDssiJ9/3Uk=; b=jw92P1oqyRXnXF
	HyZfNIOiF0VloKMpfg6vDijV13bMiZ7ht3WaEIYaivf/1uXT/RN9reH43j2HpkhDmqxx5RBEgM728
	vQsU8YoMEQ/B0E9E7pUIwUBVAqKMyPvleEkiNWjsVFoEGs0BMOBdal0W3ZG9Iq1FrSP0Dx4yhci1Z
	KoJYi2AV73BJkiKCVFiodKPWUt1mWUR/LrLDMssJ65nhTSsj0kGDlr41PQl9s2Z/OL6chSorZJlD8
	o3mkohtRHOqn1gNvuRKuZ9anpbUpwz8fvHmOVIPNYD79d5brc1I7Z6get50/5K8XXPwO2HMTgWt4S
	QK4Ozj1tVPxdXyAP0aXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpho-0001As-Gt; Wed, 16 Oct 2019 20:15:36 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZX-00020I-6f; Wed, 16 Oct 2019 20:07:05 +0000
Received: by mail-oi1-f194.google.com with SMTP id w6so94456oie.11;
 Wed, 16 Oct 2019 13:07:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1wQepvUEyhoVmvx8KNqIDl96oC7fkoL0Znn4D/qcaeY=;
 b=kaRbBYep9iSwo81/crVYfQ2xPheVnKQQz3upS6O4krTu3UFQQfRI1YSjAd7zs1ZCRR
 79EDufPLQ+HBs32Wc5ifks4H2/u3gfKIjFNBbE9eHg6jkDAKLb1r0tv+TGFqBIGemqCI
 QkSF5dQYOyOP0d8tKyDgDd0rOaSwKU7rMHmfyChcldKmn1xvmyd3HzinzZb65KqmCUfc
 F5/GBTeDgzZ11tjP+ZTykWKufsfv8RG+LUjeRE8A0PUIvKNoPkjULa1guVgP9jIH+lKS
 m7mOqZ91je7sppxmzSth9glbSTzwp4x6OlPAXYB+fveTC2uI0k6lKom+8RuNAUwpY9Jm
 szmQ==
X-Gm-Message-State: APjAAAV3t4YPuYWJtq++u5vnns60BxkpKTQ7N1uJcCYkeTy+5m0wITll
 8kRQYQzo0H9AmtBWmXyaVQ==
X-Google-Smtp-Source: APXvYqwmDaAbx79jpwPxWun/bS589WutW9tyb1IoIzVDaMHclzoxPvZEk8Lr6qH4mfa4hXLWDO9fDQ==
X-Received: by 2002:a05:6808:11a:: with SMTP id b26mr89503oie.37.1571256422032; 
 Wed, 16 Oct 2019 13:07:02 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.07.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:07:01 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 06/25] PCI: faraday: Use pci_parse_request_of_pci_ranges
Date: Wed, 16 Oct 2019 15:06:28 -0500
Message-Id: <20191016200647.32050-7-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130703_277438_6332A504 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
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

Convert the Faraday host bridge to use the common
pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list first. Just
use bridge->windows directly and remove all the temporary list handling.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- New patch

 drivers/pci/controller/pci-ftpci100.c | 51 ++++++---------------------
 1 file changed, 11 insertions(+), 40 deletions(-)

diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
index bf5ece5d9291..12bc7daef5b5 100644
--- a/drivers/pci/controller/pci-ftpci100.c
+++ b/drivers/pci/controller/pci-ftpci100.c
@@ -430,10 +430,8 @@ static int faraday_pci_probe(struct platform_device *pdev)
 	const struct faraday_pci_variant *variant =
 		of_device_get_match_data(dev);
 	struct resource *regs;
-	resource_size_t io_base;
 	struct resource_entry *win;
 	struct faraday_pci *p;
-	struct resource *mem;
 	struct resource *io;
 	struct pci_host_bridge *host;
 	struct clk *clk;
@@ -441,7 +439,6 @@ static int faraday_pci_probe(struct platform_device *pdev)
 	unsigned char cur_bus_speed = PCI_SPEED_33MHz;
 	int ret;
 	u32 val;
-	LIST_HEAD(res);

 	host = devm_pci_alloc_host_bridge(dev, sizeof(*p));
 	if (!host)
@@ -480,44 +477,20 @@ static int faraday_pci_probe(struct platform_device *pdev)
 	if (IS_ERR(p->base))
 		return PTR_ERR(p->base);

-	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &res, &io_base);
+	ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
 	if (ret)
 		return ret;

-	ret = devm_request_pci_bus_resources(dev, &res);
-	if (ret)
-		return ret;
-
-	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry(win, &res) {
-		switch (resource_type(win->res)) {
-		case IORESOURCE_IO:
-			io = win->res;
-			io->name = "Gemini PCI I/O";
-			if (!faraday_res_to_memcfg(io->start - win->offset,
-						   resource_size(io), &val)) {
-				/* setup I/O space size */
-				writel(val, p->base + PCI_IOSIZE);
-			} else {
-				dev_err(dev, "illegal IO mem size\n");
-				return -EINVAL;
-			}
-			ret = devm_pci_remap_iospace(dev, io, io_base);
-			if (ret) {
-				dev_warn(dev, "error %d: failed to map resource %pR\n",
-					 ret, io);
-				continue;
-			}
-			break;
-		case IORESOURCE_MEM:
-			mem = win->res;
-			mem->name = "Gemini PCI MEM";
-			break;
-		case IORESOURCE_BUS:
-			break;
-		default:
-			break;
+	win = resource_list_get_entry_of_type(&host->windows, IORESOURCE_IO);
+	if (win) {
+		io = win->res;
+		if (!faraday_res_to_memcfg(io->start - win->offset,
+					   resource_size(io), &val)) {
+			/* setup I/O space size */
+			writel(val, p->base + PCI_IOSIZE);
+		} else {
+			dev_err(dev, "illegal IO mem size\n");
+			return -EINVAL;
 		}
 	}

@@ -569,7 +542,6 @@ static int faraday_pci_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;

-	list_splice_init(&res, &host->windows);
 	ret = pci_scan_root_bus_bridge(host);
 	if (ret) {
 		dev_err(dev, "failed to scan host: %d\n", ret);
@@ -581,7 +553,6 @@ static int faraday_pci_probe(struct platform_device *pdev)

 	pci_bus_assign_resources(p->bus);
 	pci_bus_add_devices(p->bus);
-	pci_free_resource_list(&res);

 	return 0;
 }
--
2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
