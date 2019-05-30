Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2C62F90E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 11:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zdx1G6PrLPaweSi3I/N5lWv2OOdU7zUsVDXP/XN0V1E=; b=S1v
	T2D5E+UEazFMW1X5bP4b/UXKmggE5to7kjYkW6gZiNN6UbCn08gZ2Pl21Re/7cbGhmcYTSNhojwWY
	JKKV+88Xghqk1Nv7tBuZYQavzcTLdtgVt1rxkg8mshefdGbDi7+VUnlq6qj6aS2dA3ZPbPDeijWZn
	5EPgynyyxAp8N5pdj0osEo86rTr2H1Nl76acHmPFRPt/H+QBOEP2T8mHXkp3Zy8OrvVzz1tCbKVNI
	bu8HBn5wQ7KmFKUAPHr1FZ0qBotOxusRHehpAnieYDV7c0WeqWQx2xGbL9GNXk56QXk1UXsVQUQyq
	VEEnu3/MC3tAl4PesskAzxoNo+WCzQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWH6P-0002gt-40; Thu, 30 May 2019 09:12:01 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWH6G-0002gE-EB
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 09:11:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C54C4A78;
 Thu, 30 May 2019 02:11:50 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9125D3F59C;
 Thu, 30 May 2019 02:11:49 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm: dts: vexpress-v2p-ca15_a7: disable NOR flash node by
 default
Date: Thu, 30 May 2019 10:11:39 +0100
Message-Id: <20190530091139.11643-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_021152_477982_3197D745 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Accessing the NOR flash memory from the kernel will disrupt CPU sleep/
idles states and CPU hotplugging. We need to disable this DT node by
default. Setups that want to access the flash can modify this entry to
enable the flash again but also ensuring to disable CPU idle states and
CPU hotplug.

The platform firmware assumes the flash is always in read mode while
Linux kernel driver leaves NOR flash in "read id" mode after
initialization. If it gets used actively, it can be in some other state.

So far we had not seen this issue as the NOR flash drivers in kernel
were not enabled by default. However it was enable in multi_v7 config by
Commit 5f068190cc10 ("ARM: multi_v7_defconfig: Enable support for CFI NOR FLASH")

So, let's mark the NOR flash disabled so that the platform can boot
again. This based on:
Commit 980bbff018f6 ("ARM64: juno: disable NOR flash node by default")

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi    | 2 +-
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index d3963e9eaf48..1b5bc536c547 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -30,7 +30,7 @@
 			#interrupt-cells = <1>;
 			ranges;
 
-			flash@0,00000000 {
+			nor_flash: flash@0,00000000 {
 				compatible = "arm,vexpress-flash", "cfi-flash";
 				reg = <0 0x00000000 0x04000000>,
 				      <4 0x00000000 0x04000000>;
diff --git a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
index 164c904c9992..1de0a658adf1 100644
--- a/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
+++ b/arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts
@@ -680,3 +680,12 @@
 				<0 3 &gic 0 39 4>;
 	};
 };
+
+&nor_flash {
+	/*
+	 * Unfortunately, accessing the flash disturbs the CPU idle states
+	 * (suspend) and CPU hotplug of this platform. For this reason, flash
+	 * hardware access is disabled by default on this platform alone.
+	 */
+	status = "disabled";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
