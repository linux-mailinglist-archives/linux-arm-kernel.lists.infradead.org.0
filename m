Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF8A1491E1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 00:21:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSdhaUv+F+/tbgNWeidy6BSKf2vzYajG7MbdX5mRKfU=; b=Jq2PG3Z5BDKCzA
	eyZ1Zms2zKWvJnZ7a4/RA8xAiPFasYkYWVRiYZMAZLkFRhzmparjNbTjBb7bxxGYATD+EuOBPj1pK
	vLWLOP1H2vriPozuNlukDhOVKz5j2J+2H0gPiZ+JJCAk1WtBNV37bI2faSolecBtDJFiCMTjNCi9R
	ihpwRO29n5H3emavY9aQts7IZk+dpr6GqHsHlXXhc1m76wJ9AL3/kQ1zfetvHpX3lIIrv1Ss+5IaS
	myiyEDyPKHo0InI9FpPC0NaXQP7440e2jsmK9QqkJuPbyH/ErkxmEFA8K7fwx7l9EQm5a+OU8VKdw
	LZ9FJJIiO3NdrsTxRsSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv8Gc-0002H8-BB; Fri, 24 Jan 2020 23:21:34 +0000
Received: from mailoutvs50.siol.net ([185.57.226.241] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv8Ff-0001Yj-VI
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 23:20:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 1F03C5228C9;
 Sat, 25 Jan 2020 00:20:33 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id FVVhKHJUZiki; Sat, 25 Jan 2020 00:20:32 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id BB642522899;
 Sat, 25 Jan 2020 00:20:32 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 634BE5228C9;
 Sat, 25 Jan 2020 00:20:30 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 3/8] ARM: dts: sunxi: Fix DE2 clocks register range
Date: Sat, 25 Jan 2020 00:20:09 +0100
Message-Id: <20200124232014.574989-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124232014.574989-1-jernej.skrabec@siol.net>
References: <20200124232014.574989-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_152036_221024_8406CF27 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.241 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As it can be seen from DE2 manual, clock range is 0x10000.

Fix it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi  | 2 +-
 arch/arm/boot/dts/sun8i-r40.dtsi   | 2 +-
 arch/arm/boot/dts/sun8i-v3s.dtsi   | 2 +-
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 74ac7ee9383c..053d439b01a7 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -314,7 +314,7 @@ soc {
 
 		display_clocks: clock@1000000 {
 			compatible = "allwinner,sun8i-a83t-de2-clk";
-			reg = <0x01000000 0x100000>;
+			reg = <0x01000000 0x10000>;
 			clocks = <&ccu CLK_BUS_DE>,
 				 <&ccu CLK_PLL_DE>;
 			clock-names = "bus",
diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 8f09a24b36ec..a9d037667a83 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -119,7 +119,7 @@ soc {
 		display_clocks: clock@1000000 {
 			compatible = "allwinner,sun8i-r40-de2-clk",
 				     "allwinner,sun8i-h3-de2-clk";
-			reg = <0x01000000 0x100000>;
+			reg = <0x01000000 0x10000>;
 			clocks = <&ccu CLK_BUS_DE>,
 				 <&ccu CLK_DE>;
 			clock-names = "bus",
diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
index 81ea50838cd5..e5312869c0d2 100644
--- a/arch/arm/boot/dts/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
@@ -105,7 +105,7 @@ soc {
 
 		display_clocks: clock@1000000 {
 			compatible = "allwinner,sun8i-v3s-de2-clk";
-			reg = <0x01000000 0x100000>;
+			reg = <0x01000000 0x10000>;
 			clocks = <&ccu CLK_BUS_DE>,
 				 <&ccu CLK_DE>;
 			clock-names = "bus",
diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 5e9c3060aa08..799f32bafd80 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -114,7 +114,7 @@ soc {
 
 		display_clocks: clock@1000000 {
 			/* compatible is in per SoC .dtsi file */
-			reg = <0x01000000 0x100000>;
+			reg = <0x01000000 0x10000>;
 			clocks = <&ccu CLK_BUS_DE>,
 				 <&ccu CLK_DE>;
 			clock-names = "bus",
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
