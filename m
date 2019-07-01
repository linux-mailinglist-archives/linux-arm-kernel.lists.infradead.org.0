Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDBA5B852
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iMa3Vl4U0/9HuTG+lV9KC8edisPmcidClEGH2ycw968=; b=bhWnqi6YdcKIehHy+F50TJnpp8
	g9YCoXu36pzIkbwVLw2BVecdUDHsrtewO4C1S7/LMQ7pZU6Tip6pH9UBGiA9Q9S8kdwlH0XMBaAJi
	O4PeMLqMdFAdTdtFJjh/sCaQNtXjHZcpDjckog0plhj27W2Q//g0/HBogzArbQvzxLMOMEUt42UZ0
	Q8wd7T5QdjPkybnp+ybnJBzVV1/4/24EAWLmDPqMnyNJPx7cyqXhDauiLFVj5JoVU27iDOxcyg/j6
	US0d0M32WJsKOG/AYAxy+39Xlhhdv2vdOW9IBcioXO/CCOP4lWDsxJ1sspccI2SI7boSiiTWdbYOO
	mhogiJHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsuj-0004LG-MU; Mon, 01 Jul 2019 09:47:57 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsuW-0004KA-RV
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:47:46 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CA50520090D;
 Mon,  1 Jul 2019 11:47:41 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D51EA200925;
 Mon,  1 Jul 2019 11:47:30 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C76FC402B1;
 Mon,  1 Jul 2019 17:47:17 +0800 (SGT)
From: Anson.Huang@nxp.com
To: daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, leonard.crestez@nxp.com,
 viresh.kumar@linaro.org, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 ccaione@baylibre.com, angus@akkea.ca, agx@sigxcpu.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 2/5] clocksource/drivers/sysctr: Add clock-frequency
 property
Date: Mon,  1 Jul 2019 17:38:23 +0800
Message-Id: <20190701093826.5472-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190701093826.5472-1-Anson.Huang@nxp.com>
References: <20190701093826.5472-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_024745_024987_340FAAE7 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Systems which use platform driver model for clock driver require the
clock frequency to be supplied via device tree when system counter
driver is enabled.

This is necessary as in the platform driver model the of_clk operations
do not work correctly because system counter driver is initialized in
early phase of system boot up, and clock driver using platform driver
model is NOT ready at that time, it will cause system counter driver
initialization failed.

Add clock-frequency property to the device tree bindings of the NXP
system counter, so the driver can tell timer-of driver to get clock
frequency from DT directly instead of doing of_clk operations via
clk APIs.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 .../devicetree/bindings/timer/nxp,sysctr-timer.txt        | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
index d576599..7088a0e 100644
--- a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
+++ b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.txt
@@ -11,15 +11,18 @@ Required properties:
 - reg :             Specifies the base physical address and size of the comapre
                     frame and the counter control, read & compare.
 - interrupts :      should be the first compare frames' interrupt
-- clocks : 	    Specifies the counter clock.
-- clock-names: 	    Specifies the clock's name of this module
+- clocks :          Specifies the counter clock, mutually exclusive with clock-frequency.
+- clock-names :     Specifies the clock's name of this module, mutually exclusive with
+		    clock-frequency.
+- clock-frequency : Specifies system counter clock frequency, mutually exclusive with
+		    clocks/clock-names.
 
 Example:
 
 	system_counter: timer@306a0000 {
 		compatible = "nxp,sysctr-timer";
-		reg = <0x306a0000 0x20000>;/* system-counter-rd & compare */
-		clocks = <&clk_8m>;
-		clock-names = "per";
-		interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+		reg = <0x306a0000 0x30000>;
+		interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <8333333>;
 	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
