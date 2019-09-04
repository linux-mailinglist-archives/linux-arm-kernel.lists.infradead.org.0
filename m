Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F620A7B52
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 08:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7JQBq1jiXi47xHLBohFZGh4g1qFeOtlujCu7u85WAM=; b=rD36QIT6gNTL3A
	2sInikoGzeRdHrcTX3yh7dnnTElhfTh2Cn2xxELyf0dGQKNHz4zyv9Eadr7Bq5eK7B6Ypz2zf7K+C
	Y0U57JmKEaFETWzmdAzwqCQfuPJYfa/p/UrHjCWfuY2bdqEzwgbVDeicmHVS/idIrAQvQhlgIbcIc
	LNXRlTTrYMdnoG92t0YXHp1ERkg/j/xTVoRlDnAc6Y6qQtSv+/S4Hd3DuOD7I0J1QEDbgchPA0F5e
	R0iicZGPfaVZEdsPP7XvRhScK5E/i39j4xpcqxeuAS7WyVNofI0fVPAMOggxg+q1cOlmvNhQaXggk
	cRxQBO9Fx9nmxqSrup0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5OYP-0007QV-Sl; Wed, 04 Sep 2019 06:14:06 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5OXl-00073F-SZ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 06:13:27 +0000
Received: by mail-pf1-x442.google.com with SMTP id d15so3034747pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 23:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dwQylTZAjlDddzlsHBHSBMQ7EYoKKuHnayRWM7T5y0g=;
 b=H0et8VQzTf/uK3fL10utxIcqVuxPIx2H3Vl488KJZDiBDKzJLiUaTE6zesw/JS82fI
 TuAxT91S5OOEkThao21DilskqA0EVmzlPrw3COcOihDzsEHMcgxNeDf0wcyrmAmCtFGX
 bNSbnu9rLkEd8TMy68Udy4QbZwDYNXeTYmXAk+GvNf7Poyvc5FeFggyBAOhsSKGnnELr
 rhSQshNpztoyGRg76+SB9eSHPloob0uHEUyn3e4CGvSIWaiR5HfyJ0Fvf+cEBPub1lB1
 M3Vpy8wmoH9guLbEjXO9CidL+I0QejrU32T62EVqCCB6Uw/PbFNvkvQSKWdS1SoWiYzH
 tHgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dwQylTZAjlDddzlsHBHSBMQ7EYoKKuHnayRWM7T5y0g=;
 b=qCbOde21sWNd3BeEVWpoRlBMu4a3v4QWbuWoU5IgECia6rvkjBi8TEqSGVV2JVMOq2
 HlMu9mSQ6csedOnqhbhGofvxxRc4xkHczmPc0U31JKf4eL7mCkXyTxcgs2iQA1aUdt2e
 8Mw6H1rDtUAxOqDBBTa8aaCfoBCfxVzVg948ogjC/0GWwe/upoMhrdTNXChOBPlFsmye
 3BBfEl7BVU5uN/yvNMFc+/fB2OStvvwx/2VTw3R/0h4fdADjXXH4oddhEX93iQfnSMZH
 jnsAR/JtZ/IeBTEU6WwF6NzIn+7HjbjzTdfvkUWZHg8gPlZyEM2gAS1E0dntxCNFNm4S
 qY2w==
X-Gm-Message-State: APjAAAVYmy8UblIOE1XpG+k0+A0k9mYFCzL5xxGPuPUPYNUXSRGpuOxY
 hj5TKhdI34pWkSEyRilF4PQ=
X-Google-Smtp-Source: APXvYqyBhY/AnfgGoWby13Aai3moACfpQi6PDqg+npBn9MK9a3FjZAgErqSjzTgubNlEgXTLsfTHbA==
X-Received: by 2002:a17:90a:c305:: with SMTP id
 g5mr3396371pjt.58.1567577605456; 
 Tue, 03 Sep 2019 23:13:25 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.gmail.com with ESMTPSA id i9sm42443093pgo.46.2019.09.03.23.13.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 23:13:25 -0700 (PDT)
From: Rashmica Gupta <rashmica.g@gmail.com>
To: linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 bgolaszewski@baylibre.com
Subject: [PATCH 3/4] gpio: Add in ast2600 details to Aspeed driver
Date: Wed,  4 Sep 2019 16:12:44 +1000
Message-Id: <20190904061245.30770-3-rashmica.g@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190904061245.30770-1-rashmica.g@gmail.com>
References: <20190904061245.30770-1-rashmica.g@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_231326_008512_EE5E149B 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-aspeed@lists.ozlabs.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, joel@jms.id.au,
 Rashmica Gupta <rashmica.g@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ast2600 has two gpio controllers, one for 3.6V GPIOS and one for 1.8V GPIOS.

Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
---
 drivers/gpio/gpio-aspeed.c | 29 +++++++++++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
index 60ab042c9129..98881c99d0b9 100644
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
+	banks = (gpio->config->nr_gpios >> 5) + 1;
+	for (i = 0; i < banks; i++) {
 		const struct aspeed_gpio_bank *bank = &aspeed_gpio_banks[i];
 
 		reg = ioread32(bank_reg(data, bank, reg_irq_status));
@@ -1108,9 +1110,32 @@ static const struct aspeed_gpio_config ast2500_config =
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
+	/* 208 3.6V GPIOs */
+	{ .nr_gpios = 208, .props = ast2600_bank_props, };
+
+static const struct aspeed_bank_props ast2600_1_8v_bank_props[] = {
+	/*     input	  output   */
+	{1, 0x0000000f,  0x0000000f}, /* E */
+	{ },
+};
+
+static const struct aspeed_gpio_config ast2600_1_8v_config =
+	/* 36 1.8V GPIOs */
+	{ .nr_gpios = 36, .props = ast2600_1_8v_bank_props, };
+
 static const struct of_device_id aspeed_gpio_of_table[] = {
 	{ .compatible = "aspeed,ast2400-gpio", .data = &ast2400_config, },
 	{ .compatible = "aspeed,ast2500-gpio", .data = &ast2500_config, },
+	{ .compatible = "aspeed,ast2600-gpio", .data = &ast2600_config, },
+	{ .compatible = "aspeed,ast2600-1-8v-gpio", .data = &ast2600_1_8v_config,},
 	{}
 };
 MODULE_DEVICE_TABLE(of, aspeed_gpio_of_table);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
