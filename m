Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3582A2A2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 05:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5ExthuU6uWo09we+sL2yGaGVWTWFZpsd8hHOdc5qSF4=; b=o2DJ6oelezQWfN
	J9wWU9HY/tesiBM0E4ySEvV9XLubT0ODi5UT/adgZCSy+z7ODlmknvf4i1EFEtEWUtkzlLkNvQ/8P
	RKyxg3mlRJGI8/pvSsN/yFhLZp2X2z0bLjKsnzLkVzi5ei/1qW6/Fz2pI9IAcqTzbkjCgDBO+nHDz
	HH7Ni88napalvEw/BU4ARWeXsdmys0PtAfXwo5/8+KQM6RA84F0cABY/FJB+lQ9x49SewI3cSQPmj
	de7dOdc35g9AAZR8zt6njnj7puGAMsH4TuU3T06alE9VpWNoxBtjuDb2bUOR/i12/eSTNx9Knt/k6
	2aZ1xbqb1lI+9HsmTIEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUNXa-0002yw-Bv; Sat, 25 May 2019 03:40:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUNXN-0002Dc-9E
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 03:40:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id 15so10884793wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 20:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=Kzug+k4tEmO5qCMnG7izi+kuNCEKn4AMrAYdTZq5wbA=;
 b=M3tCswIi19Ky2WxBxNv3ls+b4wA+FQHPK1dariiCzrXwU0bXWNvO8qztzuzqVU/b4s
 3nmVsF3ASuIKqFRrbZMA3S7MkL99p3A22eUcccHK78s2ex8pnTJiLMcnDw6sav4UHC02
 iLsc/PaamRKtMuPwf8y9TYfEujxd7LaaE2IOxG6+oarIp4MUxJ0J0ZzlaiY5BzUnp0nz
 1wyM7mm8mMVEQ/WGPWvGLmvyoPrAfYqQ3gPDFoYCMiBEt/C7pmTejIWS9EP23e6SQwoz
 ixxas0zvojlf+YHB9hUXM6Ij9Y6R3jwaJVq0j9cd0HNyzHCfFKRmXIz7ufqwJQC87BV5
 TNMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=Kzug+k4tEmO5qCMnG7izi+kuNCEKn4AMrAYdTZq5wbA=;
 b=tJVhjuBkLN0d3mUKMcFLtjJ/h59llukwDJB+g74bmDDp17h+Wvqg5F6zMXQcjIOYgB
 CA7LlBl2QTCWtTF0po1Sjak9AbZXWsN0zxK/S99P2gvuDEwFIgzx1BeKvu5tRLpw2rd8
 W6MdfXDzvcXcayqcPJKVLg3FQ25QZIKEuzyiSBRpvPYe0VeUlTjHDeWLZwO94DoZ8zPI
 E8XiaNysOIt929LKSlB1jGAVghpJVDxbCto5dlEYpE3nLjbcP1IAAmUyJu9rmyLfSOsK
 bYwWJDzHbvbUJTN207UhLOT3mU8l/+tOhxWSewtx67DywH/IhLMJgaJURoz9cO+Z8ps9
 stKw==
X-Gm-Message-State: APjAAAVvByB1Dh0MBoJjOpbJHBtCan6l9QOwj993FP5/tKeXGXjsf13A
 0bR/u3SaY8slTxXON0E4b2st8A==
X-Google-Smtp-Source: APXvYqwFgY3oJJxa6vDIZjkAtvXePhiYXPmuXUt4XJEpFLjFTfPHU7t7sG1+fM0eQ6hxZWFpCBmu7w==
X-Received: by 2002:a7b:c444:: with SMTP id l4mr2026446wmi.15.1558755597826;
 Fri, 24 May 2019 20:39:57 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id f65sm5640544wmg.45.2019.05.24.20.39.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 20:39:57 -0700 (PDT)
Message-ID: <5ce8b90d.1c69fb81.a6b86.0471@mx.google.com>
Date: Fri, 24 May 2019 20:39:57 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Tree: linusw
X-Kernelci-Lab-Name: lab-collabora
X-Kernelci-Branch: fixes
X-Kernelci-Kernel: v5.2-rc1-1-ge9646f0f5bb6
Subject: linusw/fixes boot bisection: v5.2-rc1-1-ge9646f0f5bb6 on
 rk3288-veyron-jaq
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, broonie@kernel.org, matthew.hart@linaro.org,
 khilman@baylibre.com, enric.balletbo@collabora.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_204001_516233_FE7F1629 
X-CRM114-Status: GOOD (  13.13  )
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

linusw/fixes boot bisection: v5.2-rc1-1-ge9646f0f5bb6 on rk3288-veyron-jaq

Summary:
  Start:      e9646f0f5bb6 gpio: fix gpio-adp5588 build errors
  Details:    https://kernelci.org/boot/id/5ce82d9f59b514bb857a3642
  Plain log:  https://storage.kernelci.org//linusw/fixes/v5.2-rc1-1-ge9646f0f5bb6/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
  HTML log:   https://storage.kernelci.org//linusw/fixes/v5.2-rc1-1-ge9646f0f5bb6/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
  Result:     28694e009e51 thermal: rockchip: fix up the tsadc pinctrl setting error

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       linusw
  URL:        https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git/
  Branch:     fixes
  Target:     rk3288-veyron-jaq
  CPU arch:   arm
  Lab:        lab-collabora
  Compiler:   gcc-8
  Config:     multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y
  Test suite: boot

Breaking commit found:

-------------------------------------------------------------------------------
commit 28694e009e512451ead5519dd801f9869acb1f60
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
# good: [37624b58542fb9f2d9a70e6ea006ef8a5f66c30b] Linux 5.1-rc7
git bisect good 37624b58542fb9f2d9a70e6ea006ef8a5f66c30b
# bad: [e9646f0f5bb62b7d43f0968f39d536cfe7123b53] gpio: fix gpio-adp5588 build errors
git bisect bad e9646f0f5bb62b7d43f0968f39d536cfe7123b53
# good: [e7a1414f9dc3498c4c35b9ca266d539e8bccab53] Merge tag 'media/v5.1-2' of git://git.kernel.org/pub/scm/linux/kernel/git/mchehab/linux-media
git bisect good e7a1414f9dc3498c4c35b9ca266d539e8bccab53
# good: [b970afcfcabd63cd3832e95db096439c177c3592] Merge tag 'powerpc-5.2-1' of ssh://gitolite.kernel.org/pub/scm/linux/kernel/git/powerpc/linux
git bisect good b970afcfcabd63cd3832e95db096439c177c3592
# bad: [a455eda33faafcaac1effb31d682765b14ef868c] Merge branch 'linus' of git://git.kernel.org/pub/scm/linux/kernel/git/evalenti/linux-soc-thermal
git bisect bad a455eda33faafcaac1effb31d682765b14ef868c
# good: [7e9890a3500d95c01511a4c45b7e7192dfa47ae2] Merge tag 'ovl-update-5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/mszeredi/vfs
git bisect good 7e9890a3500d95c01511a4c45b7e7192dfa47ae2
# good: [cdc90a1871d6e64080f4506e900c6ef88e6fb39f] lib/bitmap.c: guard exotic bitmap functions by CONFIG_NUMA
git bisect good cdc90a1871d6e64080f4506e900c6ef88e6fb39f
# good: [d2d8b146043ae7e250aef1fb312971f6f479d487] Merge tag 'trace-v5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace
git bisect good d2d8b146043ae7e250aef1fb312971f6f479d487
# good: [83f3ef3de625a5766de2382f9e077d4daafd5bac] Merge tag 'libnvdimm-fixes-5.2-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/nvdimm/nvdimm
git bisect good 83f3ef3de625a5766de2382f9e077d4daafd5bac
# bad: [ffd1b122d3a17783b68cfd03b0479dffedf0d960] thermal: rockchip: Support the PX30 SoC in thermal driver
git bisect bad ffd1b122d3a17783b68cfd03b0479dffedf0d960
# good: [3e6a8fb3308419129c7a52de6eb42feef5a919a0] drivers: thermal: tsens: Add new operation to check if a sensor is enabled
git bisect good 3e6a8fb3308419129c7a52de6eb42feef5a919a0
# good: [d36e2fa025387567710df740fd4dce1d5001b226] thermal: generic-adc: make lookup table optional
git bisect good d36e2fa025387567710df740fd4dce1d5001b226
# good: [42cd9b049829d7facbd45ab503d763a86251e81b] thermal/drivers/cpu_cooling: Fixup the header and copyright
git bisect good 42cd9b049829d7facbd45ab503d763a86251e81b
# good: [6ec8070b9d48294fbe865535c167a79527eaf357] thermal: Fix build error of missing devm_ioremap_resource on UM
git bisect good 6ec8070b9d48294fbe865535c167a79527eaf357
# bad: [28694e009e512451ead5519dd801f9869acb1f60] thermal: rockchip: fix up the tsadc pinctrl setting error
git bisect bad 28694e009e512451ead5519dd801f9869acb1f60
# good: [fcc6d4cadadcc977911c6bfcdd95d379f4082c74] thermal: broadcom: Remove ACPI support
git bisect good fcc6d4cadadcc977911c6bfcdd95d379f4082c74
# first bad commit: [28694e009e512451ead5519dd801f9869acb1f60] thermal: rockchip: fix up the tsadc pinctrl setting error
-------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
