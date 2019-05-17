Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13658212A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 05:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3sOW6pDYNZBZfVeoBxAUFibVSZxpHloJUfRPZtK/NWk=; b=d0c3+xmh88fO1S
	oENcUTTc28taSaMYy+G34TQIzVQ/UMdoHTCRAaOusM70wEHzByBffj1lyswmVVInYv03ODp3+gduX
	qb1EEW5PGToDVS6zWGHpAA+3Rsh8xLqfZtL/3p0Z50bs1TxHSgIbclFZUOetTQk8Js+60y47W3YnC
	cMotsepumf8jN4mTc9mLNHHWbcRQP+p0OzINMz+sLq41uHj32zjuzjlyQn+9vfefHfjMsod7IUKpG
	qurNsqT5QCUNQ8cLe3uH85+BlUfrGlH0DuAxu5kuidtM547nLYY37lmzN3Rq09o7XQL0t7z7ZvJIB
	8Jhk5ezRQsNJxU7olQZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRTuf-0000W4-FB; Fri, 17 May 2019 03:52:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRTuX-0000V3-BC
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 03:51:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id m3so5344361wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 20:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=DdVR87Z6W71pfOZ9P0FpXBOiYmKNFBCn+LbvQzi7wlQ=;
 b=w1FyLLhpMw881IOcASEaUGIdwSeVjjeUpmN6yCOffrsAUamFbjBQP0AfGgBcVoqBFc
 ZfA0dJG1nP3k3iNR8TfTaRpKT81Ga/DjhFHOqTUtz6NxarbpgRBOlyngCOVwH+LueCvx
 bFqN7ytdmAzSxQtlMtMbVapKAvHm96lq+Q9s6b0cXQMp92dJIhvIpNGqC7ZOhL0U3ybn
 i3gn292MF7jkhlq+ghIuR5gXeMX6OrUtO3/FH3Ti9CdwvqAqkSCel8Td8gnYwDhdJt0e
 X8BxN9zrwVqCIEfsC9xg8kon/FwYJFizq3n+8zENJj78X35eL4+E1Cl79AN+e8xWryst
 an4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=DdVR87Z6W71pfOZ9P0FpXBOiYmKNFBCn+LbvQzi7wlQ=;
 b=bYe/0AL5GAul3/FTzg19dTfSPt5lqS5hiYMyZou5/tsF1cLNdl8uLnwe2EY5R/Icd4
 i8gMH6+jSkmIff7QZIl+Rw2ZdMa6i4Hx1w/dcgFAb+fNkOFaKmpCYkrRZ0Gv0aYfbJmK
 wz3Y+K1sUFIxryfxLEcPjpBW01CK7xqpb0A5AOwVfX4t3vxcMG9ShPwqSr3avN5YSd5m
 wcFFAKZSx/S3K9LvGNkl1gJJCgRlo4fVX6vcqbxlAs3bjQyIfeh8PPrj+dFXzW+S7zy2
 xmzu94Gzf5XrVT06pdCXNJZ4vuNfnDIMBphp0UgzAxJlk/3hS4Vk4+lPuYlTdVK7gbkL
 rEJA==
X-Gm-Message-State: APjAAAXTU7S9NdjlQWRlbJ7mNuEmHKJSsr+NmCaYi1F33Zj4x/R1TD+z
 1SLm44zliA3md2oeA745gfmmMQ==
X-Google-Smtp-Source: APXvYqzyfhaTEuEHD7b4qavb2NnY+aWioXWHYEipSR9Qye9wu3iFt5gT+TIKeBtfEgyF6JOBfMlrEw==
X-Received: by 2002:a5d:62c2:: with SMTP id o2mr13569428wrv.254.1558065112562; 
 Thu, 16 May 2019 20:51:52 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id v1sm7371785wrd.47.2019.05.16.20.51.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 20:51:52 -0700 (PDT)
Message-ID: <5cde2fd8.1c69fb81.8f42e.b6dc@mx.google.com>
Date: Thu, 16 May 2019 20:51:52 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Tree: mainline
X-Kernelci-Lab-Name: lab-baylibre
X-Kernelci-Branch: master
X-Kernelci-Kernel: v5.1-12065-g8c05f3b965da
Subject: mainline/master boot bisection: v5.1-12065-g8c05f3b965da on
 meson-g12a-x96-max
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, broonie@kernel.org,
 matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com,
 Jerome Brunet <jbrunet@baylibre.com>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_205157_437675_E7B00A89 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

mainline/master boot bisection: v5.1-12065-g8c05f3b965da on meson-g12a-x96-max

Summary:
  Start:      8c05f3b965da Merge tag 'for-linus' of git://git.armlinux.org.uk/~rmk/linux-arm
  Details:    https://kernelci.org/boot/id/5cddbf2e59b51487157a362b
  Plain log:  https://storage.kernelci.org//mainline/master/v5.1-12065-g8c05f3b965da/arm64/defconfig/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.txt
  HTML log:   https://storage.kernelci.org//mainline/master/v5.1-12065-g8c05f3b965da/arm64/defconfig/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.html
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
  Config:     defconfig
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
# bad: [8c05f3b965da14e7790711026b32cc10a4c06213] Merge tag 'for-linus' of git://git.armlinux.org.uk/~rmk/linux-arm
git bisect bad 8c05f3b965da14e7790711026b32cc10a4c06213
# bad: [b45da609a02460c6a34c395f03f891f1fb2a021a] Merge tag 'imx-bindings-5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux into arm/dt
git bisect bad b45da609a02460c6a34c395f03f891f1fb2a021a
# bad: [a41332dd5e2ac56b0b6eb0959d8828bfe0d6a4ad] Merge tag 'socfpga_dts_updates_for_v5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux into arm/dt
git bisect bad a41332dd5e2ac56b0b6eb0959d8828bfe0d6a4ad
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
