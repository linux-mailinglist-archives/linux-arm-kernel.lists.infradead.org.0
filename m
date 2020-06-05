Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EA61EF54C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cxgaNXrGVvETLzNAJGTv9BsnghDAOzZH5hHba8M6+TU=; b=ZqmCdafoR/PJr3KLorX7VPR6K
	J42a8lsaeYeM/KqUbo0EPDTU7dsc2Ps/yF0eFRJJ+iOZGUaRFw/iFw6wXlJRk2gPkkto/L978maGD
	Gohnw+Ns/BTupf6bYoDXd2H7T89gANXGS4ZcAUXGi264T+VNMKHtoGj90yOfTKmiT4kJTJIJ4BfBc
	rAiP38J5DggcBGDOOL6GT3WK9vYQMuowR+0cz8INFy2hXqOIYw95tr0jNV7ltLTqnrqRpg5sKfXip
	qw6xBErwiY7Jl6Q/iOdUBC3EdRABDTuOJDxQgEhymG3b8aCuzhPJfBVW2APDrNLkswGxJFHZrUfus
	t5P7Rmasw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9XN-0002AE-DC; Fri, 05 Jun 2020 10:25:21 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9Wy-00029J-I4
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 10:24:57 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 83D3C22EE4;
 Fri,  5 Jun 2020 12:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591352694;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ILwM29qMSYKcVIWPmdUtNbrZy37LKLfK7PaTLUSzfUU=;
 b=f4MCEfYDpsR0K+oXpcdSTqRG43PxCzYJmSlibPHE6ofdGUuZ0CvMgQcaoPasbcub3jyhG3
 T7/ZANjnNC6nRvAdE8mYArlV8+FVqCiV8I5Nf5F6LoVxDZEw+Y5qeiGxMLUXrNUBgbBTSn
 EEQf07mVqq8+OrOiS2L2exaQBCw7f7o=
MIME-Version: 1.0
Date: Fri, 05 Jun 2020 12:24:54 +0200
From: Michael Walle <michael@walle.cc>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v4 04/11] watchdog: add support for sl28cpld watchdog
In-Reply-To: <CAHp75VdeD6zDc--R4NPHsiqQerzfNGwUikLN+WHMiZZVsQ8QSA@mail.gmail.com>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-5-michael@walle.cc>
 <CAHp75VdeD6zDc--R4NPHsiqQerzfNGwUikLN+WHMiZZVsQ8QSA@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <8f042c2442852c29519c381833f3d289@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_032456_750270_2B8E73D1 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-06-05 10:14, schrieb Andy Shevchenko:
> On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:
>> 
>> Add support for the watchdog of the sl28cpld board management
>> controller. This is part of a multi-function device driver.
> 
> ...
> 
>> +#include <linux/of_device.h>
> 
> Didn't find a user of this.

I guess mod_devicetable.h then.

> 
> ...
> 
>> +static bool nowayout = WATCHDOG_NOWAYOUT;
>> +module_param(nowayout, bool, 0);
>> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started 
>> (default="
>> +                               __MODULE_STRING(WATCHDOG_NOWAYOUT) 
>> ")");
>> +
>> +static int timeout;
>> +module_param(timeout, int, 0);
>> +MODULE_PARM_DESC(timeout, "Initial watchdog timeout in seconds");
> 
> Guenter ACKed this, but I'm wondering why we still need module 
> parameters...

How would a user change the nowayout or the timeout? For the latter 
there is
a device tree entry, but thats not easy changable by the user.

> 
> ...
> 
>> +       int ret;
>> +
>> +       ret = regmap_read(wdt->regmap, wdt->offset + WDT_COUNT, &val);
>> +
>> +       return (ret < 0) ? 0 : val;
> 
> Besides extra parentheses and questionable ' < 0' part, the following
> would look better I think
> 
> ret = ...
> if (ret)
>   return 0;
> 
> return val;

yes, you're right.

> 
> ...
> 
>> +       int ret;
>> +
>> +       ret = regmap_write(wdt->regmap, wdt->offset + WDT_TIMEOUT, 
>> timeout);
>> +       if (!ret)
>> +               wdd->timeout = timeout;
>> +
>> +       return ret;
> 
> Similar story here:
> 
> ret = ...
> if (ret)
>   return ret;
> 
> wdd->... = ...
> return 0;
> 
> ...

ok

> 
>> +       ret = regmap_read(wdt->regmap, wdt->offset + WDT_CTRL, 
>> &status);
> 
>> +       if (ret < 0)
> 
> What ' < 0' means? Do we have some positive return values?
> Ditto for all your code.

probably not, I'll go over all return values and change them.

>> +               return ret;
> 
> ...
> 
>> +       if (status & WDT_CTRL_EN) {
>> +               sl28cpld_wdt_start(wdd);
> 
>> +               set_bit(WDOG_HW_RUNNING, &wdd->status);
> 
> Do you need atomic op here? Why?

I'd say consistency, all watchdog drivers do it like that. I just
had a look at where this is used, but it looks like access from
userspace is protected by a lock.

> 
>> +       }
> 
> ...
> 
>> +static const struct of_device_id sl28cpld_wdt_of_match[] = {
>> +       { .compatible = "kontron,sl28cpld-wdt" },
> 
>> +       {},
> 
> No comma.

yeah ;)

-- 
-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
