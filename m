Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29B1554B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlGtTWQ4oBRe3xIfna1E5Es3wpSMu3bOTE/FzBVwb8k=; b=DDBDxFvkoat3vH
	76FzushNaRbLciVxYNGEamBkWYNUCYH49+Rlg3OeinBKPhG+bOAsWcmbkU7VSC626LQ97FaUzc8WV
	VOcC5hT2cvL6YUrKQ1NVbGaX2yV/aR10aUXmw6j2QjWp1mk3qoHeckjUX4Q84b/BiqF/DWzfan+I/
	y0eXq5WCP2l5VSkyPIdj9K1PvVcpfR86cK6Y/DuUHU2Vm/5Y8L94ZIeBfNbtH6xgXiS/J/N+aKPcL
	IzPxUUcoyaQlUy1nX0ZTGnabAboHpKd/gij5TX40FNvdAwZ7QFGQN9dmbSua037NSOczpnzBMFE6X
	u4qjMpuXXybNCnQMzEZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoTl-0004pk-MG; Tue, 25 Jun 2019 16:39:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoPN-0001vd-0G
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:35:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id n4so18582119wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n5d3BfSnmnwO/hS4dFGhcrIk5LVowo1/qQQdF1Vy3jk=;
 b=mi3aYH337XfZeD6KCGPODvIEDc6lpAsrLiBKenynyTgeBAflzEuAFOSSRaIv7QCcw0
 cU5hYTlgn0flazzm/uE9V2gsr0kjBHT5y/98Qo74IaK5b50eEFHQWnCUmKzphCf694cO
 LDW7BmNVzoFJZ5NIlzjd+HVONir3l9AyrAj5png44VBdtFHeh3uryIXOkGa1wJPvA5LN
 WvCLOTnyGe8CkM/Fz5OUnv1HjtcHnzID+6CRcBFR3JznXuOHp5DQfeF10qw9RKY3r25S
 CYTFos7dPmJNHROYanCTBvFs7gU6PLh/xVeNfeRVmRWdHzC44plIWFbBhF8yvimaw5KZ
 jexw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n5d3BfSnmnwO/hS4dFGhcrIk5LVowo1/qQQdF1Vy3jk=;
 b=Nnq0s6DfOmrKsCRMF5VX2k74TYxeIJn7lk/MMjsoVu0EkO/IiBDijTk7RBZLkn2YTs
 tSW/MMspZSNVf6dkXvMwhecAmQ9sSltEArqYMZxQ8X8NpDRbm+a6oPCuI2vFmM/9vloV
 zZxY/ylzqbOWCeRnJTMVkI3YP2WCrz3YgqfduaZK2C6sB11ivE9Rh+lY73vdJn7z+eou
 gCrSpqiZ2/WlT/ExkZmRI8FL2APBDf9LE+6Wp+t0Fpu3FosP2b9YGWYvdMoBZInLNwsR
 4Ct0L/k3rjHrQKIf3AJcJvzNPO8Ac8QNMNrIlEmWTidL9+fYo8Lotjsef/YpgJAZ75cM
 cijQ==
X-Gm-Message-State: APjAAAW2kxj+r/mAIDztfVD4EcRZKDLnJdcGQr/bBmnF07hIAc10t93O
 XvVn9+MIV+HgrzLTeyFscSI6qS9y5WU=
X-Google-Smtp-Source: APXvYqxYtpw4EEVsdGnQVBBLUuXARVZGsIrOsocPZwN44dsA/Y8ZCTQWBqOBfRU7qmBFqnACXLnZHw==
X-Received: by 2002:a5d:5189:: with SMTP id k9mr71415wrv.45.1561480499309;
 Tue, 25 Jun 2019 09:34:59 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id g8sm2683795wme.20.2019.06.25.09.34.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:34:58 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 06/12] ARM: davinci: da850-evm: model the backlight GPIO as an
 actual device
Date: Tue, 25 Jun 2019 18:34:28 +0200
Message-Id: <20190625163434.13620-7-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625163434.13620-1-brgl@bgdev.pl>
References: <20190625163434.13620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093501_361226_1C6ADD0E 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Instead of enabling the panel backlight in a callback defined in board
file using deprecated legacy GPIO API calls, model the line as a GPIO
backlight device.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/mach-davinci/board-da850-evm.c | 40 +++++++++++++++++--------
 1 file changed, 28 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-davinci/board-da850-evm.c b/arch/arm/mach-davinci/board-da850-evm.c
index 31ae3be5741d..ffda623bb543 100644
--- a/arch/arm/mach-davinci/board-da850-evm.c
+++ b/arch/arm/mach-davinci/board-da850-evm.c
@@ -36,6 +36,7 @@
 #include <linux/platform_data/ti-aemif.h>
 #include <linux/platform_data/spi-davinci.h>
 #include <linux/platform_data/uio_pruss.h>
+#include <linux/property.h>
 #include <linux/regulator/machine.h>
 #include <linux/regulator/tps6507x.h>
 #include <linux/regulator/fixed.h>
@@ -803,34 +804,49 @@ static const short da850_evm_mmcsd0_pins[] __initconst = {
 
 static void da850_panel_power_ctrl(int val)
 {
-	/* lcd backlight */
-	gpio_set_value(DA850_LCD_BL_PIN, val);
-
 	/* lcd power */
 	gpio_set_value(DA850_LCD_PWR_PIN, val);
 }
 
+static struct property_entry da850_lcd_backlight_props[] = {
+	PROPERTY_ENTRY_BOOL("default-on"),
+	{ }
+};
+
+static struct gpiod_lookup_table da850_lcd_backlight_gpio_table = {
+	.dev_id		= "gpio-backlight",
+	.table = {
+		GPIO_LOOKUP("davinci_gpio", DA850_LCD_BL_PIN, NULL, 0),
+		{ }
+	},
+};
+
+static const struct platform_device_info da850_lcd_backlight_info = {
+	.name		= "gpio-backlight",
+	.id		= PLATFORM_DEVID_NONE,
+	.properties	= da850_lcd_backlight_props,
+};
+
 static int da850_lcd_hw_init(void)
 {
+	struct platform_device *backlight;
 	int status;
 
-	status = gpio_request(DA850_LCD_BL_PIN, "lcd bl");
-	if (status < 0)
-		return status;
+	gpiod_add_lookup_table(&da850_lcd_backlight_gpio_table);
+	backlight = platform_device_register_full(&da850_lcd_backlight_info);
+	if (IS_ERR(backlight))
+		return PTR_ERR(backlight);
 
 	status = gpio_request(DA850_LCD_PWR_PIN, "lcd pwr");
-	if (status < 0) {
-		gpio_free(DA850_LCD_BL_PIN);
+	if (status < 0)
 		return status;
-	}
 
-	gpio_direction_output(DA850_LCD_BL_PIN, 0);
 	gpio_direction_output(DA850_LCD_PWR_PIN, 0);
 
-	/* Switch off panel power and backlight */
+	/* Switch off panel power */
 	da850_panel_power_ctrl(0);
 
-	/* Switch on panel power and backlight */
+	/* Switch on panel power */
 	da850_panel_power_ctrl(1);
 
 	return 0;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
