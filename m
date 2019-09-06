Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20292AB28D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 08:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T9h3B8FSCS9g69A/Sk6hpw5DpEld2WfyRTEQuQgvUB0=; b=hKHVRx2HeZw4l2
	k939EvsMEuamd1lEPjiQe+L37I5XXWaDoprIkPGT1rYfeTcWEFkJCrOd1k8yXnvcgjkaGj3yWMXvu
	SmsW3XIFYPuOfcE1rv26WltinP39dqyIEWE6zMQ/uPj9DABxPsLZPVCB6UrZHOPZByGhNEAui8aFT
	/ZzDCEgkd0GfIEwUO+mkMUzSqetOZZVb6xQGJjfcWmhsabY050IFosYV52zmuoh8vbH/GwWj3D1D6
	9q/nPCMCns2y9sOmjvK7Hct0QFhv3T98dPGuEu3iNxpzdS5nY45rOVxKuBD6t6fIlfet+7kWwppoK
	C3/+7BMg9S7GJxWSK8Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67sZ-0001ES-Az; Fri, 06 Sep 2019 06:37:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i67sS-0001Dt-KE
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 06:37:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id u72so2896272pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 23:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yf6oL0tLck8RqjzG1KqIqd5PEbTcJ8AQ/ti24H7+Mz0=;
 b=NXYnmP230UycB9liYF3jNI9HXZKDZofvGwQCaNbCbErISaI2FlPzJFnF+Iq3hFaMqs
 Io12+fzGHh/IqGAPfw/c4YxEvW+pW7elVCHKqHBSZ3fa+dPw0AwKlLIs0PJcHc+dm1Vb
 WO/b0qmFMp+VMaQ2uWIUZyBxCtkmRl3fWfc4BNrapRQUCqbPpk5gG7CKbBoKEo7opIwm
 IUEzr8AlzTkF4F8w3heaAevoQVxdBZYCAsCEQvJHpwqnQeFvd975Vs9QEUnz14dMvExL
 +D3q/U47MzTli9y+P4yVgX/D+rMoMYWAeOa3y1QKNUrROcoFT0omsC4PkDTfC7xt1Xcm
 0TFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Yf6oL0tLck8RqjzG1KqIqd5PEbTcJ8AQ/ti24H7+Mz0=;
 b=aoM54ly3PdRsh2yEU/sIDfIHrmTSPybh6RnQwwMxrJuY/1E13D/LDhjKW314121G44
 89x/tX7TgbbJn+VNVel/7HhHyy31+D/S8m3qVstTN4mxc06d/fyDl1EuJ8vGazeALG3C
 n0ushIZ5861vXGRvSI0ZydBs5fwgpwUV5UGqbFWnabFtDLDO1PDPOYOu0Sgj6rd0ucRG
 TX95jxJx9+rONYAO0V64t1i+gb36QW8kTev3uVatvN8ZP4c6+uSw0a68OY3L4TVJmf4z
 iep+sjR7+carnqKee5fjzu9PLQZesOPgvThVwEym58XaJgf3dXKE9cQJjLPaNUIoxS1W
 fIxA==
X-Gm-Message-State: APjAAAWGdKoOgWz6NZzMzSw62i/fBrneHnBTrBbsG94TOdsvarFwusR6
 1VV1xFYTkQGrvHAWa6UQto4=
X-Google-Smtp-Source: APXvYqxqn0tl04tewRdzFsJ8jiTYNrJ0tt+dZTao+RrY+oc5sIrQaCUmx/FsP0NVnoCH8qDg0es8Ug==
X-Received: by 2002:a62:8683:: with SMTP id x125mr8468525pfd.108.1567751867568; 
 Thu, 05 Sep 2019 23:37:47 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id 207sm5017423pfu.129.2019.09.05.23.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 23:37:46 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v3 5/5] gpio: Add in ast2600 details to Aspeed driver
Date: Fri,  6 Sep 2019 16:37:37 +1000
Message-Id: <20190906063737.15428-1-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_233748_691830_CC35632A 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, open list <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Joel Stanley <joel@jms.id.au>,
 Rashmica Gupta <rashmica.g@gmail.com>,
 "moderated list:ARM/ASPEED MACHINE SUPPORT"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ast2600 is a new generation of SoC from ASPEED. Similarly to the
ast2400 and ast2500, it has a GPIO controller for it's 3.3V GPIO pins.
Additionally, it has a GPIO controller for 1.8V GPIO pins.

As the register names for both controllers are the same and the 36 1.8V
GPIOs and the first 36 of the 3.3V GPIOs are all bidirectional, we can
use the same configuration struct and use the ngpio property to
differentiate between the two sets of GPIOs.

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 drivers/gpio/gpio-aspeed.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
index effcfaaf8c0c..22d482072632 100644
--- a/drivers/gpio/gpio-aspeed.c
+++ b/drivers/gpio/gpio-aspeed.c
@@ -662,12 +662,14 @@ static void aspeed_gpio_irq_handler(struct irq_desc *desc)
 	struct gpio_chip *gc = irq_desc_get_handler_data(desc);
 	struct irq_chip *ic = irq_desc_get_chip(desc);
 	struct aspeed_gpio *data = gpiochip_get_data(gc);
-	unsigned int i, p, girq;
+	unsigned int i, p, girq, banks;
 	unsigned long reg;
+	struct aspeed_gpio *gpio = gpiochip_get_data(gc);
 
 	chained_irq_enter(ic, desc);
 
-	for (i = 0; i < ARRAY_SIZE(aspeed_gpio_banks); i++) {
+	banks = DIV_ROUND_UP(gpio->chip.ngpio, 32);
+	for (i = 0; i < banks; i++) {
 		const struct aspeed_gpio_bank *bank = &aspeed_gpio_banks[i];
 
 		reg = ioread32(bank_reg(data, bank, reg_irq_status));
@@ -1134,9 +1136,25 @@ static const struct aspeed_gpio_config ast2500_config =
 	/* 232 for simplicity, actual number is 228 (4-GPIO hole in GPIOAB) */
 	{ .nr_gpios = 232, .props = ast2500_bank_props, };
 
+static const struct aspeed_bank_props ast2600_bank_props[] = {
+	/*     input	  output   */
+	{5, 0xffffffff,  0x0000ffff}, /* U/V/W/X */
+	{6, 0xffff0000,  0x0fff0000}, /* Y/Z */
+	{ },
+};
+
+static const struct aspeed_gpio_config ast2600_config =
+	/*
+	 * ast2600 has two controllers one with 208 GPIOs and one with 36 GPIOs.
+	 * We expect ngpio being set in the device tree and this is a fallback
+	 * option.
+	 */
+	{ .nr_gpios = 208, .props = ast2600_bank_props, };
+
 static const struct of_device_id aspeed_gpio_of_table[] = {
 	{ .compatible = "aspeed,ast2400-gpio", .data = &ast2400_config, },
 	{ .compatible = "aspeed,ast2500-gpio", .data = &ast2500_config, },
+	{ .compatible = "aspeed,ast2600-gpio", .data = &ast2600_config, },
 	{}
 };
 MODULE_DEVICE_TABLE(of, aspeed_gpio_of_table);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
