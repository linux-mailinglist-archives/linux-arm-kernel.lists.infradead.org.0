Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F4DEFB38
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:31:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVKfujfrZSVd6V5Gx5BBsG3K5QMEXfXQGZVYSWWsUhU=; b=Afe0kiGIWWCfVt
	Hs3labKkSb0g3L3HvJAXROWzvcwUy5pDk/EYVKEapas/L1RAqBrD/JKDREUalMNmnvINxAo5Re6oj
	DibM0Iq6dQYpe9BmY4dhtDUnLo1jHr8GvdxNdt+8dHG8043pwK7Qs3pdNibgMl2gsiZKvMIMjan8t
	FcSQAv0UC2W4pRKtFSbLZ6p0Kic/5hghe4f6m9WVQWmAexzx8Wg3bMeM8xLB0pBhNxjRnb6mLIa8k
	KrCZUh/icn76/qYQkRDuUZSv6Dwj43vQEJ7Agl3rSQG/PzNseFlsWEfd9Csa+bGcHag50Lh2b2Nlq
	qNcK7vE5YVAHgaSmrWAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRw7o-0004wS-UT; Tue, 05 Nov 2019 10:31:48 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRw7i-0004vd-FW
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:31:43 +0000
Received: by mail-lj1-f194.google.com with SMTP id m9so21149954ljh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 02:31:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XvBRdkAyPv510oW/DoNbu2ek/YuJ4fUz43i4Kiqpz7Y=;
 b=iQFdStVJXaqh7D72vKgpkRWbpZqsF7NHmCxYbFYZ5P6qgmgc7thRnMZVcsDUqD3dBw
 JWpICvBf7B29MKc6ReQnJLJPajIzn6OE6qZEukzHOpy+POpIRckSmnYRF0BzGR0+E9+i
 28+X8bRw26gyK2cf4to9ArWqDzoBqVlAQGRRxtELX3g5Ss6BmbEQzLNQepLERe2FPick
 cf52ABrhH1FttKJurF9yIL9DYEoY6anTCYVdIC5E1L1wO5KT75msDLjGcK1vAauB7Bmy
 IJNmr/xsLzDVZ/DR1F35yeQcXqD4fHnrcu5hp9OtyBAOTq4tpTdi/oL2TSos+hrxlIWh
 JPcw==
X-Gm-Message-State: APjAAAWYF2Sdc9eQCbsKTzkFbirwGgoOtJ0uVRmNPrFnDYRH80Uty+kY
 3BMh7WflROQMTHXJXTqm+Gw=
X-Google-Smtp-Source: APXvYqwzcMTXY37jn+kevU5PVaRTL4Bx5Du38GnP8Dod/bvdxDLo0L2M/SRsDTpCtbdPGxLa8OU4Sg==
X-Received: by 2002:a2e:5c09:: with SMTP id q9mr21797881ljb.22.1572949901044; 
 Tue, 05 Nov 2019 02:31:41 -0800 (PST)
Received: from localhost.localdomain ([213.255.186.46])
 by smtp.gmail.com with ESMTPSA id y189sm13700469lfc.9.2019.11.05.02.31.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 02:31:40 -0800 (PST)
Date: Tue, 5 Nov 2019 12:31:36 +0200
From: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
To: matti.vaittinen@fi.rohmeurope.com, mazziesaccount@gmail.com
Subject: [PATCH 41/62] gpio: gpio-stmpe: Use new GPIO_LINE_DIRECTION
Message-ID: <ce14d5fa5cd4d07b1014220f660068c662ebc42b.1572945905.git.matti.vaittinen@fi.rohmeurope.com>
References: <cover.1572945905.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1572945905.git.matti.vaittinen@fi.rohmeurope.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_023142_517564_EF3D8EE1 
X-CRM114-Status: GOOD (  11.99  )
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's hard for occasional GPIO code reader/writer to know if values 0/1
equal to IN or OUT. Use defined GPIO_LINE_DIRECTION_IN and
GPIO_LINE_DIRECTION_OUT to help them out.

Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
---
 drivers/gpio/gpio-stmpe.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-stmpe.c b/drivers/gpio/gpio-stmpe.c
index 994d542daf53..542706a852e6 100644
--- a/drivers/gpio/gpio-stmpe.c
+++ b/drivers/gpio/gpio-stmpe.c
@@ -84,7 +84,10 @@ static int stmpe_gpio_get_direction(struct gpio_chip *chip,
 	if (ret < 0)
 		return ret;
 
-	return !(ret & mask);
+	if (ret & mask)
+		return GPIO_LINE_DIRECTION_OUT;
+
+	return GPIO_LINE_DIRECTION_IN;
 }
 
 static int stmpe_gpio_direction_output(struct gpio_chip *chip,
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
