Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476F11EF5A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3DEHdar7NX6eiKva/YsHZ6WjsX2Vo6z3YG5sKeb0as=; b=nO2hd9pNA7jKxW
	GWS9nEJkfmr9y1P0RJljfEqYR9Dxfspy5VuwEI4Q//bcbflIEAfhiRhvW5IbMMO+JTX5sqUdDL2EO
	9CbtuyD+Nt48U4Ka687CQkWZsq1gg9SgvnYA/14yNo3AZdv4pAtcIVXKrURBQEyYS2JeTacmNblEB
	Lm99AuMS8ROaDtUZWs7Ur4wKBv/2iGAGAI0vFXTcxMEVdMmRnhDJmyKsDilNFlujOBDXB29jMuOMw
	BquGUFOrbos+P/m/z7PKB5YaM+xWC6eHD47Gx/wsqgdYP/bGV5MUmxWUjhNF5dwacjEHA2mC2J8fM
	q+XPeReblJFF3eN8qvtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9u3-0002RS-4o; Fri, 05 Jun 2020 10:48:47 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9tv-0002R6-F1
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 10:48:41 +0000
Received: by mail-pj1-x1042.google.com with SMTP id b7so3199122pju.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 03:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hT5EtYTIJL/7KK1ErJ4XuTZSMU98O4NGYES7BTZShfU=;
 b=gUKniJAYthQYiCeLiJbQxp6vsgIMrYFTG3Tn0ztGQdAgJJ5SIzW9Qq+1WYjhN7yVaR
 dqPLJ6u8EPjvcsgOjNTxo0b6um16kDUcqfOuHSlYC0SJku2U0ceSI9Em09ln4GUbFpph
 kvSRDrMrLoPz0APi14wENlVfArV0pT3I/24PCyUfjYagBh1sTwgvy1kuLA9mVFd7eZ8u
 UCNaiWg/sKwjqaA+PU4vDlTyu64d24et0BTHPfF25369Vb/euo3Q0WtQ4cbeWcZ6S9Uj
 d6X7vp1YGXR6zxgqI4DmlTY86u6lNf5+TOFVpXVzPF2q/ePDeJZABOF3KAJD9Fg23qY/
 +I5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hT5EtYTIJL/7KK1ErJ4XuTZSMU98O4NGYES7BTZShfU=;
 b=UuqbPe6maVHdwYtCK/eZfa/g0TN6QU8R3djpbFUQT67ZyQZ8Q2KYgEXxNTZShSKjJP
 IURA9CB7SFeF/RFSKR5aBwbVQJ8OlJxEA8ljqVk/X5UbEhGhslz0GpZdG+U7De7mO9mf
 q7VWhGWfb+qM8IXz6NxfOPocmNR1IjEDUqJxzHs14xx0D77lLhgMVrk6borNocys10UI
 KJO9079SeYxlm2sQ781dk+0dkEahnxwlC/RviWqSwq2983nEFzEVp5Xc93Ifl47Y8yNx
 1Nar1rYndf3jT4oJ6KQbCO6zQ21ixsBuyh3ZJETfeci1j2kRwf7BG8fmdLmqwUknc2oG
 oeaQ==
X-Gm-Message-State: AOAM533wPnudAoNIX5rZIUbhNrMmLz3k2hqoUSVCULGSPz0/f0dVWy6k
 djKIsYZXbWn893S+Kv37CZXGlrwtQx36DN35AaA=
X-Google-Smtp-Source: ABdhPJxJO5Y4Qm5YMH+m2+d6tv9L1OTX95vElklp0iU6q2z5TlX53tziLrdZX6T1mwhQ2rSUj09xKWtdLeKZgYN0Lsw=
X-Received: by 2002:a17:90a:1704:: with SMTP id
 z4mr2258157pjd.181.1591354118825; 
 Fri, 05 Jun 2020 03:48:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <CAHp75Vd-R3yqhq88-whY6vdDhESpzvFCsbi-ygSTjfXfUzOrtg@mail.gmail.com>
 <8ed988b3e0bc48ea9219d0847c1b1b8e@walle.cc>
In-Reply-To: <8ed988b3e0bc48ea9219d0847c1b1b8e@walle.cc>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Jun 2020 13:48:27 +0300
Message-ID: <CAHp75Vf00w_UUvXULVd=OgSVM+p_pmNMJRPVnf8GNZW10c_j5w@mail.gmail.com>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_034839_527072_A91562A3 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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

On Fri, Jun 5, 2020 at 1:09 PM Michael Walle <michael@walle.cc> wrote:
> Am 2020-06-05 10:01, schrieb Andy Shevchenko:
> > On Fri, Jun 5, 2020 at 12:16 AM Michael Walle <michael@walle.cc> wrote:

...

> >> +       bool "Kontron sl28 core driver"
> >> +       depends on I2C=y
> >
> > Why not module?
>
> There are users of the interupt lines provided by the interrupt
> controller.
> For example, the gpio-button driver. If this is compiled into the kernel
> (which it is by default in the arm64 defconfig), probing will fail
> because
> the interrupt is not found. Is there a better way for that? I guess the
> same
> is true for the GPIO driver.

And GPIO nicely handles this via deferred probe mechanism. Why it
can't be used here?
So, we really need to have a strong argument to limit module nowadays
to be only builtin.

...

> >> +       depends on OF
> >
> > I didn't find an evidence this is needed.

> >> +#include <linux/of_platform.h>
> >
> > No evidence of user of this.
> > I think you meant mod_devicetable.h.
>
> devm_of_platform_populate(), so I need CONFIG_OF, too right?

Ah, this explains header, thanks!
But it doesn't explain depends OF.

So, perhaps,

depends OF || COMPILE_TEST will be more informative, i.e.
tells "okay, this driver can be compiled w/o OF, but won't be functional".

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
