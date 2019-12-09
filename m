Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7234C1178C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vFGzX7C4YTORXv0onS4IWlyajZBE6KsTNZzHrHU1JLM=; b=D2vvTw9vUOStfVVo3Rse0mds7J
	6/iOGMTKCGLB4KQw0SMP5f8Ns7x7uTqGvq/OSLhpCb1dZhiEgQUH/gj1fvRXsN/P8XGm9Alu+Acag
	Q/ezYTMT9oNAeQ26t8Zkn213FiDAJeNN8JNjEGVKm/jsDMzsc3LPUOp5wukbyCBczA3gcgxfamnt6
	UqWu+lGc4VLw0OAigmeoE7tiSxDuoWj4ntckFLLa3Q3e9CPjxL3lVTpU8FExFFXOsBUjHXA3seYoR
	Ycf8DydyBDeTuN3yG1i6m2cnDUaDHEbCcwXIQ4EXFr2ZkohVm1MV93JLfg7bWxa/Po/EctoEmb1jp
	GbquqnMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQql-0002JV-46; Mon, 09 Dec 2019 21:45:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQp5-000883-Kh
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:44:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id a15so17794601wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 13:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7uRAh6au5S8VHEFJ8kt0g9ojSmzLPUJCgOM93b79zJ8=;
 b=G0URtA3+YhjOgfnfTk1xyzEOECi37eiXK15d5iyEMsphBzzJeQ39MWSP+a+MTo6tRG
 D1CYesVmGapY8lPTPQ+8k/ziV8CAc48j5i4FL45VteBo98XzN55lml6M29lFD3Y6ft79
 DOdTJvXbreaYRxn9nKgga5/YcnEIDwFTT8EOuB3+YznfXlN+O6AdAaCkn+73JzKPrVy0
 Bid7cbrVv9unaho7lnBivVHDuA98JuJ9iP7a0GFIALNHsshLU6TYYs+qSlJrrUmYgCN/
 PYbezxjYsnHOEpfXG0FPjxWYOZhh31gC5vDNOl2ZWlBlF2+GVud4Fwocz1BLzQqImDSY
 JWLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7uRAh6au5S8VHEFJ8kt0g9ojSmzLPUJCgOM93b79zJ8=;
 b=L8mrxhqM3/CGzPfNVLEzAAeuiCvg3slaR9/8aoyMtqJMs9+Du0U5H3AqXQrwHRpmLO
 wh6ehEbYvXgQg+NrBoZgbWfM/NxmMUIMEEaZ3BVBBIoPzE7/JMyQo//gdypET8o5lJ6n
 rRt1ktph4G8PGNawQj3BzDBaK6CiSfIRW93WV/32eQBxTc4fKbz8dut4eYyhhm1szwpj
 IQu51gtg25RRuRayMMRhUwpa2P0B/XIe5z8eV5hD3rJDr16tArglpOYmr1AmPlgr51YP
 WHXCkDqJYgI/lYLbaRnv4sGAvhF3nXpch1z9gJb1kW1dxwaXvrObRBRY2nhYQOgzUvnt
 HA2Q==
X-Gm-Message-State: APjAAAVcrDuOFyn3cT4sfwxoasMN3klz5hKuFqlegVox5mKDK2f0xj98
 oPdt+2c4JN967eOw6KCavcY=
X-Google-Smtp-Source: APXvYqyl4PFSpmvFFrMLhBW7ioo1o8lZRJDTlc6KMrrleslnvPN/b4L57kPzwndIaZm69I8NVcajaA==
X-Received: by 2002:a5d:558d:: with SMTP id i13mr4409299wrv.364.1575927845757; 
 Mon, 09 Dec 2019 13:44:05 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id z6sm757714wmz.12.2019.12.09.13.44.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 13:44:05 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 resend 06/13] dt-bindings: Add Broadcom STB USB PHY binding
 document
Date: Mon,  9 Dec 2019 16:42:42 -0500
Message-Id: <20191209214249.41137-7-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209214249.41137-1-alcooperx@gmail.com>
References: <20191209214249.41137-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_134407_765682_3E7D04DC 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for bcm7216 and bcm7211

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 .../bindings/phy/brcm,brcmstb-usb-phy.txt     | 69 +++++++++++++++----
 1 file changed, 56 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.txt b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.txt
index 24a0d06acd1d..698aacbdcfc4 100644
--- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.txt
+++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.txt
@@ -1,30 +1,49 @@
 Broadcom STB USB PHY
 
 Required properties:
- - compatible: brcm,brcmstb-usb-phy
- - reg: two offset and length pairs.
-	The first pair specifies a manditory set of memory mapped
-	registers used for general control of the PHY.
-	The second pair specifies optional registers used by some of
-	the SoCs that support USB 3.x
- - #phy-cells: Shall be 1 as it expects one argument for setting
-	       the type of the PHY. Possible values are:
-	       - PHY_TYPE_USB2 for USB1.1/2.0 PHY
-	       - PHY_TYPE_USB3 for USB3.x PHY
+- compatible: should be one of
+	"brcm,brcmstb-usb-phy"
+	"brcm,bcm7216-usb-phy"
+	"brcm,bcm7211-usb-phy"
+
+- reg and reg-names properties requirements are specific to the
+  compatible string.
+  "brcm,brcmstb-usb-phy":
+    - reg: 1 or 2 offset and length pairs. One for the base CTRL registers
+           and an optional pair for systems with USB 3.x support
+    - reg-names: not specified
+  "brcm,bcm7216-usb-phy":
+    - reg: 3 offset and length pairs for CTRL, XHCI_EC and XHCI_GBL
+           registers
+    - reg-names: "ctrl", "xhci_ec", "xhci_gbl"
+  "brcm,bcm7211-usb-phy":
+    - reg: 5 offset and length pairs for CTRL, XHCI_EC, XHCI_GBL,
+           USB_PHY and USB_MDIO registers and an optional pair
+	   for the BDC registers
+    - reg-names: "ctrl", "xhci_ec", "xhci_gbl", "usb_phy", "usb_mdio", "bdc_ec"
+
+- #phy-cells: Shall be 1 as it expects one argument for setting
+	      the type of the PHY. Possible values are:
+	      - PHY_TYPE_USB2 for USB1.1/2.0 PHY
+	      - PHY_TYPE_USB3 for USB3.x PHY
 
 Optional Properties:
 - clocks : clock phandles.
 - clock-names: String, clock name.
+- interrupts: wakeup interrupt
+- interrupt-names: "wakeup"
 - brcm,ipp: Boolean, Invert Port Power.
   Possible values are: 0 (Don't invert), 1 (Invert)
 - brcm,ioc: Boolean, Invert Over Current detection.
   Possible values are: 0 (Don't invert), 1 (Invert)
-NOTE: one or both of the following two properties must be set
-- brcm,has-xhci: Boolean indicating the phy has an XHCI phy.
-- brcm,has-eohci: Boolean indicating the phy has an EHCI/OHCI phy.
 - dr_mode: String, PHY Device mode.
   Possible values are: "host", "peripheral ", "drd" or "typec-pd"
   If this property is not defined, the phy will default to "host" mode.
+- brcm,syscon-piarbctl: phandle to syscon for handling config registers
+NOTE: one or both of the following two properties must be set
+- brcm,has-xhci: Boolean indicating the phy has an XHCI phy.
+- brcm,has-eohci: Boolean indicating the phy has an EHCI/OHCI phy.
+
 
 Example:
 
@@ -41,3 +60,27 @@ usbphy_0: usb-phy@f0470200 {
 	clocks = <&usb20>, <&usb30>;
 	clock-names = "sw_usb", "sw_usb3";
 };
+
+usb-phy@29f0200 {
+	reg = <0x29f0200 0x200>,
+		<0x29c0880 0x30>,
+		<0x29cc100 0x534>,
+		<0x2808000 0x24>,
+		<0x2980080 0x8>;
+	reg-names = "ctrl",
+		"xhci_ec",
+		"xhci_gbl",
+		"usb_phy",
+		"usb_mdio";
+	brcm,ioc = <0x0>;
+	brcm,ipp = <0x0>;
+	compatible = "brcm,bcm7211-usb-phy";
+	interrupts = <0x30>;
+	interrupt-parent = <&vpu_intr1_nosec_intc>;
+	interrupt-names = "wake";
+	#phy-cells = <0x1>;
+	brcm,has-xhci;
+	syscon-piarbctl = <&syscon_piarbctl>;
+	clocks = <&scmi_clk 256>;
+	clock-names = "sw_usb";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
