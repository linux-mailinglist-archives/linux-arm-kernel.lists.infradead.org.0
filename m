Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B671EF70B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3sZyREw0xDvsEdL8NWHUYzSdDm6kDQbHXgvsh1ZzfM=; b=HG2cA83Y+tPF3b
	WRBpQ0ShHwCSPU44cqY78hzJKE/VH9Q+EM611XMLdaOf5o5e/CsyuKfzhJ3x5qr7wNsZv0yEHerCu
	r5nV2ayt+9bHTJpI9valEOM9zw7Bawyo/BGoLHQPKZkNjLxsCUEksCSNAcXXcudwigDbopYmHX8Au
	yIS9zx4VGF+LWop5jqMyN3uHUD+hasn7c/tjPuizedlF3vTO53137SvAk/m/BiUzSNxv+LQv2m6W6
	lVvzN/rzqMbXjKxdYeyzz3S7WgdZGhPGeZ4Wky6rmw1iqoDkuHpOgUMwsRJVk/pUYNia7ZAWbJIlz
	xCNroNFGdfW0OrGUN+ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhB7f-0002Md-AS; Fri, 05 Jun 2020 12:06:55 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhB7X-0002M4-SW
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 12:06:49 +0000
Received: by mail-pg1-x542.google.com with SMTP id p21so5011594pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 05:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tg2EERYeGqRpBqYybMZ9XMQjf0DjL2pwtOCU5se6BJ8=;
 b=n0Tl0XWLTlt+ec1Ce3+UyjsRVYhekGd2rIJCCsUGrX0inZZIrW8Og57IIHkVPMIdSS
 u2/jhU1iS1KrEVZPT4pBgmgs/JkArzGh3Q48Mf3w/Ujrz260alNvIp543RyaaFSV4qBD
 dJmJwkwootDjm8pJ5RlB41X92cs19NbKJd+H7LRJZ6h6iYUo9o37qwc6mQzgqLzwrDMI
 FdlPjBFRXcK98KZCzWyAOcuuRfoe6SN00oED5RqU1I4Jh4rHt3Nt/FAy/e+EEpzvYPqa
 DRgb3VM8DmAfSwGBO0+sXRNxpQjywc8NcMHQpNlIQAQlaP3xgzra2NXDxUSDLu9PyQD4
 oEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tg2EERYeGqRpBqYybMZ9XMQjf0DjL2pwtOCU5se6BJ8=;
 b=qj5NrlbMPhKFyJivuu2zcYMBaUNzZsUZVIZ9Lcae44rWbWaFVkJgzFruAFU1n2je1I
 3+Up3qXedTLwuAPCYz1AJi5Ik1q+WYXsdEcpycxVtO2QfAz0xNo81y2/ncFkkumxgAEs
 dG8UfZ9CEXTDbyAGMHvenJjYdFJO+tU37ClgRQlgIrqhgIdodetP7PtnpGcj4IwE0aDV
 PCsTHTRSlv59JMjPspI2BnQsB1936FMBdpmO/Fzl8YeZt1C6GC3mq0iuwS2XgpY5dxxo
 pPeneewjpfFuYXWDzUIu5virzGRTg6iiXbkJGeM8X4T0Te/ujUnu80D5fOwcKnEwRaKj
 b+gA==
X-Gm-Message-State: AOAM530XM3POqmqaVmVqmASmaiFvtha9mo5MbOkSz6qOv4tmBWKPuMSA
 AsZ5MsgMG+0vu6N4Wi2+c31G7iYNytDnHvPRLwg=
X-Google-Smtp-Source: ABdhPJxvhp+S0ILJ9P3oJuQGbD3SgEjJ+VvYOPiQ2EEF2EeVita727gg2YseqMdm5hdUfsulh7j3lVjYD8g1pnc9qAg=
X-Received: by 2002:a63:545a:: with SMTP id e26mr9043326pgm.4.1591358806690;
 Fri, 05 Jun 2020 05:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-8-michael@walle.cc>
In-Reply-To: <20200604211039.12689-8-michael@walle.cc>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Jun 2020 15:06:35 +0300
Message-ID: <CAHp75Vd00VeL94S=U77NCm9-WNF6ZLAn4U9oUSov1R1QU4DjDg@mail.gmail.com>
Subject: Re: [PATCH v4 07/11] hwmon: add support for the sl28cpld hardware
 monitoring controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_050647_941824_106AE2F9 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:
>
> Add support for the hardware monitoring controller of the sl28cpld board
> management controller. This driver is part of a multi-function device.

...

> +#include <linux/of_device.h>

mod_devicetable.h ?

...


> +       hwmon_dev = devm_hwmon_device_register_with_info(&pdev->dev,
> +                               "sl28cpld_hwmon", hwmon,
> +                               &sl28cpld_hwmon_chip_info, NULL);
> +       if (IS_ERR(hwmon_dev)) {
> +               dev_err(&pdev->dev, "failed to register as hwmon device");

> +               return PTR_ERR(hwmon_dev);
> +       }
> +
> +       return 0;

PTR_ERR_OR_ZERO() ?

...

> +static const struct of_device_id sl28cpld_hwmon_of_match[] = {
> +       { .compatible = "kontron,sl28cpld-fan" },

> +       {},

No comma.

> +};

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
