Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CF917159F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:06:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBBFqWQIZa6u7fOoOJJw8dVsua9UcFQ4FRcDdoQAoJw=; b=UXnWyFYOXK43xi
	g5Csg4VxZjEOEvYNgpkKAEJmfJsNFAcGU5PHRwcq926ZTyNqqz8a/hFvfaUmngfUsf08GkadSPPxl
	oLGNLconrPfXncn2+X+/udklxoOZWvDhtdHJZmzf06KUVtiNdpb9Pgvyrx8sxB4VO5Fz+PjL2Kzvt
	aKnB11v90Z97QGxb37Oh8Mqk58DEcgOlq7rB/5N9gNwlS2uBjPEN92XR+SqqoClPbz/lSH7DqTFWL
	3jGeATRo4TAqI+RlM5TH78HFaR/pxMxKn+jGFS4kPIgjtGJjJy9MXCs6PPoTHTU7SPAxhEyafmGyE
	8tYkD2dEskQ7GdVQYsOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Gzv-0003pj-Fr; Thu, 27 Feb 2020 11:06:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Gzb-0003k9-Rc
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:06:13 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GzX-0006tc-Kj; Thu, 27 Feb 2020 12:06:07 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GzX-0005LZ-2c; Thu, 27 Feb 2020 12:06:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org, shawnguo@kernel.org, chf.fritz@googlemail.com,
 s.riedmueller@phytec.de, s.christ@phytec.de, c.hemp@phytec.de,
 contact@stefanchrist.eu
Subject: [PATCH 2/2] ARM: dts: imx6: phycore-som: add da9062 gpio support
Date: Thu, 27 Feb 2020 12:06:05 +0100
Message-Id: <20200227110605.22144-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227110605.22144-1-m.felsch@pengutronix.de>
References: <20200227110605.22144-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_030611_928739_560E099F 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pmic is a mfd device and supports gpios. Those gpios are not routed
to the SoM baseboard pin header but they are connected to the i.MX6. We
need the GPIO's to configure the pmic to select between the
suspend/resume arm and soc voltages

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index 8b71bf33ba30..41ebe4599e43 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -88,7 +88,7 @@
 		reg = <0x50>;
 	};
 
-	pmic@58 {
+	pmic: pmic@58 {
 		compatible = "dlg,da9062";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_pmic>;
@@ -96,6 +96,8 @@
 		interrupt-parent = <&gpio1>;
 		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
 		interrupt-controller;
+		gpio-controller;
+		#gpio-cells = <2>;
 
 		da9062_rtc: rtc {
 			compatible = "dlg,da9062-rtc";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
