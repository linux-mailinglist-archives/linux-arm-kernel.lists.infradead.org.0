Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE02BD48B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 23:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jvt9q/QyEkJ0AmcezY/YaezlqJXnfFxZOsUUMdJVRS8=; b=j++1ui0xlRtJq9
	FWncyUgWGsls6PqJYBuKfAhKk9+j1yUjv/YomD1PBiyU+FdC4aeyPw2N6Krfl46kNc06eE4pCh7QQ
	oFdEU/z8cs3FlJW90n2kgTXWp1JeVXTOrdYI6jDT0hDN40YWSZhqtxUPx94bY80Zj9IDI8hM6U6/C
	7I/QJ1xH/CVpgnHagMwAMyuGQDhifyS9oAqst1o/pz+XAJbjPHF6PXx2erE4vC0yF1bOwfSNcOWwm
	gTNRZOQtf8O3ZC5QF7dIUlAqxdpgBxaXwNZG1xQ3bqckjuJq9nkiVWaflzwzDMgSdr6hxN62CPNd3
	RTjFrPl/09enhSJuxd7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCsej-0005lO-UH; Tue, 24 Sep 2019 21:47:34 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCsdm-0005PY-Ip
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 21:46:35 +0000
Received: by mail-oi1-f194.google.com with SMTP id i185so3045754oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 14:46:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mj2cHfPK1Lg/i3xyl7unPwCDQ0FPsiiGlXxaMpguDq4=;
 b=Srr+1OOiErXEIfUMJSWEgqOKo2xOHMdAMIQ/3kwbobWj8kgzY1DB/hsQlBVBZIXgjh
 cIWYZJsJdexxfXakBaWyt2DbTxrPIgAIc6j6RAR/wgm1aVRB/UwRpzSlBRQIN4ZOt80C
 TF9DRw2C4HpuVbYF1AS6XQpKx3JCse5nslGJZaGRU5yuoSlt6eFfyIlJz2iPdpxTOaTK
 AR5rdCNhtJxKINE3LItwTOEgGm/LCPQTLiXk9ZI25lN3dYW872y2hDQJnLKoStHratWu
 75vN9VpLE4st/UXBpAUaDctEvkYSlauU09JSCWvaXVD6lHGZbVYasmGuJMwwhwD93dO3
 QR4w==
X-Gm-Message-State: APjAAAVS6T8w1vjKiQvo8dV0BFgiyW4zU47Gz8atRM0KhXjnPeEVk8qi
 a9RXaP0WJOaJHBH+Tnf3VQ==
X-Google-Smtp-Source: APXvYqzJ4oTIA1/Jq8Esdkdrq7dZsqt1eEao9dTNXYBUMMxJ++4DN0aBrQ0da6ZPPMILRTn37hQf4Q==
X-Received: by 2002:a05:6808:647:: with SMTP id
 z7mr2028480oih.16.1569361593520; 
 Tue, 24 Sep 2019 14:46:33 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id s66sm976787otb.65.2019.09.24.14.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 14:46:32 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 01/11] PCI: aardvark: Use pci_parse_request_of_pci_ranges()
Date: Tue, 24 Sep 2019 16:46:20 -0500
Message-Id: <20190924214630.12817-2-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924214630.12817-1-robh@kernel.org>
References: <20190924214630.12817-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_144634_618657_D550EDD0 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert aardvark to use the common pci_parse_request_of_pci_ranges().

Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-aardvark.c | 58 ++-------------------------
 1 file changed, 4 insertions(+), 54 deletions(-)

diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index fc0fe4d4de49..ff3af3d34028 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -910,63 +910,11 @@ static irqreturn_t advk_pcie_irq_handler(int irq, void *arg)
 	return IRQ_HANDLED;
 }
 
-static int advk_pcie_parse_request_of_pci_ranges(struct advk_pcie *pcie)
-{
-	int err, res_valid = 0;
-	struct device *dev = &pcie->pdev->dev;
-	struct resource_entry *win, *tmp;
-	resource_size_t iobase;
-
-	INIT_LIST_HEAD(&pcie->resources);
-
-	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    &pcie->resources, &iobase);
-	if (err)
-		return err;
-
-	err = devm_request_pci_bus_resources(dev, &pcie->resources);
-	if (err)
-		goto out_release_res;
-
-	resource_list_for_each_entry_safe(win, tmp, &pcie->resources) {
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
-			break;
-		case IORESOURCE_BUS:
-			pcie->root_bus_nr = res->start;
-			break;
-		}
-	}
-
-	if (!res_valid) {
-		dev_err(dev, "non-prefetchable memory resource required\n");
-		err = -EINVAL;
-		goto out_release_res;
-	}
-
-	return 0;
-
-out_release_res:
-	pci_free_resource_list(&pcie->resources);
-	return err;
-}
-
 static int advk_pcie_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct advk_pcie *pcie;
-	struct resource *res;
+	struct resource *res, *bus;
 	struct pci_host_bridge *bridge;
 	int ret, irq;
 
@@ -991,11 +939,13 @@ static int advk_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = advk_pcie_parse_request_of_pci_ranges(pcie);
+	ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,
+					      &bus);
 	if (ret) {
 		dev_err(dev, "Failed to parse resources\n");
 		return ret;
 	}
+	pcie->root_bus_nr = bus->start;
 
 	advk_pcie_setup_hw(pcie);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
