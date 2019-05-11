Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542181A64C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 May 2019 04:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TKUweaMtKa7lvqoF0NY5a+eN0RqzgPQuzR6Qev+eAbU=; b=RwEUqGxDHsLBnH
	sUpTPtV31vpm+d8WQ7WbotfR44cJWjCuKAi2eOQQQHgdwdpkNuxZTY2bHaAnHIE6/Btq8/srlWYCG
	sInYoW4QcdKG3fYLe7u0fPYUZR7E2sBQ2d7UDf55MQ++Ij/EP4F9TnNRmz8xo1QQoVhB/HFtPBwKC
	ogINiCi7zXlehxfajI6QP6xqYp5/l5yG7QFIvbaiqbLnYjEYW9JILNSoOOVL9U/kDsZog7nz86DvA
	BOg8ceLy5Tn9WHhuQfYdDz+QWtYWsenFYZK53oWakHbpeQYm34/mP8IIRCXF0B1h/GThvGdS2x6qc
	NVpba+30pg/nNq0pvl4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPHnO-0008C0-9t; Sat, 11 May 2019 02:31:30 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPHnG-0008Ao-2S
 for linux-arm-kernel@lists.infradead.org; Sat, 11 May 2019 02:31:24 +0000
Received: by mail-qt1-x843.google.com with SMTP id o7so8896735qtp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 19:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QkHid6lisLXvpmq0JMNlVb1recKQukJ7PuauuXWUQBw=;
 b=CFYwUdlb6kDt1NhEEjrC0A0nuRHWn/prCx1A1kIqu1GhRZfmdY8bgahc02/X19llbd
 fvxssMqrQQ6Z/4ELAilm0gKIZ0OkiTljAKrePdvGDo8GmzBW4bSQ+Pk9F/xHwraaTGug
 hP27VQvggJlYqYGyMP2FvkeRHxg3gYVJdXK60=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QkHid6lisLXvpmq0JMNlVb1recKQukJ7PuauuXWUQBw=;
 b=gEKg8KqjsGTdWnu/hcCekKxIpEXg/ibdhKD5m06fvSSrTkZKCGExGBxK/Y0TEjQnlH
 O5CiELBL+gmy52MGkNV1Q/2fmFdxkk+y2DZHHx1ctxs8nM4noeXBb0zZ2ABFnldslhjV
 Mzgwm1DnM/mDU4RgA4AhR2N+zo1JFzOO8Ry63npmrysJ4t58or1brsyRQv2jSI8o9lrA
 44mqvT50w/NjNvqMhVRbPrsbJblE8t25ZSYKTpdf+0JXHfqfjhRLI79VCeSeXAF4777y
 qTmu7LwxFGaxDOXo4BtGANOZi0nIBbC1ph8FduJoodioV8twdmDRDn5T9Psu9vjssjIQ
 5V7A==
X-Gm-Message-State: APjAAAVxamdfW7jHswlR829wRYzAChfu/GSx8sZJlszu+yI7x0WlZ0jO
 9ntaih1ra6dYEo9q+7tIPEGYjO2WoFDuwRfy2RGGgQ==
X-Google-Smtp-Source: APXvYqyW5OpnvPwOyXp+1b/92lREfPpRtf9W5zCWsq24yemetlTdNNphRPH6NE7SW8/mCSyxiaqF+3PgsW4V3IWGCTA=
X-Received: by 2002:a0c:ee28:: with SMTP id l8mr11862487qvs.67.1557541879585; 
 Fri, 10 May 2019 19:31:19 -0700 (PDT)
MIME-Version: 1.0
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-8-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1556793795-25204-8-git-send-email-michael.kao@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Sat, 11 May 2019 11:31:08 +0900
Message-ID: <CANMq1KBna0V2X3_CNQrcH==WVLs7oY=GvFGzEbWS91-oZCLKTQ@mail.gmail.com>
Subject: Re: [PATCH 7/8] thermal: mediatek: add another get_temp ops for
 thermal sensors
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_193122_149621_97FEDFBD 
X-CRM114-Status: GOOD (  23.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, James Liao <jamesjj.liao@mediatek.com>,
 devicetree@vger.kernel.org, louis.yu@mediatek.com, dawei.chien@mediatek.com,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 roger.lu@mediatek.com, lkml <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Fan Chen <fan.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 7:45 PM michael.kao <michael.kao@mediatek.com> wrote:
>
> From: Michael Kao <michael.kao@mediatek.com>
>
> Provide thermal zone to read thermal sensor
> in the SoC. We can read all the thermal sensors
> value in the SoC by the node /sys/class/thermal/
>
> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> ---
>  drivers/thermal/mtk_thermal.c | 68 ++++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 60 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
> index cb41e46..d5c78b0 100644
> --- a/drivers/thermal/mtk_thermal.c
> +++ b/drivers/thermal/mtk_thermal.c
> @@ -230,6 +230,11 @@ enum {
>
>  struct mtk_thermal;
>
> +struct mtk_thermal_zone {
> +       struct mtk_thermal *mt;
> +       int id;
> +};
> +
>  struct thermal_bank_cfg {
>         unsigned int num_sensors;
>         const int *sensors;
> @@ -612,7 +617,7 @@ static int mtk_thermal_bank_temperature(struct mtk_thermal_bank *bank)
>                  * not immediately shut down.
>                  */
>                 if (temp > 200000)
> -                       temp = 0;
> +                       temp = -EACCES;

EACCES/permission denied doesn't really seem to be the right error
code here. Maybe EAGAIN?

>
>                 if (temp > max)
>                         max = temp;
> @@ -623,7 +628,8 @@ static int mtk_thermal_bank_temperature(struct mtk_thermal_bank *bank)
>
>  static int mtk_read_temp(void *data, int *temperature)
>  {
> -       struct mtk_thermal *mt = data;
> +       struct mtk_thermal_zone *tz = data;
> +       struct mtk_thermal *mt = tz->mt;
>         int i;
>         int tempmax = INT_MIN;
>
> @@ -636,16 +642,48 @@ static int mtk_read_temp(void *data, int *temperature)
>
>                 mtk_thermal_put_bank(bank);
>         }
> -

I'd drop that change.

>         *temperature = tempmax;
>
>         return 0;
>  }
>
> +static int mtk_read_sensor_temp(void *data, int *temperature)
> +{
> +       struct mtk_thermal_zone *tz = data;
> +       struct mtk_thermal *mt = tz->mt;
> +       const struct mtk_thermal_data *conf = mt->conf;
> +       int id = tz->id - 1;
> +       int temp = INT_MIN;

No need to initialize temp.

> +       u32 raw;
> +
> +       if (id < 0)
> +               return  -EACCES;

EINVAL?

> +
> +       raw = readl(mt->thermal_base + conf->msr[id]);
> +
> +       temp = raw_to_mcelsius(mt, id, raw);
> +
> +       /*
> +        * The first read of a sensor often contains very high bogus
> +        * temperature value. Filter these out so that the system does
> +        * not immediately shut down.
> +        */
> +

nit: Drop this blank line

> +       if (temp > 200000)
> +               return  -EACCES;

Again, EAGAIN, maybe?

> +
> +       *temperature = temp;
> +       return 0;
> +}
> +
>  static const struct thermal_zone_of_device_ops mtk_thermal_ops = {
>         .get_temp = mtk_read_temp,
>  };
>
> +static const struct thermal_zone_of_device_ops mtk_thermal_sensor_ops = {
> +       .get_temp = mtk_read_sensor_temp,
> +};
> +
>  static void mtk_thermal_init_bank(struct mtk_thermal *mt, int num,
>                                   u32 apmixed_phys_base, u32 auxadc_phys_base,
>                                   int ctrl_id)
> @@ -878,6 +916,7 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>         struct resource *res;
>         u64 auxadc_phys_base, apmixed_phys_base;
>         struct thermal_zone_device *tzdev;
> +       struct mtk_thermal_zone *tz;
>
>         mt = devm_kzalloc(&pdev->dev, sizeof(*mt), GFP_KERNEL);
>         if (!mt)
> @@ -959,11 +998,24 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>
>         platform_set_drvdata(pdev, mt);
>
> -       tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, mt,
> -                                                    &mtk_thermal_ops);
> -       if (IS_ERR(tzdev)) {
> -               ret = PTR_ERR(tzdev);
> -               goto err_disable_clk_peri_therm;
> +       for (i = 0; i < mt->conf->num_sensors + 1; i++) {
> +               tz = kmalloc(sizeof(*tz), GFP_KERNEL);

Are we leaking this pointer? Should this be devm_kmalloc?

> +               if (!tz)
> +                       return -ENOMEM;
> +
> +               tz->mt = mt;
> +               tz->id = i;
> +
> +               tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, i,
> +                               tz, (i == 0) ?
> +                               &mtk_thermal_ops : &mtk_thermal_sensor_ops);
> +
> +               if (IS_ERR(tzdev)) {
> +                       if (IS_ERR(tzdev) != -EACCES) {

Why would EACCES ever happen? AFAICT
devm_thermal_zone_of_sensor_register does not actually try to read the
temperature value? Or does the error come from somewhere else?

> +                               ret = PTR_ERR(tzdev);
> +                               goto err_disable_clk_peri_therm;
> +                       }
> +               }
>         }
>
>         return 0;
> --
> 1.9.1
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
