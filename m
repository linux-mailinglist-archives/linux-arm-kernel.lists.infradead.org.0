Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DAD35B92
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a2kgY3h/q4AsxdVNk0dAOV33a6HtBNt+DPjlGEoPCoE=; b=o9PVuhVz3ULh0waMty0zelaLMC
	rzgcfnBoFz06sbpu9NAufAQZvJEPSN4Y+FnylqCO8o0zPX2oi3FW0mpgdNfXVVXxbBEiE6WLpSzVK
	HIykK04SQJUSwWrB+Gb7LpC3se7Xe1ZXZy1QJVfVdT6Dp6TTOQeTq7jmsntJwGkJ2IZ4jhOMs6aax
	VS7f7Odmh5/VJJGuTmildX87D9LxcRQ4m3dvRKdChH70o968p03nva537Vc9CiNe3oiSwfO8S1+jY
	toVZJ5iUwhIGhQ1oJvzUzknSbKt2As+72025vjVS0JXLHZ465OY8v5AMMCMZI51UFA5VYYaO/zXeU
	aqGWVz/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUKr-0004L1-1Y; Wed, 05 Jun 2019 11:44:05 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUK0-0003Od-Hn
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 11:43:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id m3so3299523wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 04:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nmWKh7PwMWUSmXx8hL09I0aV6DcSJSwvr9bLIGJ3tMI=;
 b=SgtCbgZWn+iyD+TREQ41swHeI1GDlVUfH980YLfnSjYgcyagCPeaJWpcd2Jv8qZS6E
 A852cUGqauHT/kNRq3k2YvtwgJJ/+3BX0NswYhwvizWDIirfnmC9wVs+93wOOLztsJr9
 qnTLQ0zw6htFYjGQbrdOu48/hO3kfXrALbf8DLL/r5qxUoSIjfNn225cWEvOmLd1b1I5
 6wISaGry68nhRWJ/eTmSICdaDW2BR3uwbHUJjH0I/MLwNU0Nx6Tf93ihLjZN21zKwBfn
 NejYAOAY8pW5bKYMdxXwrcHlTTpzNAYcxmyAOtzTjoFK2ylDvzYHFK35UTTbsdXFsAp2
 7BSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nmWKh7PwMWUSmXx8hL09I0aV6DcSJSwvr9bLIGJ3tMI=;
 b=UsOK2yd/wF8/bIXuaPiGWd1dpOsCuArqE1YYMtZJjV2xPG44ibV1bcqzQObg7tVc8P
 XzRrIBFGKWzEtTbamS3URM1QGzVFWLjDbWhbI09P98BE6W4YJPfCakYPxKOsaV1nEq25
 n6ez+hNFYrSi/LqRLzurtZQVi5ZtJVpTPfIbNNH92fmlnGQwOxEaLAVF6jNbzE2bm8CY
 9Jw3iPVLeCHTHsWe2LNgbjVRhDRh900fepYaT6AqwhTirYzrHGsnQRLE19QWFBhNrvzd
 PNRYsQZMyJCpGPuXeeYnv1AJahcIbkRgEXrZVPou9P+M/ebJWC/JC0xcdhZlMUh/ngwY
 DuXw==
X-Gm-Message-State: APjAAAXl1+Kr42A7Cj6IMxdfiT0ArLJeBZU9eNFH029oHAPHM4ELdEfR
 0Bswvhh8nssRcF6SFbNSNsGy5Q==
X-Google-Smtp-Source: APXvYqyPMmLvKJCSCbvOHxYOc49TsFqScPeN8qfrlKdaILVUtgPT5NujbI2M6w+g8sdOD6nidZ4ILw==
X-Received: by 2002:a5d:5552:: with SMTP id g18mr7592538wrw.254.1559734990576; 
 Wed, 05 Jun 2019 04:43:10 -0700 (PDT)
Received: from localhost.localdomain ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id 34sm27718740wre.32.2019.06.05.04.43.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 04:43:10 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: alokc@codeaurora.org, andy.gross@linaro.org, david.brown@linaro.org,
 wsa+renesas@sang-engineering.com, bjorn.andersson@linaro.org,
 linus.walleij@linaro.org, balbi@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 4/8] pinctrl: qcom: sdm845: Provide ACPI support
Date: Wed,  5 Jun 2019 12:42:58 +0100
Message-Id: <20190605114302.22509-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605114302.22509-1-lee.jones@linaro.org>
References: <20190605114302.22509-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_044312_586777_1CF391D0 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-i2c@vger.kernel.org, jlhugo@gmail.com, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch provides basic support for booting with ACPI instead
of the currently supported Device Tree.  When doing so there are a
couple of differences which we need to taken into consideration.

Firstly, the SDM850 ACPI tables omit information pertaining to the
4 reserved GPIOs on the platform.  If Linux attempts to touch/
initialise any of these lines, the firmware will restart the
platform.

Secondly, when booting with ACPI, it is expected that the firmware
will set-up things like; Regulators, Clocks, Pin Functions, etc in
their ideal configuration.  Thus, the possible Pin Functions
available to this platform are not advertised when providing the
higher GPIOD/Pinctrl APIs with pin information.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/pinctrl/qcom/Kconfig          |  2 +-
 drivers/pinctrl/qcom/pinctrl-sdm845.c | 35 ++++++++++++++++++++++++++-
 2 files changed, 35 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/qcom/Kconfig b/drivers/pinctrl/qcom/Kconfig
index 2e66ab72c10b..aafbe932424f 100644
--- a/drivers/pinctrl/qcom/Kconfig
+++ b/drivers/pinctrl/qcom/Kconfig
@@ -168,7 +168,7 @@ config PINCTRL_SDM660
 
 config PINCTRL_SDM845
        tristate "Qualcomm Technologies Inc SDM845 pin controller driver"
-       depends on GPIOLIB && OF
+       depends on GPIOLIB && (OF || ACPI)
        select PINCTRL_MSM
        help
          This is the pinctrl, pinmux, pinconf and gpiolib driver for the
diff --git a/drivers/pinctrl/qcom/pinctrl-sdm845.c b/drivers/pinctrl/qcom/pinctrl-sdm845.c
index c97f20fca5fd..7188bee3cf3e 100644
--- a/drivers/pinctrl/qcom/pinctrl-sdm845.c
+++ b/drivers/pinctrl/qcom/pinctrl-sdm845.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2016-2018, The Linux Foundation. All rights reserved.
  */
 
+#include <linux/acpi.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
@@ -1277,6 +1278,10 @@ static const struct msm_pingroup sdm845_groups[] = {
 	UFS_RESET(ufs_reset, 0x99f000),
 };
 
+static const int sdm845_acpi_reserved_gpios[] = {
+	0, 1, 2, 3, 81, 82, 83, 84, -1
+};
+
 static const struct msm_pinctrl_soc_data sdm845_pinctrl = {
 	.pins = sdm845_pins,
 	.npins = ARRAY_SIZE(sdm845_pins),
@@ -1284,14 +1289,41 @@ static const struct msm_pinctrl_soc_data sdm845_pinctrl = {
 	.nfunctions = ARRAY_SIZE(sdm845_functions),
 	.groups = sdm845_groups,
 	.ngroups = ARRAY_SIZE(sdm845_groups),
+	.reserved_gpios = sdm845_acpi_reserved_gpios,
+	.ngpios = 150,
+};
+
+static const struct msm_pinctrl_soc_data sdm845_acpi_pinctrl = {
+	.pins = sdm845_pins,
+	.npins = ARRAY_SIZE(sdm845_pins),
+	.groups = sdm845_groups,
+	.ngroups = ARRAY_SIZE(sdm845_groups),
+	.reserved_gpios = sdm845_acpi_reserved_gpios,
 	.ngpios = 150,
 };
 
 static int sdm845_pinctrl_probe(struct platform_device *pdev)
 {
-	return msm_pinctrl_probe(pdev, &sdm845_pinctrl);
+	int ret;
+
+	if (pdev->dev.of_node) {
+		ret = msm_pinctrl_probe(pdev, &sdm845_pinctrl);
+	} else if (ACPI_HANDLE(&pdev->dev)) {
+		ret = msm_pinctrl_probe(pdev, &sdm845_acpi_pinctrl);
+	} else {
+		dev_err(&pdev->dev, "DT and ACPI disabled\n");
+		return -EINVAL;
+	}
+
+	return ret;
 }
 
+static const struct acpi_device_id sdm845_pinctrl_acpi_match[] = {
+	{ "QCOM0217"},
+	{ },
+};
+MODULE_DEVICE_TABLE(acpi, sdm845_pinctrl_acpi_match);
+
 static const struct of_device_id sdm845_pinctrl_of_match[] = {
 	{ .compatible = "qcom,sdm845-pinctrl", },
 	{ },
@@ -1302,6 +1334,7 @@ static struct platform_driver sdm845_pinctrl_driver = {
 		.name = "sdm845-pinctrl",
 		.pm = &msm_pinctrl_dev_pm_ops,
 		.of_match_table = sdm845_pinctrl_of_match,
+		.acpi_match_table = ACPI_PTR(sdm845_pinctrl_acpi_match),
 	},
 	.probe = sdm845_pinctrl_probe,
 	.remove = msm_pinctrl_remove,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
