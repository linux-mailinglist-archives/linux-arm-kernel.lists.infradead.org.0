Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8068DB874
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 22:42:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66jP+t3/joF7tVZQLjX82E9fqRN5NK+oRmj721S6vJA=; b=G7kke8byqYwuC4
	KNZDLNL9Cbsf82Bb8pO5vo1CroYG8Jz89UlOcTeqHJSRidwf7x2+JlMdOu9STjW/6Owb6JCuWSxpH
	9vwjjpw8aBEjn9S8vZHVWkVVTe+xXMVI5Ntf3z18t5qsDgTMrEkjTtI7d8bYO29QE3HrSj4hChS9/
	0sl0RWWjVCq0Tvw21aLlZmJ0Vx9GsMuwpFHC8DMeAVk9plpOl+UpiYQiFypstRBwPpiTI13HnAOTR
	SHwRqNgy/mmv5GaCV2yCfU5nB/P3PeFlK2Yl+0tV2Jh7nKd5PLvwOkIPwYKB2UA6N2U5THT83/HJA
	vu7N18G9B9aFAcBRrVNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLCbg-000293-Km; Thu, 17 Oct 2019 20:42:48 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLCbP-00023m-Cb
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 20:42:33 +0000
Received: by mail-pl1-x642.google.com with SMTP id k7so1715495pll.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 13:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fxi+sR07mhlS6Muc3/xe4kp58yCZ85m02vfZzkl7bls=;
 b=mwk9rJS3O/sLFucmG/7gve5kqkBWWhON+TpQ2aqmeO52ZWjOMiubuBN/q2JBV1it0P
 gipHxm0TDWfYb3aim/NrtxsEfOYD0Dy52CoytANllNV1cklwfFGSPGhInjZUY7QSxHRz
 IoA78nPgkq0AotgY/PvJ6Atmm57eJcqOQO+0hADz+acB3cQisyeWWIK1dxfY0NVhhHWE
 vB3XDqBwLH9ml7qnOtYoZKHJNqcqKF5wQmWns+zuWXbtW21SbOjYew7az4K/ZZT3hZ56
 ExKJJ63uofsHHR0yldF3qC5ROCNnhzLHVi6x3Ttx5/L68SDA4QadCeClguF7bxbp7BQd
 T1xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fxi+sR07mhlS6Muc3/xe4kp58yCZ85m02vfZzkl7bls=;
 b=sR8rNFNOr3+De/bX2VFck2ypm6aA0yyMaW94ZCRgPOpGVzqRBdGwfD0JXJhhUl6wZT
 XS+bWdV3ZZmyehDlhyj9wOnFOchIpSDUbm+YxUYVZ2O4ug4maYfWJWyEsTMEVv5oYSS9
 01TQM6p/0Tyt286d61gkAJl+hFfZ0aJUfj2cXmeQcUBQum7gUL5rBfKLf+hL2DPRfvPq
 BzlETKKMLjKQ/vsGkP79Y/GeXHqsPwioeo+EVissl7pWCi6Lu8UUdqkZICq4YLAEZHSr
 griIBZFJPFXpj/7jmL/zJAK1QYONE4VGlo0nod1E1pdJ6KjmDDzeebsA8XeFrwe4Nwk3
 YVQA==
X-Gm-Message-State: APjAAAVJIeSZx+fk7PdfMA6S+uVaw6uxuVEnW7WV3+5WCLt4w4B7ZjLk
 zse/UA3dtsKoDCH0LwR3m5c=
X-Google-Smtp-Source: APXvYqzf4XSgnOksu9P2edG1NQ0lwGyYaajoSSkzKKmR70FFg228zppNN9TgOLau/ptB7g06KJEIXA==
X-Received: by 2002:a17:902:b196:: with SMTP id
 s22mr6234860plr.10.1571344950048; 
 Thu, 17 Oct 2019 13:42:30 -0700 (PDT)
Received: from dtor-ws.mtv.corp.google.com
 ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id b3sm4626365pfd.125.2019.10.17.13.42.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 13:42:29 -0700 (PDT)
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: linux-input@vger.kernel.org
Subject: [PATCH 06/22] Input: clps711x-keypad - switch to using polled mode of
 input devices
Date: Thu, 17 Oct 2019 13:42:00 -0700
Message-Id: <20191017204217.106453-7-dmitry.torokhov@gmail.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
In-Reply-To: <20191017204217.106453-1-dmitry.torokhov@gmail.com>
References: <20191017204217.106453-1-dmitry.torokhov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_134231_453944_D8CE3362 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jacky Bai <ping.bai@nxp.com>, Alexander Shiyan <shc_work@mail.ru>,
 Anson Huang <Anson.Huang@nxp.com>,
 =?UTF-8?q?Ronald=20Tschal=C3=A4r?= <ronald@innovation.ch>,
 YueHaibing <yuehaibing@huawei.com>, Marco Felsch <m.felsch@pengutronix.de>,
 Stefan Agner <stefan@agner.ch>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We have added polled mode to the normal input devices with the intent of
retiring input_polled_dev. This converts clps711x-keypad driver to use the
polling mode of standard input devices and removes dependency on
INPUT_POLLDEV.

Also use managed API when allocating input device, this allows us to remove
clps711x_keypad_remove() method.

Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---

 drivers/input/keyboard/Kconfig           |  1 -
 drivers/input/keyboard/clps711x-keypad.c | 70 ++++++++++--------------
 2 files changed, 29 insertions(+), 42 deletions(-)

diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
index c6bf99d23b1a..0e7368288dae 100644
--- a/drivers/input/keyboard/Kconfig
+++ b/drivers/input/keyboard/Kconfig
@@ -190,7 +190,6 @@ config KEYBOARD_CLPS711X
 	tristate "CLPS711X Keypad support"
 	depends on OF_GPIO && (ARCH_CLPS711X || COMPILE_TEST)
 	select INPUT_MATRIXKMAP
-	select INPUT_POLLDEV
 	help
 	  Say Y here to enable the matrix keypad on the Cirrus Logic
 	  CLPS711X CPUs.
diff --git a/drivers/input/keyboard/clps711x-keypad.c b/drivers/input/keyboard/clps711x-keypad.c
index c4a5c07a4b98..019dd6ed2c29 100644
--- a/drivers/input/keyboard/clps711x-keypad.c
+++ b/drivers/input/keyboard/clps711x-keypad.c
@@ -6,7 +6,6 @@
  */
 
 #include <linux/input.h>
-#include <linux/input-polldev.h>
 #include <linux/module.h>
 #include <linux/of_gpio.h>
 #include <linux/platform_device.h>
@@ -30,10 +29,10 @@ struct clps711x_keypad_data {
 	struct clps711x_gpio_data	*gpio_data;
 };
 
-static void clps711x_keypad_poll(struct input_polled_dev *dev)
+static void clps711x_keypad_poll(struct input_dev *input)
 {
-	const unsigned short *keycodes = dev->input->keycode;
-	struct clps711x_keypad_data *priv = dev->private;
+	const unsigned short *keycodes = input->keycode;
+	struct clps711x_keypad_data *priv = input_get_drvdata(input);
 	bool sync = false;
 	int col, row;
 
@@ -61,14 +60,14 @@ static void clps711x_keypad_poll(struct input_polled_dev *dev)
 
 				if (state) {
 					set_bit(col, data->last_state);
-					input_event(dev->input, EV_MSC,
-						    MSC_SCAN, code);
+					input_event(input,
+						    EV_MSC, MSC_SCAN, code);
 				} else {
 					clear_bit(col, data->last_state);
 				}
 
 				if (keycodes[code])
-					input_report_key(dev->input,
+					input_report_key(input,
 							 keycodes[code], state);
 				sync = true;
 			}
@@ -80,7 +79,7 @@ static void clps711x_keypad_poll(struct input_polled_dev *dev)
 	}
 
 	if (sync)
-		input_sync(dev->input);
+		input_sync(input);
 }
 
 static int clps711x_keypad_probe(struct platform_device *pdev)
@@ -88,7 +87,7 @@ static int clps711x_keypad_probe(struct platform_device *pdev)
 	struct clps711x_keypad_data *priv;
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct input_polled_dev *poll_dev;
+	struct input_dev *input;
 	u32 poll_interval;
 	int i, err;
 
@@ -125,53 +124,43 @@ static int clps711x_keypad_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
-	poll_dev = input_allocate_polled_device();
-	if (!poll_dev)
+	input = devm_input_allocate_device(dev);
+	if (!input)
 		return -ENOMEM;
 
-	poll_dev->private		= priv;
-	poll_dev->poll			= clps711x_keypad_poll;
-	poll_dev->poll_interval		= poll_interval;
-	poll_dev->input->name		= pdev->name;
-	poll_dev->input->dev.parent	= dev;
-	poll_dev->input->id.bustype	= BUS_HOST;
-	poll_dev->input->id.vendor	= 0x0001;
-	poll_dev->input->id.product	= 0x0001;
-	poll_dev->input->id.version	= 0x0100;
+	input_set_drvdata(input, priv);
+
+	input->name		= pdev->name;
+	input->dev.parent	= dev;
+	input->id.bustype	= BUS_HOST;
+	input->id.vendor	= 0x0001;
+	input->id.product	= 0x0001;
+	input->id.version	= 0x0100;
 
 	err = matrix_keypad_build_keymap(NULL, NULL, priv->row_count,
 					 CLPS711X_KEYPAD_COL_COUNT,
-					 NULL, poll_dev->input);
+					 NULL, input);
 	if (err)
-		goto out_err;
+		return err;
 
-	input_set_capability(poll_dev->input, EV_MSC, MSC_SCAN);
+	input_set_capability(input, EV_MSC, MSC_SCAN);
 	if (of_property_read_bool(np, "autorepeat"))
-		__set_bit(EV_REP, poll_dev->input->evbit);
-
-	platform_set_drvdata(pdev, poll_dev);
+		__set_bit(EV_REP, input->evbit);
 
 	/* Set all columns to low */
 	regmap_update_bits(priv->syscon, SYSCON_OFFSET, SYSCON1_KBDSCAN_MASK,
 			   SYSCON1_KBDSCAN(1));
 
-	err = input_register_polled_device(poll_dev);
-	if (err)
-		goto out_err;
-
-	return 0;
 
-out_err:
-	input_free_polled_device(poll_dev);
-	return err;
-}
+	err = input_setup_polling(input, clps711x_keypad_poll);
+	if (err)
+		return err;
 
-static int clps711x_keypad_remove(struct platform_device *pdev)
-{
-	struct input_polled_dev *poll_dev = platform_get_drvdata(pdev);
+	input_set_poll_interval(input, poll_interval);
 
-	input_unregister_polled_device(poll_dev);
-	input_free_polled_device(poll_dev);
+	err = input_register_device(input);
+	if (err)
+		return err;
 
 	return 0;
 }
@@ -188,7 +177,6 @@ static struct platform_driver clps711x_keypad_driver = {
 		.of_match_table	= clps711x_keypad_of_match,
 	},
 	.probe	= clps711x_keypad_probe,
-	.remove	= clps711x_keypad_remove,
 };
 module_platform_driver(clps711x_keypad_driver);
 
-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
