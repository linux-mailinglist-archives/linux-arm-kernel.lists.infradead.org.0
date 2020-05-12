Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AABD31CFC8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 19:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=owkQIe+th/tsBUFK6AXjLZpfeZG+IsGUxMzVSXetG1o=; b=VNdjR/4bwtuabL
	Gi57YlAhKlTYVlYVU7EIaK306wXm7wIcGsY1VAIPqoUG+VbFWob0hJQcrLPWAvSmRFJgn4ODoiLG9
	hFjzT3Me3uaDYcYAlNDRARYrwQ5lhxk8uD1eBVZ+LpzUnZQ9ToikrJtonJ3+pKEciMtmCAHPUVXx/
	+t8ALrijEJ58+teytypOkx8aQhKlzyimkPrIuosbUaIOHKXn7GA6YEZF4gT8wosBifIKKd7G1vvPc
	eMcBnVLxf8EzOvIlyqXswaSYva85Gfbi+gaQlAY0zlzCr5P0xZspEXsHVuqMPdpsyJtN8YVtJNtLP
	SBuTKGLF/XjqGj2Qfgxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYyv-0005pN-Fg; Tue, 12 May 2020 17:46:17 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYyg-0005jz-TL
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 17:46:06 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49M4wS1fZ7z1s0fW;
 Tue, 12 May 2020 19:46:00 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49M4wS0xKNz1qv84;
 Tue, 12 May 2020 19:46:00 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id zg315hq3s0QV; Tue, 12 May 2020 19:45:58 +0200 (CEST)
X-Auth-Info: rp4/88SRJoT5dsI2XEL9rigtA3kQrgX6q+BZu0xFLPo=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 12 May 2020 19:45:58 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 1/4] ARM: dts: stm32: Add GPIO keys for STM32MP1 DHCOM PDK2
Date: Tue, 12 May 2020 19:45:41 +0200
Message-Id: <20200512174544.381706-1-marex@denx.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_104603_110249_B9E5FA62 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings for the four GPIO keys on DH PDK2 board. Note that TA1
key is polled because it's IRQ line conflicts with ethernet IRQ, the
rest of the GPIO keys, TA2, TA3, TA4, are interrupt-driven and wake
up sources.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: No change
---
 arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts | 43 ++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
index 13b1586d4a8f..e5036c9b9e92 100644
--- a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
+++ b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
@@ -4,6 +4,7 @@
  */
 
 #include "stm32mp157c-dhcom-som.dtsi"
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/pwm/pwm.h>
 
 / {
@@ -46,6 +47,48 @@ ethernet_vio: vioregulator {
 		regulator-boot-on;
 	};
 
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		#size-cells = <0>;
+		poll-interval = <20>;
+
+		/*
+		 * The EXTi IRQ line 3 is shared with touchscreen and ethernet,
+		 * so mark this as polled GPIO key.
+		 */
+		button-0 {
+			label = "TA1-GPIO-A";
+			linux,code = <KEY_A>;
+			gpios = <&gpiof 3 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		#size-cells = <0>;
+
+		button-1 {
+			label = "TA2-GPIO-B";
+			linux,code = <KEY_B>;
+			gpios = <&gpiod 6 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		button-2 {
+			label = "TA3-GPIO-C";
+			linux,code = <KEY_C>;
+			gpios = <&gpioi 11 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+
+		button-3 {
+			label = "TA4-GPIO-D";
+			linux,code = <KEY_D>;
+			gpios = <&gpiod 12 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+		};
+	};
+
 	panel {
 		compatible = "edt,etm0700g0edh6";
 		backlight = <&display_bl>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
