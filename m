Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB737E76B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:40:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OkMGXKg0wyz5FEuMn4GlqhdPhfhwZhHSl1PVt25DkZg=; b=GI3X4SS4oENVIt
	nSCi0gPmkkWHetx2VIOZOjXz59zhK7ob6a96+NttZGJ1jWed7UJw8zqi8yI76dtTqfNmUjFifSBXj
	ONwdQx9OtC1cgLsIsMq1QQn4AleWviBII4u6TWOHntBL3KVrmCEmyI1OX3fAfKwXtFRNTAEaxwN7H
	KXivhVQypsao1PfoXje3j/+Ycdc/l2XnUtCYlfX64NkFATEFAtQgpoNGteQ+zuRGL20OjV1sWLyaI
	/MPAw1K0pUbyM5Qayam9pYRElef9VwThjElIZQqrMC+GcwjzNRrguR/N578rsnYhunS44KUBfdHJd
	MOcs3etUfdt4ZfssPdzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP83c-00058n-HR; Mon, 28 Oct 2019 16:39:52 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xc-0007EL-Es; Mon, 28 Oct 2019 16:33:42 +0000
Received: by mail-oi1-f193.google.com with SMTP id n16so4147170oig.2;
 Mon, 28 Oct 2019 09:33:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XywxT9T0e0+FybaV43vak1KY/CRf/N9np0EBtvYRcMA=;
 b=Xw3R4GTqXklfNNTKK6FiDGLoahL9nezsdWEsJoyadOACtVDNk3hfvj4MfrmANvsBbi
 yEJJZlfg5dQB0KiV7WJHAyXNgIxJNfB5n0hK/FWpAbe+pwgHKvgJhseVNk/YAmsROSYs
 rqB0iGgS/JZFFuQ9zM1C6cELGsxvhw8XWaTS5GaQJ3hWT/CW+2XKaw+l3W4CgqUSbR32
 /93BWgUbJuKY+pZDp5L8FmhnEI1H5tPo8cQNVJIU8NM162hDmiqaaQBIwJwP1Beotn7b
 GEPOeuz+ys4YNgYaA7D7XF+rp4jK2v5hOr1iCHRfEzUOP30v26F9lFoktUp6faYCOxs+
 LQtA==
X-Gm-Message-State: APjAAAV7E7mI9JDmxeRbYrs38JLrX1GqfcYG9cJ5zvujKmOCDWPL4yza
 P3O9WSnBASNgDOoh1bUWAw==
X-Google-Smtp-Source: APXvYqyShSuAsZJCcAzu7l8pHQLrW9ipkAinBjLrW2jh1IsJtYa0AM8h36pePN7rT7LnX4C6RtGhHw==
X-Received: by 2002:a54:4601:: with SMTP id p1mr108616oip.113.1572280419352;
 Mon, 28 Oct 2019 09:33:39 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:38 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 16/25] PCI: versatile: Use pci_parse_request_of_pci_ranges()
Date: Mon, 28 Oct 2019 11:32:47 -0500
Message-Id: <20191028163256.8004-17-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093340_568390_A25E06B7 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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

Convert ARM Versatile host bridge to use the common
pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list first. Just
use bridge->windows directly and remove all the temporary list handling.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- Fix 'mem' initial value to 1
- Remove temporary resource list
---
 drivers/pci/controller/pci-versatile.c | 64 +++++---------------------
 1 file changed, 11 insertions(+), 53 deletions(-)

diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
index f59ad2728c0b..18697f2ea345 100644
--- a/drivers/pci/controller/pci-versatile.c
+++ b/drivers/pci/controller/pci-versatile.c
@@ -62,65 +62,16 @@ static struct pci_ops pci_versatile_ops = {
 	.write	= pci_generic_config_write,
 };
 
-static int versatile_pci_parse_request_of_pci_ranges(struct device *dev,
-						     struct list_head *res)
-{
-	int err, mem = 1, res_valid = 0;
-	resource_size_t iobase;
-	struct resource_entry *win, *tmp;
-
-	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, res, &iobase);
-	if (err)
-		return err;
-
-	err = devm_request_pci_bus_resources(dev, res);
-	if (err)
-		goto out_release_res;
-
-	resource_list_for_each_entry_safe(win, tmp, res) {
-		struct resource *res = win->res;
-
-		switch (resource_type(res)) {
-		case IORESOURCE_IO:
-			err = devm_pci_remap_iospace(dev, res, iobase);
-			if (err) {
-				dev_warn(dev, "error %d: failed to map resource %pR\n",
-					 err, res);
-				resource_list_destroy_entry(win);
-			}
-			break;
-		case IORESOURCE_MEM:
-			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
-
-			writel(res->start >> 28, PCI_IMAP(mem));
-			writel(PHYS_OFFSET >> 28, PCI_SMAP(mem));
-			mem++;
-
-			break;
-		}
-	}
-
-	if (res_valid)
-		return 0;
-
-	dev_err(dev, "non-prefetchable memory resource required\n");
-	err = -EINVAL;
-
-out_release_res:
-	pci_free_resource_list(res);
-	return err;
-}
-
 static int versatile_pci_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct resource *res;
-	int ret, i, myslot = -1;
+	struct resource_entry *entry;
+	int ret, i, myslot = -1, mem = 1;
 	u32 val;
 	void __iomem *local_pci_cfg_base;
 	struct pci_bus *bus, *child;
 	struct pci_host_bridge *bridge;
-	LIST_HEAD(pci_res);
 
 	bridge = devm_pci_alloc_host_bridge(dev, 0);
 	if (!bridge)
@@ -141,10 +92,18 @@ static int versatile_pci_probe(struct platform_device *pdev)
 	if (IS_ERR(versatile_cfg_base[1]))
 		return PTR_ERR(versatile_cfg_base[1]);
 
-	ret = versatile_pci_parse_request_of_pci_ranges(dev, &pci_res);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL);
 	if (ret)
 		return ret;
 
+	resource_list_for_each_entry(entry, &bridge->windows) {
+		if (resource_type(entry->res) == IORESOURCE_MEM) {
+			writel(entry->res->start >> 28, PCI_IMAP(mem));
+			writel(PHYS_OFFSET >> 28, PCI_SMAP(mem));
+			mem++;
+		}
+	}
+
 	/*
 	 * We need to discover the PCI core first to configure itself
 	 * before the main PCI probing is performed
@@ -197,7 +156,6 @@ static int versatile_pci_probe(struct platform_device *pdev)
 	pci_add_flags(PCI_ENABLE_PROC_DOMAINS);
 	pci_add_flags(PCI_REASSIGN_ALL_BUS);
 
-	list_splice_init(&pci_res, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = NULL;
 	bridge->busnr = 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
