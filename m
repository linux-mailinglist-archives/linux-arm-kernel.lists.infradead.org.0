Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C8D221B4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 07:18:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=insXZ6Y4CIfWy80TQtfC/mw9LucWeRhCptXLKy26c6A=; b=ZjnYFs/WkNLq27
	bVHR15eJJZm/O1eMdovsh9YYWoFrx2BX/a/nuKBvgJbxoFrPoiy5ulQoJ71J3P8/IHT1MwEBRngk1
	BQrfK33UkcKq2l6Plg5jif1+ip/uoZ/NwJSnr94QfvPFSNucLZGgcNaeRYYMyNohYlFVL/sEeSIMX
	oJj3Ph5yljU3AtD2VeeMKsUs+2WzzzmpcuO4gVVNiHHMlBb41C5BjTrZH4dUvRJBAdmn3tktbpKqj
	WSzuuYXVB97ZRm77Go80/91n1HnIl7SkalKy1wYXeSfoAOn69j6yILcEmFlvHXh3gSQhBInmbhrU6
	+SmGeIRCf6H3q8IKjAtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRrkF-0002BH-Cm; Sat, 18 May 2019 05:18:55 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRrk7-0002Ab-ST
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 05:18:49 +0000
Received: by mail-wr1-x443.google.com with SMTP id m3so8919646wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 22:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=FdTczlBBVa9u+WV7Y3o/VG0d13GnIMDeCYtn2Nanml4=;
 b=F1zfWMdRgS6aonOqLALhrSo+SyB4+e0YJqXqynv/i3/qPBQf/XXDnhPbqBKxYRQZiz
 S8ujokRw+sZ8gpEG0r/sqzCtbRLMEWbnAOWCRP/YvIVR8rdMH22YtSsZB8HGQFmDrbGd
 MjKCAMONJPBnABOtf9XTXbB8QyJCzD30yc9wGBT2syOFI9Mx/wVMlR/kl72NNslvQkc0
 z7onZq/tS9DFecIgbdFccvdkDKg7l1PIdSXBqMCmCG2+rsAvFL+aRCsJhrjAZYjG9zth
 JrCM8prGC6/8wXVYk1+UHv2GKpnyZpJtx8vJdZ1t8xKyJKWKz0goQ2ksTil2qJsXAKAM
 AU1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=FdTczlBBVa9u+WV7Y3o/VG0d13GnIMDeCYtn2Nanml4=;
 b=cqORWh9cKgAXF3Slv2Je1iRWzEBj9+hs3ZXQExD9/SCRP3MSI4GXQ3KFrLBnEAvoyb
 RcToNx5Ng76IDG6Aoj8iaJb/2sglTXaYUeHOS2TRZDKbyWlEYW+iPzOsERXiPo/6USuL
 wsS89yQeurEdkSS+IiFiH5vJYZlxU1J+n+PBEoQ6fouw3ilSnxro11OED2rl78HRCFVO
 Ztz3gWaDFrU9A/FZQqwgQBguxY9ObigmRhGKGu6kmuHcH4OH0nGjAw4e52Cll4Gf4/W9
 qRJkxMNkxnrhCJZYG4O/9n42yjPO5xYHiapQkqsPwtv5eW4WCq8FMuA5MPgJbkoytLzs
 GmSg==
X-Gm-Message-State: APjAAAXnakw4e8REtHT3IOWA+vI510lm3NSiEE1f7lDBEBxrFDQl2z0s
 v5fmHsP/UKOzmVLXH2wVIfGvQQ==
X-Google-Smtp-Source: APXvYqyKs/VAHBOML+lvp5PP0kJwVtEuyjECXDM+qa9/C+RbEsVzF763x/DTJy2CzXp5JXcWVGKPwQ==
X-Received: by 2002:a5d:4e50:: with SMTP id r16mr11753300wrt.197.1558156725277; 
 Fri, 17 May 2019 22:18:45 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id r3sm9672144wrn.5.2019.05.17.22.18.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 22:18:44 -0700 (PDT)
Message-ID: <5cdf95b4.1c69fb81.808ef.7543@mx.google.com>
Date: Fri, 17 May 2019 22:18:44 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Tree: mainline
X-Kernelci-Lab-Name: lab-baylibre
X-Kernelci-Branch: master
X-Kernelci-Kernel: v5.1-12505-g0ef0fd351550
Subject: mainline/master boot bisection: v5.1-12505-g0ef0fd351550 on
 meson-g12a-x96-max
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, broonie@kernel.org,
 matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com,
 Jerome Brunet <jbrunet@baylibre.com>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_221847_980718_41F67F66 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

mainline/master boot bisection: v5.1-12505-g0ef0fd351550 on meson-g12a-x96-max

Summary:
  Start:      0ef0fd351550 Merge tag 'for-linus' of git://git.kernel.org/pub/scm/virt/kvm/kvm
  Details:    https://kernelci.org/boot/id/5cdf275859b514bb847a3628
  Plain log:  https://storage.kernelci.org//mainline/master/v5.1-12505-g0ef0fd351550/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.txt
  HTML log:   https://storage.kernelci.org//mainline/master/v5.1-12505-g0ef0fd351550/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.html
  Result:     11a7bea17c9e arm64: dts: meson: g12a: add pinctrl support controllers

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       mainline
  URL:        git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
  Branch:     master
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
# good: [a455eda33faafcaac1effb31d682765b14ef868c] Merge branch 'linus' of git://git.kernel.org/pub/scm/linux/kernel/git/evalenti/linux-soc-thermal
git bisect good a455eda33faafcaac1effb31d682765b14ef868c
# bad: [0ef0fd351550130129bbdb77362488befd7b69d2] Merge tag 'for-linus' of git://git.kernel.org/pub/scm/virt/kvm/kvm
git bisect bad 0ef0fd351550130129bbdb77362488befd7b69d2
# bad: [89f4f128ea535acaabf7d5bddc30ddda0fb7a70a] Merge tag 'imx-dt64-5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux into arm/dt
git bisect bad 89f4f128ea535acaabf7d5bddc30ddda0fb7a70a
# bad: [f5d6e8c077915c84d8b544bc02e3df2f0910c193] Merge tag 'sunxi-dt-for-5.2' of https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux into arm/dt
git bisect bad f5d6e8c077915c84d8b544bc02e3df2f0910c193
# bad: [6d918e09331e63593b7827ea1a718f0da03b7fb0] Merge tag 'omap-for-v5.2/dt-signed' of git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into arm/dt
git bisect bad 6d918e09331e63593b7827ea1a718f0da03b7fb0
# bad: [2fe743c27f064d637df7f989333c153f8d4b0e65] Merge tag 'renesas-arm64-dt-for-v5.2' of https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas into arm/dt
git bisect bad 2fe743c27f064d637df7f989333c153f8d4b0e65
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
