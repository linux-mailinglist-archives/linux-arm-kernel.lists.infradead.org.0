Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B971BD03
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 20:11:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qO5Ugnv2HOzPvOJcxI6M985J9yV5bvZW/aUCR10NVgM=; b=UlsanroykVgeHo
	GyJxd18Rqpt8ahFmKB3Cun5PbsWpaG3kbh4+T2a4G3LDFrBrkbZTDRfp95VT1C+KwdA2HF/yw1l+v
	A01Pd6lDCBlfvsUF+5WXnpHNOTnWWsUIEzIkWldUMKePT/eq9iRR+oCVlqiq3cdQ4GXLkmPqT8wl4
	ZgO0cJlRRr7EUHBQciGqRH8K+QgDczwgRs4OWyUkKgm1ehzquhPxaEB7v+4Snqigy2Wl6VfXSlxP9
	zPvJPS83xPD+9la47XmbFwKpP7DcZNQkU5XzdjIKdTydTkrT31xMRoXb0JbFnhhRqg4uAS9HGNwRy
	jBp45o5pIllkjRSj2sBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQFPh-0008Nu-D5; Mon, 13 May 2019 18:11:01 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQFPT-0008E3-Um
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 18:10:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id r4so16323594wro.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 11:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=LT5io5p8n1/c/LCwvTPkjtb4+X35+Q1HlvC4Y/qob20=;
 b=1NkacZszdx7ZwkSEa92RAnOAhALFbWsnF8mGgjeRpGOGnd39E3wE0Uxrr7C7pFmGfO
 qy3BKP5DqvHjy3c0zgYEci1RLKe+joxoNV7OnGQLeym8xfIegVO0rmjXKgw4ipqn6d48
 nnxOSI2IUwRPKYcJF5hBm6ANGBw3rTT+qG3jSR77+DAcg9et7O1scFUWIyCN2FCroe1d
 tdCEwt9K1DQ9eY+Pgl9zccGbGGsVryRhhMP3Y3S/3R2StWP9RrpsxeXdpOz6HQ9rw9XO
 XMUvU/ALsresEEJimUNQchRpxoWaik2f3FoiL0PRQpWSHxoJ64boSNDHXIpqnpj8rDU7
 Sslw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=LT5io5p8n1/c/LCwvTPkjtb4+X35+Q1HlvC4Y/qob20=;
 b=kPpscboEg/U+AqafKB2IzKzX8VQWjP/TikmvJEDkTsUgf6qUqz9/Cam1vEihn9eSyw
 xqE8maxhi3US2rejo0vbsojXbYDMi4QJ1c9joFJRzKELeHgT6J1DqO+kPpHArBh7iZt4
 zMUefyP4RCV2H768LnQClevmujgkolTxn2TxuQSTaTNGPOxSYAa24nBNCJ0rwDj4Wtaw
 J2gEbjdSSUc69IF0APdq7bWFeGKJoKNtk/kljapDrmnC3e7z6iAdwiDA4KS/lbgXIAeK
 zPnahMSK4uI8wKrTmyc1La9TZ3H6zZyUkEGNXAfNprxVQCGVRqNbtnWUzagNBEGc7YqA
 Wl/Q==
X-Gm-Message-State: APjAAAWlXNquHUC2Oh4Sv3e2w+KNEjuo50yXly387zj+grn07tiRE2ur
 +UX7sgP9I3PcccuCMWv2D2LNuQ==
X-Google-Smtp-Source: APXvYqxxm7UUUHmTN1WVVjjYddXPsjbsEeWpAKSwqu+sK0m85FdbEzeZYJoyE3a5PgZSyXdMxqyKrg==
X-Received: by 2002:adf:e311:: with SMTP id b17mr9530689wrj.11.1557771045698; 
 Mon, 13 May 2019 11:10:45 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id s2sm205534wmc.7.2019.05.13.11.10.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 11:10:44 -0700 (PDT)
Message-ID: <5cd9b324.1c69fb81.b5d3f.1434@mx.google.com>
Date: Mon, 13 May 2019 11:10:44 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Tree: next
X-Kernelci-Lab-Name: lab-collabora
X-Kernelci-Branch: master
X-Kernelci-Kernel: next-20190513
Subject: next/master boot bisection: next-20190513 on rk3288-veyron-jaq
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, broonie@kernel.org, matthew.hart@linaro.org,
 khilman@baylibre.com, enric.balletbo@collabora.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_111048_144343_507A0C15 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
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

next/master boot bisection: next-20190513 on rk3288-veyron-jaq

Summary:
  Start:      04c4b6775d34 Add linux-next specific files for 20190513
  Details:    https://kernelci.org/boot/id/5cd91b7859b514af767a3628
  Plain log:  https://storage.kernelci.org//next/master/next-20190513/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
  HTML log:   https://storage.kernelci.org//next/master/next-20190513/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
  Result:     691d4947face thermal: rockchip: fix up the tsadc pinctrl setting error

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       next
  URL:        git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
  Branch:     master
  Target:     rk3288-veyron-jaq
  CPU arch:   arm
  Lab:        lab-collabora
  Compiler:   gcc-8
  Config:     multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit 691d4947faceb8bd841900049e07c81c95ca4b0d
Author: Elaine Zhang <zhangqing@rock-chips.com>
Date:   Tue Apr 30 18:09:44 2019 +0800

    thermal: rockchip: fix up the tsadc pinctrl setting error
    
    Explicitly use the pinctrl to set/unset the right mode
    instead of relying on the pinctrl init mode.
    And it requires setting the tshut polarity before select pinctrl.
    
    When the temperature sensor mode is set to 0, it will automatically
    reset the board via the Clock-Reset-Unit (CRU) if the over temperature
    threshold is reached. However, when the pinctrl initializes, it does a
    transition to "otp_out" which may lead the SoC restart all the time.
    
    "otp_out" IO may be connected to the RESET circuit on the hardware.
    If the IO is in the wrong state, it will trigger RESET.
    (similar to the effect of pressing the RESET button)
    which will cause the soc to restart all the time.
    
    Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
    Reviewed-by: Daniel Lezcano <daniel.lezcano@linaro.org>
    Signed-off-by: Eduardo Valentin <edubezval@gmail.com>

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 9c7643d62ed7..6dc7fc516abf 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -172,6 +172,9 @@ struct rockchip_thermal_data {
 	int tshut_temp;
 	enum tshut_mode tshut_mode;
 	enum tshut_polarity tshut_polarity;
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *gpio_state;
+	struct pinctrl_state *otp_state;
 };
 
 /**
@@ -1242,6 +1245,8 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 		return error;
 	}
 
+	thermal->chip->control(thermal->regs, false);
+
 	error = clk_prepare_enable(thermal->clk);
 	if (error) {
 		dev_err(&pdev->dev, "failed to enable converter clock: %d\n",
@@ -1267,6 +1272,30 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	thermal->chip->initialize(thermal->grf, thermal->regs,
 				  thermal->tshut_polarity);
 
+	if (thermal->tshut_mode == TSHUT_MODE_GPIO) {
+		thermal->pinctrl = devm_pinctrl_get(&pdev->dev);
+		if (IS_ERR(thermal->pinctrl)) {
+			dev_err(&pdev->dev, "failed to find thermal pinctrl\n");
+			return PTR_ERR(thermal->pinctrl);
+		}
+
+		thermal->gpio_state = pinctrl_lookup_state(thermal->pinctrl,
+							   "gpio");
+		if (IS_ERR_OR_NULL(thermal->gpio_state)) {
+			dev_err(&pdev->dev, "failed to find thermal gpio state\n");
+			return -EINVAL;
+		}
+
+		thermal->otp_state = pinctrl_lookup_state(thermal->pinctrl,
+							  "otpout");
+		if (IS_ERR_OR_NULL(thermal->otp_state)) {
+			dev_err(&pdev->dev, "failed to find thermal otpout state\n");
+			return -EINVAL;
+		}
+
+		pinctrl_select_state(thermal->pinctrl, thermal->otp_state);
+	}
+
 	for (i = 0; i < thermal->chip->chn_num; i++) {
 		error = rockchip_thermal_register_sensor(pdev, thermal,
 						&thermal->sensors[i],
@@ -1337,8 +1366,8 @@ static int __maybe_unused rockchip_thermal_suspend(struct device *dev)
 
 	clk_disable(thermal->pclk);
 	clk_disable(thermal->clk);
-
-	pinctrl_pm_select_sleep_state(dev);
+	if (thermal->tshut_mode == TSHUT_MODE_GPIO)
+		pinctrl_select_state(thermal->pinctrl, thermal->gpio_state);
 
 	return 0;
 }
@@ -1383,7 +1412,8 @@ static int __maybe_unused rockchip_thermal_resume(struct device *dev)
 	for (i = 0; i < thermal->chip->chn_num; i++)
 		rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
 
-	pinctrl_pm_select_default_state(dev);
+	if (thermal->tshut_mode == TSHUT_MODE_GPIO)
+		pinctrl_select_state(thermal->pinctrl, thermal->otp_state);
 
 	return 0;
 }
-------------------------------------------------------------------------------


Git bisection log:

-------------------------------------------------------------------------------
git bisect start
# good: [d7a02fa0a8f9ec1b81d57628ca9834563208ef33] Merge tag 'upstream-5.2-rc1' of ssh://gitolite.kernel.org/pub/scm/linux/kernel/git/rw/ubifs
git bisect good d7a02fa0a8f9ec1b81d57628ca9834563208ef33
# bad: [04c4b6775d34f12f196e056debed9e8718585342] Add linux-next specific files for 20190513
git bisect bad 04c4b6775d34f12f196e056debed9e8718585342
# good: [c5d6b0b49382b9a81ac76e680af9d0d8943640e7] Merge remote-tracking branch 'pci/next'
git bisect good c5d6b0b49382b9a81ac76e680af9d0d8943640e7
# bad: [a8f3999da21582f933c597a5489e415b51195322] Merge remote-tracking branch 'watchdog/master'
git bisect bad a8f3999da21582f933c597a5489e415b51195322
# bad: [8018a14af78918f9cc3ec419b87c8e3fa3f3a9ca] Merge remote-tracking branch 'input/next'
git bisect bad 8018a14af78918f9cc3ec419b87c8e3fa3f3a9ca
# good: [f1bc5d2316d1b88675dcf799d88cb973f6508bee] Merge remote-tracking branch 'cpupower/cpupower'
git bisect good f1bc5d2316d1b88675dcf799d88cb973f6508bee
# bad: [a7257dd808e08b65ac8c3bee267c8a9d2e26e2b9] Merge remote-tracking branch 'drm/drm-next'
git bisect bad a7257dd808e08b65ac8c3bee267c8a9d2e26e2b9
# bad: [be827ffd38ea1de8f61b1fce0b25801321a20b2e] thermal: rcar_gen3_thermal: Fix to show correct trip points number
git bisect bad be827ffd38ea1de8f61b1fce0b25801321a20b2e
# good: [901c7225ca1170e5bcaca48cbbc580b18f754c0c] drivers: thermal: tsens: Introduce IP-specific max_sensor count
git bisect good 901c7225ca1170e5bcaca48cbbc580b18f754c0c
# good: [4e211e068ae955811ecfd1584275c704251637fe] thermal: Introduce devm_thermal_of_cooling_device_register
git bisect good 4e211e068ae955811ecfd1584275c704251637fe
# good: [01dfda3fcc01c8f9989915742fc43ff137c58970] thermal: Fix build error of missing devm_ioremap_resource on UM
git bisect good 01dfda3fcc01c8f9989915742fc43ff137c58970
# bad: [fb27a6c55da7475509589a5fc4799c058679c5a7] dt-bindings: rockchip-thermal: Support the PX30 SoC compatible
git bisect bad fb27a6c55da7475509589a5fc4799c058679c5a7
# bad: [691d4947faceb8bd841900049e07c81c95ca4b0d] thermal: rockchip: fix up the tsadc pinctrl setting error
git bisect bad 691d4947faceb8bd841900049e07c81c95ca4b0d
# good: [f88f39be23c6cd65674e6d39ae268c7341960d96] thermal: broadcom: Remove ACPI support
git bisect good f88f39be23c6cd65674e6d39ae268c7341960d96
# first bad commit: [691d4947faceb8bd841900049e07c81c95ca4b0d] thermal: rockchip: fix up the tsadc pinctrl setting error
-------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
