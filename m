Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312C51EF442
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 11:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQVL7gOMHvNZeyLJvjFgrI1BkzcMtPnz96qxH8gODyA=; b=sz/ZtQZVrDRazg
	Hwq5VDsQRYxxpBpekvB2HXjKGOvlZCnNvm2dNtqqmyFyEaL4mENsogrXEsqm64S4h9dY/zHQjwP2r
	L+YDLueiyYZuvDT/l0GnhX1gznMwo5hxVKIYO2LxW9vi1CBPpRjuqqGLiCykM6sQ5eW6CVA8xWXJd
	xniX/7o2Rla6g8zR1Tqz3ACLw9wNK3Tmdu7ieglRovOj97g87P/ERVYErqj6X4t/ckmDDNw4F12io
	b+wLokQwPSK5Yub/CU7p9+zmj1s5+mEywzlsnUrA04VJBweuBzIKugW9aX6mYok3yrLaCcfZ1c/l8
	toEvd++eTPvwE80Ekbmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh8j3-00019v-NT; Fri, 05 Jun 2020 09:33:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh8iw-00019J-90
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 09:33:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id t7so4899001pgt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 02:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IXcPHC51fCcVubrTICi/8ebQ3LHbBGFqVc4ZlvkcGy8=;
 b=YY5yU3cQ7x2nYhcyU6Irjiwac0T1X3r4FA1BzcjEXvTmKD8XF7ewfdDBsQMHyN6KxU
 cFdoRSQTl6THjHaN6iKdCqC0BT18oxYCTH1YobDoSbpGlkOC//8qTUR/rPRRlZVdI64f
 OsHkkqSlteKDL1f350r6Fe5Pb++laI5jkOJrF1Unn+FgfPyT5Gjit60bsEK9pPRGQ5DE
 DWn0f7KJp4ITvNVp9DaJtvu9QE8n38UOX22FxiXTySRqmj0VfkLbLpPs32+gcJm8HHyK
 TYxEPno36gqsfr6zFF1meSgq4MVTmwMPfHKo8WGVimW9hJWAdQTht0tModHLZnQB7XHA
 UroA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IXcPHC51fCcVubrTICi/8ebQ3LHbBGFqVc4ZlvkcGy8=;
 b=R4TUyCTq63bBEg6XG5p//lDASr/xWhxlAfASeaC3BUT3Ue9kqTD/xbkp2u75I1EmiR
 xFfTybXPctUhDLsquTA3HSteKxQv/3Qxcu/E6+sMh+AuO1X17FotjBYIUYyM+g6ocJCp
 ulemvJR9K6eSGB7txyeMRtAkDufrkhfPE40tfLupcOhqBIwgaMsuK9ody5DEOp/C0yVa
 sHQKccJNktEkyHZV6FLdW4WMz8Qnp651+8FFkTcNL8dmyTF2TVxBUjowwNvvgZNBa0Wi
 1OngMlcOku6hr2fS6tYmNevBvyTJnHGkQCmTVyzJFxasWJtLL0UazRPrD2FmzESGWVDh
 WfPw==
X-Gm-Message-State: AOAM532RN87n0w+BjdGmOOw6NhK+3yrzLGDHTdork2MxTWZQ8ow4Y6Gy
 BpZIzYyI+eXtXwT+49EF6diAx8MzlUZ1xbL87dJA+DGqmOE=
X-Google-Smtp-Source: ABdhPJxCu8hwG7M1JMYjjsO26eVAr+iHUb43Qkau67/BBHaGfF/MkvOzKWjclyCpz87HPx9T6XGE3cH7uyJ1d2IAzAk=
X-Received: by 2002:a63:305:: with SMTP id 5mr8367725pgd.74.1591349593472;
 Fri, 05 Jun 2020 02:33:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-6-michael@walle.cc>
 <20200605084915.GE3714@dell>
In-Reply-To: <20200605084915.GE3714@dell>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Jun 2020 12:33:01 +0300
Message-ID: <CAHp75VfTAasC319uXz82dDufdnTGFhTnzJPXknk2+w-rnFfXTg@mail.gmail.com>
Subject: Re: [PATCH v4 05/11] pwm: add support for sl28cpld PWM controller
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_023314_319551_2BB7369B 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
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
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 11:51 AM Lee Jones <lee.jones@linaro.org> wrote:
> On Thu, 04 Jun 2020, Michael Walle wrote:

...

> > +     cycle = state->duty_cycle * config->max_duty_cycle;
> > +     do_div(cycle, state->period);
>
> Forgive my ignorance (I'm new here!), but what are these 2 lines
> doing?  Here we are multiplying the current duty_cycle with the
> maximum value, then dividing by the period.
>
> So in the case of PWM_MODE_1KHZ with a 50% duty cycle, you'd have:
>
>    (500000 * 0x20[16]) / 1000000 = [0x10]16
>
> Thus, the above gives as a proportional representation of the maximum
> valid value for placement into the cycle control register(s), right?
>
> Either way (whether I'm correct or not), I think it would be nice to
> mention this in a comment.  Maybe even clarify with a simple example.

IIRC PWM has a helper for that (to calc period based on PWM state and
new duty cycle %).

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
