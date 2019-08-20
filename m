Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090B895A68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 10:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sxGN3E9pgcG/eLVGqCPJ2+ZCyvV4I5zQR9OkDFzkZY=; b=W59G2Ij+n7D2xF
	tbPMlTq3uciDGgxDdKd/ePgpFbS+ZcYqP1o/FPUt9yDnBk02fyrd0WdVpY5JA/eHKb89Ibe7TJnZz
	LURheLD9mqYkYWZjxyyyvU/cqvrXixWv5Bh149l4xYnm1+SjciNtZop6quIb3Ccb7wqfs7Nf7p6hA
	5dqkiu3Ot2WSU4lK0Me6l2ZWcQmezowlw4H3D9AWlUj9Hkv3aBp/GPm4FDn/sn4Ijyg55Qy7O4lU/
	i3JmeTurPeTgDRXEy7tUv38PsKlkRVPmU5L4+bqcGRSrfJEdT9Lx4r6RC4fYR9V7bSP7bhrxB0t1D
	5e2JkDtlWCf63aEyfwSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzztb-0003iY-Cb; Tue, 20 Aug 2019 08:53:39 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzrH-0001ix-6p
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 08:51:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id g2so2976260pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 01:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F8ZkO1elV3VOIo0K30JacS/YJHIWCmxOiyDVl2xJliM=;
 b=eId2nnkAbmSborZ14m9x5Eg3s55XQW5KuqyexFm/5IxvHBsrRv+KWoTfnOtu+EW6r9
 l/IRpKx5z37MdpptvqDXMu/rHXGsNaFsLZ2Aemm4WDxRuya1HGSJYS3rhx8TkQWyJ2zR
 qKQDBlSJLpfITyhCzjSSqK+JdTR8HDNFpX3zgUxRAjs0cvhPMEFHJiHYgcfY8LfjBJKg
 SiHA49PB2jRLP8Ezc3uN2bA1bvtqOO3x0TKu6vVrUbw8kb6eeLFBEguQt21Mhp4Gs5Ac
 DPPgVR9kg0aQJ8UhPnO6Gh+Xl83t/WVwffpkO1LcqkAHNsF/sYGZAwyBPAddpOB9RUqo
 vmSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F8ZkO1elV3VOIo0K30JacS/YJHIWCmxOiyDVl2xJliM=;
 b=baXlVFhZxtLrEmwtWKg/hzzHjQr8YqRgrzeCNmV51+TV9zM15mzeu0Dk9Fdzzzcsu3
 cCteYt6afvlW/rf+e66g2dPatdMNS8Cy6HplWMhfx3WcvZi3H+Nko9GbKsJxEDLr8NP/
 VrTzl0/Ygu85fwKz5xcU1h4rDLeexc4oNPWPJBLEVC1E/MlqyC8L/WrP8YIot0ljyl8C
 VDBciJxv6lpIoE3nEukiC3sWxx6hw/OZWyFsZ0ScNzLqsAMFqzIsxCxOzPStGQWMQ7zE
 TXSc8zbXNyz+FdpWy/i6Uu6dZYBADQ7jUit+KrAwhqVE9jZzXpSwKgZRAH7dP5R+/U1i
 Y/Gw==
X-Gm-Message-State: APjAAAV/XVo/zmBCxJ5oWoibvOoG0zIkG6Qt0SSoOAlcJSYz8teNld9Q
 HgCR65Y7OoQKVujMUXBwCad1cH+pDsICpbgb8PI=
X-Google-Smtp-Source: APXvYqzUg/wVcQbACT0z4VVsJ/hlgqRibUCwwz5eBIC3Ei4+518/wQLbSrJhkxetJKEWr9wqGNsdgSFW1JJnejnvQuc=
X-Received: by 2002:a05:6a00:8e:: with SMTP id
 c14mr28096166pfj.241.1566291074329; 
 Tue, 20 Aug 2019 01:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <1566221225-5170-1-git-send-email-xuwei5@hisilicon.com>
 <CAHp75Vct3qtR5bDF6iALmduKEEq+gNL-btmzQVuWq_hYsmxKhw@mail.gmail.com>
 <CACRpkdbRZ=88+ooW5jb5vu4Dwsaj7Ce+V5Ked2-bGn0JWpTHfQ@mail.gmail.com>
In-Reply-To: <CACRpkdbRZ=88+ooW5jb5vu4Dwsaj7Ce+V5Ked2-bGn0JWpTHfQ@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 20 Aug 2019 11:51:01 +0300
Message-ID: <CAHp75VcwDZdOwFsT4Gf-1a4tNGQdowK-RKRvSif2m7oTsVQNbw@mail.gmail.com>
Subject: Re: [PATCH v3] gpio: pl061: Fix the issue failed to register the ACPI
 interrtupion
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_015115_306538_D27E636B 
X-CRM114-Status: GOOD (  21.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
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

On Tue, Aug 20, 2019 at 10:12 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Mon, Aug 19, 2019 at 5:07 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
>
> > The proper fix is to revert the culprit since we call
> > acpi_gpiochip_request_interrupts() for all controllers.
> > Linus, please re-do the approach with IRQ handling,
>
> Exactly what do you refer to when you want me to
> "re-do the approach for IRQ handling"? Do you mean
> this driver or are you referring to:
>
> commit e0d89728981393b7d694bd3419b7794b9882c92d
> Author: Thierry Reding <treding@nvidia.com>
> Date:   Tue Nov 7 19:15:54 2017 +0100
>
>     gpio: Implement tighter IRQ chip integration
>
>     Currently GPIO drivers are required to add the GPIO chip and its
>     corresponding IRQ chip separately, which can result in a lot of
>     boilerplate. Use the newly introduced struct gpio_irq_chip, embedded in
>     struct gpio_chip, that drivers can fill in if they want the GPIO core
>     to automatically register the IRQ chip associated with a GPIO chip.
>
>     Signed-off-by: Thierry Reding <treding@nvidia.com>
>     Acked-by: Grygorii Strashko <grygorii.strashko@ti.com>
>     Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Yes.

> The new API introduced by this patch is what I am trying to switch
> everything over to, because the forked paths inside of gpiolib
> is causing me a maintenance headache and also increasing
> the footprint of the library.

Yes, I understand.

> >  it seems broadly
> > regress with ACPI enabled platforms.
>
> It only becomes a problem if the platform uses ACPI right?

Unfortunately yes. Though in this case it was working and stopped working.

> But it's a problem if I can't really tell if a driver is using
> ACPI or not, there is no sign in the pl061 driver that it would
> be used on ACPI systems until now, so how do I design
> for it?

It's hidden under amba_driver_register() which works for all
registered thru drivers/acpi/acpi_amba.c.
I agree this is not straightforward.

> The problem comes from the problem/mess I am trying to
> clean up in the first place. So if the new way of registering GPIO
> irqchips is not working for ACPI, then we have to fix that instead
> of reverting all attempts to use the new API IMO.

Sorry for me being impatient and asking for a groundless requests.
I'll help you with cleaning this.

-- 
With Best Regards,
Andy Shevchenko

--
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
