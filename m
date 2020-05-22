Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDB11DEA21
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Md2Z0o+BQqa2md4pO/qu7ocuq9ADryOeUUx/heqigEE=; b=VuK0xXqnXiX4QG
	oCOGegx7fc2V5wGuJRuwLIz+n+sx4BX4mc4qLN7lnoIl3AOxcWTH/24Va4/s0zch036lfwXqsCK1O
	ytgDb5lmL3vjgQFDr11xtaAne9gNx/Q8g+8zZod8QQxD1biPJecNZvERYcqUmnh18X7TKfjciXLDq
	x63H5pc2MtCPK9P/aHcELplAyYk5q7yjn2lwsJqrpUYRhlvsaGUCQdBwb33YB0SGt4eGpbXycPA2b
	CygtiCHhgbSBO5YMvvuQP4ore6nXN3FmeSrPSXpBm7+GrzYjNB/MttdqXtjMPQmJEs6GHfED6mEjK
	lu0y0ceI1qaTk7eIYr7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc932-0003y4-Tf; Fri, 22 May 2020 14:53:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8zz-0007SR-NH
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 14:50:13 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE97A223BF;
 Fri, 22 May 2020 14:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590159011;
 bh=d07kKZJF85G6WmyNuDRY5D8ZQiahqedqqafcMO5l6EY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1qbbp0an1ckFA+GRZyP1Xowpfg/lFgeW9Oiw4tXikierNmnO1tEPFYDWbVIxyCQOq
 U9pSs1ElkTa67X/L5JfqUqJZ2lS5krhN5drkJfYQ4xeJI7TWT5owGogUcq4aMetxoW
 SHkkgYpCmYM2cSvQ7G87tSjhfjZRRiL0NA7ZMfqo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 10/41] ARM: dts: omap4-droid4: Fix flakey wlan by
 disabling internal pull for gpio
Date: Fri, 22 May 2020 10:49:27 -0400
Message-Id: <20200522144959.434379-10-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522144959.434379-1-sashal@kernel.org>
References: <20200522144959.434379-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_075011_781045_988949A2 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tony Lindgren <tony@atomide.com>, Sasha Levin <sashal@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tony Lindgren <tony@atomide.com>

[ Upstream commit 30fa60c678eaa27b8f2a531920d77f7184658f73 ]

The wlan on droid4 is flakey on some devices, and experiments have shown this
gets fixed if we disable the internal pull for wlan gpio interrupt line.

The symptoms are that the wlan connection is very slow and almost useless
with lots of wlcore firmware reboot warnings in the dmesg.

In addition to configuring the wlan gpio pulls, let's also configure the rest
of the wlan sd pins. We have not configured those eariler as we're booting
using kexec.

Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../boot/dts/motorola-mapphone-common.dtsi    | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm/boot/dts/motorola-mapphone-common.dtsi b/arch/arm/boot/dts/motorola-mapphone-common.dtsi
index 9067e0ef4240..01ea9a1e2c86 100644
--- a/arch/arm/boot/dts/motorola-mapphone-common.dtsi
+++ b/arch/arm/boot/dts/motorola-mapphone-common.dtsi
@@ -367,6 +367,8 @@
 };
 
 &mmc3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc3_pins>;
 	vmmc-supply = <&wl12xx_vmmc>;
 	/* uart2_tx.sdmmc3_dat1 pad as wakeirq */
 	interrupts-extended = <&wakeupgen GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH
@@ -472,6 +474,37 @@
 		>;
 	};
 
+	/*
+	 * Android uses PIN_OFF_INPUT_PULLDOWN | PIN_INPUT_PULLUP | MUX_MODE3
+	 * for gpio_100, but the internal pull makes wlan flakey on some
+	 * devices. Off mode value should be tested if we have off mode working
+	 * later on.
+	 */
+	mmc3_pins: pinmux_mmc3_pins {
+		pinctrl-single,pins = <
+		/* 0x4a10008e gpmc_wait2.gpio_100 d23 */
+		OMAP4_IOPAD(0x08e, PIN_INPUT | MUX_MODE3)
+
+		/* 0x4a100102 abe_mcbsp1_dx.sdmmc3_dat2 ab25 */
+		OMAP4_IOPAD(0x102, PIN_INPUT_PULLUP | MUX_MODE1)
+
+		/* 0x4a100104 abe_mcbsp1_fsx.sdmmc3_dat3 ac27 */
+		OMAP4_IOPAD(0x104, PIN_INPUT_PULLUP | MUX_MODE1)
+
+		/* 0x4a100118 uart2_cts.sdmmc3_clk ab26 */
+		OMAP4_IOPAD(0x118, PIN_INPUT | MUX_MODE1)
+
+		/* 0x4a10011a uart2_rts.sdmmc3_cmd ab27 */
+		OMAP4_IOPAD(0x11a, PIN_INPUT_PULLUP | MUX_MODE1)
+
+		/* 0x4a10011c uart2_rx.sdmmc3_dat0 aa25 */
+		OMAP4_IOPAD(0x11c, PIN_INPUT_PULLUP | MUX_MODE1)
+
+		/* 0x4a10011e uart2_tx.sdmmc3_dat1 aa26 */
+		OMAP4_IOPAD(0x11e, PIN_INPUT_PULLUP | MUX_MODE1)
+		>;
+	};
+
 	/* gpmc_ncs0.gpio_50 */
 	poweroff_gpio: pinmux_poweroff_pins {
 		pinctrl-single,pins = <
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
