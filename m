Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44E1194B1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:03:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QZY6Zor3SBibetepAE6RiBtxwkQwUGVdycnVu9QnVoc=; b=jyJz6ArjWIWLJX
	5QY88HY/E+h69rs3hoQgfarCqZ93RxXLVZ+HGN7lWENg1ckpqFQG9vlPVs2JGymLq63bosNCNr415
	SNtDOiyYbI8FROBbJHQ7p1A8OV+6Uw67Hg/QFqbpBBEBnBLWkAJ+kdxLEC9H5d411qARo8Q/ZsyGT
	3regX8Ywne8qEzqV7MyvaEZKg+UlPd25E7gLRfsTw4oYhVGipilfA2UlFNqXQmI71otNLBhe+zlJ0
	bcX0XahtNt+quqZWMHmqxFqj7LUV8pQIye3FzBylesabDa9zBlWrbN1iW6cPqywyzLgayvx/QXMv1
	7SSDFUEXyESP6WTofeYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHaai-0003Uq-6t; Thu, 26 Mar 2020 22:03:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaaW-0003T6-Pi
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 22:02:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1jHaaP-0006Dh-MO; Thu, 26 Mar 2020 23:02:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1jHaaO-00088r-6A; Thu, 26 Mar 2020 23:02:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/8] ARM: dts: stm32: enable stm32mp157's &gpu by default
Date: Thu, 26 Mar 2020 23:02:05 +0100
Message-Id: <20200326220213.28632-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: afa@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_150256_831966_17BF29BA 
X-CRM114-Status: GOOD (  11.83  )
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
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the original stm32mp157c.dtsi, the GPU was disabled as some SoC
variants lacked a GPU. We now have separate a dtsi for each SoC
variant and variants without a GPU lack the node altogether.

As we need no board support for using the GPU, enable it by default
and while at it remove the now redundant status = "okay" in existing
board device trees.

Suggested-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - New Patch
---
 arch/arm/boot/dts/stm32mp157.dtsi            | 1 -
 arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi | 4 ----
 arch/arm/boot/dts/stm32mp157c-ed1.dts        | 1 -
 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi       | 1 -
 4 files changed, 7 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157.dtsi b/arch/arm/boot/dts/stm32mp157.dtsi
index 3f0a4a91cce6..5e733cd16ff9 100644
--- a/arch/arm/boot/dts/stm32mp157.dtsi
+++ b/arch/arm/boot/dts/stm32mp157.dtsi
@@ -15,7 +15,6 @@ gpu: gpu@59000000 {
 			clocks = <&rcc GPU>, <&rcc GPU_K>;
 			clock-names = "bus" ,"core";
 			resets = <&rcc GPU_R>;
-			status = "disabled";
 		};
 
 		dsi: dsi@5a000000 {
diff --git a/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi b/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
index f81dc3134135..f97e0d2ecf17 100644
--- a/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
@@ -97,10 +97,6 @@ &dts {
 	status = "okay";
 };
 
-&gpu {
-	status = "okay";
-};
-
 &i2c4 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c4_pins_a>;
diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index 9d2592db630c..e9aad3e101ac 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -126,7 +126,6 @@ &dts {
 
 &gpu {
 	contiguous-area = <&gpu_reserved>;
-	status = "okay";
 };
 
 &i2c4 {
diff --git a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
index d946e0a02f5c..558a91a6962b 100644
--- a/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
+++ b/arch/arm/boot/dts/stm32mp15xx-dkx.dtsi
@@ -137,7 +137,6 @@ phy0: ethernet-phy@0 {
 
 &gpu {
 	contiguous-area = <&gpu_reserved>;
-	status = "okay";
 };
 
 &i2c1 {
-- 
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
