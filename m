Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45361738E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 14:52:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CXdSvOCQyKqLj/2MLS8Z0b7RfPDAzeF/7O1zZLHnltE=; b=Tm4wRGwJ+6ST6O3JmsPHoj+MJP
	32Mk66ddbBT1sy/cMEoPjlTuwnpluUZ9X1PAPj31ehXbeq3PnGS0UoLl8+riZP74F2w/newkWgB9K
	+HM7rUlJE3u++2vL/Sx/stTiuuUbEZBiFpXCTWnLHrkrH6BE2ZwZ0EiaWAsExZG/fczB7u6/LqjdX
	ZnDfdCzT5ClzDUmlJm91VjjjZiHbnpMEXQoRI/QavrTxxM/+NYpGUcznbJw7ESCjczLGI4TK/BkJv
	OCW7OTnuUsxhENtGQq9tEYxB88ilvcj90iQ+aTf8muH3dDm1nzTHeY7GGuAbBuSs+oeCpvkOF5bg0
	ziS2JpwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7g3i-0004Gs-Rb; Fri, 28 Feb 2020 13:52:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7g3L-00045u-DQ
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 13:51:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E9116FEC;
 Fri, 28 Feb 2020 05:51:42 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 150CF3F7B4;
 Fri, 28 Feb 2020 05:51:40 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: soc@kernel.org, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v3 1/5] arm: dts: calxeda: Basic DT file fixes
Date: Fri, 28 Feb 2020 13:51:02 +0000
Message-Id: <20200228135106.220620-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228135106.220620-1-andre.przywara@arm.com>
References: <20200228135106.220620-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_055143_501395_D4A9458D 
X-CRM114-Status: GOOD (  11.35  )
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
Cc: Rob Herring <robh@kernel.org>, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Eric Auger <eric.auger@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The .dts files for the Calxeda machines are quite old, so carry some
sloppy mistakes that the DT schema checker will complain about.

Fix those issues, they should not have any effect on functionality.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/ecx-2000.dts | 4 +---
 arch/arm/boot/dts/highbank.dts | 7 ++-----
 2 files changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/ecx-2000.dts b/arch/arm/boot/dts/ecx-2000.dts
index 5651ae6dc969..8e0489607704 100644
--- a/arch/arm/boot/dts/ecx-2000.dts
+++ b/arch/arm/boot/dts/ecx-2000.dts
@@ -13,7 +13,6 @@
 	compatible = "calxeda,ecx-2000";
 	#address-cells = <2>;
 	#size-cells = <2>;
-	clock-ranges;
 
 	cpus {
 		#address-cells = <1>;
@@ -83,8 +82,7 @@
 		intc: interrupt-controller@fff11000 {
 			compatible = "arm,cortex-a15-gic";
 			#interrupt-cells = <3>;
-			#size-cells = <0>;
-			#address-cells = <1>;
+			#address-cells = <0>;
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
