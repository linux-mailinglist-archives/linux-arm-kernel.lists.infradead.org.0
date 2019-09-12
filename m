Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C662B0BDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ir6VIcQvljhTwmcjCtQ0SBngxlhSQevHEaEV/iB1BIo=; b=eJ033u+NwXb6RL
	5vp0H8fPEUgUc3ex77Jb5ojo+Us29LfZuJCkC66B4rkP0Ui5sIpEB79GcVcVCgekCjNzYi4le001U
	Y9q2ZEiKnpccQ03ffgZ1ELi+RxRp8YVG951jkbN7zGSzui7CEICuxdNl8CqGmmJcUIurgnmnBLd8/
	I4Y4SZzxjatpIdzcO1Dm0xaFk8tZm1Efs+Eh2Z0uS0KJQAHa8CZY5bT8AjnvwDw2OA48H4Hv0n79p
	WeJ6b+3b3jbds+TkyUyJ/gM5bO17uNXHhKHnXvEntrQFniNSENbsCHRJpqMfbfWJqqS7BWZXYoM38
	wSmMMUBYkiEICBlrmxww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Lha-0004jv-Ez; Thu, 12 Sep 2019 09:47:46 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LhK-0004iW-UE
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:47:32 +0000
Received: by mail-qk1-x744.google.com with SMTP id f13so23799044qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 02:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=njDtF8upkA6+NaauiLZUsAxJubAF9fG83zymry8vAaU=;
 b=hWMSgmlLtCEWRX/MHXkshsdVSzIZAXdwroHnFWd1J+Pi/zDbGAZcyCfZPRTWouMTs3
 HjdnM7SbArudL+LwJw9WXwtNhkxNJ3vPlJTBXwcwK+HnfsDPaTouep35wtRSaBTUpjrI
 9emk8DOaWZePVDjguyhCt/ZL5d6Jbv6RqoCnfcdaExjJj3B1O2Clo5CXX+ScgLcmxCOf
 9/ugnWmvMifS7Z+DvKaoS9sgQ0er8SxLA0lyfPk5VTk9hpa5RR1ZuoDNDMMCWrBadl7y
 3s3xpnuk7FYIRnmUpF5Mf7/DQ3YY1oZ0lqDWccoUZ59bcKSlG6yXZueBxl49+QYWgfcz
 G4sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=njDtF8upkA6+NaauiLZUsAxJubAF9fG83zymry8vAaU=;
 b=guqP20O8PqO/IfLkvzaWucpknRGvfAlrolh9K0X3D/ly5IW1mmohTex6K+ptgZ+Dve
 WXMbOHExf7yGSL7lT1YtjxVlfB5FG+RgH7YqjORCttSDSIkbAtLd+whiIvTIsAKDrOa3
 tODaDj1wOfsL7l3zbAempCHYTvBClv/JSOokzIwlCb3HPF00DNd9QSnZjb2WSaS4ivp5
 F837nnnV0mXJIKL1pJ8R6bF4shpavqTMP/rFm94hl1GlS2+LwKGYBn7fbfbbvfnatk0F
 GtOXod3empnqq01eAtRTVB6R0TgToqUmwHFYwAQDLRYqfKNS1vYbWxVfoFUGibX7UuDi
 Ublw==
X-Gm-Message-State: APjAAAX5LTum/wMaIUNHnytdBy+AX5pGP3qMSGRkr5f0BmDap92rSD4X
 kPl8ziTi1+yX2wS02EjyUj0IUItGvwxo+MJ3unqvEVvLU8s=
X-Google-Smtp-Source: APXvYqz/1oDNL1ZZfCatdlik6ssSKqxLf+19ecAGHXvhEDBbY9mBKtVG6u/Wq02n39I2GGkc6GmOYewOwwhK8D9OZR8=
X-Received: by 2002:a37:6d2:: with SMTP id 201mr39608673qkg.106.1568281649476; 
 Thu, 12 Sep 2019 02:47:29 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1568239378.git.amit.kucheria@linaro.org>
 <CAK8P3a2zGJx7SCA4LUHPGTybN8GU16Ah3H0FbaOEwR3H7uGCnA@mail.gmail.com>
In-Reply-To: <CAK8P3a2zGJx7SCA4LUHPGTybN8GU16Ah3H0FbaOEwR3H7uGCnA@mail.gmail.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Thu, 12 Sep 2019 15:17:18 +0530
Message-ID: <CAP245DVab2Zw8XPCvCc4kCrq7RCSRh0K8wN=AmLdLMVJQcTmSA@mail.gmail.com>
Subject: Re: [PATCH 0/4] Cleanup arm64 driver dependencies
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_024730_975131_66978590 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, arm-soc <arm@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Thu, Sep 12, 2019 at 2:59 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Thu, Sep 12, 2019 at 12:18 AM Amit Kucheria <amit.kucheria@linaro.org> wrote:
> >
> > I was using initcall_debugging on a QCOM platform and ran across a bunch of
> > driver initcalls that are enabled even if their SoC support is disabled.
> >
> > Here are some fixups for a subset of them.
>
> The idea seems reasonable, disabling a platform may just turn off
> all the drivers that are not useful elsewhere, but there are mistakes
> in a lot of your changes, so I'm certainly not applying these for 5.4.

OK, thanks for confirming that you have no objections to such changes, per-se.

I'll spend some more time ensuring COMPILE_TEST coverage for these
cleanups. I only focused on quickly cleaning up my initcall_debug
output for now.

> Generally speaking, the way that works best is
>
> config SUBSYS_DRIVER_FOO
>        tristate "SUBSYS support for FOO platform"
>        depends on ARCH_FOO || COMPILE_TEST
>        depends on SUBSYS
>        default "m" if ARCH_FOO
>
> This means it's enabled as a loadable module by default (use
> default "y" instead where necessary) as long as the platform
> is enabled, but an x86 allmodconfig build also includes it
> because of COMPILE_TEST, while any configuration without
> ARCH_FOO that is not compile-testing cannot enable it.

How would you like to handle defconfigs which list a driver
explicitly? Should we add ARCH_FOO to those defconfigs or remove
DRIVER_FOO from them?

Regards,
Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
