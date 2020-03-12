Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B97183B86
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 22:42:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xAkLcwfUTfCTzV8bCDoQ4sJEGn5w85lXIYbY4ViJyo=; b=avxxzU9vFlAi0a
	1fKiz7f3NbdaQdTgZwt1vUNBhQ3XrDSrSYTbNoNmJk0Zz4H/kYJLjbCwdh+LhS3LunVl9yFjVbpzG
	e9FPDKuBgAqww+50D9ITnezHcd8uFGekxegjuwz9AvTGY1X7StBApwmg7leW3BwyfceMUWUycsOQ6
	eNKdb4TbMji27N17IpU/ikcg7cfMtxYFo9DZyjs/4IQ+KfRiAeSbWk6hfgDdRoP0OZmYYHSlkeAzf
	k0UYjhXTfs5yRziEZ13F3yFRkA9rkOUxDdZFWIlLcupyrhq1on+kcdPsDG4xaFDA3p+irnjAIgGTX
	NZgxEmgTUBvzh/J/nyrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVaY-0002Ov-0e; Thu, 12 Mar 2020 21:41:58 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVaP-0002O6-Hl
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:41:51 +0000
Received: by mail-oi1-f193.google.com with SMTP id r7so7182945oij.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 14:41:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2UGW4bHfX08GEbePww+EddI/NsbhfU55Uie8iNExZVk=;
 b=cU6ac5QNdJXkhTkblm5FGFv0DUn/0rqq0nDRg9Kh5pTTCJmWE3EYqYx5JMiZIuRU82
 m/bUERVYb6A7Sgi8a56u/UGiAwZeHwAOyStlhE6c7uWV2RjlCjAG3zPPus9vDrqKzYCi
 qwgixf4LVnEluwsWigwB6K0cUqXWo3An4HiC3x3oPy/70sqyLtNAZdBxY3ty1Mm0WKqe
 Q3oW3kzT6HvKm3pBIe4P2cZQ7Bc17w0wCM2gojTpIHubwV+qKFViOVDCg4TfimrkfKEL
 VZxl1ZzFSQY3yTca77AXBLCgcmRK5Ty5TljNkW7Yng1zhOaepriDZAkW5YekeOJkFPUM
 rFYA==
X-Gm-Message-State: ANhLgQ3H38DTK1tZ+F6pwjWFuJf3fOrLydxPoF1g760Drq1iIHyMZMwD
 RQAzavRqpVgx+gVmVvmZ8t1N8ppw8aGpkfa1xWE=
X-Google-Smtp-Source: ADFU+vuDUW/4+kTvvOXt43MMd+pd/8k57mMKsg695zk0cUiXBtsY6UfW2Bd3hR2zkhh7QvO+6ko15uTV55E52TqiQyA=
X-Received: by 2002:aca:cdd1:: with SMTP id d200mr4238410oig.153.1584049307407; 
 Thu, 12 Mar 2020 14:41:47 -0700 (PDT)
MIME-Version: 1.0
References: <1584047552-20166-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584047552-20166-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1584047552-20166-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Mar 2020 22:41:36 +0100
Message-ID: <CAMuHMdUgMHjU_ZANzJbxQji6K7Pdc-jD4C7JatQc-OtN=jJt_w@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] media: i2c: ov5645: Switch to assigned-clock-rates
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_144149_589147_77D61780 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Thu, Mar 12, 2020 at 10:13 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> This patch switches to assigned-clock-rates for specifying the clock rate.
> The clk-conf.c internally handles setting the clock rate when
> assigned-clock-rates is passed.
>
> The driver now sets the clock frequency only if the deprecated property
> clock-frequency is defined instead assigned-clock-rates, this is to avoid
> breakage with existing DT binaries.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/media/i2c/ov5645.c
> +++ b/drivers/media/i2c/ov5645.c
> @@ -1055,6 +1055,7 @@ static int ov5645_probe(struct i2c_client *client)
>         struct device_node *endpoint;
>         struct ov5645 *ov5645;
>         u8 chip_id_high, chip_id_low;
> +       bool set_clk = false;
>         unsigned int i;
>         u32 xclk_freq;
>         int ret;
> @@ -1094,10 +1095,17 @@ static int ov5645_probe(struct i2c_client *client)
>                 return PTR_ERR(ov5645->xclk);
>         }
>
> -       ret = of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
> +       ret = of_property_read_u32(dev->of_node, "assigned-clock-rates",
> +                                  &xclk_freq);
>         if (ret) {

I think you can just leave out the above check...

> -               dev_err(dev, "could not get xclk frequency\n");
> -               return ret;
> +               /* check if deprecated property clock-frequency is defined */
> +               ret = of_property_read_u32(dev->of_node, "clock-frequency",
> +                                          &xclk_freq);
> +               if (ret) {

... and ignore the absence of the deprecated property.

> +                       dev_err(dev, "could not get xclk frequency\n");
> +                       return ret;
> +               }
> +               set_clk = true;

I.e. just

        /* check if deprecated property clock-frequency is defined */
        xclk_freq = 0;
        of_property_read_u32(dev->of_node, "clock-frequency", &xclk_freq);
        if (xclk_freq) {
                ret = clk_set_rate(ov5645->xclk, xclk_freq);
                if (ret) {
                        dev_err(dev, "could not set xclk frequency\n");
                        return ret;
                }
        } else {
                xclk_freq = clk_get_rate(ov5645->xclk, xclk_freq);
        }

>         }
>
>         /* external clock must be 24MHz, allow 1% tolerance */
> @@ -1107,10 +1115,12 @@ static int ov5645_probe(struct i2c_client *client)
>                 return -EINVAL;
>         }
>
> -       ret = clk_set_rate(ov5645->xclk, xclk_freq);
> -       if (ret) {
> -               dev_err(dev, "could not set xclk frequency\n");
> -               return ret;
> +       if (set_clk) {
> +               ret = clk_set_rate(ov5645->xclk, xclk_freq);
> +               if (ret) {
> +                       dev_err(dev, "could not set xclk frequency\n");
> +                       return ret;
> +               }

>         }
>
>         for (i = 0; i < OV5645_NUM_SUPPLIES; i++)
> --
> 2.7.4
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



-- 
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
