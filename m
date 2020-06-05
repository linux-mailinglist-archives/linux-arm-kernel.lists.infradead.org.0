Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9F21EF2E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YUhyTu+MDdFbWlUD4jVqpn5bQo35WTpfaQq5UQaCXI=; b=Qn7IfQ4y+r9YSF
	CzLLUspoPU69vkiacGlJIjHe0W8io+FmnN3stWZ9Yx0ygmCDTdNaEoLb+AFZxi4xgJSySuzfHbrpJ
	lwU/9flbJE/F32FpQp2F1Cl2wHOODvnLkGVSf7vUC94LvS+b6U1JpGRhk94pFQl01LN75DoVJpL98
	42oqSD0H/qn6W4QMstX1O42sHHgZnxbYE2TvnKi7c7HokPIBGZoQZR5F4vDq/K/tD6PJSmqhdaIFi
	guihaQApD0vw0bx0mPjyNMmWBV/rXcvzLakeFDKV0S5GsmmWZEzeP5r/Q75Oi71AY8GjZ6RtUtX1/
	GqxtgY1Y3CRcta1vJ5Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7Uw-0007rj-LW; Fri, 05 Jun 2020 08:14:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7Uo-0007qs-Um
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 08:14:36 +0000
Received: by mail-pl1-x644.google.com with SMTP id bg4so3349278plb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 01:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dep05XtC6CuktEauurS07Sy6QGbgqiv3E+ii3Ovb+Ls=;
 b=DtPDLU5uvgVYNSLmyiKoOVclyfKzq/LadYhfYsydWTd6wNLn9WXOeNCQZ1eiRcsqpR
 eM+UfKM607A27ZS4k9+lPQo7wLpshrnQmdyy6M0YBnJNJB92lKYWsICiQ2QqDFyV2uuP
 mVmeaA7d2/jp9aUsu3rYaJnq2Nl9XtTb+Cm6x0hdWWSGxryrnI8gdVK8Ek+iQH8lpXnM
 sWKr4BOYZ/6PfVnuj1aa8yhI82S6X9Ifg9IgmLIIGZx3FhgRgITl0KKSBScv8VHg7Y2J
 iSbdP8PDzD4ZGltMHRLeHWEdsWOCm5HZzz7yODflx/bVmvni10eBB/Q6H+cMfcwqURca
 LIKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dep05XtC6CuktEauurS07Sy6QGbgqiv3E+ii3Ovb+Ls=;
 b=twW0Ld+uOUV6+EDa9MBrTRSzo+turUDKjhkyOQy8BLkB7SH1sVBdeOSYV2WA4Chztr
 nDn6AbNzF1kDbNsmYeydi7XlYyfWIRQG/POEyccLrd/754/cOTk9MX6r64H1GMW8FT3I
 KXzPHv/Uf91X8SMR7GwgZHIWqLzsOF+9haNc1hsERVEVdscvYN1WxUkm5OyiK4ZnK2l7
 PTSo1/bwIPLQK5FZ9u0UtLpYQc+XQHdJvqCw28lwfIJHsvIv8g2IrFCRG4FuT4BA+KZv
 QWeadcJOHoSNsm5ZJeYiEyqGXcDbSylqQdEIXZBlIkS/rsKxZAwIRJqkhALd0+6YZ7OK
 aiGw==
X-Gm-Message-State: AOAM530g1IqjpcNTM27Ft5N+HHc85uChqCSV52koA0JmhXjEPvTxaFCL
 ke4T7tUDfoosvS7x57mHqG86FQ/hyvaqNnWwejE=
X-Google-Smtp-Source: ABdhPJy6V7rCbEiJe15C6DeQ4diyGwP3W+IH+3LGFcotcY4Lzpv76z0aCO0s2xeMP6Sc/HpdiVeb+XHZ7d/jwbWAe/g=
X-Received: by 2002:a17:90a:ac05:: with SMTP id
 o5mr1713137pjq.228.1591344873732; 
 Fri, 05 Jun 2020 01:14:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-5-michael@walle.cc>
In-Reply-To: <20200604211039.12689-5-michael@walle.cc>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Jun 2020 11:14:17 +0300
Message-ID: <CAHp75VdeD6zDc--R4NPHsiqQerzfNGwUikLN+WHMiZZVsQ8QSA@mail.gmail.com>
Subject: Re: [PATCH v4 04/11] watchdog: add support for sl28cpld watchdog
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_011435_009697_740D79CE 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:
>
> Add support for the watchdog of the sl28cpld board management
> controller. This is part of a multi-function device driver.

...

> +#include <linux/of_device.h>

Didn't find a user of this.

...

> +static bool nowayout = WATCHDOG_NOWAYOUT;
> +module_param(nowayout, bool, 0);
> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
> +                               __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
> +
> +static int timeout;
> +module_param(timeout, int, 0);
> +MODULE_PARM_DESC(timeout, "Initial watchdog timeout in seconds");

Guenter ACKed this, but I'm wondering why we still need module parameters...

...

> +       int ret;
> +
> +       ret = regmap_read(wdt->regmap, wdt->offset + WDT_COUNT, &val);
> +
> +       return (ret < 0) ? 0 : val;

Besides extra parentheses and questionable ' < 0' part, the following
would look better I think

ret = ...
if (ret)
  return 0;

return val;

...

> +       int ret;
> +
> +       ret = regmap_write(wdt->regmap, wdt->offset + WDT_TIMEOUT, timeout);
> +       if (!ret)
> +               wdd->timeout = timeout;
> +
> +       return ret;

Similar story here:

ret = ...
if (ret)
  return ret;

wdd->... = ...
return 0;

...

> +       ret = regmap_read(wdt->regmap, wdt->offset + WDT_CTRL, &status);

> +       if (ret < 0)

What ' < 0' means? Do we have some positive return values?
Ditto for all your code.

> +               return ret;

...

> +       if (status & WDT_CTRL_EN) {
> +               sl28cpld_wdt_start(wdd);

> +               set_bit(WDOG_HW_RUNNING, &wdd->status);

Do you need atomic op here? Why?

> +       }

...

> +static const struct of_device_id sl28cpld_wdt_of_match[] = {
> +       { .compatible = "kontron,sl28cpld-wdt" },

> +       {},

No comma.

> +};

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
