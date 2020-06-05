Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FFE1EFD37
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 18:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vbNqiEiKy4Xum4I3oC6bXtvo/iyvirWfx8HP+GawNkE=; b=sHYyCP4W4FZS14
	0mHOOq99gs3Z/dpZIrKmYsUrMw7kc0wyluROs+oZPCVklhZrHemX15kHRqxrZHu9E5BeaKo8o7IwU
	tLky176v9YehQJ7nmsuy/Vd6AJE0z7HOOl2un6ZvG8yyEJJFd0j8PRZNfOtTROez/2ZIxliHN2MRo
	DBNWP+V5YYboEAOB7+Jjlx3GpUKM+J767Y73InCWWQEUTdY0llhBmuSrgzCHt/ucJr2hyW/XU10i8
	qNAvdcZ5jcChd4chD3X1wTAhwWVnG9bVcZoO33Fg8UELn+mBMZg/YrGXZ4ceLY0cRgxgDqD47/UVQ
	5tB/wYP6H1RP3jS9qrEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhEqL-0006kC-6j; Fri, 05 Jun 2020 16:05:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhEq2-0006jb-9U
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 16:04:59 +0000
Received: by mail-pl1-x641.google.com with SMTP id m7so3803319plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 09:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=73E7RcoyD6PaDcTNS+l4UhJfaffhxVQRNwIljXNBTnY=;
 b=g39gSyKSZ6nFdS355NhJxXV7kRDPp92lfjop20jdOKudJotgA9Ley+ZJhs/ANJc3uk
 pDCQVLIAa3R1hAHTcDHOkQVw60cQN9Ez9VJjAavkzRmNoiMdOQLPyY4Yjn4K/DTONTKD
 RYpMjFy9eNrbO9NyUCQgWrii1EJkZEVv7LB8hG9G8/vTy94NRCaXNplr42FN0BbFoyiN
 eEy0gT7M5xNAUK0eulmJqkSnqL/pT5dYN/TjacCb/49FFpdjtd1KSTS3mn7WOaYvKU4o
 pRXg2LkXyORq06y5fGWS0NLv0VFPeVDB77y3Q+7LdyS1tru4TjQ7nhL8PR+qo4VfKptJ
 BSwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=73E7RcoyD6PaDcTNS+l4UhJfaffhxVQRNwIljXNBTnY=;
 b=QVJeEVsIeEb5r2X9y4axnrOjyDMrY6oZGY9cMKsKL0U8JOr87B5Trg/GhYF5sMC89J
 y19pQhhtAt7y0hNQLf8AfQATxEX+9wzrUq6iuOK1EkZn2a+nyFaLlN696uhdRelvTnwE
 oPKLpLdx+FAeIsIh6w5eRvz6sfPa3rdTi/w6ZUBw/WplYR5xcFtrhUC/ch35v66x1XhF
 /eGHR2p4rCae59+97y5S2UXpGR7LF6SEd0k99jzCnya5Iy1XUadgXSSkzfkLZ5ASVgJ1
 +mRPX/4uwtD1PEbcDbgKFUXyVI+ZjilD3tQGuNcXTOXdAqhhSiy/6VfueVGX/+GygOkN
 6xGQ==
X-Gm-Message-State: AOAM5339UP6ni+cdiLDnF14zv/fbbUGd8qe52cZ5KNIP4AB5vbg2t1Kf
 6vQvL7VurYLtr0xAzp2U9TXEivklTNWEtYn6xEY=
X-Google-Smtp-Source: ABdhPJzPaq665EFE1ksqX24DQEG6g0+cqU1LKgTTLqD7rhez7XPSsEjdUlhj39QWiyrEeqMUme8o/zQYAwiDdMDxHs8=
X-Received: by 2002:a17:90a:ac05:: with SMTP id
 o5mr3950020pjq.228.1591373097587; 
 Fri, 05 Jun 2020 09:04:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-5-michael@walle.cc>
 <CAHp75VdeD6zDc--R4NPHsiqQerzfNGwUikLN+WHMiZZVsQ8QSA@mail.gmail.com>
 <8f042c2442852c29519c381833f3d289@walle.cc>
 <CAHp75VfY0BD4CFu6Thx1wE-U0Zt1q8uTOLxkWTMdFk0MBuhYFQ@mail.gmail.com>
 <871a4990-5b94-3a17-01d4-74998375f08b@roeck-us.net>
 <20200605140911.GO2428291@smile.fi.intel.com>
 <20200605150542.GA254229@roeck-us.net>
In-Reply-To: <20200605150542.GA254229@roeck-us.net>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Jun 2020 19:04:45 +0300
Message-ID: <CAHp75VduUG=XkvyZwdZDNqBh3KE67MWZWgqBN67fN6StAa469w@mail.gmail.com>
Subject: Re: [PATCH v4 04/11] watchdog: add support for sl28cpld watchdog
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_090458_330306_FA1B155F 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-pwm@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Mark Brown <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 6:05 PM Guenter Roeck <linux@roeck-us.net> wrote:
> On Fri, Jun 05, 2020 at 05:09:11PM +0300, Andy Shevchenko wrote:
> > On Fri, Jun 05, 2020 at 06:52:00AM -0700, Guenter Roeck wrote:
> > > On 6/5/20 3:50 AM, Andy Shevchenko wrote:
> > > > On Fri, Jun 5, 2020 at 1:24 PM Michael Walle <michael@walle.cc> wrote:
> > > >> Am 2020-06-05 10:14, schrieb Andy Shevchenko:
> > > >>> On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:
> >
> > ...
> >
> > > >>>> +static bool nowayout = WATCHDOG_NOWAYOUT;
> > > >>>> +module_param(nowayout, bool, 0);
> > > >>>> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started
> > > >>>> (default="
> > > >>>> +                               __MODULE_STRING(WATCHDOG_NOWAYOUT)
> > > >>>> ")");
> > > >>>> +
> > > >>>> +static int timeout;
> > > >>>> +module_param(timeout, int, 0);
> > > >>>> +MODULE_PARM_DESC(timeout, "Initial watchdog timeout in seconds");
> > > >>>
> > > >>> Guenter ACKed this, but I'm wondering why we still need module
> > > >>> parameters...
> > > >>
> > > >> How would a user change the nowayout or the timeout? For the latter
> > > >> there is
> > > >> a device tree entry, but thats not easy changable by the user.
> > > >
> > > > Yes, it's more question to VIm and Guenter than to you.
> > > >
> > >
> > > Has support for providing module parameters with the kernel command line
> > > been discontinued/deprecated, or did it run out of favor ? Sorry if I
> > > missed that.
> >
> > Latter according to Greg KH. One of the (plenty) examples [1].
> >
> > [1]: https://www.mail-archive.com/driverdev-devel@linuxdriverproject.org/msg96495.html
> >
> What is the suggested replacement ?

In some mails he suggested to use sysfs.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
