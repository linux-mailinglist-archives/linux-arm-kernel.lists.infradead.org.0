Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2D2E7676
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:34:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHD3P8TiDc2xhCrDyW4CtXWN0yDFOKR+2F5ar9+7Fos=; b=lvr4ubJIaoPa5f
	B2iYLLdTG6CVfKAhSIHBvY3Vujs5gCFbFed+mmvkeCiF0PJNxIhgClXZJ5Mbl2u2itnxzB+bluSS5
	sVMYpjXBxcWEsh5G4geIvk75c3aMT4sD/xRkpquGoa0v4cgbHi1XkJPqpVmVZ+EUM8gG0UWEITC4Z
	h8vvJxgxhLekeWRG8S/ZDRqIk3tecGCib+VFcAMRCNABXnZLceH0MwN6rvxfG2KRl0lf0jSR7C4RO
	aL9pXlt96ZDTzRVFdrQwuhTbdygUWa62seud9JZ+ajYKKnVTp/mDnvGkU9r8yp7aaqojZTVCH22Te
	XoElSkhlZXj71QVd4+fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7yc-0007xD-KU; Mon, 28 Oct 2019 16:34:42 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7x3-0006ic-TE; Mon, 28 Oct 2019 16:33:07 +0000
Received: by mail-oi1-f196.google.com with SMTP id k2so1284614oij.12;
 Mon, 28 Oct 2019 09:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y8FNka9VqW+GuyHhrg3YYeRr9rwrH+ifXsb5oKqpMlo=;
 b=s0hv/LWZ5D65LO7oJ1u4PNOSnHmMjZ18m2Wz4ACEIvYLtu9OoLTnp4xUqXXE9Rux4D
 bZI2Src0aDW8fEtbzEy8IY1Ge2nc+DPTGb19vae+fnoaklQ+0crT/IHxbFTSTvdE318y
 79z6qKaFdyPr5n4IjXQ8XfSR7+m0s5TBtUXGugZu45/MQa6CayuA+4Ho9Jz+qKork1yY
 KOSep3ucpxt3SNFPA3L/X6yXnyuBF9SxlkfoP1tV8nTjMgj1T7/GNRDSN3d8lSjGB6Zd
 ErxXdeCrFK1B5SbYG3rP8e+vRin7PKG68HqPlFXj9kDqBHiB0mdzU7wRRomeFhsEH703
 63Vg==
X-Gm-Message-State: APjAAAVUgvr9c2gPZY3HEdGsfwtxyBPxsdHXG1IkVf4nCAADrI/7kcKC
 JUtpru3h6UvuBABNxv4cSA==
X-Google-Smtp-Source: APXvYqyUIRHPK2FSnzpcsAJEGlsEmDJCiz/greX4s1l3COXvilcvI5rrPN21yJJxsAwhuvZFPOfz2Q==
X-Received: by 2002:a05:6808:ab1:: with SMTP id
 r17mr118801oij.75.1572280385099; 
 Mon, 28 Oct 2019 09:33:05 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:04 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 03/25] PCI: aardvark: Use pci_parse_request_of_pci_ranges()
Date: Mon, 28 Oct 2019 11:32:34 -0500
Message-Id: <20191028163256.8004-4-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093306_016519_3925A0B7 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert aardvark to use the common pci_parse_request_of_pci_ranges().

There's no need to assign the resources to a temporary list first. Just
use bridge->windows directly and remove all the temporary list handling.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Tested-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
- Remove the temporary list
---
 drivers/pci/controller/pci-aardvark.c | 60 ++-------------------------
 1 file changed, 4 insertions(+), 56 deletions(-)

diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
index fc0fe4d4de49..9cbeba507f0c 100644
--- a/drivers/pci/controller/pci-aardvark.c
+++ b/drivers/pci/controller/pci-aardvark.c
@@ -186,7 +186,6 @@
 struct advk_pcie {
 	struct platform_device *pdev;
 	void __iomem *base;
-	struct list_head resources;
 	struct irq_domain *irq_domain;
 	struct irq_chip irq_chip;
 	struct irq_domain *msi_domain;
@@ -910,63 +909,11 @@ static irqreturn_t advk_pcie_irq_handler(int irq, void *arg)
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
 
@@ -991,11 +938,13 @@ static int advk_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = advk_pcie_parse_request_of_pci_ranges(pcie);
+	ret = pci_parse_request_of_pci_ranges(dev, &bridge->windows,
+					      &bus);
 	if (ret) {
 		dev_err(dev, "Failed to parse resources\n");
 		return ret;
 	}
+	pcie->root_bus_nr = bus->start;
 
 	advk_pcie_setup_hw(pcie);
 
@@ -1014,7 +963,6 @@ static int advk_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	list_splice_init(&pcie->resources, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = pcie;
 	bridge->busnr = 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
