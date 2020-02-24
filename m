Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F6C16ACFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=srC261IflID5wlxrzhrmvGxuW8VBN1ey1ORKo5cH510=; b=UgaccrKVIH5EpP
	D41X9CZZzK71ZGY4x4T0xoGpONYZV4ve82rpWqnK2yOli3ALzbSq30OH08wmWUDASIib1N9rgvwgV
	QWvbRdZJ3uxvrzsdqFIYt8Hbo7e9MtyV9I8Qv8gsIdOFrpKLs6mOmjuYf52PPneUWYoqZojkWgr3e
	KSlc/la0+mWO1+mZ6i3ylaevvMI2bldSKORoMuydJMTbYlSwBpckVli0kVnkXldiIFL+mhlkJ6iVu
	vhmb0z1WvzhZR1/NFf6d2fO0+qlyBwtfhq/+ZmirM/8OOk0xwLsebuDU8V8wRu6p/8O99OLNHkmm/
	1VPIMHum+Pr91RySFmag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HPh-0006lJ-FY; Mon, 24 Feb 2020 17:21:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HPX-0006kr-Fe
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:20:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1j6HPQ-0002Zy-Ja; Mon, 24 Feb 2020 18:20:44 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1j6HPN-0007hE-Pi; Mon, 24 Feb 2020 18:20:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: stm32: add cpu clock-frequency property on
 stm32mp15x
Date: Mon, 24 Feb 2020 18:20:30 +0100
Message-Id: <20200224172031.27868-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: afa@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_092051_524276_37EEF4DA 
X-CRM114-Status: GOOD (  10.18  )
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
Cc: devicetree@vger.kernel.org, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All of the STM32MP151[1], STM32MP153[2] and STM32MP157[3] have their
Cortex-A7 cores running at 650 MHz.

Add the clock-frequency property to CPU nodes to avoid warnings about
them missing.

[1]: https://www.st.com/en/microcontrollers-microprocessors/stm32mp151.html
[2]: https://www.st.com/en/microcontrollers-microprocessors/stm32mp153.html
[3]: https://www.st.com/en/microcontrollers-microprocessors/stm32mp157.html

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 1 +
 arch/arm/boot/dts/stm32mp153.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index fb41d0778b00..fd46a8e11126 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -17,6 +17,7 @@ cpus {
 
 		cpu0: cpu@0 {
 			compatible = "arm,cortex-a7";
+			clock-frequency = <650000000>;
 			device_type = "cpu";
 			reg = <0>;
 		};
diff --git a/arch/arm/boot/dts/stm32mp153.dtsi b/arch/arm/boot/dts/stm32mp153.dtsi
index 2d759fc6015c..6d9ab08667fc 100644
--- a/arch/arm/boot/dts/stm32mp153.dtsi
+++ b/arch/arm/boot/dts/stm32mp153.dtsi
@@ -10,6 +10,7 @@ / {
 	cpus {
 		cpu1: cpu@1 {
 			compatible = "arm,cortex-a7";
+			clock-frequency = <650000000>;
 			device_type = "cpu";
 			reg = <1>;
 		};
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
