Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9758B2E7B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 23:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClSLTnaXcWCxgi0w2e6mMN3LaCO2W6BeGLQNav7cdt0=; b=eVm0QBETTmlBDh
	vvRXlkiLvJa4NlYhraUjdcpdgLX4ZbitKAY1SM0XIFOFvBJ9NPISj5CurZ16FUqvUtw1/+vkjx/se
	d8xNuifxMGzqeTqdiILjs403uOqHNnBl9Y2ayhtQIogX/xZ5KD2HhxIzZPRGM0F1DuBtEWVDvC60w
	32ZVihIrjgHonF/V8JnKLSUjqZXUtpKCYb5JEVV3NgTRRgGOqGEyevvzEPGnmVdvTzKlsivTaT+V8
	VdQMDT/ItDOKWTKc8PleHS9sdr0+wpasHCFfwt+e1eLa0u1rCRpC7W1Sn1N3g28VXzBFFY1tVVhxY
	0oA+ATiHEjr2xHEiZcAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW6WT-0005kL-Sk; Wed, 29 May 2019 21:54:13 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW6WM-0005k2-T3
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 21:54:08 +0000
Received: by mail-ot1-f65.google.com with SMTP id t24so3591580otl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 14:54:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t0RV3+kisHUMXyneeAKaGTJdWRVaLmpR4yiYkhivyfc=;
 b=DhIp9upwVX7ghDHSEy6scIxVe5P3g26DUVq+SGyN0anc+FiMSiGJZw73gX/eKcLjXN
 PWCga7GB2Sjq5ZrRr8aznpCMaRkv5QjwEoh25e+XWcJu1eA1U4spvotDnx+puHigPsfl
 +xK5jx3sYBFLNHEdDrcqs6htSvFaC6HcKIe1qS+HY3f391LPiNVsyUrxoPy/Yy9dBRHe
 LHnXUyoQgSoxs7ft/2tfMRiRUTbxgBT84rrOYhLsoB+rYCtgk7+bcGqb95SITQVAJJF4
 slhZ/8+qSJX70aC+hiqRA04C1u9o2QHyPxLKiAJiPfwxLo1LkeRazQ0opcw+BjoXsMbG
 kIrA==
X-Gm-Message-State: APjAAAWMjYNjrGUIWlZCK8v3nMhaFYkMW8J+IsESPsKB3E0bjrhbu64l
 1fnSys6zR42uLz7SmPF9jL1WhEnUr6s=
X-Google-Smtp-Source: APXvYqz0S1oHfyLVx7CXCCw+81Qoww55GJkUeew+W7GlB07/rFwd9eJAQsEgJ3J7Z+UxLCcy+eAwug==
X-Received: by 2002:a9d:4793:: with SMTP id b19mr31566otf.238.1559166845631;
 Wed, 29 May 2019 14:54:05 -0700 (PDT)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com.
 [209.85.167.179])
 by smtp.gmail.com with ESMTPSA id m13sm297102ote.68.2019.05.29.14.54.04
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 14:54:04 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id v25so2808096oic.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 14:54:04 -0700 (PDT)
X-Received: by 2002:aca:e44b:: with SMTP id b72mr359320oih.108.1559166843892; 
 Wed, 29 May 2019 14:54:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190529083254.39581-1-chuanhua.han@nxp.com>
In-Reply-To: <20190529083254.39581-1-chuanhua.han@nxp.com>
From: Li Yang <leoyang.li@nxp.com>
Date: Wed, 29 May 2019 16:53:52 -0500
X-Gmail-Original-Message-ID: <CADRPPNRTf6ooaJJDkO8xa9qhJhh1ZaQ5crRDX7sLaSV0CoRVyg@mail.gmail.com>
Message-ID: <CADRPPNRTf6ooaJJDkO8xa9qhJhh1ZaQ5crRDX7sLaSV0CoRVyg@mail.gmail.com>
Subject: Re: [PATCH 1/3] gpio: mpc8xxx: Enable port input and interrupt
To: Chuanhua Han <chuanhua.han@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_145406_971620_5FFE7358 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-gpio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Zhang Ying-22455 <ying.zhang22455@nxp.com>,
 lkml <linux-kernel@vger.kernel.org>, bgolaszewski@baylibre.com,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 3:33 AM Chuanhua Han <chuanhua.han@nxp.com> wrote:
>
> The GPIO Input Buffer Enable register is used to control the input
> enable of each individual GPIO port. When an individual GPIO port's
> direction is set to input (GPIO_GPDIR[DRn=0]), the associated
> input enable must be set (GPIOxGPIE[IEn]=1) to propagate the port
> value to the GPIO Data Register.

I cannot relate what you are saying here with the code you changed.

>
> This patch enable port input and interrupt.

NACK

Why do we need to unmask all the interrupts by default?  The correct
behavior is that all interrupts masked until they are actually
requested.

>
> Signed-off-by: Zhang Ying-22455 <ying.zhang22455@nxp.com>
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> ---
>  drivers/gpio/gpio-mpc8xxx.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
> index c8673a5d9412..555e0e7957d9 100644
> --- a/drivers/gpio/gpio-mpc8xxx.c
> +++ b/drivers/gpio/gpio-mpc8xxx.c
> @@ -373,9 +373,10 @@ static int mpc8xxx_probe(struct platform_device *pdev)
>         if (!mpc8xxx_gc->irq)
>                 return 0;
>
> -       /* ack and mask all irqs */
> +       /* ack and enable irqs */
>         gc->write_reg(mpc8xxx_gc->regs + GPIO_IER, 0xffffffff);
> -       gc->write_reg(mpc8xxx_gc->regs + GPIO_IMR, 0);
> +       gc->write_reg(mpc8xxx_gc->regs + GPIO_IMR, 0xffffffff);
> +       gc->write_reg(mpc8xxx_gc->regs + GPIO_ICR2, 0xffffffff);
>
>         irq_set_chained_handler_and_data(mpc8xxx_gc->irqn,
>                                          mpc8xxx_gpio_irq_cascade, mpc8xxx_gc);
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
