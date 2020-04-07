Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD3F1A1751
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 23:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+bawswpkoiB543kA4Z8yIbw+8aL0E5SlfWNTZ8V+Sw=; b=HYdCbTsjlMQOf9
	oFrocFAcYhFS8v7I2GcCr1iToLVd4pWGRU0RiIrozDg+lq1NqHkf/o8jFuNX5svPj3oouDene2LBs
	NirW2XYP7RqQcDj3WSdDet+zxEB0u1op/39vR4ECHIsmVs+ECxi6LIcXI6b2odlrT/qRbqNU9YwiA
	Z3ZXaDD7eTC0ZxZWn26E9WVzBbHsebvJJUccutGsVgZsDHFWN1Tvq6WUJeHbO0S63ZfiTqOV2YJ6p
	6eunHBDF1VEkSe+AckUrqxe93TSl1dCHTKbiJ4vAW22+fo8Cl2bOlw2uycUnPeWRCJQaRhxMDdHqv
	0jnORqi6qECDotTIMSOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLvYA-0002TZ-A2; Tue, 07 Apr 2020 21:14:26 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLvX8-0001Yu-KJ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 21:13:26 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 61CE5FF803;
 Tue,  7 Apr 2020 21:13:14 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 5/5] arm: dts: linksys: rename shelby to wrt1900acs
Date: Tue,  7 Apr 2020 11:08:15 -1000
Message-Id: <20200407210816.866084-6-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200407210816.866084-1-mail@aparcar.org>
References: <20200407210816.866084-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_141322_957739_A16F2780 
X-CRM114-Status: GOOD (  10.92  )
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

Linksys uses internally the codename "shelby" for a device sold under
the name of "Linksys WRT1900ACS", which is already reflected in the
device tree `model`. However the `compatible` list only contains the
codename `linksys,shelby` which does not relate to the common name.

This patch renames the `dts` file to the sanitized model name and
prepends `linksys,wrt1900acs` to the `compatible` list to simplify the
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
 ....dts => armada-385-linksys-wrt1900acs.dts} | 25 ++++++++++---------
 2 files changed, 14 insertions(+), 13 deletions(-)
 rename arch/arm/boot/dts/{armada-385-linksys-shelby.dts => armada-385-linksys-wrt1900acs.dts} (80%)

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 8482bec35af4..f59bcb23db91 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1280,9 +1280,9 @@ dtb-$(CONFIG_MACH_ARMADA_38X) += \
 	armada-385-clearfog-gtr-l8.dtb \
 	armada-385-db-88f6820-amc.dtb \
 	armada-385-db-ap.dtb \
-	armada-385-linksys-shelby.dtb \
 	armada-385-linksys-wrt1200ac.dtb \
 	armada-385-linksys-wrt1900ac-v2.dtb \
+	armada-385-linksys-wrt1900acs.dtb \
 	armada-385-linksys-wrt3200acm.dtb \
 	armada-385-synology-ds116.dtb \
 	armada-385-turris-omnia.dtb \
diff --git a/arch/arm/boot/dts/armada-385-linksys-shelby.dts b/arch/arm/boot/dts/armada-385-linksys-wrt1900acs.dts
similarity index 80%
rename from arch/arm/boot/dts/armada-385-linksys-shelby.dts
rename to arch/arm/boot/dts/armada-385-linksys-wrt1900acs.dts
index 3451cd3e5dff..866f3fad19fa 100644
--- a/arch/arm/boot/dts/armada-385-linksys-shelby.dts
+++ b/arch/arm/boot/dts/armada-385-linksys-wrt1900acs.dts
@@ -10,64 +10,65 @@
 
 / {
 	model = "Linksys WRT1900ACS";
-	compatible = "linksys,shelby", "linksys,armada385", "marvell,armada385",
+	compatible = "linksys,wrt1900acs", "linksys,shelby",
+		     "linksys,armada385", "marvell,armada385",
 		     "marvell,armada380";
 };
 
 &expander0 {
 	wan_amber@0 {
-		label = "shelby:amber:wan";
+		label = "wrt1900acs:amber:wan";
 		reg = <0x0>;
 	};
 
 	wan_white@1 {
-		label = "shelby:white:wan";
+		label = "wrt1900acs:white:wan";
 		reg = <0x1>;
 	};
 
 	wlan_2g@2 {
-		label = "shelby:white:wlan_2g";
+		label = "wrt1900acs:white:wlan_2g";
 		reg = <0x2>;
 	};
 
 	wlan_5g@3 {
-		label = "shelby:white:wlan_5g";
+		label = "wrt1900acs:white:wlan_5g";
 		reg = <0x3>;
 	};
 
 	usb2@5 {
-		label = "shelby:white:usb2";
+		label = "wrt1900acs:white:usb2";
 		reg = <0x5>;
 	};
 
 	usb3_1@6 {
-		label = "shelby:white:usb3_1";
+		label = "wrt1900acs:white:usb3_1";
 		reg = <0x6>;
 	};
 
 	usb3_2@7 {
-		label = "shelby:white:usb3_2";
+		label = "wrt1900acs:white:usb3_2";
 		reg = <0x7>;
 	};
 
 	wps_white@8 {
-		label = "shelby:white:wps";
+		label = "wrt1900acs:white:wps";
 		reg = <0x8>;
 	};
 
 	wps_amber@9 {
-		label = "shelby:amber:wps";
+		label = "wrt1900acs:amber:wps";
 		reg = <0x9>;
 	};
 };
 
 &gpio_leds {
 	power {
-		label = "shelby:white:power";
+		label = "wrt1900acs:white:power";
 	};
 
 	sata {
-		label = "shelby:white:sata";
+		label = "wrt1900acs:white:sata";
 	};
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
