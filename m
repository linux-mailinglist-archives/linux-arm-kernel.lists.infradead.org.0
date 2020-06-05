Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D23C1EF2A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPC1J0+ECRvJ2SBoTV/N22OqEqClt73bUVB58y0CWkA=; b=NJDDApBfWTs2Aw
	Yr38GXcRbkm2gZBwbYRGQ60JpjSu0RqC7kyK+CZBCHnfByUnRzFK4geZ0S6ee8fExQ64BkhRnQFjM
	hfM03oUVFXynHmvHNmiP4IXvfcdli4dgEhrqUGI2uCiWzdwGMdMb4fUTnvYgViK4CSEbQzmixgkGm
	ogP+CtrKhUvJmBuXKwiedEUY7mAYzElSmt+xZP2CadoQgh6dt3SIPlfznA5Z/dv793Kku/0gcNAny
	MPZoFNHG+/I2X0a9iMK8mfBx2zs39HHn1B4e+h13bHa5TgO+wRnLvbdeE8ZjIqRw0mvE7p00Ax323
	A8tAeA7l6HmWnhdzUmUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7IU-0000JB-Er; Fri, 05 Jun 2020 08:01:50 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7IO-0000Ib-3u
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 08:01:45 +0000
Received: by mail-pg1-x541.google.com with SMTP id m1so4819382pgk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 01:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CA32MQ/+vRGTpFh4UZx8UcD1pDZn/aqTDePABuFsMhA=;
 b=SqGNdaF0A6Kq1TcOl0i/w+Mz7gpK3TvBcCVsNXyvakLq/sI1vjH9Gydj55AfUfH9jJ
 aYs3QqCXt5c3d1k0qq13+K2Uv7JyTxshU0RSzrKBrz5OjsFwkKdnw4sOp603IEyQPiDd
 89zCC+yqpR029H2Ew2FnHd4D2aGfwn/ByuodHV7MbX0fUOLBcC+L+d0HKpwtalFHrOEB
 W7zFBO+bNIGPoxHEJ/pt/cjKbfnFtArfKZN1q4p+7CwBZixuqzsXECf0yASthSfR1qP4
 x6e0fswV/QzEtzr5wGL8Fg0je0o+1sIX9ltX0sGRUyXhtDgaDVshsZ/AE8O/vX1i2sQc
 l3Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CA32MQ/+vRGTpFh4UZx8UcD1pDZn/aqTDePABuFsMhA=;
 b=pnmMAlWd7fH4q4Twsis1KdBa/dXPBZr7l6mw0p7iHgCa7xOaFsH+z053XOLuUW5RjY
 Pwr/ZgibC1VfGFQZFHflfzAKM8MVTh6W7d2LRBzHEcZgPxY9Q9hnbwGSPnHFLVYr65yD
 U2h/7ZAQNeI/zaRNyb8ocgoWBmqqmQ3AV+RETZfVfVT0yo3G6LuTnRo3Z9RCZT0gdoHS
 RzwidB8GpAwVHxS4t1j1zitdLPl5Gt00QcqADcFKrPRanf3DFPvqPpIli/BrMBgTBbCs
 ui8EItQaWesT4jBpvowBJf35R2vLQP690dR05N2lPNEtrWEunO+n0uSWv9zqhGlWrDhs
 rfFw==
X-Gm-Message-State: AOAM533gNLT/tXgvUt0d/WA/wKna/0faGXCyaC9PmBPzU73fBkUKT4VR
 03HN1qmPcHQawU0W/uTK6iiOjKOFsV4LkszanEU=
X-Google-Smtp-Source: ABdhPJxS0gxAXwoiIs/HAxam4Ku1ew3smVf/6LQ9gSPZd/jo5uG/q2I+R8nedzrqQ5RR62x1rVChLyZKWcKjSc0zh2k=
X-Received: by 2002:a62:1792:: with SMTP id 140mr8576341pfx.36.1591344103178; 
 Fri, 05 Jun 2020 01:01:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
In-Reply-To: <20200604211039.12689-3-michael@walle.cc>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 5 Jun 2020 11:01:26 +0300
Message-ID: <CAHp75Vd-R3yqhq88-whY6vdDhESpzvFCsbi-ygSTjfXfUzOrtg@mail.gmail.com>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_010144_171265_8667747D 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Jun 5, 2020 at 12:16 AM Michael Walle <michael@walle.cc> wrote:
>
> Add the core support for the board management controller found on the
> SMARC-sAL28 board. It consists of the following functions:
>  - watchdog
>  - GPIO controller
>  - PWM controller
>  - fan sensor
>  - interrupt controller
>
> At the moment, this controller is used on the Kontron SMARC-sAL28 board.
>
> Please note that the MFD driver is defined as bool in the Kconfig
> because the next patch will add interrupt support.

...

> +config MFD_SL28CPLD
> +       bool "Kontron sl28 core driver"
> +       depends on I2C=y

Why not module?

> +       depends on OF

I didn't find an evidence this is needed.

No Compile Test?

> +       select REGMAP_I2C
> +       select MFD_CORE

...

> +#include <linux/of_platform.h>

No evidence of user of this.
I think you meant mod_devicetable.h.

...

> +static struct i2c_driver sl28cpld_driver = {
> +       .probe_new = sl28cpld_probe,
> +       .driver = {
> +               .name = "sl28cpld",
> +               .of_match_table = of_match_ptr(sl28cpld_of_match),

Drop of_match_ptr(). It has a little sense in this context (depends OF).
It will have a little sense even if you drop depends OF b/c you will
introduce a compiler warning.

> +       },
> +};


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
