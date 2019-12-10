Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 019C51189A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vFGzX7C4YTORXv0onS4IWlyajZBE6KsTNZzHrHU1JLM=; b=M+IX9o/IL6mxfrttzC+lyp7YfX
	iOqmvaZPVebhM4ADuhLLT55roXpIVHPBgp/oKgTB/kgsN+lDtTJY7/QaeCQ4E+0Pw9SeZ1vXtK2UX
	SllJA6fIrjt+vjoIHbXjBqESYAP2iWBCWrbbcaaoyb9Qnpzs1V2f2mAe7mXoQW+RX4hfp6PlYdfTV
	IS7conP5nlnnwBWE2En94c8FXax91+mSniCqXPKMw8Wu5slZ49TnPaTs6IWSYuvUzMGRIFheKTLob
	kew1ORqCvSNekaFd6QY3braacYGZPVvt2IB364d/m6qaEfGuxB9l000Yp1PYhWtXmxffYj0jBg7FR
	mjRvjB/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefWC-0004He-0X; Tue, 10 Dec 2019 13:25:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefUM-0001RZ-Mw
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:23:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id t2so20121838wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 05:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7uRAh6au5S8VHEFJ8kt0g9ojSmzLPUJCgOM93b79zJ8=;
 b=tnR93TDF2rm4SZzm7xbOhwEWjt2uyFvOEIqNoaM+OnSN38b+NAn7b0KSbDIwhQjuLX
 bvHUFKY+ArEP0WubXepq5AApAZBQvA39dmWqLp9eimW+v7oFTthIXDysszBKmQyZSiJr
 z2DwQb+LoajRsV0MHDEezm2u5osSLW3FCqSyHWbQ9OSyAY7Ao5XK0A8YUQu65ClWWPqX
 1Z+wip3hKhlvTb4cBuEaixLjzNToIhCTcad4GWvwErgOoxKR7ypzk1+c/dA/+SKNOTPK
 6az9xdA9limX0k3/jewb33rc+hhfhDiBDqves3zTpWz2Li+i05zqE64VtfZKPU4R7iwP
 jyaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7uRAh6au5S8VHEFJ8kt0g9ojSmzLPUJCgOM93b79zJ8=;
 b=KpGzZUNet7jP1ufGjnaLfemZlWDZBXlTfgaRo6tQ8Z4Xb2UQMOUcGFlpXGxbRCwVJB
 MW6DFnbaI5j84SXVcrj9k9d6K6rtYYTVkynYtCGc4dmegZMYNHfFEMH8aZrENI1IBj+C
 2IJkh7S0oMuRrhnsqluc9LjoteOyHPS8Z2RVcBTLwTtC0yue0OYAzzr0hiCzo11SCCtZ
 buoljSS69tWLQLh8T+aKOh10J8baokyNkX91lpa+bOaLbz+l0r13ouzbc/LmbWcPbPOu
 EYHo43rPa19u2h2ZY3/60C6iFvp3KeKr3WECNy5CoqQp0A6dYs1BpKSo1uuIFuo2Mlkk
 F9zQ==
X-Gm-Message-State: APjAAAVjoRD/vNJqDokzx1ZLOKxsMeoLf+4GYhMMHLaPulUgwB2bLA0Y
 wMEExPYmL98XN9o0DH5Y3w8=
X-Google-Smtp-Source: APXvYqzAcyJpKb1DkKctC/nI5zTr2OQd2D4gLEXLobfaB9nOZbV668oHi1LHQVbp86Uwq7MFYdXPUw==
X-Received: by 2002:adf:f78e:: with SMTP id q14mr3268071wrp.186.1575984220431; 
 Tue, 10 Dec 2019 05:23:40 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s82sm3101680wms.28.2019.12.10.05.23.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 05:23:39 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 06/13] dt-bindings: Add Broadcom STB USB PHY binding
 document
Date: Tue, 10 Dec 2019 08:21:25 -0500
Message-Id: <20191210132132.41509-7-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210132132.41509-1-alcooperx@gmail.com>
References: <20191210132132.41509-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052342_800830_57ECB186 
X-CRM114-Status: GOOD (  14.19  )
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
