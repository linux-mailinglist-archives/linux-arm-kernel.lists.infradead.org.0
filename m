Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695EA1A3D1D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 01:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELG0Vu+4kfWGDoZxKzxb/xY6cqxlufGvjfRCqNOB2rE=; b=es2Ac5HHUJlHMM
	xBHYC1blSnyOGz9yjkwEku442Idohku4fQRz4SGD4/iM3/K5M7awqNap+6sRIy2oL1S299m9vgwAw
	/Zg5xmFyu9p3GeUUHvvC9SO6hyoVBS1z6IgmV8ABkD+nkNtcw/NNKeU6/vJaWpXO6kT7wlNWM0bkE
	lS+om7jwv3qqUOi4xdvoahnRABx322EWLUOrPQz0PBrespto60x+pJKSsIpoCCjC8Ig1TE7E+fR9W
	qn+4jBogFgRx123amohoUyebXW9uDuySTap6tRzA2o6mIRfQBtRjaE6GIwovcnQDJqAq1Nf0cDfJ1
	Lfl/tEnjeQDAfJqQrPMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMgyP-0004Dc-Gg; Thu, 09 Apr 2020 23:52:42 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMgvN-0001A7-LT
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 23:49:35 +0000
Received: by mail-io1-f67.google.com with SMTP id b12so192011ion.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 16:49:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zwY8gKjA6jl+xShBah6YhoU02iHkzzm5PEUXPKXngvY=;
 b=iNMLsf6Kop5liOTaZEvtxG5cxU/OhTiPz3AAzvXqnI2LyHZPY00Rhpzj5uPs5/si7l
 DQ8ZT5ZBYqfbG/6MwCrAvKAtqSrdbIbQX9zZeZPfeMRWK5wuZLs7S6fpRmS8zI79D72O
 Lr2QO1gD4fS6JE475gypcoI3nBZQ7OT5sKyT8VQ0cZGtA2FDBvJmzBOL9S7CFTiTSxP/
 sHonGKvgW3hPCZNvpHw6/byht/ZHzmy+FMl8pOY0/9ebce+IRuw17xSk63Wr/MptnZbe
 4kqJVfDpbZh6cPJi9qxR6OQsvhFbVSbETxf9b3yis5JMe7uayAT7kyuckpU3iF2ISr4F
 LYYg==
X-Gm-Message-State: AGi0PuaASQxf4htOj4okW5ZzsBNH8dl7WJX96VFzXREe00jZnqsdbjW6
 vkT5dREe8saaLX7ZFEBSlA==
X-Google-Smtp-Source: APiQypJMSPk1SQGHUk19Mji7mfAOyAhmVDtiKBJq3x/PJhQq5zLRhze+ldidQIKHoFaaxTx9uGjPRg==
X-Received: by 2002:a02:c7c2:: with SMTP id s2mr2159789jao.130.1586476172538; 
 Thu, 09 Apr 2020 16:49:32 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.248])
 by smtp.googlemail.com with ESMTPSA id w7sm93416ior.51.2020.04.09.16.49.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 16:49:31 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 2/3] PCI: host-generic: Support building as modules
Date: Thu,  9 Apr 2020 17:49:22 -0600
Message-Id: <20200409234923.21598-3-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200409234923.21598-1-robh@kernel.org>
References: <20200409234923.21598-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_164933_722947_AA073E22 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mans Rullgard <mans@mansr.com>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 linux-pci@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Len Brown <lenb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable building host-generic and its host-common dependency as a
module.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <amurray@thegoodpenguin.co.uk>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Will Deacon <will@kernel.org>
Cc: linux-pci@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/Kconfig            | 4 ++--
 drivers/pci/controller/pci-host-common.c  | 5 +++++
 drivers/pci/controller/pci-host-generic.c | 7 +++++--
 drivers/pci/ecam.c                        | 4 ++++
 drivers/pci/setup-bus.c                   | 1 +
 include/linux/pci-ecam.h                  | 2 +-
 6 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index 91bfdb784829..416a53414728 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -62,11 +62,11 @@ config PCIE_RCAR
 	  Say Y here if you want PCIe controller support on R-Car SoCs.
 
 config PCI_HOST_COMMON
-	bool
+	tristate
 	select PCI_ECAM
 
 config PCI_HOST_GENERIC
-	bool "Generic PCI host controller"
+	tristate "Generic PCI host controller"
 	depends on OF
 	select PCI_HOST_COMMON
 	select IRQ_DOMAIN
diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
index f6d5dc068488..6d15bc12e726 100644
--- a/drivers/pci/controller/pci-host-common.c
+++ b/drivers/pci/controller/pci-host-common.c
@@ -8,6 +8,7 @@
  */
 
 #include <linux/kernel.h>
+#include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_pci.h>
 #include <linux/pci-ecam.h>
@@ -95,6 +96,7 @@ int pci_host_common_probe(struct platform_device *pdev,
 	platform_set_drvdata(pdev, bridge->bus);
 	return 0;
 }
+EXPORT_SYMBOL_GPL(pci_host_common_probe);
 
 int pci_host_common_remove(struct platform_device *pdev)
 {
@@ -107,3 +109,6 @@ int pci_host_common_remove(struct platform_device *pdev)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(pci_host_common_remove);
+
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/pci/controller/pci-host-generic.c b/drivers/pci/controller/pci-host-generic.c
index 7e9a7c0833b1..fd8cff61de14 100644
--- a/drivers/pci/controller/pci-host-generic.c
+++ b/drivers/pci/controller/pci-host-generic.c
@@ -10,6 +10,7 @@
 
 #include <linux/kernel.h>
 #include <linux/init.h>
+#include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_pci.h>
 #include <linux/pci-ecam.h>
@@ -76,6 +77,7 @@ static const struct of_device_id gen_pci_of_match[] = {
 
 	{ },
 };
+MODULE_DEVICE_TABLE(of, gen_pci_of_match);
 
 static int gen_pci_probe(struct platform_device *pdev)
 {
@@ -92,9 +94,10 @@ static struct platform_driver gen_pci_driver = {
 	.driver = {
 		.name = "pci-host-generic",
 		.of_match_table = gen_pci_of_match,
-		.suppress_bind_attrs = true,
 	},
 	.probe = gen_pci_probe,
 	.remove = pci_host_common_remove,
 };
-builtin_platform_driver(gen_pci_driver);
+module_platform_driver(gen_pci_driver);
+
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/pci/ecam.c b/drivers/pci/ecam.c
index 1b05ff627859..8f065a42fc1a 100644
--- a/drivers/pci/ecam.c
+++ b/drivers/pci/ecam.c
@@ -101,6 +101,7 @@ struct pci_config_window *pci_ecam_create(struct device *dev,
 	pci_ecam_free(cfg);
 	return ERR_PTR(err);
 }
+EXPORT_SYMBOL_GPL(pci_ecam_create);
 
 void pci_ecam_free(struct pci_config_window *cfg)
 {
@@ -121,6 +122,7 @@ void pci_ecam_free(struct pci_config_window *cfg)
 		release_resource(&cfg->res);
 	kfree(cfg);
 }
+EXPORT_SYMBOL_GPL(pci_ecam_free);
 
 /*
  * Function to implement the pci_ops ->map_bus method
@@ -143,6 +145,7 @@ void __iomem *pci_ecam_map_bus(struct pci_bus *bus, unsigned int devfn,
 		base = cfg->win + (busn << cfg->ops->bus_shift);
 	return base + (devfn << devfn_shift) + where;
 }
+EXPORT_SYMBOL_GPL(pci_ecam_map_bus);
 
 /* ECAM ops */
 const struct pci_ecam_ops pci_generic_ecam_ops = {
@@ -153,6 +156,7 @@ const struct pci_ecam_ops pci_generic_ecam_ops = {
 		.write		= pci_generic_config_write,
 	}
 };
+EXPORT_SYMBOL_GPL(pci_generic_ecam_ops);
 
 #if defined(CONFIG_ACPI) && defined(CONFIG_PCI_QUIRKS)
 /* ECAM ops for 32-bit access only (non-compliant) */
diff --git a/drivers/pci/setup-bus.c b/drivers/pci/setup-bus.c
index bbcef1a053ab..5b35f7fc2ace 100644
--- a/drivers/pci/setup-bus.c
+++ b/drivers/pci/setup-bus.c
@@ -26,6 +26,7 @@
 #include "pci.h"
 
 unsigned int pci_flags;
+EXPORT_SYMBOL_GPL(pci_flags);
 
 struct pci_dev_resource {
 	struct list_head list;
diff --git a/include/linux/pci-ecam.h b/include/linux/pci-ecam.h
index 6c21dd0901ab..fd0edb8b8a00 100644
--- a/include/linux/pci-ecam.h
+++ b/include/linux/pci-ecam.h
@@ -59,7 +59,7 @@ extern const struct pci_ecam_ops xgene_v2_pcie_ecam_ops; /* APM X-Gene PCIe v2.x
 extern const struct pci_ecam_ops al_pcie_ops;	/* Amazon Annapurna Labs PCIe */
 #endif
 
-#ifdef CONFIG_PCI_HOST_COMMON
+#if IS_ENABLED(CONFIG_PCI_HOST_COMMON)
 /* for DT-based PCI controllers that support ECAM */
 int pci_host_common_probe(struct platform_device *pdev,
 			  const struct pci_ecam_ops *ops);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
