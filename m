Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D68B9FD8C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g3oPo3cRYQRzpaK05K4/RKQkKkZ8Uy/zoCmiD6M3IXo=; b=sKijop/l66t/OLqWy+mVoPEoNd
	47Jhxe0aWemQX8pGAL5VKJWM6pDC7JVK6Q882Ett00VLAhYefEk8DSi2MvIQ7PB+I5pXa8XR/fkem
	9fRx59rioH3frB8/3oGy8F7i7MRkFh5Ir/MUos4PWXxlfGp5XGwOsOhNb6zMDJLfA1xjBZhJRI++R
	iVQZSvzoXKslbyWd39qNbIVlbwY0khttNMHf4ASkM3QhYdkpr2fqu1hfTifznvK0GLiOz4EW7HFhZ
	8/a/eiGJ7fxWOSgg8DtBMhLIBzRJg98nJT5ynmT9iRZ6PN2qcXnydkLLlWo3mzGjAxLAV4JCEDTaS
	4Kie/mHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tjv-0002kW-91; Wed, 28 Aug 2019 08:55:39 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tjO-00029A-Mo
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 08:55:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so1106120pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 01:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fUJG+KQl5lgajSIMO2GJvUVvp7kIJCWDQTYoxm2KjYk=;
 b=XvwUhq7JSZsttPx2hPdrcPm0+gObdLn+jBkZs595GPAaKmypydWyBXRfhkyB3ClyQa
 5o2iuHxMtf1WS0CjDwLc4W77OJzIpyv0JwWr0J8pbXUWKAiaYvsa41oUNro996MwokiF
 haXeHhGwoFN2IZdqABlrSGDhknljtPZpguC6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fUJG+KQl5lgajSIMO2GJvUVvp7kIJCWDQTYoxm2KjYk=;
 b=sstfxr6V1iDSEMNcwBV/0xsMcyzJfGCrEb9hhp5Hc2BKDQ17ZcqiAFQ6lvoz5mEZi1
 ZGX6kT1M3g8gufUatf6bSP1n1iv9DzY3RuaO9s+wJ5rSCxPjQDaleY8mB8ltrSmnQodI
 Lkp8n+bAKhtFs00jkyxQj96zdhIYpDkIcVkhIB1APWbKxodZl2ReFDf1/dFpNI3mEgWE
 7AIYbVvF8vnV3AzlzkuIfd/TSKpMJLkW59ZJPbXFCHbqXAXD14CotRpGX+cEQX68nfFu
 t6a+ik3yPfiaF9FooxkE3jVzsLgYpPvUNII08OHU55lfUP/a43kFw34l5EvC51bDB7gw
 Fpgg==
X-Gm-Message-State: APjAAAVk2ZNS0oOYIZ1KB0P2jxlfJRRDnDMkjDNxjhBtdYPkSPmEBvqD
 8yHxLODTe38KMtLrlO+woWeQfQ==
X-Google-Smtp-Source: APXvYqyJqeDpJVV7oQCWL2fuFWdhMdjT80lWaPTXxygLugsWHJHbm/I9FNNX0UZVC2VFzogVhw55Gw==
X-Received: by 2002:a62:1703:: with SMTP id 3mr3384211pfx.118.1566982506198;
 Wed, 28 Aug 2019 01:55:06 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id z189sm2431386pfb.137.2019.08.28.01.55.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 01:55:05 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 1/6] dt-bindings: pci: Update iProc PCI binding for INTx
 support
Date: Wed, 28 Aug 2019 14:24:43 +0530
Message-Id: <1566982488-9673-2-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
References: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_015506_812426_8456FE98 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 Srinath Mannam <srinath.mannam@broadcom.com>, linux-kernel@vger.kernel.org,
 Ray Jui <ray.jui@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ray Jui <ray.jui@broadcom.com>

Update the iProc PCIe binding document for better modeling of the legacy
interrupt (INTx) support

Signed-off-by: Ray Jui <ray.jui@broadcom.com>
Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
---
 .../devicetree/bindings/pci/brcm,iproc-pcie.txt    | 48 ++++++++++++++++++----
 1 file changed, 41 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.txt b/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.txt
index df065aa..f23decb 100644
--- a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.txt
+++ b/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.txt
@@ -13,9 +13,6 @@ controller, used in Stingray
   PAXB-based root complex is used for external endpoint devices. PAXC-based
 root complex is connected to emulated endpoint devices internal to the ASIC
 - reg: base address and length of the PCIe controller I/O register space
-- #interrupt-cells: set to <1>
-- interrupt-map-mask and interrupt-map, standard PCI properties to define the
-  mapping of the PCIe interface to interrupt numbers
 - linux,pci-domain: PCI domain ID. Should be unique for each host controller
 - bus-range: PCI bus numbers covered
 - #address-cells: set to <3>
@@ -41,6 +38,21 @@ Required:
 - brcm,pcie-ob-axi-offset: The offset from the AXI address to the internal
 address used by the iProc PCIe core (not the PCIe address)
 
+Legacy interrupt (INTx) support (optional):
+
+Note INTx is for PAXB only.
+- interrupt-map-mask and interrupt-map, standard PCI properties to define
+the mapping of the PCIe interface to interrupt numbers
+
+In addition, a sub-node that describes the legacy interrupt controller built
+into the PCIe controller.
+This sub-node must have the following properties:
+ - compatible: must be "brcm,iproc-intc"
+ - interrupt-controller: claims itself as an interrupt controller for INTx
+ - #interrupt-cells: set to <1>
+ - interrupts: interrupt line wired to the generic GIC for INTx support
+ - interrupt-parent: Phandle to the parent interrupt controller
+
 MSI support (optional):
 
 For older platforms without MSI integrated in the GIC, iProc PCIe core provides
@@ -77,8 +89,11 @@ Example:
 		reg = <0x18012000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 100 IRQ_TYPE_NONE>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie0_intc 1>,
+				<0 0 0 2 &pcie0_intc 2>,
+				<0 0 0 3 &pcie0_intc 3>,
+				<0 0 0 4 &pcie0_intc 4>;
 
 		linux,pci-domain = <0>;
 
@@ -98,6 +113,14 @@ Example:
 
 		msi-parent = <&msi0>;
 
+		pcie0_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 100 IRQ_TYPE_NONE>;
+		};
+
 		/* iProc event queue based MSI */
 		msi0: msi@18012000 {
 			compatible = "brcm,iproc-msi";
@@ -115,8 +138,11 @@ Example:
 		reg = <0x18013000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 106 IRQ_TYPE_NONE>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie1_intc 1>,
+				<0 0 0 2 &pcie1_intc 2>,
+				<0 0 0 3 &pcie1_intc 3>,
+				<0 0 0 4 &pcie1_intc 4>;
 
 		linux,pci-domain = <1>;
 
@@ -130,4 +156,12 @@ Example:
 
 		phys = <&phy 1 6>;
 		phy-names = "pcie-phy";
+
+		pcie1_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 106 IRQ_TYPE_NONE>;
+		};
 	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
