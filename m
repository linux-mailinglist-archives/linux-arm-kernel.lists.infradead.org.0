Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB3D1EF2C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00cOi+8HNNIryF2Aeo/4UUDrwAYffJ/RdEsk9WKe0fU=; b=QnoVkmLCpE+/MJ
	wcVWPqkJX82wL1NOKWYOw/KWN+CFZ2wCP4vqsse2sUwmKloMB1QWAzyxQepFbNkBfSCngVuddDbNe
	sp0M0WBW/I/cpElLXDFQNtm83XA1W2UKsiuSCB0hdd8S9WP6P9vnzQzGKWLlWencpout0VI3tAowt
	m2WD0A3Yl25FVmhQX8wrc9d1iGVTvvFD+zqo0ZTeFOrjfujW/w2kzvRG/W66cN0gHpJrU4YctC4gj
	uOXZ1H/cxJGRs9b7roY8Za/HCsQ3rhwetUs904c0hrP76+iJFQRukCl6xLuyd2KXb9N5zl1mKBLIe
	mPY6KOX7OjmjvPA9JlNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7OO-0004BO-FU; Fri, 05 Jun 2020 08:07:56 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7OH-0004B4-CZ
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 08:07:50 +0000
Received: by mail-pl1-x642.google.com with SMTP id bh7so3326069plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 01:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mh4Ou1kljVhmduS90PzlDrAXnymKkFPOJ7HMxIuD1Kw=;
 b=ooV6D/FPWvYy0szimNsEbMVLx4ELEjsAq6byLimowmFrpxqQOOnGvbGhMR9bBWXX+H
 rsS/Z/gP8h2jLc7FvWubJLY4ouB+hb7PbdRl3uqWatLg1z9wjEOhfekVDH3u0+GYkp4b
 mNUVgP3DzqQ5ipr3hMG4iWbNbaA0zmL08KVHfWfQiDMT/In9+o3QfSgQ8ScQPPCkNqlZ
 WuPaBoCowYeyAHNhrYJ4euXf0b8vKiOtJtwO6Wj+w2sdFw8VgkF+Qmzz0rT5TktKtUeB
 C6lCJCvuk3uPzweD1gpoHmpODgP2ppvphW7rJMppm2pyjDNMpZ+fLlrLc6g22StiXcA9
 7dxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mh4Ou1kljVhmduS90PzlDrAXnymKkFPOJ7HMxIuD1Kw=;
 b=eHceZJFuZvrV6git2IfGgAGLzBdHrd6h6knuR3uF/keE4EcqeNleUup4bYS+m4KdI4
 gBOhDTZWur3tz7kAuLuK4OmDDOLpAMr1K1+yeexBPt06eGxKbt8W8c7Fk41hnI0syrGg
 6ZQZtzMyvJja1Qz6nBiz9d/uBjnphTxLIqkY2y+mdTAA+CiulotEgh9aaDPltAKQekB7
 Jwxj/pKdGi+f5sj9Lss7xn6vQFDTubq9FZL9ehG4TpGNygr3a5Q+3nRQMuZgaAtgakOl
 b7f5opfe902jE9PyQdw3S6lTPhVp8+fULU4vUzaBLFjcTdA/hrp9gwlmsxn/Gk6DyA1S
 4YaQ==
X-Gm-Message-State: AOAM530ITJ7JB/1RSiy/5r/0iIN0RzLtE5V27Ljpl6QF94gqSlw5lU+w
 7k03cVh62/IWEV0NIb17K5x36tQtZxeWpV+n8zVdCMRS7p8=
X-Google-Smtp-Source: ABdhPJyxNexTfAEaebDSZO4i7E1Zrn1WbnacURd4rREtFFQ7AxnFLe4wpe5cp8So8FlFIxnRiJLHBWwprn7jbMq6GlQ=
X-Received: by 2002:a17:90a:1704:: with SMTP id
 z4mr1570669pjd.181.1591344468760; 
 Fri, 05 Jun 2020 01:07:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-4-michael@walle.cc>
In-Reply-To: <20200604211039.12689-4-michael@walle.cc>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Jun 2020 11:07:32 +0300
Message-ID: <CAHp75VfMSbAMPg2ZLO6kE-9vkQCt0a+=Lji8V5ngY7xdUbfiMQ@mail.gmail.com>
Subject: Re: [PATCH v4 03/11] irqchip: add sl28cpld interrupt controller
 support
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_010749_444193_05154F19 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 12:13 AM Michael Walle <michael@walle.cc> wrote:
>
> Add support for the interrupt controller inside the sl28 CPLD management
> controller.
>
> The interrupt controller can handle at most 8 interrupts and is really
> simplistic and consists only of an interrupt mask and an interrupt
> pending register.

...

> +config SL28CPLD_INTC
> +       bool

Same Q: Why not module?

...

> +static const struct of_device_id sl28cpld_intc_of_match[] = {
> +       { .compatible = "kontron,sl28cpld-intc" },

> +       {},

There is no point to have comma in terminator line.

> +};


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
