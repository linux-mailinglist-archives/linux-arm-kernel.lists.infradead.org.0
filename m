Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD521EF5C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDlJRJz1xIncum85yGuUCBq1OfjzFUvf98LT/KlVCnU=; b=s6jicbX/VvmQf3
	ZSKs8UpJUMk2B38jmdtaibCZbuUkG6j6vEZ9NWV2f5/CAR2dDsLLJ6jCfOQTd4SYFeoeRo59Rt5/0
	e1mOauCkxGYvTUlFjmD3QthoYVXAkOgthLGhKIgkI0zEf2B8SUf6H881Bqy5chYvBFHgYwnzU7hwo
	Js6S5lxqMqPEx74EPq+Yp78GYRQZXrCaN9LJRrPCQNJ1ykIFFwEAJXAdXpkB9o75beHASM44l5tfq
	qcQ8E49vxzcHfVF5HG6A7Q3X3K2SO/LOVCeRqDrxk6rYAQdTzD+c6efdurjQGPyRjGwqRAyvYHwwY
	B2wlWAB7IoAiNNuWBoXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9wH-00060t-GH; Fri, 05 Jun 2020 10:51:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9w7-00060W-Vz
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 10:50:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id t7so3509400plr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 03:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jm0v4NSQR1eScm4hhrK2IVUXqo9gKL1/dYB+J6Im5x0=;
 b=K7KhDXCAN4clMZH/9uQj6/jxUV9WXBwbtZ3UN/nOr0eCOZx7zi8KmoNF1OOCbLvD/Q
 yCeXrjx95GEfn9SFJy/kuOFU0e5hZ7TxwAzd2yJ6KatQ9UAiQtKXcqZjeRrOxs6gUvvy
 /iD0SENH6qBwJH0O61kFDFhPIGIGy8OSbaVutwR5NpdNYCz0wbhqcsy2mVCoCe4WzyHL
 RiHAo/+E/znba4TKYpbeiFhAWsha+Fx0H0Le9HVZxYeLgyxR+cTOvGVHZhmGGYvDE0co
 oqFHhCL+74ImcrYmdoqftf3xhzH1oJLn1tecMG8FD2gp2mkeO2/RUFI/W5hSliYsW+VN
 vUog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jm0v4NSQR1eScm4hhrK2IVUXqo9gKL1/dYB+J6Im5x0=;
 b=e5adwBqFXgtFO1iUEL3uCPTcEmHX431eQnZomRUknsJ4UzOtXqI7S/pm/Thb/VbhgT
 IlTApYbphNG9grzfmeoGoTAUIniS8U6FR2NDQC2I5g4plpXrGGqq9yKs4eRbKTrX77fo
 5u4guxLaTn4aIlap0J6Pi+PxeqJzpc0rc96mske832VUIGyyOEraBNdSPRfd0/IFimTp
 zYxW6GgFdSmANUDaJ5mz8AZJHovXRrFqNSfTcG5m04ACXWZoTxXVAH8oBlft5Pn35v8R
 cZsZq4599beS9fU1kiqhihKjIdXI+7OF/NUuJu5w8RcTRbZFbnamgcel3oGw8tbTwjIJ
 ZL0g==
X-Gm-Message-State: AOAM532cVjrspoAt4+YgTZl4RBlcjD2ynpi0BAYikrf7dnmI3IHb0HJO
 v8XhSyh1nAa0ox3Rymc54eiL9pHxxjwEPlE20ts=
X-Google-Smtp-Source: ABdhPJy8g7xgtcfoQmROz1emJfu6kg9Wd3RE5AUde8dS472m5XXCXD1Sghv319T4YYpsCAKy9z10aBn1woa6UmZUj/k=
X-Received: by 2002:a17:90a:ac05:: with SMTP id
 o5mr2414679pjq.228.1591354255458; 
 Fri, 05 Jun 2020 03:50:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-5-michael@walle.cc>
 <CAHp75VdeD6zDc--R4NPHsiqQerzfNGwUikLN+WHMiZZVsQ8QSA@mail.gmail.com>
 <8f042c2442852c29519c381833f3d289@walle.cc>
In-Reply-To: <8f042c2442852c29519c381833f3d289@walle.cc>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Jun 2020 13:50:43 +0300
Message-ID: <CAHp75VfY0BD4CFu6Thx1wE-U0Zt1q8uTOLxkWTMdFk0MBuhYFQ@mail.gmail.com>
Subject: Re: [PATCH v4 04/11] watchdog: add support for sl28cpld watchdog
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_035056_031862_8C1BEA0E 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
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

On Fri, Jun 5, 2020 at 1:24 PM Michael Walle <michael@walle.cc> wrote:
> Am 2020-06-05 10:14, schrieb Andy Shevchenko:
> > On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:

...

> >> +static bool nowayout = WATCHDOG_NOWAYOUT;
> >> +module_param(nowayout, bool, 0);
> >> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started
> >> (default="
> >> +                               __MODULE_STRING(WATCHDOG_NOWAYOUT)
> >> ")");
> >> +
> >> +static int timeout;
> >> +module_param(timeout, int, 0);
> >> +MODULE_PARM_DESC(timeout, "Initial watchdog timeout in seconds");
> >
> > Guenter ACKed this, but I'm wondering why we still need module
> > parameters...
>
> How would a user change the nowayout or the timeout? For the latter
> there is
> a device tree entry, but thats not easy changable by the user.

Yes, it's more question to VIm and Guenter than to you.

...

> >> +       if (status & WDT_CTRL_EN) {
> >> +               sl28cpld_wdt_start(wdd);
> >
> >> +               set_bit(WDOG_HW_RUNNING, &wdd->status);
> >
> > Do you need atomic op here? Why?
>
> I'd say consistency, all watchdog drivers do it like that. I just
> had a look at where this is used, but it looks like access from
> userspace is protected by a lock.

Okay then.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
