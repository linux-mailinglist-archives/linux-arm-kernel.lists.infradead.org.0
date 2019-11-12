Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5A3F91C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:18:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JVCBi7YJUc51jkV/GplPDQ0+yUmP0YF1bqXDDsRqzAM=; b=Ni0hZcCUMMJ8y6
	/elVTDc1z+JYN1psQb0QFKxbNz+UnhNiL6gD9q24CVyaeZT5GDDSFxwsO1Q/TIkPr97hlUE7sPD1M
	0XXBpyL7rydkVhT87oruHr3L0OGioIIbYjlPVkHrX4ztI7h9WQVaG9/ncvKIaoXwqPpmuuUiOoZOx
	2QRTsK6t3HeNkH705bFpTGxhDtOh8r7e9s2u5QGgl533yY0LjBYCI+7Zo7CinCYK8Sv6YCR/aON+Q
	hmgDst4elGzLsEYw90yW20/6tX0w3a0v73H1A13RClFAEg4+NzBd2q3fIajjYAqFOhd0LRnbnvkFJ
	FQ8GW+1fCbbMyS69kjIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUWzl-0003Q9-Jm; Tue, 12 Nov 2019 14:18:13 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUWzc-0003P8-0f; Tue, 12 Nov 2019 14:18:05 +0000
Received: by mail-lf1-f65.google.com with SMTP id q28so13002382lfa.5;
 Tue, 12 Nov 2019 06:18:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=noLT2aGm698xuw2frzZtoGQnaskmek6kKUVIzW/nFbM=;
 b=C1e3tCT4csemla7aKiljh2d9mdhggd45sij6mruReFjdo+kvHhsNeumjba6Xb5Aek6
 ImCmvY5nVuzrlqawwCaNjsP3AV+O/EpGf/ckaW7oYhjOH89D0pNEkKj3N5+l0hc9YTB5
 G/sD9eETUJ8VfDyLoVxIu2HNYmxGx2ab2F+cuGovMsTcx0/4J3Skn5KKf7CmXascD+IB
 UeXPuls2NyNMYVxU8FrLzQF5EsxtMGlRQbanH9XvKJl9VmRuEbPvGh75IyHvAI+wUOR6
 vsVwR81I9cynI5hItBUwEaSfxGf+BloNtfcSy407z3qVZbzhMhLmUxark0c1PmC/PUF1
 SUUw==
X-Gm-Message-State: APjAAAWKOi36gaZPYZTmn+k7HnJq12TpVB30gqZ9zOkc6oYD4KmCEStL
 kUIgaGG1KgCPHsQLgfEZvbWzqXa+LcA=
X-Google-Smtp-Source: APXvYqxDGCMrmWRGR1WTJsmYqkazUN2CI18QD8EA4irdT0j3PIL9joXHCr2eKeWKmiMP/RudUuOXBw==
X-Received: by 2002:a19:23c1:: with SMTP id
 j184mr14858467lfj.107.1573568280891; 
 Tue, 12 Nov 2019 06:18:00 -0800 (PST)
Received: from localhost.localdomain ([213.255.186.46])
 by smtp.gmail.com with ESMTPSA id t16sm8346945lft.6.2019.11.12.06.17.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 06:18:00 -0800 (PST)
Date: Tue, 12 Nov 2019 16:17:48 +0200
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH 1/2] pinctrl: rza1: remove unnecerssary static inline function
Message-ID: <20191112141748.GA22061@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_061804_061848_BAC6F251 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mazziesaccount[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Having static inline oneliner does not benefit too much when it is
only called from another oneliner function. Remove some of the
'onion'. This simplifies also the coming usage of the gpiolib
defines. We can do conversion from chip bits to gpiolib direction
defines as last step in the get_direction callback. Drivers can
use chip specific values in driver internal functions and do
conversion only once.

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
---
 drivers/pinctrl/pinctrl-rza1.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rza1.c b/drivers/pinctrl/pinctrl-rza1.c
index 017fc6b3e27e..215db220d795 100644
--- a/drivers/pinctrl/pinctrl-rza1.c
+++ b/drivers/pinctrl/pinctrl-rza1.c
@@ -617,12 +617,6 @@ static void rza1_pin_reset(struct rza1_port *port, unsigned int pin)
 	spin_unlock_irqrestore(&port->lock, irqflags);
 }
 
-static inline int rza1_pin_get_direction(struct rza1_port *port,
-					 unsigned int pin)
-{
-	return !!rza1_get_bit(port, RZA1_PM_REG, pin);
-}
-
 /**
  * rza1_pin_set_direction() - set I/O direction on a pin in port mode
  *
@@ -783,7 +777,7 @@ static int rza1_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
 {
 	struct rza1_port *port = gpiochip_get_data(chip);
 
-	return rza1_pin_get_direction(port, gpio);
+	return !!rza1_get_bit(port, RZA1_PM_REG, gpio);
 }
 
 static int rza1_gpio_direction_input(struct gpio_chip *chip,

base-commit: 70d97e099bb426ecb3ad4bf31e88dbf2ef4b2e4c
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
