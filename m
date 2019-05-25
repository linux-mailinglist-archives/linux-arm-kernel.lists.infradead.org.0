Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 336A62A4FF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 16:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ppgfCzIMrsjRb4g0tsRPCv4if9agu3YVpdZ7Qh958xo=; b=DfCVQxgug1I0ri
	oW4PHzf2F8v0Y8YtnRURyMQyYZ71ZAeOeoVDagkebXlkq7oPOVpxhXEOnnnsb+60C6Hi9RbBPSpJQ
	0X5Z6miS/67sA0d7kNIF23fsFdQRO3mOZIazHgOsxhbhplPniBlgRFfqYYqFzsIkvbdQUQv3NV7gC
	iU8OrrLQ/p1mCO0W/89yFFwqi+8S29ncdl1cjXc4m8EpcKvmo3KR4zyoNJMxkAzt7UJhJf90GLu3Q
	Z5OCmeQlChQkIY4FthO4+KMq9DGSK68ZpZrSY9SOM6ctYGBZGY7jtx3G7OA9z8svsySN4l136lSXM
	uKiagtMdgu/lJbQFrSjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUY5b-00068V-8Z; Sat, 25 May 2019 14:56:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUY5U-00067u-1x
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 14:55:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id z23so7745006wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 07:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=EuYIB6cW2iyL4GLrUb+ErE4HZQ0an8nT6D+WzTs0wj4=;
 b=arDkbo+ddHrJkuxsGH5jgsnxZX1bB6hh0JtUZoGqILsdaqzNYjFCoEVzZ/BiEJ/cS5
 DkVVzTIvFux2OYnmgBo2hKGgdftqu1c26sypBZiie2p0G2y7tKoRRtJs4I9brTGz1CFQ
 soxQGM3PHrSEljL7v2gz8SP0thrvVE4QivtCOwNI7aRS4p27FrjJL8iGCKvB4/U4Ha2M
 +fv5EY8w6OskUYyZSwKojyo/urWrxq4hRfdG2PHv/Pr2waFzarRncQ8lRzfL5ZSZC3Tp
 zkm/ysRhVS7MSnyWRjn0U7SkXEyaZl2MgA7yT4PbKdCg+tyBLocdF3oWJS1PbxwBF90R
 lVIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=EuYIB6cW2iyL4GLrUb+ErE4HZQ0an8nT6D+WzTs0wj4=;
 b=U2a7gO8Mte7+2Vedq7cw5e/+GeuGjBvnQB3zvJbM2zq4dKRz5H+WnNlhhtDbPNLSaC
 umXRlcfjxBOaK/OjzuszU8NtRNl1MziPXqv604a+4swNM+IxL3VLpBGul3D1Xv4WqMUY
 Jwt01bX0jTVV80QlAE2o9dNen0wig4stqAWdchhbYafKKR959iK1w7NEVlWfVZNvmgGe
 6oR3qnKbc3lLT5Uu+n/oOq4slbSIxp0E1Rnq830jTz6GzLFDqqR2jB4Gd7ldPts1S6Bl
 6s+AYj1YRhcFzPrwT6fD/CKShOjX5R+pajXk2k4RW7HqqzOKRq7Fh/Q6m+Lw0N19p6Xz
 LeJQ==
X-Gm-Message-State: APjAAAVBrPO9rpYaWbipf2qfH9lCta0bolVvIXziSYupeg0teJI+kNiA
 Zeu8AA7L4ZKO7Q0fhj6pvgszig==
X-Google-Smtp-Source: APXvYqxXR7WXZZ1TwOzelpEfXavjk8aSfM4cLDNK9nnX/lJskdY6r5plLpg7Y0tmuGpLGMB2tNPVqQ==
X-Received: by 2002:a1c:1bc9:: with SMTP id b192mr3719972wmb.27.1558796154553; 
 Sat, 25 May 2019 07:55:54 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id p10sm2028727wrw.6.2019.05.25.07.55.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 07:55:53 -0700 (PDT)
Message-ID: <5ce95779.1c69fb81.df149.ac4a@mx.google.com>
Date: Sat, 25 May 2019 07:55:53 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Tree: mainline
X-Kernelci-Lab-Name: lab-baylibre
X-Kernelci-Branch: master
X-Kernelci-Kernel: v5.2-rc1-357-g7fbc78e3155a
Subject: mainline/master boot bisection: v5.2-rc1-357-g7fbc78e3155a on
 meson-g12a-x96-max
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, broonie@kernel.org,
 matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com,
 Jerome Brunet <jbrunet@baylibre.com>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_075556_150420_9851B0B3 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

mainline/master boot bisection: v5.2-rc1-357-g7fbc78e3155a on meson-g12a-x96-max

Summary:
  Start:      7fbc78e3155a Merge tag 'for-linus-20190524' of git://git.kernel.dk/linux-block
  Details:    https://kernelci.org/boot/id/5ce8a65059b51433287a363c
  Plain log:  https://storage.kernelci.org//mainline/master/v5.2-rc1-357-g7fbc78e3155a/arm64/defconfig/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.txt
  HTML log:   https://storage.kernelci.org//mainline/master/v5.2-rc1-357-g7fbc78e3155a/arm64/defconfig/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.html
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
# bad: [7fbc78e3155a0c464bd832efc07fb3c2355fe9bd] Merge tag 'for-linus-20190524' of git://git.kernel.dk/linux-block
git bisect bad 7fbc78e3155a0c464bd832efc07fb3c2355fe9bd
# bad: [311f71281ff4b24f86a39c60c959f485c68a6d36] Merge tag 'for-5.2/dm-changes-v2' of git://git.kernel.org/pub/scm/linux/kernel/git/device-mapper/linux-dm
git bisect bad 311f71281ff4b24f86a39c60c959f485c68a6d36
# bad: [be058ba65d9e43f40d31d9b16b99627f0a20de1b] Merge tag 'imx-dt-5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux into arm/dt
git bisect bad be058ba65d9e43f40d31d9b16b99627f0a20de1b
# bad: [7996313656b83ba516a1546d51f08f1a0fab4e06] Merge tag 'omap-for-v5.2/dt-am3-signed' of git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap into arm/dt
git bisect bad 7996313656b83ba516a1546d51f08f1a0fab4e06
# bad: [2140eaf2f46faf2627ec030d7cabf2dda2cb546b] Merge tag 'stm32-dt-for-v5.2-1' of git://git.kernel.org/pub/scm/linux/kernel/git/atorgue/stm32 into arm/dt
git bisect bad 2140eaf2f46faf2627ec030d7cabf2dda2cb546b
# bad: [1a88083b9349b8310b25d9a9a96802ee4447e6b9] Merge tag 'v5.2-rockchip-dts64-1' of git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip into arm/dt
git bisect bad 1a88083b9349b8310b25d9a9a96802ee4447e6b9
# bad: [1c93235a6d92deaab38bbb1cfc764b0757331ebb] Merge tag 'amlogic-dt' of https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic into arm/dt
git bisect bad 1c93235a6d92deaab38bbb1cfc764b0757331ebb
# bad: [ff4f8b6cab5885ebc2c6b21fd058db8544e2eebb] arm64: dts: meson: g12a: Add UART A, B & C nodes and pins
git bisect bad ff4f8b6cab5885ebc2c6b21fd058db8544e2eebb
# good: [965c827ac37e71f76d3ac55c75ac08909f2a4eed] arm64: dts: meson: g12a: add efuse
git bisect good 965c827ac37e71f76d3ac55c75ac08909f2a4eed
# bad: [11a7bea17c9e0a36daab934d83e15a760f402147] arm64: dts: meson: g12a: add pinctrl support controllers
git bisect bad 11a7bea17c9e0a36daab934d83e15a760f402147
# good: [b019f4a4199f865b054262ff78f606ca70f7b981] arm64: dts: meson: g12a: Add AO Clock + Reset Controller support
git bisect good b019f4a4199f865b054262ff78f606ca70f7b981
# first bad commit: [11a7bea17c9e0a36daab934d83e15a760f402147] arm64: dts: meson: g12a: add pinctrl support controllers
-------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
