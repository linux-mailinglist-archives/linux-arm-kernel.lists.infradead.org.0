Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C980E348E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJu04s6Vam2+5d2lyxU2huHaw3K7MxVZgQ5bisHk+mg=; b=XUse2QYGSV8iwe
	csItoGAo4/ar5A5gRc2O+RuJ7pnNAnfdWEzUjeRm36geo3aGMYhp14AzC1scuzQZIsl4CQLOZVrMp
	XZ5AKc0lT2RxFxSMnCtK5JCFKnwsCo21e4TiFd1geiAB1p2TKtikBznEvj0WwCGu0W3dDPuoo6mnd
	UmAWd8JBHO2U7kXa+vtM4fmfTaFa9vHcFI/dyaXP/IOVLKRsi1LsQzEdmx+GAsQxhPZlM1p9oqMXS
	bToV2wOwsvjoEryFAt2n0iCZhdRlE19HQ5zO1fGLHVpfOaDoMM1YkjFza8nIX88sx32I882O+1GRd
	pRXXXYwqaUQBZUwzeIEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9a8-0007Jt-4l; Tue, 04 Jun 2019 13:34:28 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9Yf-0004oC-5x; Tue, 04 Jun 2019 13:32:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t0jA6IyzaKFpaRxG+xMzbQ3TeSZ/biJLiuqhdnBH3TQ=; b=cxhgsQDdtjvS28TIUfV8xi09G
 Rzcn1fPdVpMlFf3OPRUIcPR6PitHnT6bzPBlBTNsihpu4xuzOivOWO8FrdS1f7Jqrrj4xm2yA95F/
 w58RAvDI1cXwdqySHXLkaXiksRfVb/UmiItde50kbmo1mfl4okKaY4QJhpo3yfHe4yhDMitEqNbuK
 NGOLfvRMwt0XY4hRn1A6fuWvxXsSdS6xP8CaacD7joDzBtZ3HBAywqjcHEpM2AlSQ4yjoqXCwT9NC
 mKGqXA0+s3oS9D2gvQ6saovfdOIWvI3EQNbQqpspDn/zF9cplln+AYsQNgq/76sFNJ2I+W6XAPFMO
 W76T++A+Q==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9KB-000494-8d; Tue, 04 Jun 2019 13:18:03 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DHktZ082389;
 Tue, 4 Jun 2019 08:17:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654266;
 bh=t0jA6IyzaKFpaRxG+xMzbQ3TeSZ/biJLiuqhdnBH3TQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=KZr/Yb1n2JCx1xdXk+5fWxz251JLI16pKngaDfG2QC6hGXVLV4i5gvy6cCgIsJMjP
 c4WNdd1kbTd+yYCRuS/k+h6OJjnmI4OPZi0H3EJWyU1J15IIwDqImxqx57wu5Udo9Z
 bvFpZC/srm1v2Mm4BAhsZsXo0/fnO3zxZwm++kmk=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DHkn2042937
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:17:46 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:17:46 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:17:46 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGR098972;
 Tue, 4 Jun 2019 08:17:41 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 11/30] PCI: cadence: Add support to drive PERST# line
 using GPIO
Date: Tue, 4 Jun 2019 18:44:57 +0530
Message-ID: <20190604131516.13596-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_141759_524756_A6DF9336 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In platforms like TI's J721E EVM, the PERST# line is connected to a
GPIO line and PERST# should be driven high to indicate the clocks are
stable (As per Figure 2-10: Power Up of the PCIe CEM spec 3.0).

Add support to make GPIO drive PERST# line.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/pcie-cadence-host.c | 26 ++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
index 4ad8f2ece6e2..8b3b9827a8d6 100644
--- a/drivers/pci/controller/pcie-cadence-host.c
+++ b/drivers/pci/controller/pcie-cadence-host.c
@@ -3,6 +3,8 @@
 // Cadence PCIe host controller driver.
 // Author: Cyrille Pitchen <cyrille.pitchen@free-electrons.com>
 
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
 #include <linux/kernel.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
@@ -287,6 +289,7 @@ static int cdns_pcie_host_probe(struct platform_device *pdev)
 	struct pci_host_bridge *bridge;
 	struct list_head resources;
 	struct cdns_pcie_rc *rc;
+	struct gpio_desc *gpiod;
 	struct cdns_pcie *pcie;
 	struct resource *res;
 	int ret;
@@ -349,13 +352,36 @@ static int cdns_pcie_host_probe(struct platform_device *pdev)
 		dev_err(dev, "missing \"mem\"\n");
 		return -EINVAL;
 	}
+
 	pcie->mem_res = res;
 
+	gpiod = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(gpiod)) {
+		ret = PTR_ERR(gpiod);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to get reset GPIO\n");
+		return ret;
+	}
+
 	ret = cdns_pcie_init_phy(dev, pcie);
 	if (ret) {
 		dev_err(dev, "failed to init phy\n");
 		return ret;
 	}
+
+	/*
+	 * "Power Sequencing and Reset Signal Timings" table in
+	 * PCI EXPRESS CARD ELECTROMECHANICAL SPECIFICATION, REV. 3.0
+	 * indicates PERST# should be deasserted after minimum of 100us
+	 * once REFCLK is stable. The REFCLK to the connector in RC
+	 * mode is selected while enabling the PHY. So deassert PERST#
+	 * after 100 us.
+	 */
+	if (gpiod) {
+		usleep_range(100, 200);
+		gpiod_set_value_cansleep(gpiod, 1);
+	}
+
 	platform_set_drvdata(pdev, pcie);
 
 	pm_runtime_enable(dev);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
