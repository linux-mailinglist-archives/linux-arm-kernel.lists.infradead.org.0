Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFE495997
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 10:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FokHXwoEnFx7MKy2Jn1zSGcculi2D1ij8KD31lLm9AE=; b=AtNn1q22iR4C32
	d5NJopa6PEHpcy9YFGDT7qUrqk34b8dWDRLwOk6bGj2rFWQWJXXZ68V8UE7TpBmbsvo51OeAt7kZq
	T5SE+X9wITEX+Efo5t82wvrvHiJDNzj7+R1/qwSiI2xcuSOtUyriCS78zbNWf8fN25mYse6AgHYp4
	DNmGEsVSqftlVZf+JzoCoit1lOYHpUpffRKBvdjEH1Pihy7C8HzG79PY8uX2jNwmvunRF/JvyaVFz
	AcJgJ3A/1gA0EzWDPEsm9eOqGYvpFabKlXdbNErVcV1zFWWdxquXCWeZD7+zENVnBpRW7Pvp2/ifg
	tdHJMHQ2QgiFBDAdQBjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzWd-0006Io-Bx; Tue, 20 Aug 2019 08:29:55 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzWP-0006I8-GY
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 08:29:43 +0000
Received: by mail-pl1-x644.google.com with SMTP id bj8so2384933plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 01:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=89TWE76G7HmT9xAoVwVI29PCwJL0d5XIbmYkxr69FI8=;
 b=t3hXiMlkVt2zJaCYzY3mwYAXvkxRkUd4IvETXXxhkKsfipfJvPz4EarBK/OHJtQQIV
 13b93tyXyy2kyraWIoH9SktPh4GrDhWJHNon3rGOf3HPVAmR9ATe29AzLkq/RKXa7uwc
 iGp0SyOpS2QkotJUPbElXObHvdM2674Yz67VdAA4bVEHtZqRvyosUcA7+0N0JV38apLd
 c1CKOnB9iVA3xMfyIckwphcO+EMY95NwZ6vWVs/9Cojk2zxVr5Gn3XOw0FVVEYhPCB2N
 oV6XMWV0DkYS/Ak4LmoFKqqMJF1lCkU6CuXvwX+X4We/kYkF5FKcQXKIR8yn68+KJAA7
 ICrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=89TWE76G7HmT9xAoVwVI29PCwJL0d5XIbmYkxr69FI8=;
 b=Y+pmC4mgH6as1LwQRTX+g7TvIGnkDynX81EDyY3i7ZD5MY/Il7fMCrU5bZPNFUdd1x
 pqybV044LkoHS+VebsgZJPjUGVud4qUVdiDqavLKsUSIW95qRZP1/6V1yleZkvGF+3pE
 UVlP0Bik0w4BLigrXNXCanmmqkg0DTNutIdujU0+Kctj36n9iKSoxzgFa0IOKre/siGU
 Q/mFjiYvys3AAwDWc/wB6v2E0JlWpA23+HlPJ1c4m/PL/lHHo7NmUbpHOngBhGM4BHHn
 V0lj/E/UumhaUe4nraj7FMqEjo1M07YDypNVGSn9TCYaKdWXCDe8zi//oRhGqYWu9c0p
 Qpag==
X-Gm-Message-State: APjAAAUKjIjrz9SPyax7UapcnDrFMfuMGxCIw3sw/ceYjonmlnHXqS3L
 gGcZyK42dZsIJEXeJjQ0O7fmeNy7+WDIE6DR44Y=
X-Google-Smtp-Source: APXvYqygm5yiRH3vpF8T5W/PhygCjGZrGfGYrWM5PLTXTvTufF0Xj6dS4Xvx5Zx33oWjUK8S+Fud3s41GC9hvsxlGgI=
X-Received: by 2002:a17:902:9349:: with SMTP id
 g9mr26677775plp.262.1566289777626; 
 Tue, 20 Aug 2019 01:29:37 -0700 (PDT)
MIME-Version: 1.0
References: <1566221225-5170-1-git-send-email-xuwei5@hisilicon.com>
 <CAHp75Vct3qtR5bDF6iALmduKEEq+gNL-btmzQVuWq_hYsmxKhw@mail.gmail.com>
 <CACRpkdbRZ=88+ooW5jb5vu4Dwsaj7Ce+V5Ked2-bGn0JWpTHfQ@mail.gmail.com>
In-Reply-To: <CACRpkdbRZ=88+ooW5jb5vu4Dwsaj7Ce+V5Ked2-bGn0JWpTHfQ@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 20 Aug 2019 11:29:25 +0300
Message-ID: <CAHp75VdZk5F2RTyLbtnD57hNYG3i=Grxd-mBTVOS6yckjr9XbQ@mail.gmail.com>
Subject: Re: [PATCH v3] gpio: pl061: Fix the issue failed to register the ACPI
 interrtupion
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_012942_500001_4106B108 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
>
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
>
> The new API introduced by this patch is what I am trying to switch
> everything over to, because the forked paths inside of gpiolib
> is causing me a maintenance headache and also increasing
> the footprint of the library.
>
> >  it seems broadly
> > regress with ACPI enabled platforms.
>
> It only becomes a problem if the platform uses ACPI right?
> But it's a problem if I can't really tell if a driver is using
> ACPI or not, there is no sign in the pl061 driver that it would
> be used on ACPI systems until now, so how do I design
> for it?
>
> The problem comes from the problem/mess I am trying to
> clean up in the first place. So if the new way of registering GPIO
> irqchips is not working for ACPI, then we have to fix that instead
> of reverting all attempts to use the new API IMO.
>
> Yours,
> Linus Walleij



-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
