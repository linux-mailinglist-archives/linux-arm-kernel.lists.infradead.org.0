Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A223A333A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sXPlnEF6KzRXmFkQ1X9HCbc01nG2Pa2PvguYcY6+HY8=; b=sLy
	lIYJl1DSHAwysylI/5AVwOmE0yfR/4BjA1xvpt+JYUmIiPwB6y7/O2VSIcaYGAvXmheYslAGeF7hh
	2f1ipQuhO2LfJwfqHIb3FtyNOzlHNzRdCNlsJfIpJdXgeS8jpVNJrmyAV33litg/YE0dFqCPdrhtL
	yWfJ+7fLHJcdo4mBuVsQcb6NWqdhra1Vysq1TxFaBvCsCbNCBIgNXXeJOfA9566t9+GrZhNS5Rdio
	mHVoN+1ITDTjjnMKjFLXj6XF6tKCEpJULAL0mSRZ9VTm4sfX2akusyfVyOzMtB9iEXgT852aMDzd5
	z6yyfQtDxbNcF2uH3VlHQRyThBtX5KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cgq-0006ho-CD; Fri, 30 Aug 2019 08:55:28 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cgf-0006gk-RH
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 08:55:19 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5B1152003F4;
 Fri, 30 Aug 2019 10:55:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 571362001C0;
 Fri, 30 Aug 2019 10:54:56 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id EF46E40281;
 Fri, 30 Aug 2019 16:54:41 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, dmitry.torokhov@gmail.com,
 aisheng.dong@nxp.com, ulf.hansson@linaro.org, fugang.duan@nxp.com,
 peng.fan@nxp.com, daniel.baluta@nxp.com, leonard.crestez@nxp.com,
 olof@lixom.net, mripard@kernel.org, arnd@arndb.de,
 jagan@amarulasolutions.com, bjorn.andersson@linaro.org,
 dinguyen@kernel.org, marcin.juszkiewicz@linaro.org,
 hsweeten@visionengravers.com, tglx@linutronix.de,
 gregkh@linuxfoundation.org, stefan@agner.ch, ronald@innovation.ch,
 ping.bai@nxp.com, m.felsch@pengutronix.de,
 andriy.shevchenko@linux.intel.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-input@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: fsl: scu: add scu power key binding
Date: Fri, 30 Aug 2019 16:53:45 -0400
Message-Id: <1567198429-27886-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_015518_022826_BE30D9E1 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
system controller, the system controller is in charge of system
power, clock and power key event etc. management, Linux kernel
has to communicate with system controller via MU (message unit)
IPC to get power key event, add binding doc for i.MX system
controller power key driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 .../devicetree/bindings/arm/freescale/fsl,scu.txt      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index c149fad..001d0b7 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -157,6 +157,17 @@ Required properties:
 Optional properties:
 - timeout-sec: contains the watchdog timeout in seconds.
 
+Power key bindings based on SCU Message Protocol
+------------------------------------------------------------
+
+Required properties:
+- compatible: should be:
+              "fsl,imx8qxp-sc-pwrkey"
+              followed by "fsl,imx-sc-pwrkey";
+- linux,keycodes: See Documentation/devicetree/bindings/input/keys.txt
+Optional Properties:
+- wakeup-source: See Documentation/devicetree/bindings/power/wakeup-source.txt
+
 Example (imx8qxp):
 -------------
 aliases {
@@ -220,6 +231,13 @@ firmware {
 			compatible = "fsl,imx8qxp-sc-rtc";
 		};
 
+		scu_pwrkey: scu-pwrkey {
+			compatible = "fsl,imx8qxp-sc-pwrkey", "fsl,imx-sc-pwrkey";
+			linux,keycode = <KEY_POWER>;
+			wakeup-source;
+			status = "disabled";
+		};
+
 		watchdog {
 			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
 			timeout-sec = <60>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
