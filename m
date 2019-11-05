Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E11EEFB84
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:37:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lvRn2EGFqbOYgpylKpTU9lLa3gHZJvHrcfBcIaeni0=; b=ugtEpgZQIC3fhS
	JSuIj4d7PGip+cvEDF9gam0Mls0e/ooybgvY+yAt5o4EX0hEjP1UpiEwUJy3tplsWnKl6U5SfNT/r
	zulY3LxWfMGvigLB2qX/QuJn+nU9ORcGk0INK/Sbb2Ci7To/BqVb5QY6apjaMc4R3ppJ5AHfaHw2U
	T1hbJxa5ZquFMlToGLqHeCpu6BPUjVqrjskWZgFOR4kBTMXZ3MeMry0jakC6CicuTgyNtIw5NEOrK
	uij1IdEtSUA8hWZQ81NFfTKJGgRedbP8x08O2EZbvgVUulV9UiBZ65vGL5ug09E8y0QgOFBQCAcyH
	0Kr6TeQbE0f63x8k6q1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRwDI-0007ZQ-UB; Tue, 05 Nov 2019 10:37:28 +0000
Received: from mail-lf1-f66.google.com ([209.85.167.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwD7-0007Yx-38
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:37:18 +0000
Received: by mail-lf1-f66.google.com with SMTP id j5so14704373lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 02:37:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YxCUxQ2AH3iW52PLmjYcbS92SUaB2Uqnrk/wUaP6I30=;
 b=niiQr7oJJU2KmGnFMCzQT/RjsSeMG0r09440efXEv/IpgguA28sGQUbzd9Gnrj4SAw
 DKfxYlHeD7+HSFNWsakSoJYDN6fzbtEH+89UtGqQHzJnyTJ+SOSuWREck+/AZVgx4M7w
 SjopmLLIfdjr9kngi+Ul+zqP8FbIGZUFsUGyw47scaRoSmLtLwBEDCT2hImeJTbCIzBi
 G8ioqm93uLdJxOaubgVsCvCEW3Uww0+ayGU6Xyj/6NERq9A9U+k4Lvgt/btleOS+i2RV
 2DYf4xMqfV+8cEZ2LlWACUjjjgxNQ/qyjsq8gqVTMPG0/UmCLOFaycVt7fprq3vkqV1K
 zC7g==
X-Gm-Message-State: APjAAAWYelGkDsMZGw9fofTcI1jjLJRNd/ztCVkSTJZJA87+0UjdijQj
 sOUM2hwOeilcOA/oEU2Gr+o=
X-Google-Smtp-Source: APXvYqx0soK/6+YFJvOUfM4wZlhc4IAIKRp28eUSkfFwUnucV6JkAgnyyv+E9I2zDPSIn3+uI5KyXA==
X-Received: by 2002:a19:cc47:: with SMTP id c68mr19812904lfg.95.1572950234631; 
 Tue, 05 Nov 2019 02:37:14 -0800 (PST)
Received: from localhost.localdomain ([213.255.186.46])
 by smtp.gmail.com with ESMTPSA id u11sm8041749ljo.17.2019.11.05.02.37.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 02:37:14 -0800 (PST)
Date: Tue, 5 Nov 2019 12:37:04 +0200
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH 54/62] gpio: gpio-uniphier: Use new GPIO_LINE_DIRECTION
Message-ID: <189eeb5f43c2cbf3ca37e95410d8f2728b2d03fd.1572945998.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1572945998.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572945998.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_023717_133997_33FC2275 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mazziesaccount[at]gmail.com)
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
Cc: linux-gpio@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
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
 drivers/gpio/gpio-uniphier.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-uniphier.c b/drivers/gpio/gpio-uniphier.c
index 93cdcc41e9fb..bd203e8fa58e 100644
--- a/drivers/gpio/gpio-uniphier.c
+++ b/drivers/gpio/gpio-uniphier.c
@@ -113,7 +113,10 @@ static int uniphier_gpio_offset_read(struct gpio_chip *chip,
 static int uniphier_gpio_get_direction(struct gpio_chip *chip,
 				       unsigned int offset)
 {
-	return uniphier_gpio_offset_read(chip, offset, UNIPHIER_GPIO_PORT_DIR);
+	if (uniphier_gpio_offset_read(chip, offset, UNIPHIER_GPIO_PORT_DIR))
+		return GPIO_LINE_DIRECTION_IN;
+
+	return GPIO_LINE_DIRECTION_OUT;
 }
 
 static int uniphier_gpio_direction_input(struct gpio_chip *chip,
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
