Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2D01DF341
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5uUQMoBXwKwyibK4A7t0K50kTTBDOC47IYbONoEN9c=; b=FCcOkeK6XZJjAD
	B7ySwGAvDqmxHXRgsTrAPsJgL3I8IOGYD/lFar9oq0za4uduONscDdFBhDfggkKR2THz295ba/tsT
	xEr0ofN3HaJUIpB+xqxFu8nJtRvW2uTszLgCAQocDo/DAVEoBTLGmoXAYXYLWAMlmPwtCBrJWy+cJ
	22O3NTnQDlsckdiwNTS8J1XiSF/qkuhjN4XL4lZFKr2nliTHj1/aqmR/makZPyetSxG9VoH7chkYT
	VeEF3PzdnPVEmcto57Q1gg4GQBK1mbw2PX65yKLLvQBoX17woeJJNrvN3+t8xTnOam7L+nfzc+QU+
	U4zOgJlWkEP0MUxEJoMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHQn-0004K8-1N; Fri, 22 May 2020 23:50:25 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHP5-0003MG-9L; Fri, 22 May 2020 23:48:40 +0000
Received: by mail-il1-f193.google.com with SMTP id 4so12533298ilg.1;
 Fri, 22 May 2020 16:48:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fcOH9Yyg8RTS1uDyK4ju1tKTwPN2SKJdo9WLhc7R054=;
 b=Gi/3Ei4PZu0elGWQYPUzN0iqynSjfNvmUucR5tSFfzCHd1Zwjr6uHhfDWGcNr8zXDN
 hrVfbEXOswXwu1Vv3CZ00ODUNUURjwFiWu4DnkCyPxsIEOTVBuTtfjtEzrv3v+vI63Yu
 qpvGhI8PzSIi2XaMV5B0DCPFItRvApvKLHf193H6bHpQufRKiBL8L8j7Tra7sMnGIXjL
 +M8FbqQR/YkaIShtXV4WDyr7EMDbyu1MPcvLwtQ/BbdBhQihTEh2FzxAjuri7n+rwb8T
 aHc0aAqQvlPqveIt1hVu24YsXnbBcBpdAxwZ+FMpyieL58TOYawg2dY7IMnl6vjQ7OBM
 clTg==
X-Gm-Message-State: AOAM533fFwP4lnfYTtVilHtkmI06unL4KOr4ohlx8UNBUTOu4x4E7Lie
 1vLy7W4/mIuLfF9K4sa3+b6AFlw=
X-Google-Smtp-Source: ABdhPJxSQMk+Xgx5mMu8Qr8nZIuiuOwT56dTl3b5bTFmMoPFk+wCyTSsmV14SJYYFxh7j5CDBkgX/w==
X-Received: by 2002:a92:cf46:: with SMTP id c6mr16172424ilr.4.1590191318280;
 Fri, 22 May 2020 16:48:38 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:37 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 04/15] PCI: brcmstb: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:21 -0600
Message-Id: <20200522234832.954484-5-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164839_362483_5F316FE5 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: linux-pci@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The brcmstb host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-rpi-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-brcmstb.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
index 7730ea845ff2..15c747c1390a 100644
--- a/drivers/pci/controller/pcie-brcmstb.c
+++ b/drivers/pci/controller/pcie-brcmstb.c
@@ -172,7 +172,6 @@ struct brcm_pcie {
 	struct device		*dev;
 	void __iomem		*base;
 	struct clk		*clk;
-	struct pci_bus		*root_bus;
 	struct device_node	*np;
 	bool			ssc;
 	int			gen;
@@ -919,9 +918,10 @@ static void __brcm_pcie_remove(struct brcm_pcie *pcie)
 static int brcm_pcie_remove(struct platform_device *pdev)
 {
 	struct brcm_pcie *pcie = platform_get_drvdata(pdev);
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
 
-	pci_stop_root_bus(pcie->root_bus);
-	pci_remove_root_bus(pcie->root_bus);
+	pci_stop_root_bus(bridge->bus);
+	pci_remove_root_bus(bridge->bus);
 	__brcm_pcie_remove(pcie);
 
 	return 0;
@@ -933,7 +933,6 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 	struct pci_host_bridge *bridge;
 	struct device_node *fw_np;
 	struct brcm_pcie *pcie;
-	struct pci_bus *child;
 	struct resource *res;
 	int ret;
 
@@ -1004,20 +1003,9 @@ static int brcm_pcie_probe(struct platform_device *pdev)
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
 
-	ret = pci_scan_root_bus_bridge(bridge);
-	if (ret < 0) {
-		dev_err(pcie->dev, "Scanning root bridge failed\n");
-		goto fail;
-	}
-
-	pci_assign_unassigned_bus_resources(bridge->bus);
-	list_for_each_entry(child, &bridge->bus->children, node)
-		pcie_bus_configure_settings(child);
-	pci_bus_add_devices(bridge->bus);
 	platform_set_drvdata(pdev, pcie);
-	pcie->root_bus = bridge->bus;
 
-	return 0;
+	return pci_host_probe(bridge);
 fail:
 	__brcm_pcie_remove(pcie);
 	return ret;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
