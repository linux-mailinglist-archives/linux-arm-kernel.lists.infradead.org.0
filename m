Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEF32A238
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 03:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Fsysx4n6lDD8Wxcf7ibnm22GzacQ4XHA8mCuLDrqfs=; b=SCQes9yp7DicCe
	2x0wpRqUk7wtoofoXPmYsawo9T53Rm7PfRN4g81JCuRD+Kk/W58cQzSRKjv+1nD6GNY89QbdNP9K8
	/v6/k623qlk5eNCZJBTBkMF9/k4bB+vc3a6+GBVEgvlmc2qJdOjBv3kP540Tt+IHuDGH9WJt17KfF
	6eap40nlOus3JMk4mYH+7joaQUQSI8B1VcvnUQueahsDcYMOfhcrvCDWw/YWO12TXvuyIeCaXkyUq
	wXvviWQAsYV64qobmqAaMiF1W0HvlwWDpFrRx/mvBhezdHu3KOam0fu7MUBKoQS4Sz4SoaO0xNbUf
	89SWxnpffyyOO3tocCGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUL2p-00005L-Jm; Sat, 25 May 2019 01:00:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUL2g-0008VB-MN
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 01:00:12 +0000
Received: by mail-wm1-x342.google.com with SMTP id 15so10732181wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 18:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=mOz/uzoZ8Qq/01C38MyE2pll+zK9QQHgk5S4tOoKkeM=;
 b=I0Go90WH2ayMMN403h5jEjNJssF9yIo9WmYHlS85dA3rNDOu6qzN4V5iBjqwwGq3HS
 jead8J+QAD2i06izMX5BXqXKHoJAu1mM5XcNsFmxHKUsFvABKIAiL4dPumEsjKLJbqMh
 XGvj+hN8LzZevfr98yQ8tV9LaX2pY5Y9fGjtEVoFDs6w78hu32wTH5TfjLc6B3+AUph5
 TXkFxkRam/AE8KCZ23Ru7Q37hbrDu12SYZn3jGW5nevPOg2ip9Tp1F1YF7537fw1A5CM
 wpv5KQSD50MFYOUJ86n1v+Ek1HaBsvdOLbHURsaGX+TwRzuNofuBo1WNzj9ykbdCB1L+
 ebCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=mOz/uzoZ8Qq/01C38MyE2pll+zK9QQHgk5S4tOoKkeM=;
 b=c6zY8BNBaJnG6l2nBL+8Rjou4ZRVYhynPOMhwi5au5NyKBrWiaKH7KKBASywMTkRc1
 wIGfKb1S8mtWa3UIQgDArWP9sVL5Cp4zL263IfEywi2RJxCjGzTe8pYOM+m3PQ18ulJc
 79YCavDKdmatjN2ItmkLfO5Dw/ycZSnO3VWE/BIaCPXwxasHc97DZA+I7lWzGqrBpdL3
 712aUiXmpoVFElKaG5oSEGzaswtGBnJxVDUUYmcNkJlWCVU6nh9Vh/Y8Rs9lajKBBIW4
 aIsbhmTrkeuvQrJXO/lkk8Db7NBa7VWaTww/jC5F92iSSV8L+pWvHRp6TU/ClNLuXgst
 K2Zw==
X-Gm-Message-State: APjAAAXPgpkHS+Te4lGfK5npcGDVEyB6I0yC9+QqQ/sQATZC7iZGA1Y+
 vjptshzHVqFEDk3ap1rDIxt2ww==
X-Google-Smtp-Source: APXvYqz+d5B1uhbeZFmzCKr8tLpKRfnQnchVdM5lugUMtvpcsjrJqEChi+nfW/oijKLRaXuyKzf0EQ==
X-Received: by 2002:a7b:ca44:: with SMTP id m4mr1572416wml.160.1558746006753; 
 Fri, 24 May 2019 18:00:06 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id h14sm3343469wrt.11.2019.05.24.18.00.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 18:00:06 -0700 (PDT)
Message-ID: <5ce89396.1c69fb81.16e3d.2c5c@mx.google.com>
Date: Fri, 24 May 2019 18:00:06 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Tree: clk
X-Kernelci-Lab-Name: lab-baylibre
X-Kernelci-Branch: clk-next
X-Kernelci-Kernel: v5.2-rc1-4-gf191a146bcee
Subject: clk/clk-next boot bisection: v5.2-rc1-4-gf191a146bcee on
 meson-g12a-x96-max
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, broonie@kernel.org,
 matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com,
 Jerome Brunet <jbrunet@baylibre.com>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_180010_735967_15110413 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* This automated bisection report was sent to you on the basis  *
* that you may be involved with the breaking commit it has      *
* found.  No manual investigation has been done to verify it,   *
* and the root cause of the problem may be somewhere else.      *
* Hope this helps!                                              *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

clk/clk-next boot bisection: v5.2-rc1-4-gf191a146bcee on meson-g12a-x96-max

Summary:
  Start:      f191a146bcee Merge branch 'clk-fixes' into clk-next
  Details:    https://kernelci.org/boot/id/5ce8391259b514c80a7a362c
  Plain log:  https://storage.kernelci.org//clk/clk-next/v5.2-rc1-4-gf191a146bcee/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.txt
  HTML log:   https://storage.kernelci.org//clk/clk-next/v5.2-rc1-4-gf191a146bcee/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.html
  Result:     11a7bea17c9e arm64: dts: meson: g12a: add pinctrl support controllers

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       clk
  URL:        https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git
  Branch:     clk-next
  Target:     meson-g12a-x96-max
  CPU arch:   arm64
  Lab:        lab-baylibre
  Compiler:   gcc-8
  Config:     defconfig+CONFIG_RANDOMIZE_BASE=y
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit 11a7bea17c9e0a36daab934d83e15a760f402147
Author: Jerome Brunet <jbrunet@baylibre.com>
Date:   Mon Mar 18 10:58:45 2019 +0100

    arm64: dts: meson: g12a: add pinctrl support controllers
    
    Add the peripheral and always-on pinctrl controllers to the g12a soc.
    
    Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
    Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
    Signed-off-by: Kevin Hilman <khilman@baylibre.com>

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index abfa167751af..5e07e4ca3f4b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -104,6 +104,29 @@
 				#address-cells = <2>;
 				#size-cells = <2>;
 				ranges = <0x0 0x0 0x0 0x34400 0x0 0x400>;
+
+				periphs_pinctrl: pinctrl@40 {
+					compatible = "amlogic,meson-g12a-periphs-pinctrl";
+					#address-cells = <2>;
+					#size-cells = <2>;
+					ranges;
+
+					gpio: bank@40 {
+						reg = <0x0 0x40  0x0 0x4c>,
+						      <0x0 0xe8  0x0 0x18>,
+						      <0x0 0x120 0x0 0x18>,
+						      <0x0 0x2c0 0x0 0x40>,
+						      <0x0 0x340 0x0 0x1c>;
+						reg-names = "gpio",
+							    "pull",
+							    "pull-enable",
+							    "mux",
+							    "ds";
+						gpio-controller;
+						#gpio-cells = <2>;
+						gpio-ranges = <&periphs_pinctrl 0 0 86>;
+					};
+				};
 			};
 
 			hiu: bus@3c000 {
@@ -150,6 +173,25 @@
 					clocks = <&xtal>, <&clkc CLKID_CLK81>;
 					clock-names = "xtal", "mpeg-clk";
 				};
+
+				ao_pinctrl: pinctrl@14 {
+					compatible = "amlogic,meson-g12a-aobus-pinctrl";
+					#address-cells = <2>;
+					#size-cells = <2>;
+					ranges;
+
+					gpio_ao: bank@14 {
+						reg = <0x0 0x14 0x0 0x8>,
+						      <0x0 0x1c 0x0 0x8>,
+						      <0x0 0x24 0x0 0x14>;
+						reg-names = "mux",
+							    "ds",
+							    "gpio";
+						gpio-controller;
+						#gpio-cells = <2>;
+						gpio-ranges = <&ao_pinctrl 0 0 15>;
+					};
+				};
 			};
 
 			sec_AO: ao-secure@140 {
-------------------------------------------------------------------------------


Git bisection log:

-------------------------------------------------------------------------------
git bisect start
# good: [62e59c4e69b3cdbad67e3c2d49e4df4cfe1679e3] clk: Remove io.h from clk-provider.h
git bisect good 62e59c4e69b3cdbad67e3c2d49e4df4cfe1679e3
# bad: [f191a146bcee3dfd62a501432d22a55ef67858b4] Merge branch 'clk-fixes' into clk-next
git bisect bad f191a146bcee3dfd62a501432d22a55ef67858b4
# good: [e7a1414f9dc3498c4c35b9ca266d539e8bccab53] Merge tag 'media/v5.1-2' of git://git.kernel.org/pub/scm/linux/kernel/git/mchehab/linux-media
git bisect good e7a1414f9dc3498c4c35b9ca266d539e8bccab53
# good: [cccd559e98c05b669bdc37b01802f920cff1d6dd] Merge tag 'fbdev-v5.2' of git://github.com/bzolnier/linux
git bisect good cccd559e98c05b669bdc37b01802f920cff1d6dd
# good: [a455eda33faafcaac1effb31d682765b14ef868c] Merge branch 'linus' of git://git.kernel.org/pub/scm/linux/kernel/git/evalenti/linux-soc-thermal
git bisect good a455eda33faafcaac1effb31d682765b14ef868c
# bad: [e8a1d70117116c8d96c266f0b99e931717670eaf] Merge tag 'armsoc-dt' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
git bisect bad e8a1d70117116c8d96c266f0b99e931717670eaf
# bad: [64f32d9d30063149eb10d7be3a23b5e1f44247c8] Merge tag 'renesas-arm64-dt2-for-v5.2' of https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas into arm/dt
git bisect bad 64f32d9d30063149eb10d7be3a23b5e1f44247c8
# bad: [da9a4c3d32eb699db68dd8f3e633ec035879d818] Merge tag 'omap-for-v5.2/dt-ti-sysc-signed' of git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into arm/dt
git bisect bad da9a4c3d32eb699db68dd8f3e633ec035879d818
# bad: [bbf7499dc033831ae91125a88a062910cdc62cf2] Merge tag 'aspeed-5.2-devicetree' of git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed into arm/dt
git bisect bad bbf7499dc033831ae91125a88a062910cdc62cf2
# bad: [f6f9683c5aedff214433fa130e67a79f08a47fdb] Merge tag 'v5.2-rockchip-dts32-1' of git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip into arm/dt
git bisect bad f6f9683c5aedff214433fa130e67a79f08a47fdb
# bad: [e2cffeb398f4830b004774444809ee256b9bc653] arm64: dts: meson-g12a: Add CMA reserved memory
git bisect bad e2cffeb398f4830b004774444809ee256b9bc653
# bad: [11a7bea17c9e0a36daab934d83e15a760f402147] arm64: dts: meson: g12a: add pinctrl support controllers
git bisect bad 11a7bea17c9e0a36daab934d83e15a760f402147
# good: [7e09092aee006b21d830b99f8498b5640b8711f6] arm64: dts: meson-gxl-s905d-phicomm-n1: add status LED
git bisect good 7e09092aee006b21d830b99f8498b5640b8711f6
# good: [965c827ac37e71f76d3ac55c75ac08909f2a4eed] arm64: dts: meson: g12a: add efuse
git bisect good 965c827ac37e71f76d3ac55c75ac08909f2a4eed
# good: [b019f4a4199f865b054262ff78f606ca70f7b981] arm64: dts: meson: g12a: Add AO Clock + Reset Controller support
git bisect good b019f4a4199f865b054262ff78f606ca70f7b981
# first bad commit: [11a7bea17c9e0a36daab934d83e15a760f402147] arm64: dts: meson: g12a: add pinctrl support controllers
-------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
