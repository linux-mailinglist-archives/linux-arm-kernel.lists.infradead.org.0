Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED671A1748
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 23:13:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fRKgEswX7raPA5jw+wqOBR2A+cUc8Mg9Z6Ko0i7jEU=; b=PCjjviJl9DBZK1
	xlJ4dRMmIjHvfqwAw4V9TRitMmTQE/IwhbKPh/ixZmfR1AgHRk5/d3p6zmFmu/Ue7nPMdJqxIH9s2
	0Yd9KiZ7BxeVIxj2Q+YaNerPQ5sw+M+FOFwecL2vhOGVMk5YgwwvPqoBSKHn2YclG3vkppMp4+E0n
	gPU+M+DEVMviUA7NwI6A0euok8e/BqAucdIFOxF52V2LyftQ7Av8L5Tfgh81yr56C48/kahMeDSj7
	ueaMw0yx7tqNurc6W0umVa3yF9f51Zcp2kYXm1G1XZiFGtf+sjjhIQ94Hd9gruJsz658smgAgWQDK
	q+p2GT0C5rSyN0i2vh6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLvX3-0001Dx-Ms; Tue, 07 Apr 2020 21:13:17 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLvWj-000172-82
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 21:12:58 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id A228FFF803;
 Tue,  7 Apr 2020 21:12:50 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 1/5] arm: dts: linksys: rename rango to wrt3200acm
Date: Tue,  7 Apr 2020 11:08:11 -1000
Message-Id: <20200407210816.866084-2-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200407210816.866084-1-mail@aparcar.org>
References: <20200407210816.866084-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_141257_556453_E84706B8 
X-CRM114-Status: GOOD (  10.97  )
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

Linksys uses internally the codename "rango" for a device sold under the
name of "Linksys WRT3200ACM", which is already reflected in the device
tree `model`. However the `compatible` list only contains the codename
`linksys,rango` which does not relate to the common name.

This patch renames the `dts` file to the sanitized model name and
prepends `linksys,wrt3200acm` to the `compatible` list to simplify the
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
 ....dts => armada-385-linksys-wrt3200acm.dts} | 26 +++++++++----------
 2 files changed, 14 insertions(+), 14 deletions(-)
 rename arch/arm/boot/dts/{armada-385-linksys-rango.dts => armada-385-linksys-wrt3200acm.dts} (83%)

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e8dd99201397..a0df7f97cc44 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1282,8 +1282,8 @@ dtb-$(CONFIG_MACH_ARMADA_38X) += \
 	armada-385-db-ap.dtb \
 	armada-385-linksys-caiman.dtb \
 	armada-385-linksys-cobra.dtb \
-	armada-385-linksys-rango.dtb \
 	armada-385-linksys-shelby.dtb \
+	armada-385-linksys-wrt3200acm.dtb \
 	armada-385-synology-ds116.dtb \
 	armada-385-turris-omnia.dtb \
 	armada-388-clearfog.dtb \
diff --git a/arch/arm/boot/dts/armada-385-linksys-rango.dts b/arch/arm/boot/dts/armada-385-linksys-wrt3200acm.dts
similarity index 83%
rename from arch/arm/boot/dts/armada-385-linksys-rango.dts
rename to arch/arm/boot/dts/armada-385-linksys-wrt3200acm.dts
index 3c4af57ec2b9..bf7b546e3344 100644
--- a/arch/arm/boot/dts/armada-385-linksys-rango.dts
+++ b/arch/arm/boot/dts/armada-385-linksys-wrt3200acm.dts
@@ -12,43 +12,43 @@
 
 / {
 	model = "Linksys WRT3200ACM";
-	compatible = "linksys,rango", "linksys,armada385", "marvell,armada385",
-		     "marvell,armada380";
+	compatible = "linksys,wrt3200acm", "linksys,rango", "linksys,armada385",
+		     "marvell,armada385", "marvell,armada380";
 };
 
 &expander0 {
 	wan_amber@0 {
-		label = "rango:amber:wan";
+		label = "wrt3200acm:amber:wan";
 		reg = <0x0>;
 	};
 
 	wan_white@1 {
-		label = "rango:white:wan";
+		label = "wrt3200acm:white:wan";
 		reg = <0x1>;
 	};
 
 	usb2@5 {
-		label = "rango:white:usb2";
+		label = "wrt3200acm:white:usb2";
 		reg = <0x5>;
 	};
 
 	usb3_1@6 {
-		label = "rango:white:usb3_1";
+		label = "wrt3200acm:white:usb3_1";
 		reg = <0x6>;
 	};
 
 	usb3_2@7 {
-		label = "rango:white:usb3_2";
+		label = "wrt3200acm:white:usb3_2";
 		reg = <0x7>;
 	};
 
 	wps_white@8 {
-		label = "rango:white:wps";
+		label = "wrt3200acm:white:wps";
 		reg = <0x8>;
 	};
 
 	wps_amber@9 {
-		label = "rango:amber:wps";
+		label = "wrt3200acm:amber:wps";
 		reg = <0x9>;
 	};
 };
@@ -56,22 +56,22 @@ wps_amber@9 {
 &gpio_leds {
 	power {
 		gpios = <&gpio1 24 GPIO_ACTIVE_HIGH>;
-		label = "rango:white:power";
+		label = "wrt3200acm:white:power";
 	};
 
 	sata {
 		gpios = <&gpio0 21 GPIO_ACTIVE_LOW>;
-		label = "rango:white:sata";
+		label = "wrt3200acm:white:sata";
 	};
 
 	wlan_2g {
 		gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
-		label = "rango:white:wlan_2g";
+		label = "wrt3200acm:white:wlan_2g";
 	};
 
 	wlan_5g {
 		gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
-		label = "rango:white:wlan_5g";
+		label = "wrt3200acm:white:wlan_5g";
 	};
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
