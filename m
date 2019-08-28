Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B1E9F7E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 03:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j6/g0I6B99ZoYJZMLFvfqzJswV//4MAwjRObFEtx5VI=; b=a+Z
	ew6QSY0gvhPglvDMuYayIPRayWjBm7buKnRgBKkUn/GxiKhjOTKQ3f/0XO1y7C4BtcMHOBsBDs3Xf
	Q7hBQepdwym/v8H1QO18xwfugPZb4RquYGYA/D4sdARpfupyfdm3flIJbcSp8ThD99AhZWJnRvdVb
	Zi9/tGdo3ocXFGKAgaZzvSanTgdTC+ZZD2DFKzwTXnB5cLOaUkQRz1/yHh1bpSbJCOjjksM+jl9E6
	VkdHt/aLAC5vRhfFkkC9Hv/q3Cgc/qmckOBNG1/ZALsEjyNPOqoSMLtYaqlIA9BFG8TeJNbuEh98q
	QzpEzu5YRA71M3yU8zvbJW1t7rLr5WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2msu-00016O-Vo; Wed, 28 Aug 2019 01:36:29 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2msf-000151-8J
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 01:36:16 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 47AE71A064D;
 Wed, 28 Aug 2019 03:36:09 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 163DD1A064B;
 Wed, 28 Aug 2019 03:36:00 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C36D2402E7;
 Wed, 28 Aug 2019 09:35:48 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux@armlinux.org.uk,
 otavio@ossystems.com.br, leonard.crestez@nxp.com,
 u.kleine-koenig@pengutronix.de, schnitzeltony@gmail.com,
 jan.tuerk@emtrion.com, linux-watchdog@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V5 1/4] dt-bindings: watchdog: Add i.MX7ULP bindings
Date: Wed, 28 Aug 2019 09:35:00 -0400
Message-Id: <1566999303-18795-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_183613_439010_EDF5932B 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Add the watchdog bindings for Freescale i.MX7ULP.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Rob Herring <rohb@kernel.org>
---
Changes since V4:
	- improve watchdog node name.
---
 .../bindings/watchdog/fsl-imx7ulp-wdt.txt          | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
new file mode 100644
index 0000000..f902508
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
@@ -0,0 +1,22 @@
+* Freescale i.MX7ULP Watchdog Timer (WDT) Controller
+
+Required properties:
+- compatible : Should be "fsl,imx7ulp-wdt"
+- reg : Should contain WDT registers location and length
+- interrupts : Should contain WDT interrupt
+- clocks: Should contain a phandle pointing to the gated peripheral clock.
+
+Optional properties:
+- timeout-sec : Contains the watchdog timeout in seconds
+
+Examples:
+
+wdog1: watchdog@403d0000 {
+	compatible = "fsl,imx7ulp-wdt";
+	reg = <0x403d0000 0x10000>;
+	interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+	clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
+	assigned-clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
+	assigned-clocks-parents = <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>;
+	timeout-sec = <40>;
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
