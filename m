Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A03C1D0FFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J4BuRFJ/0/1SanVwKwPsxhAfYShZvcNokgxCpcppoxg=; b=Fe+uzNuIaEii7PxCmnceBH+qVz
	jWvUsse8ZYBrrOcSwwV1yMoixQgPXmfM88WXWiyAUSkXRuOG8aoP930V+qx9Kr8x088YeMcye6t2N
	GSN505sEyo4VNBu5w1ZmcjMsayNl13zuT4NSoH039hI9PX21NMBVxG9q1Ylg1UUDpdWidIrNhDLG9
	jPPjV/emILIwDr2w9EmYaUlEqUYO2Yb41L46/NtK7u2uSks1Xozx4MoVcoxL8zQRlzdBFYdZzv5BO
	hZMLquXmN3uQS37+X50NIA8c1UsVahodWQ2251ls2ty+n/TlVkcBrrOtMwjaVEK4Mu0gW5PLHQq3v
	iyhWVcdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYohh-0007fr-Rv; Wed, 13 May 2020 10:33:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYof7-0005SL-KX
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:30:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDFED11B3;
 Wed, 13 May 2020 03:30:52 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D467B3F305;
 Wed, 13 May 2020 03:30:51 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 17/20] arm64: dts: arm: Fix VExpress LED names
Date: Wed, 13 May 2020 11:30:13 +0100
Message-Id: <20200513103016.130417-18-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033053_735439_C47EE5FB 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The common LED binding wants the LED node names to start with led- and
then have just a single number.

Changing the naming for the 8 user LEDs from using user<x> to led-<x>.
Also there is no default-trigger named "mmc0" in the kernel, so use the
more generic "disk-activity".

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index f5c8f07b4918..e6308fb76183 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -51,49 +51,49 @@
 	leds {
 		compatible = "gpio-leds";
 
-		user1 {
+		led-1 {
 			label = "v2m:green:user1";
 			gpios = <&v2m_led_gpios 0 0>;
 			linux,default-trigger = "heartbeat";
 		};
 
-		user2 {
+		led-2 {
 			label = "v2m:green:user2";
 			gpios = <&v2m_led_gpios 1 0>;
 			linux,default-trigger = "disk-activity";
 		};
 
-		user3 {
+		led-3 {
 			label = "v2m:green:user3";
 			gpios = <&v2m_led_gpios 2 0>;
 			linux,default-trigger = "cpu0";
 		};
 
-		user4 {
+		led-4 {
 			label = "v2m:green:user4";
 			gpios = <&v2m_led_gpios 3 0>;
 			linux,default-trigger = "cpu1";
 		};
 
-		user5 {
+		led-5 {
 			label = "v2m:green:user5";
 			gpios = <&v2m_led_gpios 4 0>;
 			linux,default-trigger = "cpu2";
 		};
 
-		user6 {
+		led-6 {
 			label = "v2m:green:user6";
 			gpios = <&v2m_led_gpios 5 0>;
 			linux,default-trigger = "cpu3";
 		};
 
-		user7 {
+		led-7 {
 			label = "v2m:green:user7";
 			gpios = <&v2m_led_gpios 6 0>;
 			linux,default-trigger = "cpu4";
 		};
 
-		user8 {
+		led-8 {
 			label = "v2m:green:user8";
 			gpios = <&v2m_led_gpios 7 0>;
 			linux,default-trigger = "cpu5";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
