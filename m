Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3D51A3D1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 01:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YF5yRiVYHnovNABYRaGPM8RhJlDh1XXOdPlPZo5sUg=; b=bE7knIVu5jxMA/
	ky2pkrRfwlBntenSwUPvzwIh+ylwBg4KSi1KRKCD/Bgqb/aP3Lmko0arkN8UO93mrLB8KKM4nz4tA
	6WfHqpwcSjvX7lzdWI49lNZ7SfxrA9f1Mrbn8s6XZxk4xDybgAKGdxjDmiSPCaxU9ZmaZTJum6gKX
	0XwaN1VG+oUNJ07pbQlzHFjM435/iICFrscQD5XeUHcqx4p/pbBqzexesn4CMSW2L4KY48xid8KSO
	n1hPXwrTTvBBTgvd69aWTaPAPEn1yXZJP23mbWGwm2tVbHrZ65pY/lmKsqitirPunWqQ97wm4YNw4
	dSI6A8t5kSBiDxCMoXhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMh1Z-0004Te-8S; Thu, 09 Apr 2020 23:55:57 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMgvO-0001CJ-On
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 23:49:36 +0000
Received: by mail-io1-f67.google.com with SMTP id b12so192055ion.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 16:49:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fsFz03cVlyUKvUVnGieh3oxHpNilVECqAGJgEoC0c7M=;
 b=Ve2xf2c/SYAvIxZXDY0wGHFkEv/Nv24xsdvVZ6NWXineQD8DN/KDRu5ULwwFJICq3g
 4tdvf4gHqFTuYuL9zIOC4TJ0lKsU1RY1/kl0AE0kInRqjm9gjKv5Gdr018o3ABLT63zJ
 xbm31pzZB6+hwGZoYg5AW8GWUeP0FcaNBCUf4YmW7wQ4PTNkBDaoLyjgxKLPmvQSsOqu
 E/ABSGzqh5ESB0Q+yEKoNWBL19nnA04r3iKZXYfYkTXp1glSQ1ID09LKR/KYhWU40Ode
 /W07kIpsJihgzM/FHm2SIM6/A5Pt6I++lG4/5T9qJgS9w3P2oBhvPHkdFKNxXqySYMKl
 la9A==
X-Gm-Message-State: AGi0PuaPQsBHp2ExSyiVEWqp+55vrIikslvTquk64tnB1cc0uhuBSmUZ
 LzzLIyZt46zZ6DHLpPNJdg==
X-Google-Smtp-Source: APiQypLqrY1IbsEwkeqc1fPB7uBxtzjUwc62zIg6o0IpJEI79OSAmxl+HVZGBtZ2DF2+YhPeGl8i+w==
X-Received: by 2002:a02:9a0d:: with SMTP id b13mr2129894jal.60.1586476174014; 
 Thu, 09 Apr 2020 16:49:34 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.248])
 by smtp.googlemail.com with ESMTPSA id w7sm93416ior.51.2020.04.09.16.49.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 16:49:33 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 3/3] PCI: host-generic: Eliminate pci_host_common_probe
 wrappers
Date: Thu,  9 Apr 2020 17:49:23 -0600
Message-Id: <20200409234923.21598-4-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200409234923.21598-1-robh@kernel.org>
References: <20200409234923.21598-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_164934_835528_F9798D6E 
X-CRM114-Status: GOOD (  15.11  )
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

Most ECAM host drivers are just different pci_ecam_ops which can be DT
match table data. That's already the case in some cases, but let's
do that for all the ECAM drivers. Then we can use
of_device_get_match_data() in pci_host_common_probe() and eliminate the
probe wrapper functions and use pci_host_common_probe() directly for
probe.

Cc: Zhou Wang <wangzhou1@hisilicon.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <amurray@thegoodpenguin.co.uk>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Will Deacon <will@kernel.org>
Cc: Robert Richter <rrichter@marvell.com>
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>
Cc: Mans Rullgard <mans@mansr.com>
Cc: linux-pci@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/dwc/pcie-hisi.c    | 11 +----------
 drivers/pci/controller/pci-host-common.c  |  9 +++++++--
 drivers/pci/controller/pci-host-generic.c | 15 +--------------
 drivers/pci/controller/pci-thunder-ecam.c | 12 +++++-------
 drivers/pci/controller/pci-thunder-pem.c  | 12 +++++-------
 drivers/pci/controller/pcie-tango.c       |  7 +++++--
 include/linux/pci-ecam.h                  |  3 +--
 7 files changed, 25 insertions(+), 44 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-hisi.c b/drivers/pci/controller/dwc/pcie-hisi.c
index 90017045334d..0ba50fb473b1 100644
--- a/drivers/pci/controller/dwc/pcie-hisi.c
+++ b/drivers/pci/controller/dwc/pcie-hisi.c
@@ -332,15 +332,6 @@ static struct platform_driver hisi_pcie_driver = {
 };
 builtin_platform_driver(hisi_pcie_driver);
 
-static int hisi_pcie_almost_ecam_probe(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct pci_ecam_ops *ops;
-
-	ops = (struct pci_ecam_ops *)of_device_get_match_data(dev);
-	return pci_host_common_probe(pdev, ops);
-}
-
 static int hisi_pcie_platform_init(struct pci_config_window *cfg)
 {
 	struct device *dev = cfg->parent;
@@ -385,7 +376,7 @@ static const struct of_device_id hisi_pcie_almost_ecam_of_match[] = {
 };
 
 static struct platform_driver hisi_pcie_almost_ecam_driver = {
-	.probe  = hisi_pcie_almost_ecam_probe,
+	.probe  = pci_host_common_probe,
 	.driver = {
 		   .name = "hisi-pcie-almost-ecam",
 		   .of_match_table = hisi_pcie_almost_ecam_of_match,
diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
index 6d15bc12e726..953de57f6c57 100644
--- a/drivers/pci/controller/pci-host-common.c
+++ b/drivers/pci/controller/pci-host-common.c
@@ -10,6 +10,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
+#include <linux/of_device.h>
 #include <linux/of_pci.h>
 #include <linux/pci-ecam.h>
 #include <linux/platform_device.h>
@@ -55,15 +56,19 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
 	return ERR_PTR(err);
 }
 
-int pci_host_common_probe(struct platform_device *pdev,
-			  const struct pci_ecam_ops *ops)
+int pci_host_common_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct pci_host_bridge *bridge;
 	struct pci_config_window *cfg;
 	struct list_head resources;
+	const struct pci_ecam_ops *ops;
 	int ret;
 
+	ops = of_device_get_match_data(&pdev->dev);
+	if (!ops)
+		return -ENODEV;
+
 	bridge = devm_pci_alloc_host_bridge(dev, 0);
 	if (!bridge)
 		return -ENOMEM;
diff --git a/drivers/pci/controller/pci-host-generic.c b/drivers/pci/controller/pci-host-generic.c
index fd8cff61de14..b51977abfdf1 100644
--- a/drivers/pci/controller/pci-host-generic.c
+++ b/drivers/pci/controller/pci-host-generic.c
@@ -11,8 +11,6 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/module.h>
-#include <linux/of_address.h>
-#include <linux/of_pci.h>
 #include <linux/pci-ecam.h>
 #include <linux/platform_device.h>
 
@@ -79,23 +77,12 @@ static const struct of_device_id gen_pci_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, gen_pci_of_match);
 
-static int gen_pci_probe(struct platform_device *pdev)
-{
-	const struct of_device_id *of_id;
-	struct pci_ecam_ops *ops;
-
-	of_id = of_match_node(gen_pci_of_match, pdev->dev.of_node);
-	ops = (struct pci_ecam_ops *)of_id->data;
-
-	return pci_host_common_probe(pdev, ops);
-}
-
 static struct platform_driver gen_pci_driver = {
 	.driver = {
 		.name = "pci-host-generic",
 		.of_match_table = gen_pci_of_match,
 	},
-	.probe = gen_pci_probe,
+	.probe = pci_host_common_probe,
 	.remove = pci_host_common_remove,
 };
 module_platform_driver(gen_pci_driver);
diff --git a/drivers/pci/controller/pci-thunder-ecam.c b/drivers/pci/controller/pci-thunder-ecam.c
index c3fdd3e6b21c..7e8835fee5f7 100644
--- a/drivers/pci/controller/pci-thunder-ecam.c
+++ b/drivers/pci/controller/pci-thunder-ecam.c
@@ -357,22 +357,20 @@ const struct pci_ecam_ops pci_thunder_ecam_ops = {
 #ifdef CONFIG_PCI_HOST_THUNDER_ECAM
 
 static const struct of_device_id thunder_ecam_of_match[] = {
-	{ .compatible = "cavium,pci-host-thunder-ecam" },
+	{
+		.compatible = "cavium,pci-host-thunder-ecam",
+		.data = &pci_thunder_ecam_ops,
+	},
 	{ },
 };
 
-static int thunder_ecam_probe(struct platform_device *pdev)
-{
-	return pci_host_common_probe(pdev, &pci_thunder_ecam_ops);
-}
-
 static struct platform_driver thunder_ecam_driver = {
 	.driver = {
 		.name = KBUILD_MODNAME,
 		.of_match_table = thunder_ecam_of_match,
 		.suppress_bind_attrs = true,
 	},
-	.probe = thunder_ecam_probe,
+	.probe = pci_host_common_probe,
 };
 builtin_platform_driver(thunder_ecam_driver);
 
diff --git a/drivers/pci/controller/pci-thunder-pem.c b/drivers/pci/controller/pci-thunder-pem.c
index 2e792707ceab..3f847969143e 100644
--- a/drivers/pci/controller/pci-thunder-pem.c
+++ b/drivers/pci/controller/pci-thunder-pem.c
@@ -451,22 +451,20 @@ static const struct pci_ecam_ops pci_thunder_pem_ops = {
 };
 
 static const struct of_device_id thunder_pem_of_match[] = {
-	{ .compatible = "cavium,pci-host-thunder-pem" },
+	{
+		.compatible = "cavium,pci-host-thunder-pem",
+		.data = &pci_thunder_pem_ops,
+	},
 	{ },
 };
 
-static int thunder_pem_probe(struct platform_device *pdev)
-{
-	return pci_host_common_probe(pdev, &pci_thunder_pem_ops);
-}
-
 static struct platform_driver thunder_pem_driver = {
 	.driver = {
 		.name = KBUILD_MODNAME,
 		.of_match_table = thunder_pem_of_match,
 		.suppress_bind_attrs = true,
 	},
-	.probe = thunder_pem_probe,
+	.probe = pci_host_common_probe,
 };
 builtin_platform_driver(thunder_pem_driver);
 
diff --git a/drivers/pci/controller/pcie-tango.c b/drivers/pci/controller/pcie-tango.c
index 3b2b10906fdd..c56c5539da6b 100644
--- a/drivers/pci/controller/pcie-tango.c
+++ b/drivers/pci/controller/pcie-tango.c
@@ -295,11 +295,14 @@ static int tango_pcie_probe(struct platform_device *pdev)
 	spin_lock_init(&pcie->used_msi_lock);
 	irq_set_chained_handler_and_data(virq, tango_msi_isr, pcie);
 
-	return pci_host_common_probe(pdev, &smp8759_ecam_ops);
+	return pci_host_common_probe(pdev);
 }
 
 static const struct of_device_id tango_pcie_ids[] = {
-	{ .compatible = "sigma,smp8759-pcie" },
+	{
+		.compatible = "sigma,smp8759-pcie",
+		.data = &smp8759_ecam_ops,
+ 	},
 	{ },
 };
 
diff --git a/include/linux/pci-ecam.h b/include/linux/pci-ecam.h
index fd0edb8b8a00..1af5cb02ef7f 100644
--- a/include/linux/pci-ecam.h
+++ b/include/linux/pci-ecam.h
@@ -61,8 +61,7 @@ extern const struct pci_ecam_ops al_pcie_ops;	/* Amazon Annapurna Labs PCIe */
 
 #if IS_ENABLED(CONFIG_PCI_HOST_COMMON)
 /* for DT-based PCI controllers that support ECAM */
-int pci_host_common_probe(struct platform_device *pdev,
-			  const struct pci_ecam_ops *ops);
+int pci_host_common_probe(struct platform_device *pdev);
 int pci_host_common_remove(struct platform_device *pdev);
 #endif
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
