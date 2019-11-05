Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932F4EFB29
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IE90R+NHOBN68OQpWMgxOu/effyl4QiXmUxjk4Xcg70=; b=YT+I+o2cfX8wcG
	drkhl97bsCsOPM2PwpPLthoVso1WLRG2b3OeWh4Ik9iKRbIlTzEj1SM4WVTlG1ou56OL40MisD0My
	EFQjUWMmNMTvLc8AhdWGVMjVa51sXKRPz/KbVRxEzIArDkJy0B8uymGB1GcSOXaM3DMFBsyonekl0
	BZhJ/QUDyCP8oozbMPyWeJZJC5zFJa8g74acVxqtJLiTm0/bzLrhapODQxYOptCse3MpanFzS/hMO
	ZVfw8bo5QG0RyRLHV3C8ZRfc08u65VPHrh4Ry2EWVsqWWLOjF0Q3y/6m/CX17VuDzwQfVBsae7vfJ
	XhXTSskGZBC9J6Qa5WmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRw5z-0003MH-Ib; Tue, 05 Nov 2019 10:29:55 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRw5r-0003Lt-H5
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:29:48 +0000
Received: by mail-lj1-f193.google.com with SMTP id t5so21210165ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 02:29:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T/zJmmC9BfN7o1sqvqhhANQRkLvNhk04+tink2hcu/o=;
 b=iz4ks55rkA3o2gyB8g8BNneK9QacBGyZhe2jN7AmO9cwTjN4mTXgGDAoTfEte/iOD1
 UvEO4w3RGSQc6ImpVB2w7o0RpeWDdCSeBrx38WKe5kxyDO/7E/Ib0HyCIAYHROmrM82B
 2qg+lE5mBBjCfRZFR48ZuV7/+3mgjjE1dAiQ6KdSCdsbdc39Elv2ld/i1n9eCIOQhwN1
 MgcWEI/1ugJI0G3gLkKGvwAXAjGhvrkelQFn+z5FOpOXMapxaKaYxJjQy1vKwmlEy/zD
 gvEMBk4tsmVQV3Mmfva7BnXlw38ZVmupTPLMoA4lUROnrm5SMns8EsqCXUpcmFbqOqQy
 5krw==
X-Gm-Message-State: APjAAAUZhKSoF09R+cNeeqQWnlaQYWXsiF8iDkOkJX7mULPE82OPMe6E
 Rhjb4ky7SfmShx3Dbsu8oFs=
X-Google-Smtp-Source: APXvYqwAiLmM1AWBNWgvSloHZxacz7vhjYQV56y3Fw7fttafgeaQyw/oMgcvECS8UnmExC/IFeNwWQ==
X-Received: by 2002:a2e:874a:: with SMTP id q10mr23012443ljj.14.1572949785377; 
 Tue, 05 Nov 2019 02:29:45 -0800 (PST)
Received: from localhost.localdomain ([213.255.186.46])
 by smtp.gmail.com with ESMTPSA id s7sm8246972ljo.98.2019.11.05.02.29.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 02:29:44 -0800 (PST)
Date: Tue, 5 Nov 2019 12:29:36 +0200
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH 37/62] gpio: gpio-sama5d2-piobu: Use new GPIO_LINE_DIRECTION
Message-ID: <4e20b399f7ef56a7df25f97a86b4e89e131083d0.1572945890.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1572945890.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572945890.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_022947_564066_0B597A34 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mazziesaccount[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
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
 drivers/gpio/gpio-sama5d2-piobu.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-sama5d2-piobu.c b/drivers/gpio/gpio-sama5d2-piobu.c
index 7d718557092e..b04c561f3280 100644
--- a/drivers/gpio/gpio-sama5d2-piobu.c
+++ b/drivers/gpio/gpio-sama5d2-piobu.c
@@ -119,7 +119,8 @@ static int sama5d2_piobu_get_direction(struct gpio_chip *chip,
 	if (ret < 0)
 		return ret;
 
-	return (ret == PIOBU_IN) ? 1 : 0;
+	return (ret == PIOBU_IN) ? GPIO_LINE_DIRECTION_IN :
+				   GPIO_LINE_DIRECTION_OUT;
 }
 
 /**
@@ -154,9 +155,9 @@ static int sama5d2_piobu_get(struct gpio_chip *chip, unsigned int pin)
 	/* if pin is input, read value from PDS else read from SOD */
 	int ret = sama5d2_piobu_get_direction(chip, pin);
 
-	if (ret == 1)
+	if (ret == GPIO_LINE_DIRECTION_IN)
 		ret = sama5d2_piobu_read_value(chip, pin, PIOBU_PDS);
-	else if (!ret)
+	else if (ret == GPIO_LINE_DIRECTION_OUT)
 		ret = sama5d2_piobu_read_value(chip, pin, PIOBU_SOD);
 
 	if (ret < 0)
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
