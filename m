Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8391C6BAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9NLCiJFjKdy/7KZQAGki3/cMwkacW2lVAr/6B54Z+4=; b=OSE8hx3FROOkwN
	kOldu3u9YCfacSlAFrqWju3gqmfpG6LEM1ksLcxYX1wQsJ5kRhR4hDeFhU+rNm8CAbdVBNqLVmLL6
	boliXdj1lGakqXob+EChUv950n7Ar/3eXRqUYkeENuI2ug6lNadAPSq7jBHbyTd300QdxBjI0vCHo
	pG8reiC2djeW+PEVUoH69SV/pqfnKClJFtEkjjjGorfGer+pPwUREdKh4BFrMS669HOQquFk7Z6C8
	Iw5CClrj6XHi7lj5wzHYB0yoTl3NHPfdp5WppkeWxSSk0CYKGH9DO4gfgqTLUtlSM8szsH5F7Mg/6
	8niA6B0wsewdItY/2K5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFP6-0000mJ-4J; Wed, 06 May 2020 08:27:44 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFOx-0000lr-Mv
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:27:37 +0000
Received: by mail-ot1-f68.google.com with SMTP id z25so580709otq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 01:27:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vCxRIS23FoOP0c2W/2eOvh5VSv4P5EkgKVxWMleJAFA=;
 b=OLn7nlB2DSBM/qcwhuq5eXrPW5yPnO15xpSusYdS+T8oN0zZxsTUsscCEuEsIbgfj6
 GDqTEsIaGYJ2Hh5pY2+bNShYku1v6PALzR77kDMZ5Ji8yvgwh0knQKb03ZuuROFg0ZOu
 NoPRFaVmbHMZZ5fW+ERWhfV/izdZ3ROFoF84PJjn0cPAABRf6kaURnq/PxfYs+q6SlED
 BnHKz5zHitbNUZnJJA/BdxmXvTPKOIBrpjhJ0n8h/4ExtNazFyEyo4dasiO0LaBI+Pyg
 SoXUlWG5WXHpKgulU/DPTcl22uqAyaC5fnEaoXDjr8F9teyATibEH297SxrV4U/o+1b4
 Fjaw==
X-Gm-Message-State: AGi0PuZ6UR0ACvZM/sTwzcAFUG8ACL6l8+GhnYmRPfQR2wvd1eKzKdxS
 /vI6ooqEjrTwn7/TWaK33ZcenqLvgtT22l7kPmk=
X-Google-Smtp-Source: APiQypId8MqlCuIicyVdeJAq4AzLk9FuRq8+nlSwPhMnLKUA9N4T7je+r8pkSaItm2cixXY805fYVRX8Frp727kVdqo=
X-Received: by 2002:a9d:63da:: with SMTP id e26mr44857otl.107.1588753654870;
 Wed, 06 May 2020 01:27:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200506014135.2941967-1-alistair@alistair23.me>
In-Reply-To: <20200506014135.2941967-1-alistair@alistair23.me>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 6 May 2020 10:27:23 +0200
Message-ID: <CAMuHMdV7qGSbw44O+ykSz3W6h6oxj-ir+9qRbeazKb+p7Z=2Mg@mail.gmail.com>
Subject: Re: [PATCH] spi: sun6i: Add support for GPIO chip select lines
To: Alistair Francis <alistair@alistair23.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_012735_743520_556D5295 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-spi <linux-spi@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 alistair23@gmail.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alistair,

On Wed, May 6, 2020 at 3:41 AM Alistair Francis <alistair@alistair23.me> wrote:
> Add a setup function that can be used to support using generic GPIO
> lines for the chip select.
>
> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
>  drivers/spi/spi-sun6i.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>
> diff --git a/drivers/spi/spi-sun6i.c b/drivers/spi/spi-sun6i.c
> index ec7967be9e2f..fd4e19434942 100644
> --- a/drivers/spi/spi-sun6i.c
> +++ b/drivers/spi/spi-sun6i.c
> @@ -10,6 +10,7 @@
>  #include <linux/clk.h>
>  #include <linux/delay.h>
>  #include <linux/device.h>
> +#include <linux/gpio.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
> @@ -171,6 +172,31 @@ static inline void sun6i_spi_fill_fifo(struct sun6i_spi *sspi, int len)
>         }
>  }
>
> +static int sun6i_spi_setup(struct spi_device *spi)
> +{
> +       int ret;
> +
> +       /* sanity check for native cs */
> +       if (spi->mode & SPI_NO_CS)
> +               return 0;
> +       if (gpio_is_valid(spi->cs_gpio)) {
> +               /* with gpio-cs set the GPIO to the correct level
> +                * and as output (in case the dt has the gpio not configured
> +                * as output but native cs)
> +                */
> +               ret = gpio_direction_output(spi->cs_gpio,
> +                                           (spi->mode & SPI_CS_HIGH) ? 0 : 1);
> +               if (ret)
> +                       dev_err(&spi->dev,
> +                               "could not set gpio %i as output: %i\n",
> +                               spi->cs_gpio, ret);
> +
> +               return ret;
> +       }
> +
> +       return 0;
> +}
> +
>  static void sun6i_spi_set_cs(struct spi_device *spi, bool enable)
>  {
>         struct sun6i_spi *sspi = spi_master_get_devdata(spi->master);
> @@ -470,6 +496,7 @@ static int sun6i_spi_probe(struct platform_device *pdev)
>
>         master->max_speed_hz = 100 * 1000 * 1000;
>         master->min_speed_hz = 3 * 1000;
> +       master->setup = sun6i_spi_setup;
>         master->set_cs = sun6i_spi_set_cs;
>         master->transfer_one = sun6i_spi_transfer_one;
>         master->num_chipselect = 4;

Can't you just set

    master->use_gpio_descriptors = true;

instead and be done with it?
Then drivers/spi/spi.c:spi_get_gpio_descs() will configure the GPIO line
as output for you.

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
