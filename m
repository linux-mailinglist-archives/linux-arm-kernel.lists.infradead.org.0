Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88112BD490
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 23:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIUAhSKxADKYpmJLV4kf77QuLbVWWNMh5YFUGqc/rzQ=; b=b4Amw8pPSYe0ZW
	05gTUHVYTJJAdoxoSc4oC48kUOWEY8NZgPh6Bwy9NYIXYH5d2c72Q35f8uTvnChhGwW5vhXmgt//d
	BIu2dPRHtrvunEEfRmn++/KzyNQDcqgKMtCik4ozqiJkDFkx1BGRkf4p11XwP0r7OQq1ZPfcOqrX6
	kjB+cMy6sYUMK07qgaTXfLscn+m2Avq5uBfBUjFBBEZXObCsBaRl1L38cjDiFCG8sjqTjCcD1ot5M
	gJM6yG/MrZCtXY3EGH0U/0xQZVmeG13xxlgvvvKlIp1ZZUvTsUP0zXl0Tgan6wfcEVvvxLXUpcps9
	XxCbeSzmYT58e0MTTj2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCsfw-0006nO-VV; Tue, 24 Sep 2019 21:48:48 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCsdq-0005S5-Tl
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 21:46:40 +0000
Received: by mail-oi1-f193.google.com with SMTP id t84so3042216oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 14:46:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JFGVP1gTb36lMoxSPHjuhPE/KeYNGUEeUXlv9JWR1dI=;
 b=SZHAib2pHWST7Bwt6d6BUEkfVDvOBO0ZPn2CXLXsgasg6pO5cLmoM5OJd8RlSiiYd3
 NtvN1zvjvko6GFLyQ80lQgRkQp3YCt49O2SjAh0WKxdw6se3pdP8nhQwum1MoXX1MU9G
 4Xtn5bUa3e5aA5LyPXxCwpncJETKnWlnCBeMAUAGCwcgoCNkX2V83UcDx0RebuPcjChd
 yjKV8/PJu3zu+BJO25khCJp4xXu81DZw/lvN9ZZc+cXpKQvR8U7cLm/DL4817nqoJcsw
 fztN8CUq7Tb94zY/WmxAidXJ6Wrq5f7r86qTC15fQ4/oNMULSmHOwM5vpQ6pqcfepwfQ
 gd8w==
X-Gm-Message-State: APjAAAXTI1GfbUNWkddf6wXlZtmdDKDGxxHQiZsDTZkR3LcEgPLHZKQm
 hlnGsKqHy68FkUgk3bGydg==
X-Google-Smtp-Source: APXvYqxzmL05Q/VVNyaKHOpBcnC2Byr6GGa7fArDJxSh7BTq5kENGbIQ1jSGPDjT/+961bZtkS/6nQ==
X-Received: by 2002:aca:5254:: with SMTP id g81mr2094149oib.67.1569361597595; 
 Tue, 24 Sep 2019 14:46:37 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id s66sm976787otb.65.2019.09.24.14.46.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 14:46:36 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 05/11] PCI: versatile: Use pci_parse_request_of_pci_ranges()
Date: Tue, 24 Sep 2019 16:46:24 -0500
Message-Id: <20190924214630.12817-6-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924214630.12817-1-robh@kernel.org>
References: <20190924214630.12817-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_144638_973900_F8135F75 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert ARM Versatile host bridge to use the common
pci_parse_request_of_pci_ranges().

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-versatile.c | 62 +++++---------------------
 1 file changed, 11 insertions(+), 51 deletions(-)

diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
index f59ad2728c0b..237b1abb26f2 100644
--- a/drivers/pci/controller/pci-versatile.c
+++ b/drivers/pci/controller/pci-versatile.c
@@ -62,60 +62,12 @@ static struct pci_ops pci_versatile_ops = {
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
+	int ret, i, myslot = -1, mem = 0;
 	u32 val;
 	void __iomem *local_pci_cfg_base;
 	struct pci_bus *bus, *child;
@@ -141,10 +93,18 @@ static int versatile_pci_probe(struct platform_device *pdev)
 	if (IS_ERR(versatile_cfg_base[1]))
 		return PTR_ERR(versatile_cfg_base[1]);
 
-	ret = versatile_pci_parse_request_of_pci_ranges(dev, &pci_res);
+	ret = pci_parse_request_of_pci_ranges(dev, &pci_res, NULL);
 	if (ret)
 		return ret;
 
+	resource_list_for_each_entry(entry, &pci_res) {
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
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
