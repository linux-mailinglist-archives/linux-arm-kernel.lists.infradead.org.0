Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB667F5E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 13:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sn5DUjPGYPZ9+oh7+697d7IwrEO2QkPYuQ2RKRwGPA4=; b=pejKkxFJaH6bca
	vgJEJbFd4soGk2bJXAjRVauIdfSFhpvAZGSmWXkCXcbPIdCHSwxZBoAivmroIE0d07uxdhnxTObD6
	mZ64+mFf7lsCus+XZMxyXbb/oX4QF53pRYgtF9oWRluwfDaG/e/oWZdOCY+oetgJaxZrt/qwg4g16
	GAuxHEuBLx4ElTpN5svxPB00Wbl5kJsxDQOgBY95a94v7F92pV6vApi8Mic97K9qhW0qVJUz0qilJ
	unFzqRIs7BdE1/i6jLQS22YN+FWCAMrYIrA0bri4iSlEkLVOLnvEfzGeiAWSG1bbjPIR0Wvx+3hIi
	uXXIW9yrL5kj2ddw+RFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htVbf-0003eN-OM; Fri, 02 Aug 2019 11:20:19 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htVbZ-0003e0-N6
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 11:20:15 +0000
Received: by mail-qt1-f196.google.com with SMTP id h21so73402008qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 04:20:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6svSKUB8W/2vAHAY5YVCqR8+83bHvMbbXUyJ8GuWHhs=;
 b=Hk3x8U8c3At0x1jjCQCwelJFXDdLBZlYw8E84RxcKVxTgtDKnVcoe+5yJhxoMxNpk0
 N58MAjNvcsqgCj+b4zjWICN5zrvMk6P2+V1pH0214YXcDuVPDchKtYY3WeHpF75Vjlzx
 h2emn3esQfSFhmnlhczuf14v9varG2srNv3GfDd2sgMNaYaXyGKgGSrWF4srjKaJd8CX
 dhFDunuIdLDcG/HP5HqsX4VsV2j6+A+jKCEBl7SWV0p2RF5ep27N+zQezKy/MWNybISP
 fQz2kcQa4CWaC2uT+GFqWL7gl0F4cLFp6e3W5/0S2z1vhB/CZXcp+Zgw5uJvHNfiLA2r
 lkzg==
X-Gm-Message-State: APjAAAW2eGPxwZ5EBXIb+UsXJJYCwGDqG3+Vgy5jXUwJHVncrcfrvgmI
 Ohf6ypmTes5PrTG4jFaGXE/2p+1O+L8R1ghW/uk=
X-Google-Smtp-Source: APXvYqzzEMPL706zJeruFWjyPx3W7qLTYqQ+nPflILZAKmqIvcLEpD7XRJHi8zMXFo3sUO3koJwU4XNqk+rw0f5qJV4=
X-Received: by 2002:aed:3e7c:: with SMTP id m57mr95077214qtf.204.1564744811845; 
 Fri, 02 Aug 2019 04:20:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-6-arnd@arndb.de>
 <CAMpxmJWFfT_vrDas2fzW5tnxskk9kmgHQpGnGQ-_C20UaS_jhA@mail.gmail.com>
In-Reply-To: <CAMpxmJWFfT_vrDas2fzW5tnxskk9kmgHQpGnGQ-_C20UaS_jhA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 2 Aug 2019 13:19:55 +0200
Message-ID: <CAK8P3a3KpKvRKXY72toE_5eAp4ER_Mre0GX3guwGeQgsY2HX+g@mail.gmail.com>
Subject: Re: [PATCH 05/14] gpio: lpc32xx: allow building on non-lpc32xx targets
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_042013_755473_F9B15F6F 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>, linux-gpio <linux-gpio@vger.kernel.org>,
 soc@kernel.org, netdev <netdev@vger.kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 linux-serial@vger.kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 9:10 AM Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:
> > -#include <mach/hardware.h>
> > -#include <mach/platform.h>
> > +#define _GPREG(x)                              (x)
>
> What purpose does this macro serve?
>
> >
> >  #define LPC32XX_GPIO_P3_INP_STATE              _GPREG(0x000)
> >  #define LPC32XX_GPIO_P3_OUTP_SET               _GPREG(0x004)

In the existing code base, this macro converts a register offset to
an __iomem pointer for a gpio register. I changed the definition of the
macro here to keep the number of changes down, but I it's just
as easy to remove it if you prefer.

> > @@ -167,14 +166,26 @@ struct lpc32xx_gpio_chip {
> >         struct gpio_regs        *gpio_grp;
> >  };
> >
> > +void __iomem *gpio_reg_base;
>
> Any reason why this can't be made part of struct lpc32xx_gpio_chip?

It could be, but it's the same for each instance, and not known until
probe() time, so the same pointer would need to be copied into each
instance that is otherwise read-only.

Let me know if you'd prefer me to rework these two things or leave
them as they are.

> > +static inline u32 gpreg_read(unsigned long offset)
>
> Here and elsewhere: could you please keep the lpc32xx_gpio prefix for
> all symbols?

Sure.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
