Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D073C430
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 08:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sRAVMVXKtVjuFG7lJuCQrD7ohms4E/XEnXjvFNLX7R8=; b=UCx
	mzwwXmFdY6YUlQ/Ya/DTHkxkY3Eve0vIz7iFo2enHvonDHz/1Vv1euf/AaYSteQpTj3oi6lDS25Ls
	1oRbIuyyBCxW8o8jIn98nG5/pwurdQAzE6B5tDDXtp4AZcboLfGvQpdeFGbEQks5OokO+c8a4Jw7B
	uu1jrtj+Vd/SlorZ607S7+dQGzfXsyxIPWwWr9BDMPFWDF0a8sP+xlGYQnngqyPVvCT+oqxc80RGP
	PxT7jC20RxuSSX5DohDGklGKqBM/HprTzsMwkYFIcq5Z6K0bt46HJa34OygRQjHBaWXDphIXM2fqJ
	MNc8wcu0spiaRaC6J+VUcs7XqnVrJ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haaKo-0005Rp-02; Tue, 11 Jun 2019 06:32:42 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haaK8-00050v-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 06:32:01 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9AB9F1A0A14;
 Tue, 11 Jun 2019 08:31:54 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5F68F1A0A06;
 Tue, 11 Jun 2019 08:31:47 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4A3A5402D2;
 Tue, 11 Jun 2019 14:31:38 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 a.zummo@towertech.it, alexandre.belloni@bootlin.com, aisheng.dong@nxp.com,
 ulf.hansson@linaro.org, peng.fan@nxp.com, daniel.baluta@nxp.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: fsl: scu: Update RTC compatible string
Date: Tue, 11 Jun 2019 14:33:31 +0800
Message-Id: <20190611063333.48501-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_233200_581664_A1F0F994 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Update RTC compatible string to make system controller RTC
driver more generic for all i.MX SoCs with system controller
inside.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
This patch should be based on below patch which is already picked by
watchdog maintainer:
https://patchwork.kernel.org/patch/10962183/
---
 Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index fc3844e..7ca20a1 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -131,7 +131,9 @@ RTC bindings based on SCU Message Protocol
 ------------------------------------------------------------
 
 Required properties:
-- compatible: should be "fsl,imx8qxp-sc-rtc";
+- compatible: should be:
+              "fsl,imx8qxp-sc-rtc"
+              followed by "fsl,imx-sc-rtc";
 
 OCOTP bindings based on SCU Message Protocol
 ------------------------------------------------------------
@@ -226,7 +228,7 @@ firmware {
 		};
 
 		rtc: rtc {
-			compatible = "fsl,imx8qxp-sc-rtc";
+			compatible = "fsl,imx8qxp-sc-rtc", "fsl,imx-sc-rtc";
 		};
 
 		watchdog {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
