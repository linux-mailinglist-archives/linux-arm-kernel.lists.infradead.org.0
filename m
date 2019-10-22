Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B76E0761
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 17:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N/+9an3tlavCsYHhRufcUJeHEjYzvHS3bSny437rWwA=; b=o1GgzP798V5R0a
	EfH0NeqVCVczghMkH5qk7vR/W//ZnZfkN5//Aoq6AgoL9gaIqKja/7PpgDKshN1Wd5az++4qCS88J
	pf67WadlbnvxAB2q75pOxGp/Iauyh/NfRTHvo08cVKAXmWL1T6ZjVWs81v1gLrF2xDMsfrgICoBre
	SCcv8Z0TWHPKZvQOd7+QZ2blySD/XKAv7t80BlFdQYk03M/+xFsPv6pKsD8+2lUpjqbWUkbw+DWPR
	g9Gp1hDS+eh98PXCg+fU4uJM0w0qqXRlsgCzoBN6OdCpe4QEsFCOw4Z38/kwoxZLLn/BT0HDnle7/
	6aDYy1LBaSdslHTFxGqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMw6J-0005wg-EC; Tue, 22 Oct 2019 15:29:35 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMw5a-0005Zq-6g
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 15:28:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 57BB250B7A;
 Tue, 22 Oct 2019 17:28:47 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id DecFkWoFzzyv; Tue, 22 Oct 2019 17:28:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id CDE8550B7E;
 Tue, 22 Oct 2019 17:28:41 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id drUPvEucxD33; Tue, 22 Oct 2019 17:28:41 +0200 (CEST)
Received: from belphegor.redhat.com (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 1D27F50B7A;
 Tue, 22 Oct 2019 17:28:41 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH] ARM: dts: mmp3: add Dell Wyse 3020 machine
Date: Tue, 22 Oct 2019 17:28:37 +0200
Message-Id: <20191022152837.3553524-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_082850_609317_A3E0966B 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Lubomir Rintel <lkundrak@v3.sk>, soc@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a Dell Wyse thin client, variously referred to as "Ariel",
"3020" or "Tx0D" where "x" stands for the software it was shipped with.
I somewhat arbitrarily chose "ariel".

There are bits missing, because the drivers are not in and bindings are not
settled yet:

* Things missing from mmp3.dtsi:
  HSIC controller and its PHY (only the internal Ethernet is connected
  here, the hub with external USB2 ports is connected to the U2O controller
  that works well), Vivante GC2000 GPU

* &twsi1/regulator@19
  Marvell 88pm867 power regulator

* &twsi3/vga-dvi-encoder@76
  Chrontel CH7033B-BF VGA & DVI encoder

* &twsi3/sound-codec@30
  Sound chip, probably a Marvell 88ce156

* &twsi4/embedded-controller@58
  ENE KB3930QF Embedded Controller, also seems to be connected to &ssp4.
  Might not need a driver -- about the only useful thing it can do is to
  reboot the machine when tickled via some GPIO lines.

Also there seems to be something at &twsi1 address 0x50.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---

The patche applies on top of soc/arm/dt.

I'm not sure whether it's appropriate to call the machine "Ariel".
Perhaps wyse-3020 or something else. Not sure whether the marketing
names or code names are preferred.

There seem to be some warnings that escaped my attention previously.
I'll address them separately. Nothing seems particularly worrysome
though. I guess interrupt-conroller unit address warnings are due to the
bindings being odd, which can not be fixed now.

  $ dtc -I dtb -O dts arch/arm/boot/dts/mmp3-dell-ariel.dtb >/dev/null
  <stdout>: Warning (unit_address_vs_reg): /soc/clocks: node has a reg or ranges property, but no unit name
  <stdout>: Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d4282150: simple-bus unit address format error, expected "150"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d4282154: simple-bus unit address format error, expected "154"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d42821bc: simple-bus unit address format error, expected "1bc"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d42821c0: simple-bus unit address format error, expected "1c0"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d4282158: simple-bus unit address format error, expected "158"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d42821c4: simple-bus unit address format error, expected "1c4"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d42821c8: simple-bus unit address format error, expected "1c8"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d428215c: simple-bus unit address format error, expected "15c"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d42821cc: simple-bus unit address format error, expected "1cc"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d4282160: simple-bus unit address format error, expected "160"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d4282184: simple-bus unit address format error, expected "184"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d4282188: simple-bus unit address format error, expected "188"
  <stdout>: Warning (simple_bus_reg): /soc/axi@d4200000/interrupt-controller@d42821d0: simple-bus unit address format error, expected "1d0"
  <stdout>: Warning (simple_bus_reg): /soc/clocks: simple-bus unit address format error, expected "d4050000"
  <stdout>: Warning (simple_bus_reg): /soc/watchdog@2c000620: simple-bus unit address format error, expected "e0000620"

 arch/arm/boot/dts/Makefile            |  3 +-
 arch/arm/boot/dts/mmp3-dell-ariel.dts | 90 +++++++++++++++++++++++++++
 2 files changed, 92 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/mmp3-dell-ariel.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index b21b3a64641a7..7c2f8c9112a62 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -337,7 +337,8 @@ dtb-$(CONFIG_ARCH_MMP) += \
 	pxa168-aspenite.dtb \
 	pxa910-dkb.dtb \
 	mmp2-brownstone.dtb \
-	mmp2-olpc-xo-1-75.dtb
+	mmp2-olpc-xo-1-75.dtb \
+	mmp3-dell-ariel.dtb
 dtb-$(CONFIG_ARCH_MPS2) += \
 	mps2-an385.dtb \
 	mps2-an399.dtb
diff --git a/arch/arm/boot/dts/mmp3-dell-ariel.dts b/arch/arm/boot/dts/mmp3-dell-ariel.dts
new file mode 100644
index 0000000000000..61edb4d06880b
--- /dev/null
+++ b/arch/arm/boot/dts/mmp3-dell-ariel.dts
@@ -0,0 +1,90 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Dell Wyse 3020 a.k.a. "Ariel" a.k.a. Tx0D (T00D, T10D)
+ *
+ * Copyright (C) 2019 Lubomir Rintel <lkundrak@v3.sk>
+ */
+
+/dts-v1/;
+#include "mmp3.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	model = "Dell Ariel";
+	compatible = "dell,wyse-ariel", "marvell,mmp3";
+
+	chosen {
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+		ranges;
+		bootargs = "earlyprintk=ttyS2,115200 console=ttyS2,115200";
+	};
+
+	memory {
+		linux,usable-memory = <0x0 0x7f600000>;
+		available = <0x7f700000 0x7ff00000 0x00000000 0x7f600000>;
+		reg = <0x0 0x80000000>;
+		device_type = "memory";
+	};
+};
+
+&uart3 {
+	status = "okay";
+};
+
+&rtc {
+	status = "okay";
+};
+
+&usb_otg0 {
+	status = "okay";
+};
+
+&usb_otg_phy0 {
+	status = "okay";
+};
+
+&mmc3 {
+	status = "okay";
+	max-frequency = <50000000>;
+	status = "okay";
+	bus-width = <8>;
+	non-removable;
+	cap-mmc-highspeed;
+};
+
+&twsi1 {
+	status = "okay";
+
+	rtc@68 {
+		compatible = "dallas,ds1338";
+		reg = <0x68>;
+		status = "okay";
+	};
+};
+
+&twsi3 {
+	status = "okay";
+};
+
+&twsi4 {
+	status = "okay";
+};
+
+&ssp3 {
+	status = "okay";
+	cs-gpios = <&gpio 46 GPIO_ACTIVE_HIGH>;
+
+	firmware-flash@0 {
+		compatible = "st,m25p80", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <40000000>;
+		m25p,fast-read;
+	};
+};
+
+&ssp4 {
+	cs-gpios = <&gpio 56 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
