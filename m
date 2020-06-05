Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBA21F0175
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 23:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAgPTd+rbZciMVqU3n6iziAkQtlh6SCqYTlSmIlwOQU=; b=d7eokVjFsUG+yK
	Uj2ATmnwHUzQl6qrRvKVCTifPhl/TEQpr6/5ufSejRtoG3S2PO8azgXgGMPJkfqYlan5Pfalkz06s
	tY61rctw09UQ+W9puj9Ld+PJEXCFUJhaaeXsP/XG12FO4dYNUKafhE6hwqsXRvgOcUvjOhaXgd/kF
	2pj2YVsEIDf2U8DeGsxi50qOvhTplwcMets/igdN5Mr0Qf//gElHcxYSa6JzPwbtUdVZnltzkgK4s
	9hxjN82wqSmTn9AzuYOYh7OOWS29Wt0odYju7UdWX6ITRz6CadrJUDTo5G9Jk9d8KTu6Kqmw5A1qy
	JNsRPWpI3QqQgIPAlBKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhJkW-0005RO-Pn; Fri, 05 Jun 2020 21:19:36 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhJkO-0005Qe-Eb
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 21:19:31 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a45so3614318pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 14:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wpIJ/pCsCHfvMrUjgnLtjwLHPcHaPzmZRezwzKb361g=;
 b=D9uEVO9pBGBuM5rac9wGkOcr0GyHQpJh+pyiTwwl4iR+n8MT0M8tnX76R8O3Erohyt
 EgCEGnv4Mz82lsf7a9akAwu34HW2vqe7iywOWhpUtUkLfpZmBZfDKKpeROyYLIz/Q/9a
 rVVTBUC8cb7ary8XzT2Axnq/WuPSe3OfTb+cx54B1Sd0kslAc3h6S2iBStuNex94GU7b
 mDrIor/QDPWPPok3o1LPVI9hc+jsBy3DbeNpEIKujOSXLRYqUlg9Yzqck5pY8r5bnHMx
 KahFrX/fv73aD5HFjXluO9dCAmxd4zhpoKXGu/oj1o/ZfE0bEOXanH6mfuhV60ZDBRI6
 dWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wpIJ/pCsCHfvMrUjgnLtjwLHPcHaPzmZRezwzKb361g=;
 b=GJSg+Ni7rEOX+cKXJQt6WVRVMqFyiXpaaEtbvqCSe5aBCtInYGAtDYf6IiworRDyC+
 CxmOq0lB8eKpZWXWiT48B2DFa/OcSVsHCOI840wwYRIc/DPAyEOPLkwtWEMJ3NaXg3lA
 x2FS5FelUStK0aDZrhW7/HAra1fNj6uSDB24ZA19zDQIMdbHV74KBKb3OczD3KkIOstv
 q6eqEfgWQgBKvaT/ZyCBK7ijwEkii5r0WHIllvedmggAb7TQeepI5arz6x/HfwXL24Di
 GZXlddbJnoVxjykIK+u6LVphMUbqEiVWEfjCaLf8nIl0q/o/gOtf7E1IWu11C7YE8oc8
 QIxQ==
X-Gm-Message-State: AOAM531Rm+M7yXQEvYX55QrAK2/B7VmoGvTR4Dxai6dw7KA7almaFwF1
 mwNo22kGB8L1pMJAS8ebydCOnNyVgBVY8dTvTNc=
X-Google-Smtp-Source: ABdhPJxXNB8ca/IQamWPxX4c7rhF1Ss/vRoiBGn2rbgdaO/EsyN0ZDTBvKrDVxNQzxgEJDIyY06sXaaxVufze1JWhZE=
X-Received: by 2002:a17:90a:1704:: with SMTP id
 z4mr4991653pjd.181.1591391967317; 
 Fri, 05 Jun 2020 14:19:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-7-michael@walle.cc>
 <CAHp75VfRhL1f-XD=PMbqd3BLeJQzQMFAupSzqAvx0g7-X_2VhQ@mail.gmail.com>
 <216db3154b46bd80202873df055bb3f3@walle.cc>
 <20200605131525.GK2428291@smile.fi.intel.com>
 <bf587fc3f907d58609a0ea3d65cd5b37@walle.cc>
In-Reply-To: <bf587fc3f907d58609a0ea3d65cd5b37@walle.cc>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 6 Jun 2020 00:19:10 +0300
Message-ID: <CAHp75Vcqv8rdqfBdttLb2vgj12AOUAOFK+ya7MZtRT+0_U+rYA@mail.gmail.com>
Subject: Re: [PATCH v4 06/11] gpio: add support for the sl28cpld GPIO
 controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_141929_677246_2A0D0741 
X-CRM114-Status: GOOD (  15.48  )
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
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

On Fri, Jun 5, 2020 at 9:44 PM Michael Walle <michael@walle.cc> wrote:
> Am 2020-06-05 15:15, schrieb Andy Shevchenko:
> > On Fri, Jun 05, 2020 at 02:42:53PM +0200, Michael Walle wrote:
> >> Am 2020-06-05 14:00, schrieb Andy Shevchenko:
> >> > On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:

...

> >> > > +       if (irq_support &&
> >> >
> >> > Why do you need this flag? Can't simple IRQ number be sufficient?
> >>
> >> I want to make sure, the is no misconfiguration. Eg. only GPIO
> >> flavors which has irq_support set, have the additional interrupt
> >> registers.
> >
> > In gpio-dwapb, for example, we simple check two things: a) hardware
> > limitation
> > (if IRQ is assigned to a proper port) and b) if there is any IRQ comes
> > from DT,
> > ACPI, etc.
>
> I can't follow you here. irq_support is like your (a); or the
> "pp->idx == 0" in your example.

And you have type already. Why do you need to duplicate it? Moreover,
is it protection from wrong type to have interrupts?

You can move this all stuff under corresponding switch-case.

> >> > > +           device_property_read_bool(&pdev->dev,
> >> > > "interrupt-controller")) {
> >> > > +               irq = platform_get_irq(pdev, 0);
> >> > > +               if (irq < 0)
> >> > > +                       return irq;
> >> > > +
> >> > > +               ret = sl28cpld_gpio_irq_init(&pdev->dev, gpio, regmap,
> >> > > +                                            base, irq);
> >> > > +               if (ret)
> >> > > +                       return ret;
> >> > > +
> >> > > +               config.irq_domain =
> >> > > regmap_irq_get_domain(gpio->irq_data);


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
