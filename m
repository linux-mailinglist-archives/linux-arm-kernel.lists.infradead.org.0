Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4349F1DF33E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpKvJMUH13IgDH5u9cDUnrKQc9bcXot6eaRto8jqF+M=; b=nDXpUvKzYMx9Nz
	r0dKVLICyf6foWyKF3EsBlsWT3Rry3mpXWg1c2PaC1euSjjN7iuOrkJ1X4shk+zGtfiK9OHmNyzSt
	zNI9L3GsGLXOQjpB9lczrl4Q4Fq8H42p9+/vC6aEjlvH7VGUxUcbHPI0ferv2WKsUr/CVIiF+Wbns
	UoWdEE6iR9YVKthbzeiJItg4V1FFuuANFi+LYt+Xn/2Rkms/qxmeGaJBt6fI01AyGRaDwU7Q/I6Lg
	TEqlAX0RSnfvCzL5mkTWNT9WT2CSKCRAWz37QE+3+KmI2YJBi76pUUS5iGgTwceQInzgkRQ8diSNp
	q+TiCXMlEtOsj5gpXYww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHQH-00047R-M9; Fri, 22 May 2020 23:49:53 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHP3-0003L1-PS
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:39 +0000
Received: by mail-io1-f68.google.com with SMTP id d7so13359342ioq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ThmdbRMtyh+goPlCsRsJutoUCzX5VD3oRn0IWK/oqQw=;
 b=iMMBYjotc/mrNotHwkN07lWKBDEdSCNb7YvXLkR71C8YidWoyovmLiFKXaeIV+UhgG
 LwwfEkndG+yPOirArVvsx4V42tQgsLfDXeUjwXuTLXfjNi6wmicvujNmhXzNPwJx7H8V
 1Eim4X3ROHKWH+pg42jXHjP2Kp7+MakFj33ePXwoDzVnzgo6xzN6eFbNeJqEpOKTUcIX
 KqneaC1XY0MBJNIWaCcRfWubjzNZ1iYOyTndgdvsqUIZpvODlZsBdC2lDaTuOSx8KH5U
 /4uKZDYmU/ejP7M6n+zhYtPZBna9iHn7MRs8pZbH68o00Nzu2//2SDTY7fBJ7GegJmSW
 iU8A==
X-Gm-Message-State: AOAM532F4n4SKO6BX0zh4fibTZFObenkWu9vRtcULqB/xmBhIWIPewdN
 JVApIvoFUZH9WZjjacobjg==
X-Google-Smtp-Source: ABdhPJyDe0JoDXoIsQG/kMCc3sQ6ItzXn8qXN6+PN/9wYAzSRpPJ6IwR3EmqfjWPoiHq9avExGm3NA==
X-Received: by 2002:a6b:ee15:: with SMTP id i21mr5318999ioh.179.1590191317148; 
 Fri, 22 May 2020 16:48:37 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:36 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 03/15] PCI: host-common: Use struct pci_host_bridge.windows
 list directly
Date: Fri, 22 May 2020 17:48:20 -0600
Message-Id: <20200522234832.954484-4-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164837_838236_7C02440F 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no need to create a temporary resource list and then splice it to
struct pci_host_bridge.windows list. Just use pci_host_bridge.windows
directly. The necessary clean-up is already handled by the PCI core.

Cc: Will Deacon <will@kernel.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-host-common.c | 36 ++++++++----------------
 1 file changed, 11 insertions(+), 25 deletions(-)

diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
index 953de57f6c57..f8f71d99e427 100644
--- a/drivers/pci/controller/pci-host-common.c
+++ b/drivers/pci/controller/pci-host-common.c
@@ -21,7 +21,7 @@ static void gen_pci_unmap_cfg(void *ptr)
 }
 
 static struct pci_config_window *gen_pci_init(struct device *dev,
-		struct list_head *resources, const struct pci_ecam_ops *ops)
+		struct pci_host_bridge *bridge, const struct pci_ecam_ops *ops)
 {
 	int err;
 	struct resource cfgres;
@@ -29,31 +29,25 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
 	struct pci_config_window *cfg;
 
 	/* Parse our PCI ranges and request their resources */
-	err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
+	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL, &bus_range);
 	if (err)
 		return ERR_PTR(err);
 
 	err = of_address_to_resource(dev->of_node, 0, &cfgres);
 	if (err) {
 		dev_err(dev, "missing \"reg\" property\n");
-		goto err_out;
+		return ERR_PTR(err);
 	}
 
 	cfg = pci_ecam_create(dev, &cfgres, bus_range, ops);
-	if (IS_ERR(cfg)) {
-		err = PTR_ERR(cfg);
-		goto err_out;
-	}
+	if (IS_ERR(cfg))
+		return cfg;
 
 	err = devm_add_action_or_reset(dev, gen_pci_unmap_cfg, cfg);
-	if (err) {
-		goto err_out;
-	}
-	return cfg;
+	if (err)
+		return ERR_PTR(err);
 
-err_out:
-	pci_free_resource_list(resources);
-	return ERR_PTR(err);
+	return cfg;
 }
 
 int pci_host_common_probe(struct platform_device *pdev)
@@ -61,9 +55,7 @@ int pci_host_common_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct pci_host_bridge *bridge;
 	struct pci_config_window *cfg;
-	struct list_head resources;
 	const struct pci_ecam_ops *ops;
-	int ret;
 
 	ops = of_device_get_match_data(&pdev->dev);
 	if (!ops)
@@ -76,7 +68,7 @@ int pci_host_common_probe(struct platform_device *pdev)
 	of_pci_check_probe_only();
 
 	/* Parse and map our Configuration Space windows */
-	cfg = gen_pci_init(dev, &resources, ops);
+	cfg = gen_pci_init(dev, bridge, ops);
 	if (IS_ERR(cfg))
 		return PTR_ERR(cfg);
 
@@ -84,7 +76,6 @@ int pci_host_common_probe(struct platform_device *pdev)
 	if (!pci_has_flag(PCI_PROBE_ONLY))
 		pci_add_flags(PCI_REASSIGN_ALL_BUS);
 
-	list_splice_init(&resources, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = cfg;
 	bridge->busnr = cfg->busr.start;
@@ -92,14 +83,9 @@ int pci_host_common_probe(struct platform_device *pdev)
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
 
-	ret = pci_host_probe(bridge);
-	if (ret < 0) {
-		pci_free_resource_list(&resources);
-		return ret;
-	}
-
 	platform_set_drvdata(pdev, bridge->bus);
-	return 0;
+
+	return pci_host_probe(bridge);
 }
 EXPORT_SYMBOL_GPL(pci_host_common_probe);
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
