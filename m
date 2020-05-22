Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0871DF348
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:51:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vij3gTpbeEx4mmgc+FaSF0L+C9AazhFCHMCwoCyHPYk=; b=TBVdCQDWBR8GS9
	g7X1fCED2vrcV9d3AhGwDb1Z0BPEiuoPisqKialdvKaY+/v3zXbEYFUh2OrsZmwqoA1MOZz9DLDjL
	w7AisYxtZlCCXwqjKFvWNPtkt177rCmREFh3pAuLFsOL6YwiAyqfBCeRqkgyxdHMSsRJWE1NEogx3
	L7WJMTMq4QI6+ESHewtYOjmExn8JjyefgY2QWLw3xVmwU/Udb4FRN6N2d6lY7/onNlT0sr2f5kOB2
	lcRV8XfJplQrpCCQpIG8lek8B0KDBRWrcfVvU+YiG6yCnVJNbV33RfPC/XNN8PoPT7TPXR9jt/t3p
	IjLJZxfyZ94YZu7GUcZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHSC-0007tl-ER; Fri, 22 May 2020 23:51:52 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHPD-0003Wx-Ed
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:48 +0000
Received: by mail-il1-f196.google.com with SMTP id l20so12457889ilj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I6AdS/TZXzVwZhaj3XeZ8pHwXrcTg21qPzTXuwbZXTY=;
 b=evDKJXr8H9L1QICOVa9w8rdad43/khlyTiO6ypxNeoVA9ecIPtTAZU3g9AbOyImVbp
 0lH1lOAcSBvcCHAOhwXTgrSDiXWcsAawumoAjPYHNHVkxp7cbmauf3QqNdY49jbnAjql
 peYEdBNfn8WVIFLo6QkBETKIzDE005jsw1k6U2M9zIfofhDJFk4DFEM0cbbaXIwDMQZu
 eiDIqjG7j64FIAjNC0GqhUz+wPukRF81oeNvB1dFslpIIjH93qXhK8emQ766/DkQXeQg
 sybz3v8x7e9f0ik4K6UfVN4W9NxNMhTCZ/AMjg+ohgF9g1nG8WULYuqGrHO7bq06xULC
 UV/g==
X-Gm-Message-State: AOAM530ZlEMuwQNwBKycUDyx0B2XuITqb5N2MXZcIPxVaGUQ0M4R9iwH
 qMJPTiOLciijeADD8PxmGg==
X-Google-Smtp-Source: ABdhPJx+ueXcTjl20AOza8BrHvDbmua+rc9aHmFgQKv5RD1ZcW5dKvkYfx+vLS94kC3TUkSvYVHV9w==
X-Received: by 2002:a92:aa53:: with SMTP id j80mr15676503ili.299.1590191325856; 
 Fri, 22 May 2020 16:48:45 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:45 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 11/15] PCI: iproc: Use pci_host_probe() to register host
Date: Fri, 22 May 2020 17:48:28 -0600
Message-Id: <20200522234832.954484-12-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164847_499185_4DA1EFD1 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: Scott Branden <sbranden@broadcom.com>, linux-pci@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The iproc host driver does the same host registration and bus scanning
calls as pci_host_probe, so let's use it instead.

The only difference is pci_assign_unassigned_bus_resources() was called
instead of pci_bus_size_bridges() and pci_bus_assign_resources(). This
should be the same.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-iproc.c | 18 +++++-------------
 drivers/pci/controller/pcie-iproc.h |  2 --
 2 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
index 8c7f875acf7f..232fca0754e1 100644
--- a/drivers/pci/controller/pcie-iproc.c
+++ b/drivers/pci/controller/pcie-iproc.c
@@ -1470,7 +1470,6 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
 {
 	struct device *dev;
 	int ret;
-	struct pci_bus *child;
 	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
 
 	dev = pcie->dev;
@@ -1531,21 +1530,12 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
 	host->map_irq = pcie->map_irq;
 	host->swizzle_irq = pci_common_swizzle;
 
-	ret = pci_scan_root_bus_bridge(host);
+	ret = pci_host_probe(host);
 	if (ret < 0) {
 		dev_err(dev, "failed to scan host: %d\n", ret);
 		goto err_power_off_phy;
 	}
 
-	pci_assign_unassigned_bus_resources(host->bus);
-
-	pcie->root_bus = host->bus;
-
-	list_for_each_entry(child, &host->bus->children, node)
-		pcie_bus_configure_settings(child);
-
-	pci_bus_add_devices(host->bus);
-
 	return 0;
 
 err_power_off_phy:
@@ -1558,8 +1548,10 @@ EXPORT_SYMBOL(iproc_pcie_setup);
 
 int iproc_pcie_remove(struct iproc_pcie *pcie)
 {
-	pci_stop_root_bus(pcie->root_bus);
-	pci_remove_root_bus(pcie->root_bus);
+	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
+
+	pci_stop_root_bus(host->bus);
+	pci_remove_root_bus(host->bus);
 
 	iproc_pcie_msi_disable(pcie);
 
diff --git a/drivers/pci/controller/pcie-iproc.h b/drivers/pci/controller/pcie-iproc.h
index 4f03ea539805..c2676e442f55 100644
--- a/drivers/pci/controller/pcie-iproc.h
+++ b/drivers/pci/controller/pcie-iproc.h
@@ -54,7 +54,6 @@ struct iproc_msi;
  * @reg_offsets: register offsets
  * @base: PCIe host controller I/O register base
  * @base_addr: PCIe host controller register base physical address
- * @root_bus: pointer to root bus
  * @phy: optional PHY device that controls the Serdes
  * @map_irq: function callback to map interrupts
  * @ep_is_internal: indicates an internal emulated endpoint device is connected
@@ -85,7 +84,6 @@ struct iproc_pcie {
 	void __iomem *base;
 	phys_addr_t base_addr;
 	struct resource mem;
-	struct pci_bus *root_bus;
 	struct phy *phy;
 	int (*map_irq)(const struct pci_dev *, u8, u8);
 	bool ep_is_internal;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
