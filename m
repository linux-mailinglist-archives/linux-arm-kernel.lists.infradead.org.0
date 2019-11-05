Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA6EEFB00
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:25:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaNVL8kiHHKaXy1VEA7p7LBgmqeC6WbhUcbvKzzHB7g=; b=YIvBUG5UUxLw9L
	Cpa2GQGDhKtHcrqhHJJ3oKlNbuwqJT7jCpUe1e1MBUg+0JRZ3Z529mAtRc8ggI4E9ND6avBGKFLNP
	H8dYJLSgh23acS/37ulrF0Gh0lAlgDYVBa9MXm8CaqcPpSvW05e+7K5zdHOlTR7I4dLTj9hIvMxOK
	3Rvo2BaN6932stnV2BYvmZlYZZYiDRD8zzUa79JWJU+GSo7YaCLYXV8r2+Yq5uVUq2SViK+rLm+DQ
	B5dujhdJ6noWT6dwcKg5oxi9TROh2oZLXsP3YFIeb4byulJuuFDoXFmWdhwO0NPkq4N2oA13K11HK
	t7KveE+H7unQoZpGAHtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRw1S-0001NT-Eq; Tue, 05 Nov 2019 10:25:14 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRw1H-0000iv-Bs
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:25:04 +0000
Received: by mail-lj1-f194.google.com with SMTP id l20so2491996lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 02:25:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Bv+B7wRzEzNcU1QnMIvKDcqTaOyCGZVdxQ/FNOnMT1Y=;
 b=GLukPMEBq/y0Xc5LxSZCO8sRaxI9SkVIipamzlIRQInugEyy4H6BklaUyzHFzxmZ8O
 yJaQCVel7lrb9QKIvgUzKy0458QRn7Zpj3a+qOmwD4jkbNVd356isqK4dRfwpeJTH8ui
 kE7jDCEQcd62RHNwd9HmTaGmyakvPcdGmPjoY0kAGox3z4EWO1UGi4/yqNarasHdJBlb
 fPABPWQmalfeEX0rrvBQoRvn1swIsbNWP5uLwEE0Pujj4kaJ6l4Y9stx/T2Hsb27lZ2Y
 +OSKDX4CzdiPAhIqvPLvOBVrMyis45nOSN8qu/plQ8TDuaP5+hU7n0hflaThy7iauPWP
 91mQ==
X-Gm-Message-State: APjAAAW2lCYROaQXYzjGsGhODz+hcZkASClL76tOF4agJ9ogRFNjX/Bf
 xtc5Pd4YJmidu1i4ImD1ehI=
X-Google-Smtp-Source: APXvYqzZ7jxkgUCp8oVkJ5xSQdMV9c3vS9yER47vq2zT2lEe8mlFrHp8mlWwkM4USZUxlTsllt+VMQ==
X-Received: by 2002:a2e:998a:: with SMTP id w10mr10343701lji.66.1572949501943; 
 Tue, 05 Nov 2019 02:25:01 -0800 (PST)
Received: from localhost.localdomain ([213.255.186.46])
 by smtp.gmail.com with ESMTPSA id f3sm2795260lfp.0.2019.11.05.02.25.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 02:25:01 -0800 (PST)
Date: Tue, 5 Nov 2019 12:24:57 +0200
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH 27/62] gpio: gpio-mxs: Use new GPIO_LINE_DIRECTION
Message-ID: <1c440ef37fb8bd690a62e4138028d0f41ebe76f4.1572945841.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1572945841.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572945841.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_022503_412300_75F1F5C2 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
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
Cc: linux-gpio@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
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
 drivers/gpio/gpio-mxs.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-mxs.c b/drivers/gpio/gpio-mxs.c
index 5e5437a2c607..c4a314c68555 100644
--- a/drivers/gpio/gpio-mxs.c
+++ b/drivers/gpio/gpio-mxs.c
@@ -248,7 +248,10 @@ static int mxs_gpio_get_direction(struct gpio_chip *gc, unsigned offset)
 	u32 dir;
 
 	dir = readl(port->base + PINCTRL_DOE(port));
-	return !(dir & mask);
+	if (dir & mask)
+		return GPIO_LINE_DIRECTION_OUT;
+
+	return GPIO_LINE_DIRECTION_IN;
 }
 
 static const struct platform_device_id mxs_gpio_ids[] = {
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
