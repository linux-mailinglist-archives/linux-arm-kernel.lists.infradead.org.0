Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC081059AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 19:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u4K8Z0GXgC+4MHVsYX6UkdpV7FNJBXf4YR0rtm7FetI=; b=AdL81ETMvMqh4v
	Y7XXlCbeGRhYgPtPHK2KeiXcpeGRkERl2XIQDcmf6CUW+4v1iWXehT9GyeQDx5AeDNssN7pcrxIW4
	NxWnyrgbqF9hId7dOOkcP2wESAkokWltURYtEFqdnE03b5VheC0L6gX9aXiY14ZOQvNs9P9AFnQYC
	59lVdH6QGx9B7ax5AFsI9lSWaaB9vGNuvfeKypBCf1l6XEzR8ZpktOYq+/Hj0PKRmglq5qoyT6OT+
	ApYXOWtm/TizbFHLho4lYFTcOfkJWULVF3YxluvJWHVC9uzG0W7/5oRvpXuxNgVDQEmYRNpsKESbX
	UkJ6rq6ziMVZH6N6Ci+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXrKZ-0005cs-Ab; Thu, 21 Nov 2019 18:37:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXrKK-0005bp-Jn; Thu, 21 Nov 2019 18:37:13 +0000
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net
 [71.197.186.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5EBB20672;
 Thu, 21 Nov 2019 18:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574361431;
 bh=bvBt/Z3IcnbICHqI86zDLVlsM35yTFdoVqsRRTB0fyk=;
 h=From:To:Cc:Subject:Date:From;
 b=NZcJa5SNue4TX21Z/7clNxhT6htYrnii9lAAOTqbZ2/hYlXzd6Vy4Ae6SgUjeBpdL
 l8L61V+30siHIs77rllCs4s3daq01vSI4paG1cWuNu7tIkzyT2Z+NS5/R02yyB60sW
 3XwBnNinCWQLg4pOtI6pLyaDVVtslx2oPzcHiXQQ=
From: Kevin Hilman <khilman@kernel.org>
To: linux-amlogic@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: meson-sm1-sei610: gpio-keys: switch to IRQs
Date: Thu, 21 Nov 2019 10:37:11 -0800
Message-Id: <20191121183711.19785-1-khilman@kernel.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_103712_668855_0F47C580 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Brunet?= <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kevin Hilman <khilman@baylibre.com>

Switch the GPIO buttons/switches to use interrupts instead of polling.
While at it, add the mic mute switch and the power button.

Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
 .../boot/dts/amlogic/meson-sm1-sei610.dts     | 26 +++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 5bd07469766b..2c90f4713d0e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -46,25 +46,47 @@
 	};
 
 	gpio-keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
+		compatible = "gpio-keys";
 
 		key1 {
 			label = "A";
 			linux,code = <BTN_0>;
 			gpios = <&gpio GPIOH_6 GPIO_ACTIVE_LOW>;
+			interrupt-parent = <&gpio_intc>;
+			interrupts = <34 IRQ_TYPE_EDGE_BOTH>;
 		};
 
 		key2 {
 			label = "B";
 			linux,code = <BTN_1>;
 			gpios = <&gpio GPIOH_7 GPIO_ACTIVE_LOW>;
+			interrupt-parent = <&gpio_intc>;
+			interrupts = <35 IRQ_TYPE_EDGE_BOTH>;
 		};
 
 		key3 {
 			label = "C";
 			linux,code = <BTN_2>;
 			gpios = <&gpio_ao GPIOAO_2 GPIO_ACTIVE_LOW>;
+			interrupt-parent = <&gpio_intc>;
+			interrupts = <2 IRQ_TYPE_EDGE_BOTH>;
+		};
+
+		mic_mute {
+			label = "MicMute";
+			linux,code = <SW_MUTE_DEVICE>;
+			linux,input-type = <EV_SW>;
+			gpios = <&gpio_ao GPIOE_2 GPIO_ACTIVE_LOW>;
+			interrupt-parent = <&gpio_intc>;
+			interrupts = <99 IRQ_TYPE_EDGE_BOTH>;
+		};
+
+		power_key {
+			label = "PowerKey";
+			linux,code = <KEY_POWER>;
+			gpios = <&gpio_ao GPIOAO_3 GPIO_ACTIVE_LOW>;
+			interrupt-parent = <&gpio_intc>;
+			interrupts = <3 IRQ_TYPE_EDGE_BOTH>;
 		};
 	};
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
