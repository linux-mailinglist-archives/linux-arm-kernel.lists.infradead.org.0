Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A25D1A174C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 23:13:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZYAukmpUUFD7FdLsgDfV4FiHFQEQTtAA1jW6CckiGc=; b=i8T0r2tAwaeaIJ
	7J4knA781JFoh9ctlC8mu59RsPw88feLaM49pjUWZSrqpe/Q7s1W3Jg+6C2rkxl5aApQ1TFKzhBfP
	7hPgIN7KN/0szHC8kelaGMG/sXNkBBuhZWBLyqmWP6M6oQuYGP1haEA/Ly1DIgSZv6Dg3J9FSoTUN
	meBdteaBE9vs24k6LhnE7DHFEBenS0PpERrpx68GOQgk89RYlge4d3Hb+ps8T1TVp/X0obrCVAXlE
	7jXU4piaLfQB9YG5oYxbHYywSgPNDYwyW8OqSRrUmxdRsZGy+w5dwsMyRdu5chKYDRZ8oCGFuxSpk
	eGnMpkLRnPWRNR8akYeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLvXR-0001bu-SM; Tue, 07 Apr 2020 21:13:41 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLvWo-0001BF-SE
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 21:13:04 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id A84DBFF805;
 Tue,  7 Apr 2020 21:12:56 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 2/5] arm: dts: linksys: rename mamba to wrt1900ac
Date: Tue,  7 Apr 2020 11:08:12 -1000
Message-Id: <20200407210816.866084-3-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200407210816.866084-1-mail@aparcar.org>
References: <20200407210816.866084-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_141303_201457_59A33820 
X-CRM114-Status: GOOD (  11.70  )
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

Linksys uses internally the codename "mamba" for a device sold under
the name of "Linksys WRT1900AC", which is already reflected in the
device tree `model`. However the `compatible` list only contains the
codename `linksys,mamba` which does not relate to the common name.

This patch renames the `dts` file to the sanitized model name and
prepends `linksys,wrt1900ac` to the `compatible` list to simplify the
device relation.

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
 ...ba.dts => armada-xp-linksys-wrt1900ac.dts} | 27 ++++++++++---------
 2 files changed, 15 insertions(+), 14 deletions(-)
 rename arch/arm/boot/dts/{armada-xp-linksys-mamba.dts => armada-xp-linksys-wrt1900ac.dts} (92%)

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index a0df7f97cc44..cf288adb8fe0 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1302,7 +1302,7 @@ dtb-$(CONFIG_MACH_ARMADA_XP) += \
 	armada-xp-db-xc3-24g4xg.dtb \
 	armada-xp-gp.dtb \
 	armada-xp-lenovo-ix4-300d.dtb \
-	armada-xp-linksys-mamba.dtb \
+	armada-xp-linksys-wrt1900ac.dtb \
 	armada-xp-matrix.dtb \
 	armada-xp-netgear-rn2120.dtb \
 	armada-xp-openblocks-ax3-4.dtb \
diff --git a/arch/arm/boot/dts/armada-xp-linksys-mamba.dts b/arch/arm/boot/dts/armada-xp-linksys-wrt1900ac.dts
similarity index 92%
rename from arch/arm/boot/dts/armada-xp-linksys-mamba.dts
rename to arch/arm/boot/dts/armada-xp-linksys-wrt1900ac.dts
index 8480a16919a0..2644870fec2c 100644
--- a/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
+++ b/arch/arm/boot/dts/armada-xp-linksys-wrt1900ac.dts
@@ -23,8 +23,9 @@
 
 / {
 	model = "Linksys WRT1900AC";
-	compatible = "linksys,mamba", "marvell,armadaxp-mv78230",
-		     "marvell,armadaxp", "marvell,armada-370-xp";
+	compatible = "linksys,wrt1900ac", "linksys,mamba",
+		     "marvell,armadaxp-mv78230", "marvell,armadaxp",
+		     "marvell,armada-370-xp";
 
 	chosen {
 		bootargs = "console=ttyS0,115200";
@@ -110,53 +111,53 @@ tlc59116@68 {
 					reg = <0x68>;
 
 					wan_amber@0 {
-						label = "mamba:amber:wan";
+						label = "wrt1900ac:amber:wan";
 						reg = <0x0>;
 					};
 
 					wan_white@1 {
-						label = "mamba:white:wan";
+						label = "wrt1900ac:white:wan";
 						reg = <0x1>;
 					};
 
 					wlan_2g@2 {
-						label = "mamba:white:wlan_2g";
+						label = "wrt1900ac:white:wlan_2g";
 						reg = <0x2>;
 					};
 
 					wlan_5g@3 {
-						label = "mamba:white:wlan_5g";
+						label = "wrt1900ac:white:wlan_5g";
 						reg = <0x3>;
 					};
 
 					esata@4 {
-						label = "mamba:white:esata";
+						label = "wrt1900ac:white:esata";
 						reg = <0x4>;
 						linux,default-trigger = "disk-activity";
 					};
 
 					usb2@5 {
-						label = "mamba:white:usb2";
+						label = "wrt1900ac:white:usb2";
 						reg = <0x5>;
 					};
 
 					usb3_1@6 {
-						label = "mamba:white:usb3_1";
+						label = "wrt1900ac:white:usb3_1";
 						reg = <0x6>;
 					};
 
 					usb3_2@7 {
-						label = "mamba:white:usb3_2";
+						label = "wrt1900ac:white:usb3_2";
 						reg = <0x7>;
 					};
 
 					wps_white@8 {
-						label = "mamba:white:wps";
+						label = "wrt1900ac:white:wps";
 						reg = <0x8>;
 					};
 
 					wps_amber@9 {
-						label = "mamba:amber:wps";
+						label = "wrt1900ac:amber:wps";
 						reg = <0x9>;
 					};
 				};
@@ -198,7 +199,7 @@ gpio-leds {
 		pinctrl-names = "default";
 
 		power {
-			label = "mamba:white:power";
+			label = "wrt1900ac:white:power";
 			gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
