Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AB087C88
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 16:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHH0gzyW3tKc6fUnPOEz1E6MpDPRTZXN1oVhQhABLoY=; b=LIj57b1jk6rcGY
	llvKJg3PDZgxFei/QVGZqyRJOPQEL2tLn3PbiReKg5fGPFpnr4IpL8pFalzGxb8q/TKcNDW/LrhKm
	1LKN1XPVgbXl37m5Dnce5dZCtDz4T5k3PMZXPM0aVWJKLIfoaFitf7wPL9erpTyNjWdpVTXKWwZci
	IB5IaldKCtDJPWHNWywCl6W+upbHXYSJyowoDed6Vhid2WLVHdrerp5wjptjnTetuSEzXatYvewmr
	sVXnTyMxjAh5iPQlQfb5Gw3lYuc6yETWtfw21bwhaikyCf0y2ScxRoL88zku2QC2PPUTScGI/DjgK
	GCTOtJ33KB3LkQeZlBeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5kd-0004EJ-5t; Fri, 09 Aug 2019 14:20:15 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw5kR-0003d4-5i
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 14:20:04 +0000
Received: by mail-qk1-f193.google.com with SMTP id r6so71789029qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 07:20:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iqpS6f4iYT2/EOjyhlDBwimFIDoQ2vjPU9zyXzeymVs=;
 b=tvwkpuHVg/EsAAcn9ZQtkB/huKfDhHJYlkeaDolOJ0MYIYm57IiTt7s4TRU4nyk73b
 wZBYbNTD1pZrpLlpnF3SxjOiXU9bmBDmWuI2KtM2yolkBKMJ7PGEXt8OofT6hC8cODM0
 JgMfR57ewJQCSFt7hClzS2JxcgAuyNrFVETkQ95e/+NyU34+2hdhp930GU/yDBn5Fh4+
 eSpbpNMzK5op56r4VYjZInV11ky22wkskA7utpqbdvIAznbftUV0VpzgButQUpISdXmc
 iNGl/iR2+JSLad4k/92EDBIsM0yZzTiJovTSOZEnN5vi4OHarZfilb61XvM474yJy7YJ
 JIig==
X-Gm-Message-State: APjAAAXxg/QeNHc6HyiALN1oN/bwtVsUC8JTOjhSKuFMYwLpg7izXFY4
 +ZM3UK2f9wbYrtwYPtcsRekOuTtPWMSUH8JHT7c=
X-Google-Smtp-Source: APXvYqy/OT0e+ifcdg76ad6xNKU9QCStCMIG/+ooQXzRuWl//U3NqYzpdPro7Befy76nezGoQdOa5mEAGNXNhGehJZQ=
X-Received: by 2002:a37:4ac3:: with SMTP id
 x186mr17754552qka.138.1565360402354; 
 Fri, 09 Aug 2019 07:20:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-6-arnd@arndb.de>
 <CA+rxa6p4gD7+6-aRyd4-V4TvkyMiUh9ueMLc6ggBaDC=LG7fQg@mail.gmail.com>
In-Reply-To: <CA+rxa6p4gD7+6-aRyd4-V4TvkyMiUh9ueMLc6ggBaDC=LG7fQg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Aug 2019 16:19:46 +0200
Message-ID: <CAK8P3a0Do2=80bOEgi2=773rtek3wkHuQNESePZijy8f6pWJAg@mail.gmail.com>
Subject: Re: [PATCH 05/14] gpio: lpc32xx: allow building on non-lpc32xx targets
To: Sylvain Lemieux <slemieux.tyco@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_072003_236970_AEE553CF 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, soc@kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Networking <netdev@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>,
 linux-serial@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 10:02 PM Sylvain Lemieux <slemieux.tyco@gmail.com> wrote:

> >
> > +       gpio_reg_base = devm_platform_ioremap_resource(pdev, 0);
> > +       if (gpio_reg_base)
> > +               return -ENXIO;
>
> The probe function will always return an error.
> Please replace the previous 2 lines with:
>     if (IS_ERR(gpio_reg_base))
>         return PTR_ERR(gpio_reg_base);
>
> You can add my acked-by and tested-by in the v2 patch.
> Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>
> Tested-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

Ok, fixed now, along with addressing Bartosz' concerns.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
