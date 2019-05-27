Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 604472AF16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 09:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0giuHWQxCdUbIPFotMhupy48Hxl2W7dRQ+pOLsYD7W4=; b=cB6s9iDT5jPjws
	tkkoIOjP2o90Od/FiL+72t+fj528xVAkMYp+E73zi4dmT8KnZvlyAWgjiV4nkB5TgAOa64/Ouvi0f
	shUFiuwCGemWpwe/vCAOFhDt+5v0xHnC94k9n0HlF4O/Le3DfFltHv/I6KBaq/4aUfcsHLORu8Gnu
	4u2nUEcOHR4DTdOG/m69fDC4WQzK62Ut7c99gevJg6zvfMEn6k9wBiSozsazCATND0QmeKAuZEi2o
	pZheVzeTvX2ZNMb6qrAORLUjImtnKou/uSRZXSX2O1QP2DKctqZ9QxMqOZ7gBNaJG3r+rzvVzGya3
	C1IeZjZ5IoD8CxczHgbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9dj-0003CN-FF; Mon, 27 May 2019 07:01:47 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9dc-0003Aq-C7
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 07:01:42 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4A8D4200AE1;
 Mon, 27 May 2019 09:01:37 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1041B200ACF;
 Mon, 27 May 2019 09:01:30 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 590F1402FF;
 Mon, 27 May 2019 15:01:21 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, wim@linux-watchdog.org,
 linux@roeck-us.net, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 aisheng.dong@nxp.com, ulf.hansson@linaro.org, peng.fan@nxp.com,
 daniel.baluta@nxp.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 RESEND 1/3] dt-bindings: watchdog: move i.MX system
 controller watchdog binding to SCU
Date: Mon, 27 May 2019 15:03:15 +0800
Message-Id: <20190527070317.16904-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_000140_681983_D8D8F1C9 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

i.MX system controller watchdog depends on SCU driver to support
interrupt function, so it needs to be subnode of SCU node in DT,
binding doc should be moved to fsl,scu.txt as well.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
No changes, just rebase the patch to top of linux-next.
---
 .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 15 ++++++++++++++
 .../bindings/watchdog/fsl-imx-sc-wdt.txt           | 24 ----------------------
 2 files changed, 15 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index f378922..a575e42 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -145,6 +145,16 @@ Optional Child nodes:
 - Data cells of ocotp:
   Detailed bindings are described in bindings/nvmem/nvmem.txt
 
+Watchdog bindings based on SCU Message Protocol
+------------------------------------------------------------
+
+Required properties:
+- compatible: should be:
+              "fsl,imx8qxp-sc-wdt"
+              followed by "fsl,imx-sc-wdt";
+Optional properties:
+- timeout-sec: contains the watchdog timeout in seconds.
+
 Example (imx8qxp):
 -------------
 aliases {
@@ -207,6 +217,11 @@ firmware {
 		rtc: rtc {
 			compatible = "fsl,imx8qxp-sc-rtc";
 		};
+
+		watchdog {
+			compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
+			timeout-sec = <60>;
+		};
 	};
 };
 
diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt b/Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt
deleted file mode 100644
index 02b87e9..0000000
--- a/Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-* Freescale i.MX System Controller Watchdog
-
-i.MX system controller watchdog is for i.MX SoCs with system controller inside,
-the watchdog is managed by system controller, users can ONLY communicate with
-system controller from secure mode for watchdog operations, so Linux i.MX system
-controller watchdog driver will call ARM SMC API and trap into ARM-Trusted-Firmware
-for watchdog operations, ARM-Trusted-Firmware is running at secure EL3 mode and
-it will request system controller to execute the watchdog operation passed from
-Linux kernel.
-
-Required properties:
-- compatible:	Should be :
-		"fsl,imx8qxp-sc-wdt"
-		followed by "fsl,imx-sc-wdt";
-
-Optional properties:
-- timeout-sec : Contains the watchdog timeout in seconds.
-
-Examples:
-
-watchdog {
-	compatible = "fsl,imx8qxp-sc-wdt", "fsl,imx-sc-wdt";
-	timeout-sec = <60>;
-};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
