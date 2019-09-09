Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1E4AD7B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 13:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfFsCr5++aIifpfA6TpeFuVOA3TxBugdgI5uSJSzRPw=; b=pbQCg7D0cAhHgP
	/vbzhCSPhU4qt/d1+SPCrXk+rY92J+l7i3XtyFZQh3Z+0rWqA1FPFmmuZfn4+asKOy8XxfFooBqmq
	eXAog87ZK9cYmIl+9C+lDzYkkXydlBQW+bOTTvf4puQfFvx7zR6RoBLj1ckbBn3mpuJy+fsg+a35i
	nGUcn0dSKQYQHyM1Ynxeg5ZsmKQrLGjv7N0pbrY4dTB+j3nexpJIfCCcKe9mUtzAcb7k2HG8V9nik
	VlOBVqvpwHX68mEB+FHogBqydIYKYTwB9Gi+LtPcmwQ4g0II3cqrdNOffTVOKKABKak2vPPJTPMBF
	CI8zIieeKLh5lrFW6SjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Hc6-0007fS-Oz; Mon, 09 Sep 2019 11:13:42 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Hbw-0007cR-U5
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 11:13:34 +0000
Received: by mail-qk1-x743.google.com with SMTP id q203so12614288qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 04:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lzbLF6sbAfnYGWD1gps2x+aTn+RTiERXdUTulw6z7hQ=;
 b=Wy9JBMoInEpqgAuxp685QyKa5ze/CdmRctwNIx+YUn3diwI2ekQH827hLTqILdGdpH
 ijLDyH3iJaljZelFRRQpN0VMLFiFqRG7FeEzjWX8yVrdWas01LjLQMvIseG8b818neLa
 PDAylHjNa9xQapcnZV67KChPZj571VnAwAIdA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lzbLF6sbAfnYGWD1gps2x+aTn+RTiERXdUTulw6z7hQ=;
 b=TJCvX/2quqgQDgn1c2kavSRFW5wyx9ZT2Sip0ovYzjJWgRnfkeJ1wLGJtj/OppnfPD
 XIyr0MSNt4Be48PIs5akLKo14XDNtW1/zguLoozPNYyxTRms9FCE+Nea91rhbAmcfzGC
 9RYCsSxGEkYonD26wpkfaztsz7sGhUbnfUwK7YZ5fipiB+Naj/wvj4OuI7EjwfdJAfvs
 O0IwDXckn6Y00F2laWfUfdJPIR7hOqvzjxoiFIyQxCbGHUVw6fEd1S7UwZvXnrQjKP9v
 qY/AHh+L639IYMnN/iOYgKdu96QKSsFQireZXfHUZHi9OT84j3N6dRGqBIjYyTGcph83
 nY5A==
X-Gm-Message-State: APjAAAXakKUrqaIT369zFitoIPn+94DW7OassVbx+GF7GMj7aROT3Txj
 85ufBmmopegY1y83F0IJM8oVH/CuPvzIDjbMeuDFHg==
X-Google-Smtp-Source: APXvYqyq3aUpXGkyGgaCMRUaagfPTK6C+li0tdEdPnVUTi7iZ7wtjzbPg5aluymGe3qw3C73YRQ0Nw6f3LWEw1sUDMk=
X-Received: by 2002:a37:9b0e:: with SMTP id d14mr21627093qke.315.1568027611116; 
 Mon, 09 Sep 2019 04:13:31 -0700 (PDT)
MIME-Version: 1.0
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
 <1557494826-6044-8-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1557494826-6044-8-git-send-email-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 9 Sep 2019 19:13:05 +0800
Message-ID: <CAJMQK-jNAX_ADa1jAXBeB-eyqNJKqNLtCJ54nGkB=n1A=fGZxw@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] thermal: mediatek: add another get_temp ops for
 thermal sensors
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_041333_068133_7C992495 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Devicetree List <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 9:27 PM michael.kao <michael.kao@mediatek.com> wrote:
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
Should we return -EAGAIN here? Otherwise there would be warning:
[    0.344167] thermal thermal_zone5: failed to read out thermal zone (-13)

Since first read is bogus value, I think EAGAIN also makes sense here.
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
> +       u32 raw;
> +
> +       if (id < 0)
> +               return  -EACCES;
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
> +       if (temp > 200000)
> +               return  -EACCES;
Same here.
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
> +                               ret = PTR_ERR(tzdev);
> +                               goto err_disable_clk_peri_therm;
> +                       }
> +               }
>         }
>
>         return 0;
> --
> 2.6.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
