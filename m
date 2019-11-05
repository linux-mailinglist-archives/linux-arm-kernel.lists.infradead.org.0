Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AF8EFA91
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:12:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyQdkhlAgyJzdjxbW5dmpKbVdKvsFowbSgeEzMZ5634=; b=RWzc13vxbqwF1D
	FHefJD99TKHSQmrpz8wZ4STWYcdNgv/gr1G8F+DPA45BUqSBv6sX1b9qq8mRK8XsmVLL+zKFybUpW
	5zQt82dKTBviQittjIwllb864MBNPgWBjgT+lPuYPJWN0LvtT6gCovJ6hzpk4pfVh6xX5p1HP16Ox
	6EwwEknMzm2hBezzTGm1f7Z75QmS3SCow0O0s6T+9OrP5kAqhnBUgNTcX6PusBfu+cp4h1mQfyzrP
	3uoELmDBgNAxmAwOEVQy7CST0yyPk1K17NMya7vOCckYPfTEClaG17PW/qj5QAciDaMD+lJVn8v30
	KLl2ck0Cq4VHp/Vsk3Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRvpR-0003vC-II; Tue, 05 Nov 2019 10:12:49 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRvpK-0003uq-NB
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:12:44 +0000
Received: by mail-lj1-f194.google.com with SMTP id g3so14991493ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 02:12:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V7qLFq4K93vUH8fK9wNC+b3dmkN6TfhoYmCQsWeu7yY=;
 b=Ptx+aBeD3l05fYf9ro2u5SCME+ZpnfjkGg+0JMDVU1f4+S7TNl4CyFEZXsUuo+7/R7
 J+rANC6KzCmDlc/4fnX0yPIYgmWbJtzz5jmzG/pq7Eq7F37z9nxClvSvn9/bs0uufXdQ
 i8oRXxKxj4L56lO7ZjVDzgQmx3S/1dUvq1APPrTyG9kLJlLJzLuIipRNQwvRTRmjUEJG
 3YYUtOcHuT3QbPbLDeE13Dl2BjkBSVUm18V8vtjHMvcAwcuKlPY1L8quucRwMPuvFaeh
 yzOrLONT8UsBr45TJmJ2iPsGiG2RBu0iLtyUnEd/itpu8wLvX925k5q9CsyyI6bE8pG1
 IVUw==
X-Gm-Message-State: APjAAAXmzvfsX5ths4zHHduDAe2uLPsp8kvf9wgpRsaw3R5EoJhnadvF
 mtL/UqrcW4auE0OPbRn6Tzw=
X-Google-Smtp-Source: APXvYqwjjYsGhWJv9rnRxQZ46vKzy4j+wiUPekzGtjMuNsXdHE3646nl8SjkCccQfYCbSzyJz8M77w==
X-Received: by 2002:a2e:28a:: with SMTP id y10mr20290638lje.155.1572948760228; 
 Tue, 05 Nov 2019 02:12:40 -0800 (PST)
Received: from localhost.localdomain ([213.255.186.46])
 by smtp.gmail.com with ESMTPSA id k9sm1362903lfj.97.2019.11.05.02.12.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 02:12:39 -0800 (PST)
Date: Tue, 5 Nov 2019 12:12:30 +0200
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH 07/62] gpio: gpio-aspeed: Use new GPIO_LINE_DIRECTION
Message-ID: <493e2f9ed5aff112519adcdf2d3044bf54c2d91a.1572945709.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1572945709.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572945709.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_021242_756379_6B890C57 
X-CRM114-Status: GOOD (  11.38  )
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
Cc: linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's hard for occasional GPIO code reader/writer to know if values 0/1
equal to IN or OUT. Use defined GPIO_LINE_DIRECTION_IN and
GPIO_LINE_DIRECTION_OUT to help them out.

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
---
 drivers/gpio/gpio-aspeed.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpio/gpio-aspeed.c b/drivers/gpio/gpio-aspeed.c
index 09e53c5f3b0a..f1037b61f763 100644
--- a/drivers/gpio/gpio-aspeed.c
+++ b/drivers/gpio/gpio-aspeed.c
@@ -487,10 +487,10 @@ static int aspeed_gpio_get_direction(struct gpio_chip *gc, unsigned int offset)
 	u32 val;
 
 	if (!have_input(gpio, offset))
-		return 0;
+		return GPIO_LINE_DIRECTION_OUT;
 
 	if (!have_output(gpio, offset))
-		return 1;
+		return GPIO_LINE_DIRECTION_IN;
 
 	spin_lock_irqsave(&gpio->lock, flags);
 
@@ -498,8 +498,7 @@ static int aspeed_gpio_get_direction(struct gpio_chip *gc, unsigned int offset)
 
 	spin_unlock_irqrestore(&gpio->lock, flags);
 
-	return !val;
-
+	return val ? GPIO_LINE_DIRECTION_OUT : GPIO_LINE_DIRECTION_IN;
 }
 
 static inline int irqd_to_aspeed_gpio_data(struct irq_data *d,
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
