Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DEC1A174D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 23:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/s2Lx9r/cm2ozfgCeq/5cQtRBjRQhRhBo2v0Ziuu3E=; b=RVhS6VWKLHGMn2
	gqIK30vPIPpTTgg99ThcaX9+/XFJ0qfXn84Amuvnds43x3d04fUJE9v8SR6o/OzsmAUbK0bkaq3yx
	CAAP4gbuROsKVE0CjxUL3xWfnxkCbJcrxbZaGInowZGlCuZ3fchDGqwNSNWPHvwfKrsRbtaeO33jl
	yahgp7UZ59I3U8ODN2WganzvJYpC/bVC853/8juOYAbNDnrnDKOmjAEQfT1DJQ/q1jpUVdpdE8hhS
	L1bZ2GYrpQmXbY0XZQDJu9zPyk6QLQxniSHEyF6kpXPAA639KJCGhdxkCp/L9YFeCbf7U91YvErJN
	saqkHGUaUsmEwMZZygqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLvXg-0001z1-VM; Tue, 07 Apr 2020 21:13:57 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLvWv-0001L1-Jk
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 21:13:11 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 35BF5FF808;
 Tue,  7 Apr 2020 21:13:01 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 3/5] arm: dts: linksys: rename cobra to wrt1900ac-v2
Date: Tue,  7 Apr 2020 11:08:13 -1000
Message-Id: <20200407210816.866084-4-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200407210816.866084-1-mail@aparcar.org>
References: <20200407210816.866084-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_141309_954864_435C726D 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: andrew@lunn.ch, jason@lakedaemon.net, Paul Spooren <mail@aparcar.org>,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 daniel@makrotopia.org, freifunk@adrianschmutzler.de, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Linksys uses internally the codename "cobra" for a device sold under the
name of "Linksys WRT1900ACv2", which is already reflected in the device
tree `model`. However the `compatible` list only contains the codename
`linksys,cobra` which does not relate to the common name.

This patch renames the `dts` file to the sanitized model name and
prepends `linksys,wrt1900ac-v2` to the `compatible` list to simplify the
device relation.

For consistency with other models containing a version number a space
was added in the DT `model` to sepparate the *v2* and also reflected in
the `dts` filename containing `-v2`.

Signed-off-by: Paul Spooren <mail@aparcar.org>
CC: Rob Herring <robh+dt@kernel.org>
CC: Jason Cooper <jason@lakedaemon.net>
CC: Andrew Lunn <andrew@lunn.ch>
CC: Gregory Clement <gregory.clement@bootlin.com>
CC: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
CC: Daniel Golle <daniel@makrotopia.org>
CC: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 arch/arm/boot/dts/Makefile                    |  2 +-
 ...ts => armada-385-linksys-wrt1900ac-v2.dts} | 27 ++++++++++---------
 2 files changed, 15 insertions(+), 14 deletions(-)
 rename arch/arm/boot/dts/{armada-385-linksys-cobra.dts => armada-385-linksys-wrt1900ac-v2.dts} (78%)

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index cf288adb8fe0..be45b5fb4f95 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1281,8 +1281,8 @@ dtb-$(CONFIG_MACH_ARMADA_38X) += \
 	armada-385-db-88f6820-amc.dtb \
 	armada-385-db-ap.dtb \
 	armada-385-linksys-caiman.dtb \
-	armada-385-linksys-cobra.dtb \
 	armada-385-linksys-shelby.dtb \
+	armada-385-linksys-wrt1900ac-v2.dtb \
 	armada-385-linksys-wrt3200acm.dtb \
 	armada-385-synology-ds116.dtb \
 	armada-385-turris-omnia.dtb \
diff --git a/arch/arm/boot/dts/armada-385-linksys-cobra.dts b/arch/arm/boot/dts/armada-385-linksys-wrt1900ac-v2.dts
similarity index 78%
rename from arch/arm/boot/dts/armada-385-linksys-cobra.dts
rename to arch/arm/boot/dts/armada-385-linksys-wrt1900ac-v2.dts
index e3e4877a6f49..8f78350fa988 100644
--- a/arch/arm/boot/dts/armada-385-linksys-cobra.dts
+++ b/arch/arm/boot/dts/armada-385-linksys-wrt1900ac-v2.dts
@@ -9,65 +9,66 @@
 #include "armada-385-linksys.dtsi"
 
 / {
-	model = "Linksys WRT1900ACv2";
-	compatible = "linksys,cobra", "linksys,armada385", "marvell,armada385",
+	model = "Linksys WRT1900AC v2";
+	compatible = "linksys,wrt1900ac-v2", "linksys,cobra",
+		     "linksys,armada385", "marvell,armada385",
 		     "marvell,armada380";
 };
 
 &expander0 {
 	wan_amber@0 {
-		label = "cobra:amber:wan";
+		label = "wrt1900ac-v2:amber:wan";
 		reg = <0x0>;
 	};
 
 	wan_white@1 {
-		label = "cobra:white:wan";
+		label = "wrt1900ac-v2:white:wan";
 		reg = <0x1>;
 	};
 
 	wlan_2g@2 {
-		label = "cobra:white:wlan_2g";
+		label = "wrt1900ac-v2:white:wlan_2g";
 		reg = <0x2>;
 	};
 
 	wlan_5g@3 {
-		label = "cobra:white:wlan_5g";
+		label = "wrt1900ac-v2:white:wlan_5g";
 		reg = <0x3>;
 	};
 
 	usb2@5 {
-		label = "cobra:white:usb2";
+		label = "wrt1900ac-v2:white:usb2";
 		reg = <0x5>;
 	};
 
 	usb3_1@6 {
-		label = "cobra:white:usb3_1";
+		label = "wrt1900ac-v2:white:usb3_1";
 		reg = <0x6>;
 	};
 
 	usb3_2@7 {
-		label = "cobra:white:usb3_2";
+		label = "wrt1900ac-v2:white:usb3_2";
 		reg = <0x7>;
 	};
 
 	wps_white@8 {
-		label = "cobra:white:wps";
+		label = "wrt1900ac-v2:white:wps";
 		reg = <0x8>;
 	};
 
 	wps_amber@9 {
-		label = "cobra:amber:wps";
+		label = "wrt1900ac-v2:amber:wps";
 		reg = <0x9>;
 	};
 };
 
 &gpio_leds {
 	power {
-		label = "cobra:white:power";
+		label = "wrt1900ac-v2:white:power";
 	};
 
 	sata {
-		label = "cobra:white:sata";
+		label = "wrt1900ac-v2:white:sata";
 	};
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
