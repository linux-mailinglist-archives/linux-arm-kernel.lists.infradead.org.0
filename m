Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55031EF6C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 13:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y2r/18as3mdjYmjouI14uWKEH+SVxQwd0/e5MBzVpq8=; b=SHhy28HnDjF27V4KtpqgV9ReN
	T0lFSk1cQev2lGckQZ5uq3iMhXN0ku9liv0rpQjw1UzAzqchfwGrHwjdvBR0mODQWzyFqhi0FCViw
	nG3Q3al3ek8VdqeTI+7BgLjgQGUXRMcl7DpdtPIaX9F4A2d6g5JOBINHNThY5jBiF2/4pkSSjKuIG
	Hb9NNSSB1uK/ra0tC7ur+gjiIC//NnAMjUVsxdjj5Ua9B2UCAJRSAqS9CIWpPdmzyn2ZaiVfJdXgQ
	jm08hiKNacMLmd3CgU4EL1v9vOnzJ3EVy9WFfpQB1MuRFS3rn0Au1FSZE2WCnCGjvvotvy3tOdZKu
	C3KoLPI3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhAsX-0000xj-Ry; Fri, 05 Jun 2020 11:51:17 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhAsR-0000xG-Af
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 11:51:12 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 726BF22FEC;
 Fri,  5 Jun 2020 13:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591357869;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/ER+pXew699aFz9lRU/UtY269UriM4m1gHDqBzilNF0=;
 b=WOTqL1q5lVzt+KkEj2owI4A1lqxulU6qjVgnX7Fgolv/1VHdSWTe5qwcdYnZRfLQ2I7sHo
 1EUptsptx9N4EuPomc09TB5DOJoQNPkRGpLSCB/Ur9LH8PQiLUnhh+iLM7hAcyB7Q9jxZH
 VBka4JiutxAQHctV0rsFn+jcdze1zKQ=
MIME-Version: 1.0
Date: Fri, 05 Jun 2020 13:51:09 +0200
From: Michael Walle <michael@walle.cc>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <CAHp75Vf00w_UUvXULVd=OgSVM+p_pmNMJRPVnf8GNZW10c_j5w@mail.gmail.com>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <CAHp75Vd-R3yqhq88-whY6vdDhESpzvFCsbi-ygSTjfXfUzOrtg@mail.gmail.com>
 <8ed988b3e0bc48ea9219d0847c1b1b8e@walle.cc>
 <CAHp75Vf00w_UUvXULVd=OgSVM+p_pmNMJRPVnf8GNZW10c_j5w@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <dd0e4cedd004768d1090766d6eeff10a@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_045111_513943_D00E30B5 
X-CRM114-Status: GOOD (  17.13  )
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

Am 2020-06-05 12:48, schrieb Andy Shevchenko:
> On Fri, Jun 5, 2020 at 1:09 PM Michael Walle <michael@walle.cc> wrote:
>> Am 2020-06-05 10:01, schrieb Andy Shevchenko:
>> > On Fri, Jun 5, 2020 at 12:16 AM Michael Walle <michael@walle.cc> wrote:
> 
> ...
> 
>> >> +       bool "Kontron sl28 core driver"
>> >> +       depends on I2C=y
>> >
>> > Why not module?
>> 
>> There are users of the interupt lines provided by the interrupt
>> controller.
>> For example, the gpio-button driver. If this is compiled into the 
>> kernel
>> (which it is by default in the arm64 defconfig), probing will fail
>> because
>> the interrupt is not found. Is there a better way for that? I guess 
>> the
>> same
>> is true for the GPIO driver.
> 
> And GPIO nicely handles this via deferred probe mechanism. Why it
> can't be used here?
> So, we really need to have a strong argument to limit module nowadays
> to be only builtin.

Was that a question for me? TBH thats how other interrupt drivers doing
it for now. And it would be the users who need to be fixed, right? Or
even the platform code? Because it will complain with

[    2.962990] irq: no irq domain found for interrupt-controller@1c !
[    2.975762] gpio-keys buttons0: Found button without gpio or irq
[    2.981872] gpio-keys: probe of buttons0 failed with error -22

>> >> +       depends on OF
>> >
>> > I didn't find an evidence this is needed.
> 
>> >> +#include <linux/of_platform.h>
>> >
>> > No evidence of user of this.
>> > I think you meant mod_devicetable.h.
>> 
>> devm_of_platform_populate(), so I need CONFIG_OF, too right?
> 
> Ah, this explains header, thanks!
> But it doesn't explain depends OF.
> 
> So, perhaps,
> 
> depends OF || COMPILE_TEST will be more informative, i.e.
> tells "okay, this driver can be compiled w/o OF, but won't be 
> functional".

ok


-- 
-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
