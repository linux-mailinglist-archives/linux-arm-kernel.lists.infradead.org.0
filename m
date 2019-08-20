Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E691895C3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 12:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU1j3oo8UyXiLmN9u7sj8y0SaiMuNjGavhZIeh6LWTY=; b=llT5sTgNnqmoqA
	SVGLi+eLtGuM1Qw7sD9TJIPLzZSgnsD8+tEYGklmzan2F03jWNBqV5K/REZDr9+UM3HeJ5eEBJH3l
	HUIPHLNTXZnsojG+XV8u/Dzw12ApCZGHGgwEz7s7bDiPVCBrt/IkXju8q2/25W/Fwx8b4F0KgdTDa
	hQp09wCYMKB2pR6HnRqqeWDRxDHULSJzMY45e4vDlLHcGQ6Q6bO+FHhmWINyuOvBi2Ed1mHKxbcIP
	MPpbLAPGq80Mi1/HVa4y4F6n/YNetd+TSUkyuLG5EE+0tsOdX0FgtF32mY9nFnZzkmSoeevjcwbdU
	Q1toF9ejI8Au8dzjNV5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i01MH-00020k-Qh; Tue, 20 Aug 2019 10:27:21 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i01M2-000201-KI
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 10:27:08 +0000
Received: by mail-lj1-x242.google.com with SMTP id f9so4591764ljc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 03:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e/WL7mt//GAgzwpdMZbthxuFg+kLsllf6TCIqq5cm4k=;
 b=WRmbYOSuUZTNI+VHX1CcRM/fsEMSBDx0RvKKzmF0CBEnfGFQy4jwdRNLy7jlnI71Jx
 vpVfv1RUwcWCx6BY0Ww4yUiLIZW59Ks6mcyBJ/34UhiYcaCJMg0H2VxEQ4C77ZKH7OwI
 e1SvT7JJBct7l227/+DWqKgkSjG2K/bPFJGXSqOqyc5Z/GHZs7xizq/yrtYTa6vdpiBw
 vA3CPiGHNyD/M6Mx1CZtmQUaQ76xIgOYo2G5FmdW5bYPaMkF86DVU+QXZY26Hjj5yoKb
 077WUHbNXzbP2drPoIpP83IgyXznGU7ZNCatF/K1XShzcm8Cfj2hr5QISGBqHSCZt91P
 xkYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e/WL7mt//GAgzwpdMZbthxuFg+kLsllf6TCIqq5cm4k=;
 b=dWxbI03d7yqM2MvFW06dbWaYG0f3nGZPCfzq6k4dqRPgh98iwKG3/TNJjtmN1XyHN9
 yWb2z8/KQejJN1K8j1FOTqPUPLvJbaEpdf0/1QUS4q/KCxsC1YBdid0w0ktb185d2YDy
 xw16vhSrK8TFyWu42AQBQr5KWOsu07Q9lAPPxzTdDtk9MX5ynHcxL1EHe30HDWuGvb3i
 Jync6JJHWidKUhwvTGgdgPf+A6oXc0B3IQ0s2GjR0HxvnUsQdeGWM5m645UPttwV97QC
 EWfY1H5t9KU3gObnm393UHiOQehf1zxR8mdLhrTx3aiU0S76aBHnTgv0Olrt0l+D3y/o
 8/Qw==
X-Gm-Message-State: APjAAAVmod47gu+ysmys5PCVwDjIZ7AAF0rLbS9MkQMwVKKv+rx6HpwC
 Wkkklas1ZXVwgXkl6C2SjCrod+epThlTaU7y2hp6Fg==
X-Google-Smtp-Source: APXvYqy9d7CgQvy0ZM0/DSmtHyrZ+R2wFU3tRkdCwr+9kjsIgtuwE4FW7X7VWI/cj5Incxd0Z4l1OHqEHETZ6NI0BN8=
X-Received: by 2002:a2e:781a:: with SMTP id t26mr10426093ljc.28.1566296822942; 
 Tue, 20 Aug 2019 03:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <1566221225-5170-1-git-send-email-xuwei5@hisilicon.com>
 <CAHp75Vct3qtR5bDF6iALmduKEEq+gNL-btmzQVuWq_hYsmxKhw@mail.gmail.com>
 <CACRpkdbRZ=88+ooW5jb5vu4Dwsaj7Ce+V5Ked2-bGn0JWpTHfQ@mail.gmail.com>
 <CAHp75VcwDZdOwFsT4Gf-1a4tNGQdowK-RKRvSif2m7oTsVQNbw@mail.gmail.com>
In-Reply-To: <CAHp75VcwDZdOwFsT4Gf-1a4tNGQdowK-RKRvSif2m7oTsVQNbw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 20 Aug 2019 12:26:51 +0200
Message-ID: <CACRpkdZMHqppyzVQCLSR8yv1owZ71eDAduL9JGkCawjFvZ2U+A@mail.gmail.com>
Subject: Re: [PATCH v3] gpio: pl061: Fix the issue failed to register the ACPI
 interrtupion
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_032706_698141_A3C9AC64 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 John Garry <john.garry@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Wei Xu <xuwei5@hisilicon.com>, Linuxarm <linuxarm@huawei.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Shiju Jose <shiju.jose@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 huangdaode <huangdaode@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Thierry Reding <treding@nvidia.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 10:51 AM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
> On Tue, Aug 20, 2019 at 10:12 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Mon, Aug 19, 2019 at 5:07 PM Andy Shevchenko
> > <andy.shevchenko@gmail.com> wrote:

> > Exactly what do you refer to when you want me to
> > "re-do the approach for IRQ handling"? Do you mean
> > this driver or are you referring to:
> >
> > commit e0d89728981393b7d694bd3419b7794b9882c92d
> > Author: Thierry Reding <treding@nvidia.com>
> > Date:   Tue Nov 7 19:15:54 2017 +0100
> >
> >     gpio: Implement tighter IRQ chip integration
> >
> >     Currently GPIO drivers are required to add the GPIO chip and its
> >     corresponding IRQ chip separately, which can result in a lot of
> >     boilerplate. Use the newly introduced struct gpio_irq_chip, embedded in
> >     struct gpio_chip, that drivers can fill in if they want the GPIO core
> >     to automatically register the IRQ chip associated with a GPIO chip.
> >
> >     Signed-off-by: Thierry Reding <treding@nvidia.com>
> >     Acked-by: Grygorii Strashko <grygorii.strashko@ti.com>
> >     Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>
> Yes.

OK let's fix this mess, it shouldn't be too hard, I've sent a first
few patches.

> > The problem comes from the problem/mess I am trying to
> > clean up in the first place. So if the new way of registering GPIO
> > irqchips is not working for ACPI, then we have to fix that instead
> > of reverting all attempts to use the new API IMO.
>
> Sorry for me being impatient and asking for a groundless requests.
> I'll help you with cleaning this.

Sorry if I sounded harsh :( I just have a bit of panic.

I am sure we can fix this, I only recently realized what a headache
the new API is going to be if I can't straighten it out and have to
keep the old stuff around forever in parallel.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
