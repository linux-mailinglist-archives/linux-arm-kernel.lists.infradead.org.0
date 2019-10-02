Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0210C874D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 13:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R4YA+eRfR0z9pnuYZNkVan+7CwPGaG0axbJ9zEURFno=; b=R+KhLUGOmUeWS0
	wogo7M3vN04WLsQRkz13w1D4qRNJ7D2VqSQIeJULe5YG8zhzqpaUlLcRPas5A2DTSoDemzvoUtxM/
	hyL/cn9YIvw8vW/VhzZjov6dS3tYwOF2S0erL0h1EMqOjE5xKcWLRy7pw3WHHWKJc6WWZPA+fgU0m
	qaXW4+QZjATJhrzmrmpLFzrfHTwldA7GLrcQ9bNAl8ImoWDsY7DFMubazyUIdTdUrJFi8cgu7yObX
	dlX4Y2kbOPOWweHWHb2uukal+8ka2lBxSqavOgN98yLb1YX7PtD4IBzh3OAb7/K04jwsrJNXNwfqV
	VpsyFUAhqcRz2XoaBSyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcmh-0004vA-S8; Wed, 02 Oct 2019 11:27:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcmY-0004ua-7U
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 11:27:00 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4DCD121783;
 Wed,  2 Oct 2019 11:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570015617;
 bh=1EAqeuZ2lEPENoN77/GnLmhvfVQmkvL0HXX/c8tgDPI=;
 h=From:To:Cc:Subject:Date:From;
 b=POgOW9RZv81pgir+qurUsULY4O1E9R6pxlpibnmd3ereVndMljGZAmjmJs7IMR+BJ
 KsiH8I7zfJh3CkS7mZ2Zg4IYP+hDl1GPwYzAscXrR020z2T/mMKD8kMQwDTe7msnBn
 kUs+cfa60m6AAXEIhVBwbxkOC1empJ6RlJpVWEVo=
From: Maxime Ripard <mripard@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 1/2] ARM: dts: sunxi: Revert phy-names removal for ECHI and
 OHCI
Date: Wed,  2 Oct 2019 13:26:50 +0200
Message-Id: <20191002112651.100504-1-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_042658_316308_7B673E4B 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Emmanuel Vadot <manu@bidouilliste.com>,
 linux-usb@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commits 3d109bdca981 ("ARM: dts: sunxi: Remove useless
phy-names from EHCI and OHCI"), 0a3df8bb6dad ("ARM: dts: sunxi: h3/h5:
Remove useless phy-names from EHCI and OHCI") and 3c7ab90aaa28 ("arm64:
dts: allwinner: Remove useless phy-names from EHCI and OHCI").

It turns out that while the USB bindings were not mentionning it, the PHY
client bindings were mandating that phy-names is set when phys is. Let's
add it back.

Fixes: 3d109bdca981 ("ARM: dts: sunxi: Remove useless phy-names from EHCI and OHCI")
Fixes: 0a3df8bb6dad ("ARM: dts: sunxi: h3/h5: Remove useless phy-names from EHCI and OHCI")
Fixes: 3c7ab90aaa28 ("arm64: dts: allwinner: Remove useless phy-names from EHCI and OHCI")
Reported-by: Emmanuel Vadot <manu@bidouilliste.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 arch/arm/boot/dts/sun4i-a10.dtsi                      | 4 ++++
 arch/arm/boot/dts/sun5i.dtsi                          | 2 ++
 arch/arm/boot/dts/sun6i-a31.dtsi                      | 4 ++++
 arch/arm/boot/dts/sun7i-a20.dtsi                      | 4 ++++
 arch/arm/boot/dts/sun8i-a23-a33.dtsi                  | 2 ++
 arch/arm/boot/dts/sun8i-a83t.dtsi                     | 3 +++
 arch/arm/boot/dts/sun8i-r40.dtsi                      | 4 ++++
 arch/arm/boot/dts/sun9i-a80.dtsi                      | 5 +++++
 arch/arm/boot/dts/sunxi-h3-h5.dtsi                    | 6 ++++++
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi         | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi          | 2 ++
 12 files changed, 40 insertions(+)

diff --git a/arch/arm/boot/dts/sun4i-a10.dtsi b/arch/arm/boot/dts/sun4i-a10.dtsi
index ce823c44e98a..4c268b70b735 100644
--- a/arch/arm/boot/dts/sun4i-a10.dtsi
+++ b/arch/arm/boot/dts/sun4i-a10.dtsi
@@ -520,6 +520,7 @@
 			interrupts = <39>;
 			clocks = <&ccu CLK_AHB_EHCI0>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -529,6 +530,7 @@
 			interrupts = <64>;
 			clocks = <&ccu CLK_USB_OHCI0>, <&ccu CLK_AHB_OHCI0>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -608,6 +610,7 @@
 			interrupts = <40>;
 			clocks = <&ccu CLK_AHB_EHCI1>;
 			phys = <&usbphy 2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -617,6 +620,7 @@
 			interrupts = <65>;
 			clocks = <&ccu CLK_USB_OHCI1>, <&ccu CLK_AHB_OHCI1>;
 			phys = <&usbphy 2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm/boot/dts/sun5i.dtsi b/arch/arm/boot/dts/sun5i.dtsi
index cfb1efc8828c..6befa236ba99 100644
--- a/arch/arm/boot/dts/sun5i.dtsi
+++ b/arch/arm/boot/dts/sun5i.dtsi
@@ -391,6 +391,7 @@
 			interrupts = <39>;
 			clocks = <&ccu CLK_AHB_EHCI>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -400,6 +401,7 @@
 			interrupts = <40>;
 			clocks = <&ccu CLK_USB_OHCI>, <&ccu CLK_AHB_OHCI>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index bbeb743633c6..ac7638078420 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -545,6 +545,7 @@
 			clocks = <&ccu CLK_AHB1_EHCI0>;
 			resets = <&ccu RST_AHB1_EHCI0>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -555,6 +556,7 @@
 			clocks = <&ccu CLK_AHB1_OHCI0>, <&ccu CLK_USB_OHCI0>;
 			resets = <&ccu RST_AHB1_OHCI0>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -565,6 +567,7 @@
 			clocks = <&ccu CLK_AHB1_EHCI1>;
 			resets = <&ccu RST_AHB1_EHCI1>;
 			phys = <&usbphy 2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -575,6 +578,7 @@
 			clocks = <&ccu CLK_AHB1_OHCI1>, <&ccu CLK_USB_OHCI1>;
 			resets = <&ccu RST_AHB1_OHCI1>;
 			phys = <&usbphy 2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index 49380de754a9..874231be04e4 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -623,6 +623,7 @@
 			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_AHB_EHCI0>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -632,6 +633,7 @@
 			interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_USB_OHCI0>, <&ccu CLK_AHB_OHCI0>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -714,6 +716,7 @@
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_AHB_EHCI1>;
 			phys = <&usbphy 2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -723,6 +726,7 @@
 			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_USB_OHCI1>, <&ccu CLK_AHB_OHCI1>;
 			phys = <&usbphy 2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm/boot/dts/sun8i-a23-a33.dtsi b/arch/arm/boot/dts/sun8i-a23-a33.dtsi
index 52eed0ae3607..f292f96ab39b 100644
--- a/arch/arm/boot/dts/sun8i-a23-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a23-a33.dtsi
@@ -307,6 +307,7 @@
 			clocks = <&ccu CLK_BUS_EHCI>;
 			resets = <&ccu RST_BUS_EHCI>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -317,6 +318,7 @@
 			clocks = <&ccu CLK_BUS_OHCI>, <&ccu CLK_USB_OHCI>;
 			resets = <&ccu RST_BUS_OHCI>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 523be6611c50..74bb053cf23c 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -632,6 +632,7 @@
 			clocks = <&ccu CLK_BUS_EHCI0>;
 			resets = <&ccu RST_BUS_EHCI0>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -643,6 +644,7 @@
 			clocks = <&ccu CLK_BUS_OHCI0>, <&ccu CLK_USB_OHCI0>;
 			resets = <&ccu RST_BUS_OHCI0>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -654,6 +656,7 @@
 			clocks = <&ccu CLK_BUS_EHCI1>;
 			resets = <&ccu RST_BUS_EHCI1>;
 			phys = <&usbphy 2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index bde068111b85..c9c2688db66d 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -273,6 +273,7 @@
 			clocks = <&ccu CLK_BUS_EHCI1>;
 			resets = <&ccu RST_BUS_EHCI1>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -284,6 +285,7 @@
 				 <&ccu CLK_USB_OHCI1>;
 			resets = <&ccu RST_BUS_OHCI1>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -294,6 +296,7 @@
 			clocks = <&ccu CLK_BUS_EHCI2>;
 			resets = <&ccu RST_BUS_EHCI2>;
 			phys = <&usbphy 2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -305,6 +308,7 @@
 				 <&ccu CLK_USB_OHCI2>;
 			resets = <&ccu RST_BUS_OHCI2>;
 			phys = <&usbphy 2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm/boot/dts/sun9i-a80.dtsi b/arch/arm/boot/dts/sun9i-a80.dtsi
index 4fd879fb099c..1d9d12a90df9 100644
--- a/arch/arm/boot/dts/sun9i-a80.dtsi
+++ b/arch/arm/boot/dts/sun9i-a80.dtsi
@@ -346,6 +346,7 @@
 			clocks = <&usb_clocks CLK_BUS_HCI0>;
 			resets = <&usb_clocks RST_USB0_HCI>;
 			phys = <&usbphy1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -357,6 +358,7 @@
 				 <&usb_clocks CLK_USB_OHCI0>;
 			resets = <&usb_clocks RST_USB0_HCI>;
 			phys = <&usbphy1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -378,6 +380,7 @@
 			clocks = <&usb_clocks CLK_BUS_HCI1>;
 			resets = <&usb_clocks RST_USB1_HCI>;
 			phys = <&usbphy2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -407,6 +410,7 @@
 			clocks = <&usb_clocks CLK_BUS_HCI2>;
 			resets = <&usb_clocks RST_USB2_HCI>;
 			phys = <&usbphy3>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -418,6 +422,7 @@
 				 <&usb_clocks CLK_USB_OHCI2>;
 			resets = <&usb_clocks RST_USB2_HCI>;
 			phys = <&usbphy3>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index eba190b3f9de..107eeafad20a 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -304,6 +304,7 @@
 			clocks = <&ccu CLK_BUS_EHCI1>, <&ccu CLK_BUS_OHCI1>;
 			resets = <&ccu RST_BUS_EHCI1>, <&ccu RST_BUS_OHCI1>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -315,6 +316,7 @@
 				 <&ccu CLK_USB_OHCI1>;
 			resets = <&ccu RST_BUS_EHCI1>, <&ccu RST_BUS_OHCI1>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -325,6 +327,7 @@
 			clocks = <&ccu CLK_BUS_EHCI2>, <&ccu CLK_BUS_OHCI2>;
 			resets = <&ccu RST_BUS_EHCI2>, <&ccu RST_BUS_OHCI2>;
 			phys = <&usbphy 2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -336,6 +339,7 @@
 				 <&ccu CLK_USB_OHCI2>;
 			resets = <&ccu RST_BUS_EHCI2>, <&ccu RST_BUS_OHCI2>;
 			phys = <&usbphy 2>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -346,6 +350,7 @@
 			clocks = <&ccu CLK_BUS_EHCI3>, <&ccu CLK_BUS_OHCI3>;
 			resets = <&ccu RST_BUS_EHCI3>, <&ccu RST_BUS_OHCI3>;
 			phys = <&usbphy 3>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -357,6 +362,7 @@
 				 <&ccu CLK_USB_OHCI3>;
 			resets = <&ccu RST_BUS_EHCI3>, <&ccu RST_BUS_OHCI3>;
 			phys = <&usbphy 3>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 2b6345db7dc0..78c82a665c84 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -104,6 +104,7 @@
 
 &ehci0 {
 	phys = <&usbphy 0>;
+	phy-names = "usb";
 	status = "okay";
 };
 
@@ -150,6 +151,7 @@
 
 &ohci0 {
 	phys = <&usbphy 0>;
+	phy-names = "usb";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index d0028934e11c..70f4cce6be43 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -544,6 +544,7 @@
 			resets = <&ccu RST_BUS_OHCI1>,
 				 <&ccu RST_BUS_EHCI1>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -555,6 +556,7 @@
 				 <&ccu CLK_USB_OHCI1>;
 			resets = <&ccu RST_BUS_OHCI1>;
 			phys = <&usbphy 1>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 4020a1aafa3e..0d5ea19336a1 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -547,6 +547,7 @@
 			resets = <&ccu RST_BUS_OHCI3>,
 				 <&ccu RST_BUS_EHCI3>;
 			phys = <&usb2phy 3>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -558,6 +559,7 @@
 				 <&ccu CLK_USB_OHCI3>;
 			resets = <&ccu RST_BUS_OHCI3>;
 			phys = <&usb2phy 3>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
