Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D656B27455
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 04:23:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sApEuNAcb6FHyUGAzYfykhttI8Loo5O3+N5zo2MAa6s=; b=Xn5X+O6OciPvMd
	2JP2M+UuOg+DSmIepbJ5Kw70uL10g1X+HA7IWteFc/IuBHmdvJmg8ANml2wAyaINBmNyKYMkq68KE
	AKko/XspbWMi0uu/i7qxD5X5n3uKsK20b6Kf+sIiVIEnfO3zUaiHMBE3KBrsADXNspQbe6BZFdEyd
	DpRucvGe4K4t+uC4rStztf22ZDW8IipHkDRfe8AeYEQ5O6Ivmhv6FZh/++p/I+Zo/lgmFDng6nVn1
	z5QJfXEFLV6hjej0iKLYks0p6ueS87E3vTlpw44mVsv6JCs6Tr41rrCZATXQwEPrr4lsnoRkoe5kw
	fGPPFzSCe3e64JXtHdgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTdO5-0000lw-2o; Thu, 23 May 2019 02:23:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTdNw-0000ki-81
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 02:23:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so4372020wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 19:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=Hnjt/K9t57LlxXJzyl6rEPuBPixyxFUWutrkuh4rjao=;
 b=NrSed+fzL4RpCD8iPSFxux0YoMWBD5xiClJpTElPXsPOMJV0wLIzY1OKWA0+QVKYgN
 EQnwBtfcLzE6ggFS2KRh+QWtZYrfDOx7I/edfC1rfz2my86qCXV8rZU+OGKMrKa0+J24
 FijrlJNzoz6dIYKb9O5YgWusWhx/3xcGx3MA4Nr/Ct8zwi3vOI6q6vJRSTBvdKg3/c8W
 0xCbyC9YsJUiayUGYaxt/iK6hQPda3xZA8n5bb/Ja+sxPqQ6+iPG58Ypcy3sIXN6KV6S
 +0pHMt6321DPa/1c4ilxlhUCE+9SZFV0kuThs9ex1/Gv2M1uhrKJL0EqKaWZsRG4YxEc
 b6RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=Hnjt/K9t57LlxXJzyl6rEPuBPixyxFUWutrkuh4rjao=;
 b=QL8fZc42+CSKDgoD5UYp2qv9O74LJLQx0jWlKm8/b7r8d96U7xQqDEcoZv4g5OCrli
 XPDHyEVa4kogvr+ORXGfYMgIcCipbTlmWeel4twGO+77ZQbemkdB5zyZJF1JmsNzvUD9
 bc7718zw0VRwI8AiLxFfrKPeKDLqDtHBuVU4tiRKCeGctTzMPvTcGkDygygKYlvbEs2W
 lI1czx4gJA8pkHb8IlrBxxSZm5Svfqv9IDlpD4LyXszC/Sf3QflLnxOwZyavTbuoCadO
 R151ngKWcelbwRXXMX8WWqMTuj2ZXSLN6y3gCtCM5dgyJcNVhx+zasqa5tMM5y4lAFEX
 nfEg==
X-Gm-Message-State: APjAAAURzw12K8JLKf6gmCtNN7Udtf9+tzVBAbsKL+gG3o9GFHAbqlD8
 agRXTz6at4OdQZMsmM+/uC+V8A==
X-Google-Smtp-Source: APXvYqz/QxREnLfKEm8J2aD73wASeFN0MHotPjc9HnDx/Tdd4uk9S2oBIQ4E+6qRfQN3d6BY6eD6Ng==
X-Received: by 2002:a5d:6a8c:: with SMTP id s12mr24929353wru.326.1558578190207; 
 Wed, 22 May 2019 19:23:10 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id l16sm42303704wrb.40.2019.05.22.19.23.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 19:23:09 -0700 (PDT)
Message-ID: <5ce6040d.1c69fb81.60b3b.29fb@mx.google.com>
Date: Wed, 22 May 2019 19:23:09 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Tree: mainline
X-Kernelci-Lab-Name: lab-collabora
X-Kernelci-Branch: master
X-Kernelci-Kernel: v5.2-rc1-165-g54dee406374c
Subject: mainline/master boot bisection: v5.2-rc1-165-g54dee406374c on
 rk3288-veyron-jaq
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, broonie@kernel.org, matthew.hart@linaro.org,
 khilman@baylibre.com, enric.balletbo@collabora.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_192312_352952_DDA96D31 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

mainline/master boot bisection: v5.2-rc1-165-g54dee406374c on rk3288-veyron-jaq

Summary:
  Start:      54dee406374c Merge tag 'arm64-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux
  Details:    https://kernelci.org/boot/id/5ce5984c59b514e6a47a364c
  Plain log:  https://storage.kernelci.org//mainline/master/v5.2-rc1-165-g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
  HTML log:   https://storage.kernelci.org//mainline/master/v5.2-rc1-165-g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
  Result:     28694e009e51 thermal: rockchip: fix up the tsadc pinctrl setting error

Checks:
  revert:     PASS
  verify:     PASS

Parameters:
  Tree:       mainline
  URL:        git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
  Branch:     master
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
# good: [83f3ef3de625a5766de2382f9e077d4daafd5bac] Merge tag 'libnvdimm-fixes-5.2-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/nvdimm/nvdimm
git bisect good 83f3ef3de625a5766de2382f9e077d4daafd5bac
# bad: [54dee406374ce8adb352c48e175176247cb8db7c] Merge tag 'arm64-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux
git bisect bad 54dee406374ce8adb352c48e175176247cb8db7c
# bad: [dc413a90edbe715bebebe859dc072ef73d490d70] Merge tag 'armsoc-drivers' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
git bisect bad dc413a90edbe715bebebe859dc072ef73d490d70
# good: [b45da609a02460c6a34c395f03f891f1fb2a021a] Merge tag 'imx-bindings-5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux into arm/dt
git bisect good b45da609a02460c6a34c395f03f891f1fb2a021a
# good: [6cbc4d88ad208d6f5b9567bac2fff038e1bbfa77] Merge tag 'bitmain-soc-5.2' of git://git.kernel.org/pub/scm/linux/kernel/git/mani/linux-bitmain into arm/dt
git bisect good 6cbc4d88ad208d6f5b9567bac2fff038e1bbfa77
# bad: [a455eda33faafcaac1effb31d682765b14ef868c] Merge branch 'linus' of git://git.kernel.org/pub/scm/linux/kernel/git/evalenti/linux-soc-thermal
git bisect bad a455eda33faafcaac1effb31d682765b14ef868c
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
