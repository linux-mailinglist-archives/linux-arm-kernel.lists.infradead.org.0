Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CB31DF33C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzThFBMQ1dwveWjStDg4opoZOsHB9FpDzUilE1BADMo=; b=hD+KRk2gMpW2Fq
	sSSx0U4+xoA5PjLhSfSWmzDu0feqOQ7JRO/vFRBWgPPqzSz9JJcirlDNl51Jks7hFXUjfSKdSmKof
	dL+wIOdWLFL0vK9Xcdj7bpgkHb+CbT5tsto5HOKvKm2vR3k3E9DJQcjnzFd76gVa+maBfN2c9UZB4
	OBtjAl6gk1AjTHCdB9uOBP7QgrCQkgul51TbBzVcE7wPRM25wFRJKzmJKSNcW8Qn5UgTR+ZbC0lLD
	rH3pOSDGMZjrvIO352MKcK7haQEaEr6dhXpG4f8syjC9SwpJBEtivq6qSsBPOsP3qz3Qetq59tVTv
	p80tVJWK0LvQ7v0yhEvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcHPi-0003cG-28; Fri, 22 May 2020 23:49:18 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcHP1-0003Jz-Vb
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:48:37 +0000
Received: by mail-il1-f195.google.com with SMTP id 4so12533193ilg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 16:48:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oGPS1/9t2DbdpX0irS4os0tkteUYvgsNTUcQ44RgQLA=;
 b=kxkX+IRXXF7+YLX6zhAKSpVbHXSUJWmdkVwxRkSpGuJANLIW5vjofdnpBAa47GvVl1
 UTnMqo3UfqPQMaPwdzCiQhIeAQDv6UiEHFhL9dltTN/JWQyR+FtbKXt1ZHT+PN5FbRRr
 xhgKWKO0zUPcMupJWgWOIl4PQN+0HZFKCK3p4P9IoEGXfCU4g/PuRNfiEGOJecBxqCsa
 +2LXbGb0wG1UAS+UG0kp0b5lzc7mX0fwtGo892WhqsbISv1cv2KLaYCc9oGvIZv7m0+V
 J/vzYbpw2FPf7nJwKrXHsG4Tkor7WVeEmSi5bWMJypqups15m7SeXlrRAqBNpLMOTTpQ
 4w6Q==
X-Gm-Message-State: AOAM532z33zX+maJ+d2fjKdPfpEhW4PakYYRk1mf5GvtRd8WyeVT5fDg
 hbouSgIgFh80MwMZKoKxEw==
X-Google-Smtp-Source: ABdhPJyuqDfEj9pKyUgEYZRO+cysIrAtCQrOxTDCZeXzJp8d1Psmue13wAQH//FdOBy3lTptmkGmxw==
X-Received: by 2002:a92:d6c5:: with SMTP id z5mr15613014ilp.194.1590191315033; 
 Fri, 22 May 2020 16:48:35 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id w23sm4390877iod.9.2020.05.22.16.48.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 16:48:34 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 01/15] PCI: cadence: Use struct pci_host_bridge.windows list
 directly
Date: Fri, 22 May 2020 17:48:18 -0600
Message-Id: <20200522234832.954484-2-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522234832.954484-1-robh@kernel.org>
References: <20200522234832.954484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_164836_011509_CF29425E 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
 Tom Joseph <tjoseph@cadence.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no need to create a temporary resource list and then splice it to
struct pci_host_bridge.windows list. Just use pci_host_bridge.windows
directly. The necessary clean-up is already handled by the PCI core.

Cc: Tom Joseph <tjoseph@cadence.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../controller/cadence/pcie-cadence-host.c    | 26 +++++--------------
 1 file changed, 7 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-host.c b/drivers/pci/controller/cadence/pcie-cadence-host.c
index 8c2543f28ba0..9f77e47983c3 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-host.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-host.c
@@ -169,14 +169,15 @@ static int cdns_pcie_host_init_address_translation(struct cdns_pcie_rc *rc)
 }
 
 static int cdns_pcie_host_init(struct device *dev,
-			       struct list_head *resources,
 			       struct cdns_pcie_rc *rc)
 {
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(rc);
 	struct resource *bus_range = NULL;
 	int err;
 
 	/* Parse our PCI ranges and request their resources */
-	err = pci_parse_request_of_pci_ranges(dev, resources, NULL, &bus_range);
+	err = pci_parse_request_of_pci_ranges(dev, &bridge->windows, NULL,
+					      &bus_range);
 	if (err)
 		return err;
 
@@ -185,17 +186,9 @@ static int cdns_pcie_host_init(struct device *dev,
 
 	err = cdns_pcie_host_init_root_port(rc);
 	if (err)
-		goto err_out;
-
-	err = cdns_pcie_host_init_address_translation(rc);
-	if (err)
-		goto err_out;
-
-	return 0;
+		return err;
 
- err_out:
-	pci_free_resource_list(resources);
-	return err;
+	return cdns_pcie_host_init_address_translation(rc);
 }
 
 int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
@@ -204,7 +197,6 @@ int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 	struct platform_device *pdev = to_platform_device(dev);
 	struct device_node *np = dev->of_node;
 	struct pci_host_bridge *bridge;
-	struct list_head resources;
 	struct cdns_pcie *pcie;
 	struct resource *res;
 	int ret;
@@ -248,11 +240,10 @@ int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 
 	pcie->mem_res = res;
 
-	ret = cdns_pcie_host_init(dev, &resources, rc);
+	ret = cdns_pcie_host_init(dev, rc);
 	if (ret)
 		goto err_init;
 
-	list_splice_init(&resources, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->busnr = pcie->bus;
 	bridge->ops = &cdns_pcie_host_ops;
@@ -261,13 +252,10 @@ int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 
 	ret = pci_host_probe(bridge);
 	if (ret < 0)
-		goto err_host_probe;
+		goto err_init;
 
 	return 0;
 
- err_host_probe:
-	pci_free_resource_list(&resources);
-
  err_init:
 	pm_runtime_put_sync(dev);
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
