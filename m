Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F683EFB96
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8Lz5fMKyEqkVkABqTnBUaOOU3Ot7VCZbQSBuCfQjkM=; b=UCL1AgYAwcwHqO
	89iU5iO64Gb9RWpnrsHUq3nXf12Xa+pAvMUbzPy1nWLk5fKIg4C8ayGCy5nzO0gbgW0NXTYwDPNP7
	IR3geVduci3J9Hxo5iMOtD/16aeyCJtn1SVv7q6W+dp5MtjRZvAyGlCwMWRtSIwI5glgEO7ymDnLM
	6L9ML7W65nY5KrYodlG6/moGU5FOO7hUHOYfLdNM8vmCLnTY/gbtiy74hrwKZpMedV6anEpAG0csc
	TKZqSlSzuCvV8Mf1rRaX/tx0Oe5w2Z0wT+LDoS82dPEyvKV5j6U3lMvYggCgRv2aM7boK2u4G1K2Y
	OG7VetFkX/kReXzEu3hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRwGZ-0000ta-L2; Tue, 05 Nov 2019 10:40:51 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwGQ-0000t3-K9
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:40:43 +0000
Received: by mail-lj1-f194.google.com with SMTP id e9so7916582ljp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 02:40:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IHVLnZpvti7kYubzGuAOCqnl9G7u/7Mk5Hsa0dcUqxo=;
 b=KT5bb2ztKVHk1Kh5OaYGsRuC4sTTvAQyav1l1du7+S4MVENfwM60fCnKt7kzFRXfSo
 QuXqfEaNQHE3lixu6DQ7jkIOgS+K9GjLsORn3E3rgb20OJlKt+QhtsYe/gCOs/BYsigc
 SmZnzu6O2hqLTDolrEsHxFFVe/2r9cSlwOv0zOMgRi06z82IqOWxZdSZNdx0GEuvYWNa
 BACJmS5mAUEw4BWKtC4riw4a6vdxzhqWbv+BP1mUvvK6YF+kE86FhXkvVDz1TrSeC93J
 wZ9U9j/r86SEU/+mnTd1mqVslwMB5IE10BN585IJJsG00e87lFET+uUqSosezK5uNdOZ
 LiAg==
X-Gm-Message-State: APjAAAUFyYqmqq3POujBY1FB+5em1BtB4eFS7KdzCZBfjqXjnIrEV4a0
 QsIwtCSSuZ5Se6jqc5udNXo=
X-Google-Smtp-Source: APXvYqwimd8o/BHmE5NIoxB7Pal0yHYLbggrwuzo9Wj10a1ugIpMkJVn+AXIoXE/WqvLKNk0aYNS8g==
X-Received: by 2002:a2e:8654:: with SMTP id i20mr23048472ljj.238.1572950441184; 
 Tue, 05 Nov 2019 02:40:41 -0800 (PST)
Received: from localhost.localdomain ([213.255.186.46])
 by smtp.gmail.com with ESMTPSA id i8sm10605111ljj.11.2019.11.05.02.40.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 02:40:40 -0800 (PST)
Date: Tue, 5 Nov 2019 12:40:35 +0200
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH 60/62] gpio: gpio-zynq: Use new GPIO_LINE_DIRECTION
Message-ID: <e3a74a28d9c0831fe798909d95695dc978d43030.1572946015.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1572946015.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572946015.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_024042_662996_48393D25 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mazziesaccount[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's hard for occasional GPIO code reader/writer to know if values 0/1
equal to IN or OUT. Use defined GPIO_LINE_DIRECTION_IN and
GPIO_LINE_DIRECTION_OUT to help them out.

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
---
 drivers/gpio/gpio-zynq.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-zynq.c b/drivers/gpio/gpio-zynq.c
index cd475ff4bcad..4c3f6370eab4 100644
--- a/drivers/gpio/gpio-zynq.c
+++ b/drivers/gpio/gpio-zynq.c
@@ -360,7 +360,7 @@ static int zynq_gpio_dir_out(struct gpio_chip *chip, unsigned int pin,
  *
  * This function returns the direction of the specified GPIO.
  *
- * Return: 0 for output, 1 for input
+ * Return: GPIO_LINE_DIRECTION_OUT or GPIO_LINE_DIRECTION_IN
  */
 static int zynq_gpio_get_direction(struct gpio_chip *chip, unsigned int pin)
 {
@@ -372,7 +372,10 @@ static int zynq_gpio_get_direction(struct gpio_chip *chip, unsigned int pin)
 
 	reg = readl_relaxed(gpio->base_addr + ZYNQ_GPIO_DIRM_OFFSET(bank_num));
 
-	return !(reg & BIT(bank_pin_num));
+	if (reg & BIT(bank_pin_num))
+		return GPIO_LINE_DIRECTION_OUT;
+
+	return GPIO_LINE_DIRECTION_IN;
 }
 
 /**
-- 
2.21.0


-- 
Matti Vaittinen, Linux device drivers
ROHM Semiconductors, Finland SWDC
Kiviharjunlenkki 1E
90220 OULU
FINLAND

~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
Simon says - in Latin please.
~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
Thanks to Simon Glass for the translation =] 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
