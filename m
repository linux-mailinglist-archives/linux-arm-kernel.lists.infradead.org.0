Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3D31A174E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 23:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZlB2nyQUD3Qp5NUN1n+SD4QVfHygKoyYqy8UDnWvS0I=; b=qCT4ruddReJvui
	cmUFYd5J8KOEn2s/MUAlsB6KHN8KRsYQF/oDoV6x3oAL7Fdzb2KEVABbBe9xLgcKFWYLGiXgkf35A
	l4ys+LFRRrsbt+1zPjrht6rgm/EqlGilI6oIjnA2klS46SEEDHpv9ZqzAaEJY66BvjyxSLYLj4qSR
	BegLswEz4XwoQgrVRC4/u9TrciCWyeSLgVl67QjOKIvHFyjD1reszVZSOQy+D2G48WecJAfIm6rxX
	lj2+mmRMfxseW5Gs5UBoeAaUI9SK62LLtpv6yTTYUNUC2unAS6G6EcAAXxtFJPC3L2L7e4WF1bnhP
	4oBle+BCVv9002O8uM6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLvXv-0002FQ-Fw; Tue, 07 Apr 2020 21:14:11 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLvX2-0001Sq-Tk
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 21:13:20 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id B9121FF802;
 Tue,  7 Apr 2020 21:13:08 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 4/5] arm: dts: linksys: rename caiman to wrt1200ac
Date: Tue,  7 Apr 2020 11:08:14 -1000
Message-Id: <20200407210816.866084-5-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200407210816.866084-1-mail@aparcar.org>
References: <20200407210816.866084-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_141317_231684_A8CCE06C 
X-CRM114-Status: GOOD (  10.68  )
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

Linksys uses internally the codename "caiman" for a device sold under
the name of "Linksys WRT1200AC", which is already reflected in the
device tree `model`. However the `compatible` list only contains the
codename `linksys,caiman` which does not relate to the common name.

This patch renames the `dts` file to the sanitized model name and
prepends `linksys,wrt1200ac` to the `compatible` list to simplify the
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
 ...n.dts => armada-385-linksys-wrt1200ac.dts} | 26 +++++++++----------
 2 files changed, 14 insertions(+), 14 deletions(-)
 rename arch/arm/boot/dts/{armada-385-linksys-caiman.dts => armada-385-linksys-wrt1200ac.dts} (80%)

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index be45b5fb4f95..8482bec35af4 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1280,8 +1280,8 @@ dtb-$(CONFIG_MACH_ARMADA_38X) += \
 	armada-385-clearfog-gtr-l8.dtb \
 	armada-385-db-88f6820-amc.dtb \
 	armada-385-db-ap.dtb \
-	armada-385-linksys-caiman.dtb \
 	armada-385-linksys-shelby.dtb \
+	armada-385-linksys-wrt1200ac.dtb \
 	armada-385-linksys-wrt1900ac-v2.dtb \
 	armada-385-linksys-wrt3200acm.dtb \
 	armada-385-synology-ds116.dtb \
diff --git a/arch/arm/boot/dts/armada-385-linksys-caiman.dts b/arch/arm/boot/dts/armada-385-linksys-wrt1200ac.dts
similarity index 80%
rename from arch/arm/boot/dts/armada-385-linksys-caiman.dts
rename to arch/arm/boot/dts/armada-385-linksys-wrt1200ac.dts
index a03050c97084..acc8338987f5 100644
--- a/arch/arm/boot/dts/armada-385-linksys-caiman.dts
+++ b/arch/arm/boot/dts/armada-385-linksys-wrt1200ac.dts
@@ -10,64 +10,64 @@
 
 / {
 	model = "Linksys WRT1200AC";
-	compatible = "linksys,caiman", "linksys,armada385", "marvell,armada385",
-		     "marvell,armada380";
+	compatible = "linksys,wrt1200ac", "linksys,caiman", "linksys,armada385",
+		     "marvell,armada385", "marvell,armada380";
 };
 
 &expander0 {
 	wan_amber@0 {
-		label = "caiman:amber:wan";
+		label = "wrt1200ac:amber:wan";
 		reg = <0x0>;
 	};
 
 	wan_white@1 {
-		label = "caiman:white:wan";
+		label = "wrt1200ac:white:wan";
 		reg = <0x1>;
 	};
 
 	wlan_2g@2 {
-		label = "caiman:white:wlan_2g";
+		label = "wrt1200ac:white:wlan_2g";
 		reg = <0x2>;
 	};
 
 	wlan_5g@3 {
-		label = "caiman:white:wlan_5g";
+		label = "wrt1200ac:white:wlan_5g";
 		reg = <0x3>;
 	};
 
 	usb2@5 {
-		label = "caiman:white:usb2";
+		label = "wrt1200ac:white:usb2";
 		reg = <0x5>;
 	};
 
 	usb3_1@6 {
-		label = "caiman:white:usb3_1";
+		label = "wrt1200ac:white:usb3_1";
 		reg = <0x6>;
 	};
 
 	usb3_2@7 {
-		label = "caiman:white:usb3_2";
+		label = "wrt1200ac:white:usb3_2";
 		reg = <0x7>;
 	};
 
 	wps_white@8 {
-		label = "caiman:white:wps";
+		label = "wrt1200ac:white:wps";
 		reg = <0x8>;
 	};
 
 	wps_amber@9 {
-		label = "caiman:amber:wps";
+		label = "wrt1200ac:amber:wps";
 		reg = <0x9>;
 	};
 };
 
 &gpio_leds {
 	power {
-		label = "caiman:white:power";
+		label = "wrt1200ac:white:power";
 	};
 
 	sata {
-		label = "caiman:white:sata";
+		label = "wrt1200ac:white:sata";
 	};
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
