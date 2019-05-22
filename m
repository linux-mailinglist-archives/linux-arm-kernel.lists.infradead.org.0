Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9687D263A4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 14:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hnnkYwQr0NNK53lWbsYebQlvJr0rVvpKr2SAiLzfqG8=; b=RW7nYunyHvcfvk
	jca2KMtW4A3qEPFexP6EeWjcqxuGi0PJ3C4DpTfW4iQEbz2zOy29gVOdEokNWzOoOuPQGh8ODDstN
	rgOHqn+Hk9dS4EJCvI1J7UMCmv8nsERK8KhVxqL/j9xd+v76mRtilXV7wOF8XtSSNrl5nfC4M0dSb
	4Eu8ZQsWxCz01S96cvk0ENTpVSuUKlsg7RF7mAxWHv4LzSGkrOkqVJmAMa7yYRLM/59mKc95wHNKm
	ecKv+OvZbxwb3t3uYyrMJAE+YwYEL2m43yL1Zd1p+pIHWHL7rIGIO8m/2l9YSu2eaUhI0M1ij169l
	YVn4/x6Fe/GSyiS2hz1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTQD8-0007C8-19; Wed, 22 May 2019 12:19:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTQCz-0007AY-JI
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 12:19:03 +0000
Received: by mail-wm1-x344.google.com with SMTP id c77so2015789wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 05:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from:cc; bh=4lhpOXU5flLHaPgCnlKi/zbwwdvQGy7aO9emZ/m2IY8=;
 b=yIdCRbURcrDlI9SLR+Bvl5oxhZwOZqYKuBTNLSXNcHCWe0u9pHDx+OhZH6o3LcY+b+
 EkKg1GZKdYpfmLOLGaeFR9Gnl2TNLApOUF8mF7DAtnAkOaZSVmBPLCJdPbmwc5U38f6p
 IaylMs4wNHPvKSRP3wKlbWLeL1hed6rRspEw7Rrjp+Uo6Oi5YgM1hN+BZCdhP2M3nY9l
 LA9qmKEdmYxmu0YsJ9dOR44DgHcpltIyweDimJilw8Dahb70Boms5wtof80Lc1R6HTiZ
 0yDNVrGQM4w21BUwbkLZCV6oQb0ir+qEaAXrRCO2vQoOCLX8aVuCNoStXE6aWiHuWNVP
 +CGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from:cc;
 bh=4lhpOXU5flLHaPgCnlKi/zbwwdvQGy7aO9emZ/m2IY8=;
 b=EVNBqF4v+TBlfgY1RHsyVJbtP8/R4Ph+K/GjBGrt0hHIDpbu7uo1g9VdhVIKpCyyzJ
 ILDgfyrK+Pc9QE4/prdsssjVSZbxBkgB1s0YlBkIGDLlS/nlt0i1uun6T/OE6U8cDHX6
 kHsccHqoo57oSblF2EUocVusP5Q+FP3YX3VCJc1mLb7g0pYdTQC6AF37chU6HWxLe09l
 WG/u2aFE7ZQa0hOQvsvA5PbFmdKy/U1AYtv2s8m5+KYnvvZt97hL8VU68/iW7gL8VzFh
 +Do0L9W12cvgNNahtZKGSQmriSHmQdccq9Ti16Sof8COJD9YX6ObfwS/n9aU4Ta5TJOF
 w00Q==
X-Gm-Message-State: APjAAAWpTgu5VrWTwTDuM9vfqI1BN2uo986XIg0PI5j3DwPo7Qu2vrhx
 Mc7VbfcxhKvic7FYzZajGPRZRg==
X-Google-Smtp-Source: APXvYqxhJBFQ6wD68xNh+ViCZQrptwFAKjQZvDM+tx4eVH7gccBPHLQDlUfDo0wxb0laDALKdQGVVQ==
X-Received: by 2002:a1c:9c42:: with SMTP id f63mr7712636wme.23.1558527537756; 
 Wed, 22 May 2019 05:18:57 -0700 (PDT)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id 88sm58288086wrc.33.2019.05.22.05.18.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 05:18:56 -0700 (PDT)
Message-ID: <5ce53e30.1c69fb81.887a7.b77c@mx.google.com>
Date: Wed, 22 May 2019 05:18:56 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Report-Type: bisect
X-Kernelci-Tree: mainline
X-Kernelci-Lab-Name: lab-collabora
X-Kernelci-Branch: master
X-Kernelci-Kernel: v5.2-rc1-129-g9c7db5004280
Subject: mainline/master boot bisection: v5.2-rc1-129-g9c7db5004280 on
 rk3288-veyron-jaq
To: tomeu.vizoso@collabora.com, guillaume.tucker@collabora.com,
 mgalka@collabora.com, broonie@kernel.org, matthew.hart@linaro.org,
 khilman@baylibre.com, enric.balletbo@collabora.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_051901_696137_BCDB85C1 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

mainline/master boot bisection: v5.2-rc1-129-g9c7db5004280 on rk3288-veyron-jaq

Summary:
  Start:      9c7db5004280 Merge tag 'selinux-pr-20190521' of git://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux
  Details:    https://kernelci.org/boot/id/5ce4966759b5141df07a362c
  Plain log:  https://storage.kernelci.org//mainline/master/v5.2-rc1-129-g9c7db5004280/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
  HTML log:   https://storage.kernelci.org//mainline/master/v5.2-rc1-129-g9c7db5004280/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
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
  Config:     multi_v7_defconfig
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
# bad: [9c7db5004280767566e91a33445bf93aa479ef02] Merge tag 'selinux-pr-20190521' of git://git.kernel.org/pub/scm/linux/kernel/git/pcmoore/selinux
git bisect bad 9c7db5004280767566e91a33445bf93aa479ef02
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
