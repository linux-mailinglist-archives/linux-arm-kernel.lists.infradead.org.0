Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF98812D3C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 20:11:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=am3n9z4tJJ2r0lnIMs6ouNfc7FfJaN7dF2mRcS0B9aw=; b=BlIMLY1ClUR8jV
	UMkctOeR2hu4OOCmKDw12wWnqWa1Cp5NAX8FJ42Hq/oCuU5RuKzQiT8IaZsoxEnGfghPIg/qRLZUX
	NteugDBKlVVYTERAv/rGDYKoSJciJt39eodB2y28SG/zfeTTuVVRssDQ0Ijq+O03K/CaM5Dehu7Zd
	USuRM9lcqU+bABr/ELMmckZWf25b+Amklm3l9nLIdbMUD6Hzrets6bo2MNgBPXS0SU/3iLugk7tuk
	0P+GPE5ZTMk9VfVrW/e14OESC3VttrZa8tDspjfGQ+yUjr+NhnbXALsGzBC0staUNVA0jUXaXHVbl
	2Olsj3u4SSrwNNRt/sKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im0Rr-0000UZ-Dr; Mon, 30 Dec 2019 19:11:27 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im0Ri-0000Tj-Ho
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 19:11:20 +0000
Received: by mail-oi1-f193.google.com with SMTP id 18so10650962oin.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 11:11:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FD0PHS0WJfyz6nKHt4il24Ip/Qej/LUf3rJZhnZB6i8=;
 b=m7IK0RjiSUc2dLzAfd9gkXz//lsJu80ugMpaZlmKnA7emYgD+8i+tSnt/Q7bVK4Wl2
 iK5knQkXRMM6lQ7b+AVDFWGI1bvBNc4IgRaEF25z7uG34cbss+3jKCCafZ+a7xYxMDAT
 jW6eeYCeZ9DeuSDRG6XzZgImlIIwppZon91c5JRm+rQ+nwlmViPjbhdWsoGjfoUSB05f
 ZBR++J2LOe7CcOsulQt1o136G4ljdOZClb2oo/3P3rPdewylVaf2mV8c0DdipsagM+si
 NdEoMvRwB16aV5CBHyYDjNAYOnwmhiVelI36wSaCxaZdIKthCQYUVF8N863TCx9I/4cN
 +aJg==
X-Gm-Message-State: APjAAAWmJsxil6L/q52JbmlzWcbwqE1InxNeky78RiW+YcBPevHfnYmL
 tFpzNHQuqtqogTWYnpuXNvwEk0cJeBLnG23FCb0=
X-Google-Smtp-Source: APXvYqxVHb0i7kf7TiVi7M3YMSWRrzG8vxiPCoBQIAyDmz0C5Wbjsxn9J+D3vmqk2ELiRLzRo9UT2qwxOwdahqYZViI=
X-Received: by 2002:aca:eb83:: with SMTP id j125mr236048oih.153.1577733074733; 
 Mon, 30 Dec 2019 11:11:14 -0800 (PST)
MIME-Version: 1.0
References: <20191230172751.17985-1-krzk@kernel.org>
 <20191230172751.17985-5-krzk@kernel.org>
In-Reply-To: <20191230172751.17985-5-krzk@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 30 Dec 2019 20:11:03 +0100
Message-ID: <CAMuHMdUXJo3=x32xbfSUXs3O3JHaFpfxt0mHupEb+vzi=5+S4g@mail.gmail.com>
Subject: Re: [PATCH 5/5] i2c: Enable compile testing for some of drivers
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_111118_594023_B48045EF 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wolfram Sang <wsa@the-dreams.de>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>, Max Staudt <max@enpas.org>,
 Elie Morisse <syniurge@gmail.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Juergen Fitschen <jfi@ssv-embedded.de>, Jean Delvare <jdelvare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On Mon, Dec 30, 2019 at 6:28 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> Some of the I2C bus drivers can be compile tested to increase build
> coverage.  This requires also:
> 1. Adding dependencies on COMMON_CLK for BCM2835 and Meson I2C
>    controllers,
> 2. Adding 'if' conditional to 'default y' so they will not get enabled
>    by default on all other architectures,
> 3. Limiting few compile test options to supported architectures (which
>    provide the readsX()/writesX() primitives).
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Thanks for your patch!

> --- a/drivers/i2c/busses/Kconfig
> +++ b/drivers/i2c/busses/Kconfig
> @@ -367,7 +367,7 @@ comment "I2C system bus drivers (mostly embedded / system-on-chip)"
>
>  config I2C_ALTERA
>         tristate "Altera Soft IP I2C"
> -       depends on (ARCH_SOCFPGA || NIOS2) && OF
> +       depends on (ARCH_SOCFPGA || NIOS2 || COMPILE_TEST) && OF

Might be easier to read and maintain by splitting in "hard" and "useful"
dependencies:

    depends on OF
    depends on ARCH_SOCFPGA || NIOS2 || COMPILE_TEST

> @@ -611,8 +612,8 @@ config I2C_EMEV2
>
>  config I2C_EXYNOS5
>         tristate "Exynos5 high-speed I2C driver"
> -       depends on ARCH_EXYNOS && OF
> -       default y
> +       depends on (ARCH_EXYNOS && OF) || COMPILE_TEST

This means it is only useful on DT-based Exynos platforms, but compiles
everywhere?

Do you still have support for non-DT Exynos platforms?
ARCH_EXYNOS depends on ARCH_MULTI_V7?
(and its help text mentions Exynos 4/5 only, no 3?)

> @@ -1055,15 +1057,15 @@ config I2C_SYNQUACER
>
>  config I2C_TEGRA
>         tristate "NVIDIA Tegra internal I2C controller"
> -       depends on ARCH_TEGRA
> +       depends on ARCH_TEGRA || (COMPILE_TEST && (ARC || ARM || ARM64 || M68K || RISCV || SUPERH || SPARC))

Perhaps

    depends on ARCH_TEGRA || COMPILE_TEST
    depends on ARC || ARM || ARM64 || M68K || RISCV || SUPERH || SPARC
# needs <foo>

to remember which <foo> feature is needed?

> @@ -1403,8 +1405,8 @@ config I2C_OPAL
>
>  config I2C_ZX2967
>         tristate "ZTE ZX2967 I2C support"
> -       depends on ARCH_ZX
> -       default y
> +       depends on ARCH_ZX || (COMPILE_TEST && (ARC || ARM || ARM64 || M68K || RISCV || SUPERH || SPARC))

Same here/

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
