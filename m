Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DD0172701
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:23:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dQHfXpBrfShBgz8Y3FzmbjjWtWkKEA9j3nquxbi6gts=; b=ezeO7xLYoakHmSOAT4ontgZbvv
	gmf5nqTIuFRnUUY5/cDVeStumGGiXPXkffabummuR7dCTWtEUJqv9tET+IPSCQF5+HIO7kKg6gP6M
	r2IHBYEHNp5/Q45eNLrFt5XEBzYh72XgyVpQrrScEkP44DxRDEcrYOJUZIhmJ8s45Xoj09yOHomyA
	c+3YVQsvCIdZx1FxzsXjHPpqVlFZfAGNO7MaD7J6MWoUyRUY86vUCYTaEhK92GdX3N09ZtsmVMAA+
	gD21Jtnu7I0uMXbJhVlqNznXpkMSM6wVvxKrU+tqZHkt1+rou9/NZTyOw6X9HoRrHaB1rinp+uQ9w
	wxfEx1zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Nox-0007t8-Cb; Thu, 27 Feb 2020 18:23:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Nni-00075D-WE
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:22:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02B3830E;
 Thu, 27 Feb 2020 10:22:22 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 582313F73B;
 Thu, 27 Feb 2020 10:22:20 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 01/13] arm: dts: calxeda: Basic DT file fixes
Date: Thu, 27 Feb 2020 18:21:58 +0000
Message-Id: <20200227182210.89512-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227182210.89512-1-andre.przywara@arm.com>
References: <20200227182210.89512-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_102223_163453_36DA5FAF 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Jon Loeliger <jdl@jdl.com>, Mark Langsdorf <mlangsdo@redhat.com>,
 Robert Richter <rric@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The .dts files for the Calxeda machines are quite old, so carry some
sloppy mistakes that the DT schema checker will complain about.

Fix those issues, they should not have any effect on functionality.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/ecx-2000.dts | 3 ---
 arch/arm/boot/dts/highbank.dts | 7 ++-----
 2 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/ecx-2000.dts b/arch/arm/boot/dts/ecx-2000.dts
index 5651ae6dc969..81eb382b4c23 100644
--- a/arch/arm/boot/dts/ecx-2000.dts
+++ b/arch/arm/boot/dts/ecx-2000.dts
@@ -13,7 +13,6 @@
 	compatible = "calxeda,ecx-2000";
 	#address-cells = <2>;
 	#size-cells = <2>;
-	clock-ranges;
 
 	cpus {
 		#address-cells = <1>;
@@ -83,8 +82,6 @@
 		intc: interrupt-controller@fff11000 {
 			compatible = "arm,cortex-a15-gic";
 			#interrupt-cells = <3>;
-			#size-cells = <0>;
-			#address-cells = <1>;
 			interrupt-controller;
 			interrupts = <1 9 0xf04>;
 			reg = <0xfff11000 0x1000>,
diff --git a/arch/arm/boot/dts/highbank.dts b/arch/arm/boot/dts/highbank.dts
index f4e4dca6f7e7..9e34d1bd7994 100644
--- a/arch/arm/boot/dts/highbank.dts
+++ b/arch/arm/boot/dts/highbank.dts
@@ -13,7 +13,6 @@
 	compatible = "calxeda,highbank";
 	#address-cells = <1>;
 	#size-cells = <1>;
-	clock-ranges;
 
 	cpus {
 		#address-cells = <1>;
@@ -96,7 +95,7 @@
 		};
 	};
 
-	memory {
+	memory@0 {
 		name = "memory";
 		device_type = "memory";
 		reg = <0x00000000 0xff900000>;
@@ -128,14 +127,12 @@
 		intc: interrupt-controller@fff11000 {
 			compatible = "arm,cortex-a9-gic";
 			#interrupt-cells = <3>;
-			#size-cells = <0>;
-			#address-cells = <1>;
 			interrupt-controller;
 			reg = <0xfff11000 0x1000>,
 			      <0xfff10100 0x100>;
 		};
 
-		L2: l2-cache {
+		L2: cache-controller {
 			compatible = "arm,pl310-cache";
 			reg = <0xfff12000 0x1000>;
 			interrupts = <0 70 4>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
