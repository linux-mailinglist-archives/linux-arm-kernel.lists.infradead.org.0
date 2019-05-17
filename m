Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D47021F02
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 22:19:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9Lf8vfSaWeEnJwNzWwPRo2/cOYlyhJx5eqJePCuE6qE=; b=JJ7J35k7f723wr
	IUycSJRIYkX5GK4+Qc//7MOZ9FAQGn6EqLGIbNEzZKQxV1OEE5iaqjEd9sD7r2IjK4ucKn0uL/xQP
	PZRygZ1e+GqcNmKwYaf5ALhVPd1idphPA9Y/9gC/HsAwNdQmleq8KAf84wq2fCm3YsJvNeI+BNPAF
	6/1ES+MuPUj4nDZFo0qyOrs9ByxgOoa2QRlUEf2z+vmK8TPG09XjNSVTbN5HFQ0rPkuAIORHUQOVw
	wGFPA23dxdNiQEodGd5oSJ5Izst9iuXk2PCQG0gubXwM4d34hAF9LI8OgTlZdCt6W6KfPRNg0pAv/
	Ybfz/BmTX5Bwd7jKkGeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRjKf-0006jw-58; Fri, 17 May 2019 20:19:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRjKU-0006hz-Tp
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 20:19:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id d9so8423689wrx.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 13:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=djr/WXBRd+de1RQsSnwTqjcAKvd/O5mg6l1k6CM1beM=;
 b=rtMZPuBQvMBed2NCiJd0SHx9iaYiKFrVe/wUeUm5M4lQwUXyGNcUhnPpyRHOCz74Vv
 F9FODgdaQXiqY2POtpk7X0/HUaRTDhL1FI+cxZVel9IWrW9F38ccLZbUMYpQgkEedGRA
 hbj44T5trbEmUh2+hoFWj8RF+yDbogVNg+mS58vL6joWcho3MtRCdUKxVDI+lIyC2HjC
 iPKWz6Gvju7MRlbbwqPA0weRAa2Wu90lLhxjaSjYFumPAgJX2H3M0I+whJJ7M//h/lD3
 Hv8GvVjbOOcLN0eIHbAsdbA+ssvFqRcPNzgm9vnRGYQV9pv0Pf0F117O4buo2+PXocGs
 BNrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=djr/WXBRd+de1RQsSnwTqjcAKvd/O5mg6l1k6CM1beM=;
 b=ckLupcojF/DkYcJTPZPQldIebZ9xv+FKDr1TRwrPYcg562ul4bdjed+CTY1ecU4nyY
 0maas8bf+ETlYDkf6250l4NYgpPtt//tFbp81RUjn/R0UN6rtry/8HuyPnCqbm71+H3P
 2W5S7Hvj+3rVUlxedKZoW6e/JyRlMaqsuLhLgDd5gd1Gtrr9UhDY4XmJ5Z2Ftmq2QCui
 AKZJWk9b0+IXswJtEYoJvMz0+d16i2VVamtmjmOrsIxyVs0fOsJTlrsOAJd9tZatZgTX
 /sXyYiEectP4q3BD1NCfpKhN82K5Wv01fhCsS8x1FCaDIjieWN0Pi63XRBSDa4JzKU8Y
 UAYw==
X-Gm-Message-State: APjAAAU6BhmMDmk9p/gLggt4zgdogPZhQXu4nXrFTWQHR58uy54Er5kH
 ix7HOvw/phgaVRED6AZAqzG/kw==
X-Google-Smtp-Source: APXvYqwuptJZlrKbAVpQaVn0SYxkQTsT/owQkYH0t1z2X5Bs1vc49kuHcuTHERoyvP5DmbggcdIz3A==
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr24018465wrp.175.1558124382869; 
 Fri, 17 May 2019 13:19:42 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id u15sm1402035wru.16.2019.05.17.13.19.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 13:19:42 -0700 (PDT)
Message-ID: <5cdf175e.1c69fb81.9d43b.8249@mx.google.com>
Date: Fri, 17 May 2019 13:19:42 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Tree: mainline
X-Kernelci-Lab-Name: lab-baylibre
X-Kernelci-Branch: master
X-Kernelci-Kernel: v5.1-12172-g2c45e7fbc962
Subject: mainline/master boot bisection: v5.1-12172-g2c45e7fbc962 on
 meson-g12a-x96-max
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, broonie@kernel.org,
 matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com,
 Jerome Brunet <jbrunet@baylibre.com>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_131947_011034_86F54A5C 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

mainline/master boot bisection: v5.1-12172-g2c45e7fbc962 on meson-g12a-x96-max

Summary:
  Start:      2c45e7fbc962 Merge branch 'next' of git://git.kernel.org/pub/scm/linux/kernel/git/rzhang/linux
  Details:    https://kernelci.org/boot/id/5cde4f3459b5143cfb7a3628
  Plain log:  https://storage.kernelci.org//mainline/master/v5.1-12172-g2c45e7fbc962/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.txt
  HTML log:   https://storage.kernelci.org//mainline/master/v5.1-12172-g2c45e7fbc962/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.html
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
# bad: [2c45e7fbc962be1b03f2c2af817a76f5ba810af2] Merge branch 'next' of git://git.kernel.org/pub/scm/linux/kernel/git/rzhang/linux
git bisect bad 2c45e7fbc962be1b03f2c2af817a76f5ba810af2
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
