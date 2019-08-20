Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D96957EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2U5KShoJ1RZCnVxP9Dfy/nXb5iYRUAziuivSFmwug9g=; b=BQTJ+3nEFm4ayC
	5vqIam5zLJCuff8vCpAqsI+3U4J/dVZF/D2y/cWBVIfv5jkhJVLE1hcjmnN7dX5vJpShKoDLJCWv8
	aU3S1BCHKfAhamN9uie1l1WGWeC+0eh/M9JIDgUz67fgTSo+d+McG0PU9tmsnClOjbMcYro1uInSA
	mz5aVXC1baygee/NHjKqPKkRR9OIAhvcV4njTWTJNNutVy7ATrgBYBEqpMyruI0VcrRJqX5g2ZPbt
	902YR35tQm79gNRElf5Xhu1B+VCqSqRo6Yx0p6ldnvk7RyLgP/vumB4GUrwY23SY6nrnYwLBQvGlV
	558ru/eehrFb2P99jFxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyKB-0000Kg-P6; Tue, 20 Aug 2019 07:12:59 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyJZ-00006L-8h
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:12:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id l14so4092736ljj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 00:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HHSoqWKZEGvJJ3+or43k3Z7aZ0JM++edMhoQlijfvls=;
 b=VwuASG2RtKyMhxNLREWp421hmIqGZ521c56swV/Ot1Rmmo369Vat8gqvMuAkadMD6t
 FmKFqdcsB6UzQT0DifyJW4Z7hm1fVoMPU5RFTlMtdPVX0u6u3sJp34Ib7iQTQo3LBrDx
 jii1kap3+W20kvr6AHOfLCFFEgML4W9rrcMSXcq0OTNJGMJIjosVGwjzfSDFZjI55zuV
 HTmpqVNvjrOZUCRcmNf6lHkbvdoO3zzUCVWTq5Zeuiwr8+SjtUmyF1XnyYXGurmr5MSX
 nHwGFXZTHrXdySpLKbUrZmnA9xXlqVqPxZp08uSHbRmmRiWI6EokTiZBOd37z1KwEN4U
 ty0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HHSoqWKZEGvJJ3+or43k3Z7aZ0JM++edMhoQlijfvls=;
 b=Py9qkODO8/GbNDp9Z7LmIObC5FncPxEGq2w5iXE29Kh+HdTWRXSCDF87oEvZg456fl
 3tB/lvJHhyVK4tR3OJRAg7ay0xpxtBXIaLZpdzlq7GEDbsSnx4ZhN0Y0tCeo7gNdTH6o
 h8l8GhEvTahmFkBZzQLWu9iDRXSl+wGqOqVCIdszrk7v7gJGzJfV6d+JUI1Rj4+J8G9P
 jdy+ZOh6x0Sl82dht+4kEvVXzN8S2AMG9LFKUiGTrwHcFgqa1GXe7b4K434AC2lg9ECq
 Jgo3NaMoC0pyORbasx+LUrv7li8uH0KylIW6HdhsXPXPGSk3sGDt99sKEK6BJCBYWEt+
 bwvw==
X-Gm-Message-State: APjAAAVeMHkUORc3WxrEkF2ROxUY5htNfbnDDI3D9P4PNttSflZBNs3+
 MfxsHtWv9NPh3G0QWnrhM/3j9+DQ9NjZ58CDNvxpnA==
X-Google-Smtp-Source: APXvYqzvOU/pXCt+Y4om2H2xOwRjllpQArHaRTouxDBCQgr1luDhMaWUq5i1R1z6lbicAftr6o4Jr+oiaQox7/zjQ3Y=
X-Received: by 2002:a05:651c:28c:: with SMTP id
 b12mr14924495ljo.69.1566285136324; 
 Tue, 20 Aug 2019 00:12:16 -0700 (PDT)
MIME-Version: 1.0
References: <1566221225-5170-1-git-send-email-xuwei5@hisilicon.com>
 <CAHp75Vct3qtR5bDF6iALmduKEEq+gNL-btmzQVuWq_hYsmxKhw@mail.gmail.com>
In-Reply-To: <CAHp75Vct3qtR5bDF6iALmduKEEq+gNL-btmzQVuWq_hYsmxKhw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 20 Aug 2019 09:12:04 +0200
Message-ID: <CACRpkdbRZ=88+ooW5jb5vu4Dwsaj7Ce+V5Ked2-bGn0JWpTHfQ@mail.gmail.com>
Subject: Re: [PATCH v3] gpio: pl061: Fix the issue failed to register the ACPI
 interrtupion
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Thierry Reding <treding@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_001221_368793_AB33406A 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Tangkunshan <tangkunshan@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 John Garry <john.garry@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Wei Xu <xuwei5@hisilicon.com>, Linuxarm <linuxarm@huawei.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 huangdaode <huangdaode@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Shiju Jose <shiju.jose@huawei.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 5:07 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:

> The proper fix is to revert the culprit since we call
> acpi_gpiochip_request_interrupts() for all controllers.
> Linus, please re-do the approach with IRQ handling,

Exactly what do you refer to when you want me to
"re-do the approach for IRQ handling"? Do you mean
this driver or are you referring to:

commit e0d89728981393b7d694bd3419b7794b9882c92d
Author: Thierry Reding <treding@nvidia.com>
Date:   Tue Nov 7 19:15:54 2017 +0100

    gpio: Implement tighter IRQ chip integration

    Currently GPIO drivers are required to add the GPIO chip and its
    corresponding IRQ chip separately, which can result in a lot of
    boilerplate. Use the newly introduced struct gpio_irq_chip, embedded in
    struct gpio_chip, that drivers can fill in if they want the GPIO core
    to automatically register the IRQ chip associated with a GPIO chip.

    Signed-off-by: Thierry Reding <treding@nvidia.com>
    Acked-by: Grygorii Strashko <grygorii.strashko@ti.com>
    Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

The new API introduced by this patch is what I am trying to switch
everything over to, because the forked paths inside of gpiolib
is causing me a maintenance headache and also increasing
the footprint of the library.

>  it seems broadly
> regress with ACPI enabled platforms.

It only becomes a problem if the platform uses ACPI right?
But it's a problem if I can't really tell if a driver is using
ACPI or not, there is no sign in the pl061 driver that it would
be used on ACPI systems until now, so how do I design
for it?

The problem comes from the problem/mess I am trying to
clean up in the first place. So if the new way of registering GPIO
irqchips is not working for ACPI, then we have to fix that instead
of reverting all attempts to use the new API IMO.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
