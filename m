Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF331DF346
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bNDWKRDofd2/n/H0+/s1gTqHqf60AxUSUCec0C16V0=; b=Z+0jWt7ys5JxzH
	b31maVIrMfoeX7xaZw1kxRa/X+S3aZLWLN9OwGHsgcCjBWWRoZdukPnoqUGWiHSUO5eWKPFUgOhXH
	vaQxAqj6Wve+gyzBOu9mBsGON3cjDDYD+jbFtFxydSE0geO9Um4Wr8ptGtLoBn2dYbxEo6l4hTRrV
	8NnSEeHweYzuvX9R7PyALTjiptMbNPX74YfIeOUC0brRYieOBxOtRpZB4RE0BqVZGXOM1EMylNXKN
	imvmTlcvqD6fjKayTIfCyPPHMzE6+ZzV9pQ/56UY7n4QCTNt+gAPCxOz+pQOHXqzfgfb40AQIrShC
	RNgZm7rrdgWtgg1500UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHRx-0007gr-R4; Fri, 22 May 2020 23:51:37 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHPA-0003Rn-6d
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:46 +0000
Received: by mail-io1-f67.google.com with SMTP id q8so11952017iow.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hu+r9D87KcoWa189MTy6Edmp4pidtqObZuiMTiz4cgc=;
 b=GNgo21s7PXbwEWwO6sB2fQd6H0Zduw1iUif9UhvGcu5XJ0BbDmm02uNjtz6ruH65Kr
 zN1RWZkPpGVcLtDdUme8Lb2IT6Kh4xxHIOi8FPHJ60vjeqeZm659RvKNO6EvyMmEqL+4
 MaVZPKYDN6iMcuO9/0GUKlKTsqqfCeLChjSxMlvAIG22boEZHtJspyHuDQ+CF+uzjAt9
 9TogolR3VQ56L5wcHwQ9aEyFZrFfxcdgHvk0wugy17DjY9ZI4i0JxS+k4lTX8ypvc0JA
 NkhgkTtNokFfg1kee3wQPz+No2+3BsEl08H6Ma+S7aE+HLninqGbrLY5P0ui6sZ+mccW
 LTZA==
X-Gm-Message-State: AOAM533iM9Ntfhz0Jxq/AfX8Qq72blkUB/w3MyntCjjxqur1oGcCatWI
 CJCywWf3HdEq99cNsbs64sxcE84=
X-Google-Smtp-Source: ABdhPJzvS3aCPPD+k4N9FAiNd4VPWGqJzq7xAINIEBc8KXR6heifVNZNNeQbLmVhFEJExzb4WHJESg==
X-Received: by 2002:a6b:bc85:: with SMTP id m127mr5019308iof.89.1590191322407; 
 Fri, 22 May 2020 16:48:42 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:41 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 08/15] PCI: versatile: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:25 -0600
Message-Id: <20200522234832.954484-9-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164844_342518_13E26164 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The versatile host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-versatile.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
index b911359b6d81..e90f0cc65c73 100644
--- a/drivers/pci/controller/pci-versatile.c
+++ b/drivers/pci/controller/pci-versatile.c
@@ -70,7 +70,6 @@ static int versatile_pci_probe(struct platform_device *pdev)
 	int ret, i, myslot = -1, mem = 1;
 	u32 val;
 	void __iomem *local_pci_cfg_base;
-	struct pci_bus *bus, *child;
 	struct pci_host_bridge *bridge;
 
 	bridge = devm_pci_alloc_host_bridge(dev, 0);
@@ -164,18 +163,7 @@ static int versatile_pci_probe(struct platform_device *pdev)
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
 
-	ret = pci_scan_root_bus_bridge(bridge);
-	if (ret < 0)
-		return ret;
-
-	bus = bridge->bus;
-
-	pci_assign_unassigned_bus_resources(bus);
-	list_for_each_entry(child, &bus->children, node)
-		pcie_bus_configure_settings(child);
-	pci_bus_add_devices(bus);
-
-	return 0;
+	return pci_host_probe(bridge);
 }
 
 static const struct of_device_id versatile_pci_of_match[] = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
