Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0703813EF29
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:13:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3fb/cGadGqnUO8r2XjKf/PEbd1OM1+WK55v0wweP7M=; b=u5hXGUOVDBL306
	Ec9RylswiBQtn5PJ/rA0HlKxyVoEjbb8yEAWreW3siIkeoK7CXj5G6o/xTsnpBelS5dENBrUahap/
	3Cd4f25F3YufZ+zg7Qrr20iW7lzgXfFd8+mke6h2J9SykIwzG4r6M2W1VCqomOZ8UWwkcCPZVvxhg
	lLGIOLrzvD8s+RjkGNJtzV6QhEpf09t0Lr8/k3o/CRWnX0u8Vr6TsZ8Vqn8Vb4YaHHvxK1qyQyqmo
	BBbBce7pKsXj7b+K62UQC5gZJPaE4uq4ye//brH5ON3KTFMEXmG4iySUfu7OPLrCfseMB0/Dc+CoO
	Meqz7zrm0i3aF5RKb0KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9eK-0004iI-FL; Thu, 16 Jan 2020 18:13:44 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is92q-00043W-RG
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:35:03 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 99D0DC0006;
 Thu, 16 Jan 2020 17:34:55 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: dts: at91: at91sam9n12: switch to new sckc bindings
Date: Thu, 16 Jan 2020 18:34:53 +0100
Message-Id: <20200116173453.427267-2-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200116173453.427267-1-alexandre.belloni@bootlin.com>
References: <20200116173453.427267-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093501_040017_76C21F17 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the child nodes of the sckc as they are not necessary anymore.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 arch/arm/boot/dts/at91sam9n12.dtsi | 23 +++--------------------
 1 file changed, 3 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/at91sam9n12.dtsi b/arch/arm/boot/dts/at91sam9n12.dtsi
index d6eacb2e3792..3a3e3e05fa13 100644
--- a/arch/arm/boot/dts/at91sam9n12.dtsi
+++ b/arch/arm/boot/dts/at91sam9n12.dtsi
@@ -409,28 +409,11 @@ pit: timer@fffffe30 {
 				clocks = <&mck>;
 			};
 
-			sckc@fffffe50 {
+			clk32k: sckc@fffffe50 {
 				compatible = "atmel,at91sam9x5-sckc";
 				reg = <0xfffffe50 0x4>;
-
-				slow_osc: slow_osc {
-					compatible = "atmel,at91sam9x5-clk-slow-osc";
-					#clock-cells = <0>;
-					clocks = <&slow_xtal>;
-				};
-
-				slow_rc_osc: slow_rc_osc {
-					compatible = "atmel,at91sam9x5-clk-slow-rc-osc";
-					#clock-cells = <0>;
-					clock-frequency = <32768>;
-					clock-accuracy = <50000000>;
-				};
-
-				clk32k: slck {
-					compatible = "atmel,at91sam9x5-clk-slow";
-					#clock-cells = <0>;
-					clocks = <&slow_rc_osc>, <&slow_osc>;
-				};
+				clocks = <&slow_xtal>;
+				#clock-cells = <0>;
 			};
 
 			mmc0: mmc@f0008000 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
