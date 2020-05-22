Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB411DF356
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmrION8elVm/nCNrM0bmZvmbj4cxsy4Hu/DhV9rKkEc=; b=TKA0iKsLvzeZZp
	t6cd6SnTLUKDUfvL1ZesreBBzHvBlEuhKJHwBAEprgyFFPm/7/MQXdaoIWFVRXCNZT/Gm5y72xLpT
	znBFGwhcNBufcCpvRHtNxRu/7FuxsLtPd8Nhkbny+P+OK1X+FnBv9i7kRm20RIyw/0W5m0Lr6fbA7
	ZSUU872RhKU+3LenfruEMrmM6NzCbWZP22ts22YkI1HniFsA4n/hylEDUFDRIo6Yj546k03ew3FUA
	7dSY8HByeIMRizubWf+XiZctlkkJXW7oH251e6+NRAk58GX0u78JoXFbGaharkK6XhyztBzAiOfvf
	TST/eJtsCgm8u8Ls89IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHTZ-0000k9-14; Fri, 22 May 2020 23:53:17 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHPG-0003ZV-1f; Fri, 22 May 2020 23:48:52 +0000
Received: by mail-il1-f195.google.com with SMTP id 4so12533537ilg.1;
 Fri, 22 May 2020 16:48:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zH2C4ImO8nBnvyYQO4O7Y0tt8wrJ36q82CPBc6+58Gs=;
 b=iP7/Z03t/v6yn3bkrJE+7nmpL71uBKUP+0jZbJhpnp6gqJb6ASL/jktvzWUzsn2AYd
 cQidnR0bA8MT2r4kzU60PocZMmAdu6nBnWm4Bdeg6wEG0Rf74/2uZ5xkpLN5RZebPuc+
 DBYua2Ohv3xYfpLkKJPWaVF3qBmke7zf8UIlEZKp5mh9kaJS0wBgwQu6/i5+mdSE/2/s
 jioM+iblxy36H5ArAsAnEQIKmIH2Zs4x2YXfLdb9qiNFs6ME9h80okqFtK+Ry7N6peTv
 wpadakcghMFr71xD8qFQh3g9NJoqe/Ng3HpyGhdxpYHXUkJ5i8Zuu7CbhbEnHREPW4Y2
 W/sA==
X-Gm-Message-State: AOAM533Nh1AH6DfuWfWS5JcLonsa/fYn28nRWx29QRXN7L3QQDnkt+YR
 INNf00DRtZvM1SAn7bfM+lcq73g=
X-Google-Smtp-Source: ABdhPJybuB2O9NZz3pehcS6OOH6aSsjmBYbiZ8trb6adP3sKcXHHx5eDTRdxXxjc/F2eV1Dz4MmC9g==
X-Received: by 2002:a92:c94f:: with SMTP id i15mr14637382ilq.185.1590191327879; 
 Fri, 22 May 2020 16:48:47 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:47 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 13/15] PCI: rockchip: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:30 -0600
Message-Id: <20200522234832.954484-14-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164850_354291_85D5606F 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rockchip host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

Cc: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 18 ++++--------------
 drivers/pci/controller/pcie-rockchip.h      |  1 -
 2 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 94af6f5828a3..6a3c8442258b 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -949,7 +949,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 {
 	struct rockchip_pcie *rockchip;
 	struct device *dev = &pdev->dev;
-	struct pci_bus *bus, *child;
 	struct pci_host_bridge *bridge;
 	struct resource *bus_res;
 	int err;
@@ -1015,20 +1014,10 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
 
-	err = pci_scan_root_bus_bridge(bridge);
+	err = pci_host_probe(bridge);
 	if (err < 0)
 		goto err_remove_irq_domain;
 
-	bus = bridge->bus;
-
-	rockchip->root_bus = bus;
-
-	pci_bus_size_bridges(bus);
-	pci_bus_assign_resources(bus);
-	list_for_each_entry(child, &bus->children, node)
-		pcie_bus_configure_settings(child);
-
-	pci_bus_add_devices(bus);
 	return 0;
 
 err_remove_irq_domain:
@@ -1051,9 +1040,10 @@ static int rockchip_pcie_remove(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(rockchip);
 
-	pci_stop_root_bus(rockchip->root_bus);
-	pci_remove_root_bus(rockchip->root_bus);
+	pci_stop_root_bus(bridge->bus);
+	pci_remove_root_bus(bridge->bus);
 	irq_domain_remove(rockchip->irq_domain);
 
 	rockchip_pcie_deinit_phys(rockchip);
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index d90dfb354573..4012543bafbe 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -303,7 +303,6 @@ struct rockchip_pcie {
 	struct	device *dev;
 	struct	irq_domain *irq_domain;
 	int     offset;
-	struct pci_bus *root_bus;
 	void    __iomem *msg_region;
 	phys_addr_t msg_bus_addr;
 	bool is_rc;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
