Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0C3C287E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 23:16:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R8ygMQnSqJvV+yWbVCbEXmhbxLLxpperopUMfquWa/E=; b=gjqm39MakEih1x
	cZrlbuDOPNJRl1r4n+O//NWQ1a2pnaqH6OyRthknLKy8JiK6vvIvBTGk/Fac8vL40uXvKpnaI2zK6
	qPjoZRNaiChfbpfgyo2CWG8nb+DJ2oi0wbVsyzrYNZMujgG3yc5A+LaoFagBhlq7LqlLihMjS41Pd
	U2LY0yIk+1xWAB4Jh1mLRjrpEkmqvTNNEBAVgv7KjxD5UQLlgg4Z7ruUryF4cejepks+A71s+v0x5
	JtO/mgqqmg0P74uPN0KnngWIq5wkIp0YZo0oIN69EFxA4NOq0RJmie6A8PBV7U7crRmp8327FLTcT
	KLOVSuLPYrUw2/h7/bGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF32P-0007SO-Du; Mon, 30 Sep 2019 21:16:57 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF31x-0007G8-N1; Mon, 30 Sep 2019 21:16:31 +0000
Received: by mail-oi1-x244.google.com with SMTP id o205so12445008oib.12;
 Mon, 30 Sep 2019 14:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AGl26BC0P4MPPAVNiVH76qN3peTSsIs0AC8gMsuxmhs=;
 b=KZJAj1okYzXl6CRX8biKWyfxTA5Hiw5PdQNVDsGTOXm+vgzJoLkWJS9H0o4Twn7PD7
 TYwoWabeDFDlFQDF8/mYMdb6C2k8UpbM+HE5dl5xdJ8I2wyOkmaYRrv9W7BXJRe+rwCE
 xRKNIFbXqgr/2gP1EMo3+cEzuF1jSAN9YXehVh+aJeaWD3RaBH5zHb3uWi+8VJGEj8q3
 yLOry7/uLgh3D/R/t6LecDLnT7MagjPfCWJ2Wyg+plYOA8ZUMGYvUrxzRA6VGBJgEUS7
 TLbz4MoME9Xkh0UyVFFJoGD2q4Z90pAMKKMBucCA7Rs/Tid652uNdwMEO6ptzXGCOZ09
 +a3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AGl26BC0P4MPPAVNiVH76qN3peTSsIs0AC8gMsuxmhs=;
 b=nKn4pGgFhiRQF/knpZJwoi96NW+dNk+2SgKGs+82HZpgixYs67mNU7uoCdmVsi3ACI
 aKT69K+PaxboJT/rNtFgVY8AbLxukvpkYo2OcPb4p4gALYWYNvD0XU3DrBZ1ggrQsmP5
 gFPnCUVmbCQ0vBK+GnRi628hNAYhUN6kTZQ7uhwQBwFoaDXDO/xVRulRMKzRHOajh002
 DVeHgkZwlLkQ88WUjxaKDi2QpH06wEkoO6WOgohr068nGz1tSbItug+undu3h5u6qm2B
 icE7pRAAdMqcsmWrzWZT9haTwZR4aZYFy7Zfp94mNJCSksuL6OXyXi3/QBR1dxdnTZSz
 cm2g==
X-Gm-Message-State: APjAAAUYVV9+nlzyRpv1VIGaMQj6PP6zBw69quS7x1WmGjb+ZfDoL/yp
 E2IVz4SRpi8fpd1QsgylmUB+ughZf5lHzI2Ei78=
X-Google-Smtp-Source: APXvYqwo3X1AmgHw4aNAK1dFU4oJnTmjOuaJANGc3Lqec/DkuNhIVQyVWSQrPvO1BIegkPzh2bHOVAF5m+nxyXG3tes=
X-Received: by 2002:aca:574c:: with SMTP id l73mr1038228oib.47.1569878186047; 
 Mon, 30 Sep 2019 14:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190929164848.13930-1-yzhai003@ucr.edu>
In-Reply-To: <20190929164848.13930-1-yzhai003@ucr.edu>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 30 Sep 2019 23:16:15 +0200
Message-ID: <CAFBinCCewgHnvL+HRXR8MBOT4fdnC-nxDAw8E5rGf+NZDsbaJg@mail.gmail.com>
Subject: Re: [PATCH] iio: adc: meson-saradc: Variables could be uninitalized
 if regmap_read() fails
To: Yizhuo <yzhai003@ucr.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_141629_773105_5EAC56D2 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: csong@cs.ucr.edu, Lars-Peter Clausen <lars@metafoo.de>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, Nicholas Mc Guire <hofrat@osadl.org>,
 zhiyunq@cs.ucr.edu, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yizhuo,

thank you for this patch

On Sun, Sep 29, 2019 at 6:48 PM Yizhuo <yzhai003@ucr.edu> wrote:
>
> Several functions in this file are trying to use regmap_read() to
> initialize the specific variable, however, if regmap_read() fails,
> the variable could be uninitialized but used directly, which is
> potentially unsafe. The return value of regmap_read() should be
> checked and handled.
the meson_saradc driver is using a MMIO regmap so read failures are
unlikely (unless there's a bug in the code somewhere)
did you find these issues with some static code analysis tool or did
you experience a real world problem?

> Signed-off-by: Yizhuo <yzhai003@ucr.edu>
> ---
>  drivers/iio/adc/meson_saradc.c | 30 ++++++++++++++++++++++++------
>  1 file changed, 24 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/iio/adc/meson_saradc.c b/drivers/iio/adc/meson_saradc.c
> index 7b28d045d271..4b6c2983ef39 100644
> --- a/drivers/iio/adc/meson_saradc.c
> +++ b/drivers/iio/adc/meson_saradc.c
> @@ -323,6 +323,7 @@ static int meson_sar_adc_wait_busy_clear(struct iio_dev *indio_dev)
>  {
>         struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
>         int regval, timeout = 10000;
> +       int ret;
why not add "ret" to the variables in the line above?
so this could be shortened to (which is also consistent with the
coding style in meson_saradc):
  int ret, regval, timeout = 10000;

> @@ -506,7 +514,10 @@ static int meson_sar_adc_lock(struct iio_dev *indio_dev)
>                  */
>                 do {
>                         udelay(1);
> -                       regmap_read(priv->regmap, MESON_SAR_ADC_DELAY, &val);
> +                       ret = regmap_read(priv->regmap,
> +                                               MESON_SAR_ADC_DELAY, &val);
> +                       if (ret)
> +                               return ret;
this is a big problem because we're returning with &indio_dev->mlock held
see the "timeout < 0" block below

> @@ -771,7 +782,7 @@ static int meson_sar_adc_init(struct iio_dev *indio_dev)
>  {
>         struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
>         int regval, i, ret;
> -
> +       int ret;
this removes an empty line between the variable declarations and the
first code (comment)
also "ret" is already defined in the line before
(I haven't compile-tested this myself yet but I'm surprised that this
doesn't give an error or at least a warning)

> @@ -1013,8 +1027,12 @@ static irqreturn_t meson_sar_adc_irq(int irq, void *data)
>         struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
>         unsigned int cnt, threshold;
>         u32 regval;
> +       int ret;
> +
> +       ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
> +       if (ret)
> +               return ret;
this function doesn't return "int" but irqreturn_t
the only allowed values are: [0]


Martin


[0] https://elixir.bootlin.com/linux/v5.3/source/include/linux/irqreturn.h#L11

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
