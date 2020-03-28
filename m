Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C5019680B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 18:17:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSkcS6OphKdsvxHrs0Y+A93HU2l+n6ZHiGMPUj0adEw=; b=gBZKvVEi4Swc29
	5yGV6dMWYH0SLMgt1ivUcPpYQ2ygoY2uyKLaZJKcN9ArKJkuNsp0qWJjTZ3A3+Ngsr+XtauJNHc4z
	EMJFzH3u/IKv5ygdbcCYMXx5BTbBs1e1Y2MdEKT5FYqkZ7ldPjFWOv11+GkEhBPwM0qn4PowxGGW6
	pDWEBSUKLPmMACo3g9NEKgViS3ERduyaq5x8EXweKNUQaoIYjcjBb3HeNq+3NY6RbpYCm9dLSPAT7
	++1KUxzrij94hcWkVFPF+CxHmsvczS02ka35Dd6v+MXosEU6svOSv1zC1UuQY8vP4uT2dofJDOpnz
	PlER2dg8gxw6AaFoVVqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIF4r-0003k9-Ks; Sat, 28 Mar 2020 17:16:57 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIF0M-0007Bm-Qw
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 17:12:20 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48qQJJ67Pxz1qrLn;
 Sat, 28 Mar 2020 18:12:16 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48qQJJ5xmQz1qqlF;
 Sat, 28 Mar 2020 18:12:16 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id Jos11o47sjBm; Sat, 28 Mar 2020 18:12:15 +0100 (CET)
X-Auth-Info: So2Cv2WZmuCgWVNtS4eMHwikk7tBICeYBWkieF4qXxM=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sat, 28 Mar 2020 18:12:15 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 17/22] ARM: dts: stm32: Enable Bluetooth on AV96
Date: Sat, 28 Mar 2020 18:11:39 +0100
Message-Id: <20200328171144.51888-18-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200328171144.51888-1-marex@denx.de>
References: <20200328171144.51888-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_101219_091092_F694E332 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

The WiFi/Bluetooth chip is attached to USART2 on AV96 as well, describe
it in DT to make it available. Remove BT LED and turn it into a shutdown
GPIO, because the GPIO line controls the BT_REG_ON signal. The LED is just
an indicator connected to the same line, but not the primary function.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 23 ++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 7b273d0c6385..dc1f59239042 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -21,6 +21,7 @@ aliases {
 		mmc0 = &sdmmc1;
 		serial0 = &uart4;
 		serial1 = &uart7;
+		serial2 = &usart2;
 		spi0 = &qspi;
 	};
 
@@ -63,13 +64,6 @@ led4 {
 			default-state = "off";
 			panic-indicator;
 		};
-
-		led5 {
-			label = "blue:bt";
-			gpios = <&gpioz 6 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "bluetooth-power";
-			default-state = "off";
-		};
 	};
 
 	sd_switch: regulator-sd_switch {
@@ -411,3 +405,18 @@ &uart7 {
 	pinctrl-0 = <&uart7_pins_a>;
 	status = "okay";
 };
+
+/* Bluetooth */
+&usart2 {
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&usart2_pins_a>;
+	pinctrl-1 = <&usart2_sleep_pins_a>;
+	st,hw-flow-ctrl;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		max-speed = <3000000>;
+		shutdown-gpios = <&gpioz 6 GPIO_ACTIVE_HIGH>;
+	};
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
