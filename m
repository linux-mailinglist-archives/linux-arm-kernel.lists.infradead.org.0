Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D28A013B950
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 06:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qAhOkwXjJJ+5HYWgYGwTgWD7OMUQvOpudw8B3JaeeM=; b=Yh72UFWTEoe3T3
	FWenQ457Oi+wmQMg8Bc8Crz889VvwpcdUlz5O+0cYjdKNy9mvQTDwSrc6rOFsazoUF7DMAcy04Jbb
	9oPZyjBDapx/GNpwuN4PvauzuxP49+iTP7LUaqydTa25iX/6Y87Mw6qSmwW/mcv3rXb239GukLaD1
	hFm70W8iFx/OEwNA0kUym9veuCX69EgCbvNN+KaYbRvrmVQ/YrBSbkrNF+3HsrpFGCPHQpen1VNhw
	f0AqC9TbdfZ4e1potUG82Y/R0VXpPolKFgvLpo5mYo8qSHIGKtxeowzCxk94xB+j8x7Oc4LWIp4Pr
	bf9L1ERoon3EUHfMPSww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irbiK-00044T-Ux; Wed, 15 Jan 2020 05:59:36 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irbiC-00043u-Gw
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 05:59:30 +0000
Received: by mail-ua1-x942.google.com with SMTP id f7so5795871uaa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 21:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VZcDlJEAOYiI5/opaWlacx6hWbE1fdXB+V/M4pJOPMc=;
 b=zSa2dpRrl8+iQbXBw9A8TC1verWOwJvEQxC/qYk2hCEWe8mNucn6K4UYbGqbj2gFzt
 UgFAsoCPK01qBZN5+0Fd7muGysK7LXkmZcgL2welcWciUOc6mJIun5PUteOcGPJqQrTr
 p5WoJ2HytVTzQXjI7tQIa7DHgVZWB2TkZjqG0YMunupdUpV6OFWSzJT/QjQSNZ/0DAxt
 F/9zVD5ZRiSt6edk3TXPp1PXvBUiIAoYiFgKVJJKQAVZDoZ2suSupcgwTDudBBarv04q
 T90jhY/8r/1ol343WfA3oEm7UeWcg5ld2VB7h40GHzou0GxSuOc1zF1nXu7r14WEOKi5
 Xqpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VZcDlJEAOYiI5/opaWlacx6hWbE1fdXB+V/M4pJOPMc=;
 b=TcYOqz7Zz8tTW7JXv4WmQlcocAjoC2YBn/aeNSEPPsyrCZXom9PHyp9pNBZ5m0YAnh
 yxzTjfZy2XeSEL2V5mbP0fN3JAZQqGNzA0dKresGz2g7SYVaW4CBH0w2KxNsRjPNCEdg
 ZA7V6XLFNsQ27PWyK3cqdwtIzrRIyL0TykAb44T+rGKOy+joaLxA9g1wbHSmoD1iCyXe
 nY1zccLiN+ofLHNhKD5oNeYCDxz4uHHBnzDi8BaarkUvVSfWWXvd61+yhZPJYESl/ssn
 OQbRqe878JvukL2LHWU+fNCPpy3MZl40trnLIo2l9HqyGVVcBEMsocmnsDaOsOlOeoj2
 tAKA==
X-Gm-Message-State: APjAAAVqYnpRneQvAXpzIm+O1XXD8+TEsP99rAHuJGp+4Hk8n3zf/Kii
 gS3V+F5wiTB+9cm2nNG3JkBdcACqVkpIfKpNmtPkbg==
X-Google-Smtp-Source: APXvYqyOIjenI/978z/kS0ltOPfPgmya2cYrAirQMUXBzHTiFXFhrlDQNvKCTNcbmqjpEUJxYANlmAdPBb9axYlM4oo=
X-Received: by 2002:ab0:634c:: with SMTP id f12mr13371489uap.48.1579067967624; 
 Tue, 14 Jan 2020 21:59:27 -0800 (PST)
MIME-Version: 1.0
References: <20200114190607.29339-1-f.fainelli@gmail.com>
 <20200114190607.29339-3-f.fainelli@gmail.com>
In-Reply-To: <20200114190607.29339-3-f.fainelli@gmail.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 15 Jan 2020 11:29:16 +0530
Message-ID: <CAHLCerOsLA-9+M_2+hxU8BCieGiaeqPh10Ni-jEmW32n7-kqGw@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] thermal: brcmstb_thermal: Prepare to support a
 different process
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_215928_623206_2F2C0EEE 
X-CRM114-Status: GOOD (  22.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 12:36 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> The driver is currently assuming that it is operating with a 28nm
> process chip, which has a specific formula to convert temperature to a
> code and vice versa. Update the code to support providing two key
> values: offset and multiplier to derive the correct formulas.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  drivers/thermal/broadcom/brcmstb_thermal.c | 47 +++++++++++++++-------
>  1 file changed, 33 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
> index 680f1a070606..2d555e7b884a 100644
> --- a/drivers/thermal/broadcom/brcmstb_thermal.c
> +++ b/drivers/thermal/broadcom/brcmstb_thermal.c
> @@ -102,18 +102,27 @@ static struct avs_tmon_trip avs_tmon_trips[] = {
>         },
>  };
>
> +struct brcmstb_thermal_params {
> +       unsigned int offset;
> +       unsigned int mult;
> +};
> +
>  struct brcmstb_thermal_priv {
>         void __iomem *tmon_base;
>         struct device *dev;
>         struct thermal_zone_device *thermal;
> +       /* Process specific thermal parameters used for calculations */
> +       const struct brcmstb_thermal_params *temp_params;
>  };
>
>  /* Convert a HW code to a temperature reading (millidegree celsius) */
> -static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
> +static inline int avs_tmon_code_to_temp(struct brcmstb_thermal_priv *priv,
>                                         u32 code)
>  {
> -       return (AVS_TMON_TEMP_OFFSET -
> -               (int)((code & AVS_TMON_TEMP_MAX) * AVS_TMON_TEMP_SLOPE));
> +       int offset = priv->temp_params->offset;
> +       int mult = priv->temp_params->mult;
> +
> +       return (offset - (int)((code & AVS_TMON_TEMP_MASK) * mult));
>  }
>
>  /*
> @@ -122,21 +131,22 @@ static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
>   * @temp: temperature to convert
>   * @low: if true, round toward the low side
>   */
> -static inline u32 avs_tmon_temp_to_code(struct thermal_zone_device *tz,
> +static inline u32 avs_tmon_temp_to_code(struct brcmstb_thermal_priv *priv,
>                                         int temp, bool low)
>  {
> +       int offset = priv->temp_params->offset;
> +       int mult = priv->temp_params->mult;
> +
>         if (temp < AVS_TMON_TEMP_MIN)
>                 return AVS_TMON_TEMP_MAX;       /* Maximum code value */
>
> -       if (temp >= AVS_TMON_TEMP_OFFSET)
> +       if (temp >= offset)
>                 return 0;       /* Minimum code value */
>
>         if (low)
> -               return (u32)(DIV_ROUND_UP(AVS_TMON_TEMP_OFFSET - temp,
> -                                         AVS_TMON_TEMP_SLOPE));
> +               return (u32)(DIV_ROUND_UP(offset - temp, mult));
>         else
> -               return (u32)((AVS_TMON_TEMP_OFFSET - temp) /
> -                             AVS_TMON_TEMP_SLOPE);
> +               return (u32)((offset - temp) / mult);
>  }
>
>  static int brcmstb_get_temp(void *data, int *temp)
> @@ -154,7 +164,7 @@ static int brcmstb_get_temp(void *data, int *temp)
>
>         val = (val & AVS_TMON_STATUS_data_msk) >> AVS_TMON_STATUS_data_shift;
>
> -       t = avs_tmon_code_to_temp(priv->thermal, val);
> +       t = avs_tmon_code_to_temp(priv, val);
>         if (t < 0)
>                 *temp = 0;
>         else
> @@ -188,7 +198,7 @@ static int avs_tmon_get_trip_temp(struct brcmstb_thermal_priv *priv,
>         val &= trip->reg_msk;
>         val >>= trip->reg_shift;
>
> -       return avs_tmon_code_to_temp(priv->thermal, val);
> +       return avs_tmon_code_to_temp(priv, val);
>  }
>
>  static void avs_tmon_set_trip_temp(struct brcmstb_thermal_priv *priv,
> @@ -201,7 +211,7 @@ static void avs_tmon_set_trip_temp(struct brcmstb_thermal_priv *priv,
>         dev_dbg(priv->dev, "set temp %d to %d\n", type, temp);
>
>         /* round toward low temp for the low interrupt */
> -       val = avs_tmon_temp_to_code(priv->thermal, temp,
> +       val = avs_tmon_temp_to_code(priv, temp,
>                                     type == TMON_TRIP_TYPE_LOW);
>
>         val <<= trip->reg_shift;
> @@ -218,7 +228,7 @@ static int avs_tmon_get_intr_temp(struct brcmstb_thermal_priv *priv)
>         u32 val;
>
>         val = __raw_readl(priv->tmon_base + AVS_TMON_TEMP_INT_CODE);
> -       return avs_tmon_code_to_temp(priv->thermal, val);
> +       return avs_tmon_code_to_temp(priv, val);
>  }
>
>  static irqreturn_t brcmstb_tmon_irq_thread(int irq, void *data)
> @@ -282,8 +292,13 @@ static const struct thermal_zone_of_device_ops of_ops = {
>         .set_trips      = brcmstb_set_trips,
>  };
>
> +static const struct brcmstb_thermal_params brcmstb_28nm_params = {
> +       .offset = 410040,
> +       .mult   = 487,
> +};
> +
>  static const struct of_device_id brcmstb_thermal_id_table[] = {
> -       { .compatible = "brcm,avs-tmon" },
> +       { .compatible = "brcm,avs-tmon", .data = &brcmstb_28nm_params },
>         {},
>  };
>  MODULE_DEVICE_TABLE(of, brcmstb_thermal_id_table);
> @@ -299,6 +314,10 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
>         if (!priv)
>                 return -ENOMEM;
>
> +       priv->temp_params = of_device_get_match_data(&pdev->dev);
> +       if (!priv->temp_params)
> +               return -EINVAL;
> +
>         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>         priv->tmon_base = devm_ioremap_resource(&pdev->dev, res);
>         if (IS_ERR(priv->tmon_base))
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
