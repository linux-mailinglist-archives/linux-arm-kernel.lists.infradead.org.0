Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43410194B27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:03:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSVOPB/kpeP8zdJ0e2ZEQ9KQxJ2+SzJpnMSK40czFH8=; b=JvLY+05yGAZPo0
	3xrRXOqAWbnpRZiq8HI6q3xBm4vC6HOlNzhhiOsZyZZl8M1vRfoDGrgSZUDTZ3uEBPG3pstZM89LB
	iTzNE5eAsubEcBlypOEorkuiiJOBPL0SZCfcafqurRSE24JhQLHR3YYygmaL+47h+DDx7Z29hWHLI
	8oALpUp3z0XsH2AhO06Je+SNzh+RCoEmABkpUa0zPEnMgK75+1rgOwFV8OWcddnYilYImh70opHT4
	1nisIXQ52CiOU9/EGQDxax4Heh0edPxkmVkUybFQ7Xb2dGl5/Fb0WB+FnbqQrqxrrUum+vlh7Nb/C
	xW4GcoHW2eGSihZHGB7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHab1-0003eo-Ua; Thu, 26 Mar 2020 22:03:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaaW-0003T5-R0
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 22:02:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1jHaaQ-0006Dl-0I; Thu, 26 Mar 2020 23:02:50 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1jHaaP-00089N-Lp; Thu, 26 Mar 2020 23:02:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 3/8] ARM: dts: stm32: remove now redundant STM32MP15x video
 cell sizes
Date: Thu, 26 Mar 2020 23:02:07 +0100
Message-Id: <20200326220213.28632-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200326220213.28632-1-a.fatoum@pengutronix.de>
References: <20200326220213.28632-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: afa@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_150256_867985_5ADF8925 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the cell sizes specified in the SoC DTSIs in a previous commit,
individual boards no longer need to specify them, thus drop them.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - New Patch
---
 arch/arm/boot/dts/stm32mp157c-dk2.dts  | 8 --------
 arch/arm/boot/dts/stm32mp157c-ev1.dts  | 8 --------
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi | 3 ---
 3 files changed, 19 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157c-dk2.dts b/arch/arm/boot/dts/stm32mp157c-dk2.dts
index 7985b80967ca..9a8a26710ac1 100644
--- a/arch/arm/boot/dts/stm32mp157c-dk2.dts
+++ b/arch/arm/boot/dts/stm32mp157c-dk2.dts
@@ -27,15 +27,10 @@ chosen {
 };
 
 &dsi {
-	#address-cells = <1>;
-	#size-cells = <0>;
 	status = "okay";
 	phy-dsi-supply = <&reg18>;
 
 	ports {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		port@0 {
 			reg = <0>;
 			dsi_in: endpoint {
@@ -83,9 +78,6 @@ &ltdc {
 	status = "okay";
 
 	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		ltdc_ep1_out: endpoint@1 {
 			reg = <1>;
 			remote-endpoint = <&dsi_in>;
diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index 8a4c7ff31a92..26db0fe93a98 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -98,15 +98,10 @@ dcmi_0: endpoint {
 };
 
 &dsi {
-	#address-cells = <1>;
-	#size-cells = <0>;
 	phy-dsi-supply = <&reg18>;
 	status = "okay";
 
 	ports {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		port@0 {
 			reg = <0>;
 			dsi_in: endpoint {
@@ -240,9 +235,6 @@ &ltdc {
 	status = "okay";
 
 	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		ltdc_ep0_out: endpoint@0 {
 			reg = <0>;
 			remote-endpoint = <&dsi_in>;
diff --git a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
index 558a91a6962b..f964e2ae7d60 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
@@ -394,9 +394,6 @@ &ltdc {
 	status = "okay";
 
 	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
 		ltdc_ep0_out: endpoint@0 {
 			reg = <0>;
 			remote-endpoint = <&sii9022_in>;
-- 
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
