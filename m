Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F45BC1668
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 18:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7q/IpjO36QxUUcG5Z0BA+0XQGIARhVAtGBRQgyQnsT0=; b=GbkNiaJyJ5GDOj
	KpFQlqeL3M71MzXO+V6Gh61Pd9rUZCgCUv+jsFxiCVMdhMnvBKJWLL5oY+d9Qupu5n9WfPAh97aVs
	2JSPXEKAwFXXbXlqMuZbMGX4cjTJfLRxU0oaS6FUUZMviOpU9qGiC54eqLMubbkOsFPjoocXZBw/n
	+ntYBPvCxHoAt9TRps2+mGzEFxoDqa08Llk4xabzGBgymbgjoRLbrTAZ78ICwK/pgPBus2yLgkdZ7
	E1okzbdrMBMkAlXa4OGazGCJKoog9kq2ESpgMGKJgQZ+2hznGeF7SFkbIf5juRUYDJb0mhXDXL4Ah
	CnM8tPeidsC2EnIOEbIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEcTi-0002mm-U2; Sun, 29 Sep 2019 16:55:23 +0000
Received: from mx4.ucr.edu ([138.23.248.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEcTY-0002lY-GO
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 16:55:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1569776113; x=1601312113;
 h=mime-version:references:in-reply-to:from:date:message-id:
 subject:to:cc; bh=x7b6SLeaG9bmKhPMxmT8BEbRRwJk0nI3N/pQdCncVCM=;
 b=im7vmOenWC8h5UPgD4ejuhL8BtsTPWqDoJHV8F6VjTi9vuAEOVBW8XTp
 WbIw5dGZMjNEY2+NokwYuoIfD9tMOJCMfeDmROmjq8HHxLCqOcHPDBEbM
 +ZW5EkNiRjZMspCuPVC0jWHiYz0ga/9bxqvoe+bkhTCYQOcnUs7h/h5GY
 RqpdJnr8nWM5GhUv1xn7p+UvIJP35gRi55qO9deOGte+g/i1g62UKv9Ck
 GRqwzbm51mDXOeJjdbPbJVTvYu1wWGZPZxRS/EQwNzEc/CiCclkzS8fsx
 LAeMS+Fz432ypfiqSOwpv+p2x2pedJBUbOQsTJQu/YPOeBzm+/P66zEgP A==;
IronPort-SDR: KoNcwXqZpCtGz7+cubJywI2Wxd1lKJqGFm0fuJx0faYw3NzsJlyj0ysr0kUP0ylCfSUhqXld9C
 w6mOjzsiEKzxdy+j0TljvLM/IS8nqF4kIIRefnRJ2d1IC224axIhvvIhe8/ULw5dQaB5oCRN6/
 L8pq8DsHjXm8qcerOzJ4RHUN6JkPawtM2Aj+QlKxT1ibV6SVeozog9dbr3OS1gsyVTJSC8RVrA
 pHXEVK+xpRxmIYIm6P2dMIzQKYs9iyaCL1OZx5/Ts6RbtqYQ82rFkhcTV/nNtg1F4GCqimkrw0
 ib0=
IronPort-PHdr: =?us-ascii?q?9a23=3AXcNYGRamfqAqX0yyQ7ZXZTX/LSx+4OfEezUN45?=
 =?us-ascii?q?9isYplN5qZr8y6bnLW6fgltlLVR4KTs6sC17ON9fy4EjVYvt6oizMrSNR0TR?=
 =?us-ascii?q?gLiMEbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ?=
 =?us-ascii?q?/iOgVrO+/7BpDdj9it1+C15pbffxhEiCCybL9vIhi6twrcutUZjYd/Nqo8yA?=
 =?us-ascii?q?bCr2dVdehR2W5mP0+YkQzm5se38p5j8iBQtOwk+sVdT6j0fLk2QKJBAjg+PG?=
 =?us-ascii?q?87+MPktR/YTQuS/XQcSXkZkgBJAwfe8h73WIr6vzbguep83CmaOtD2TawxVD?=
 =?us-ascii?q?+/4apnVAPkhSEaPDMi7mrZltJ/g75aoBK5phxw3YjUYJ2ONPFjeq/RZM4WSX?=
 =?us-ascii?q?ZdUspUUSFKH4GyYJYVD+cZMulYoYvyqVsAoxW9GAeiGv/gxyRUhnPqx6A2z/?=
 =?us-ascii?q?gtHR3E0QEmAtkAsG7UrNLwNKoKU++1zajJzTXeb/NRxDzy64jIfQogofqRWr?=
 =?us-ascii?q?9xccvQyUk1GAPEklmctYLoMiiI1usRqWiX9fRvWv+yi2M+rQx6vzuhxt80h4?=
 =?us-ascii?q?XXmo4YzkrI+CZ5zYovO9G0VE12bcS5HJZUtCyXMZZ9TNk4TGFyoik6z6ULuZ?=
 =?us-ascii?q?u8fCcX1psq3wXfa/mbc4iQ5RLjSfqRLS94hH17fLK/gA6/8U26xe39Usm4yV?=
 =?us-ascii?q?JKrihYntXVuHAByhje58udRvty+Ueh3jmP1wTN5e1ePU80kq/bJ4Ygwr42iJ?=
 =?us-ascii?q?UTrVzOEjHqlEjylqObdUUp9vK25+j7YbjqvIKQOot3hw3mN6QhgM2/AeA2Mg?=
 =?us-ascii?q?gUWGib/Pyx1b3i/E35WrpKj+E6nrXXvZ3BOMQUurS5DxVL3Yk+9hazFy2m38?=
 =?us-ascii?q?gAnXkbMFJFfwqKj4zoO1HIPfD5Au6zjE62kDdu3vzGPaPuAo/LLnfdlLfsZr?=
 =?us-ascii?q?J9609HyAov1tBT/ZNUCrcPIPLpQED+qcLXAQUkPACuxObnEtp9hcsiXjepA6?=
 =?us-ascii?q?SZN6fbqhet7aoAPuiWacdBtDvnbfgo/eTGjXg3gxkUYf/684EQbSWJH+ZmPk?=
 =?us-ascii?q?LRU3rlg59VAHUKtwtmFLfClVaYFzNfeiDhDOoH+jgnBdf+Xs/4TYe3jenEhX?=
 =?us-ascii?q?/jEw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EUAAAc4ZBdgMbQVdFmHAEBAQQBAQw?=
 =?us-ascii?q?EAQGBUwcBAQsBhA8qhCKIHIZSgg+ZJIF7AQgBAQEOLwEBhEACgzgjNAkOAgM?=
 =?us-ascii?q?JAQEFAQEBAQEFBAEBAhABAQkNCQgnhUKCOikBgz0BAQQSEQRSEAsLDQICJgI?=
 =?us-ascii?q?CIhIBBQEcBhMigwCCCwWfPoEDPIsmfzOIZwEJDYFIEnooAYwNgheBEYMSPod?=
 =?us-ascii?q?PglgEgS8BAQGLP4IxhyuWSQEGAoIQFIxNiD4bmTYtiiidBA8jgS+CETMaJX8?=
 =?us-ascii?q?GZ4FOUBAUgVoXFY4tJDCRFwEB?=
X-IPAS-Result: =?us-ascii?q?A2EUAAAc4ZBdgMbQVdFmHAEBAQQBAQwEAQGBUwcBAQsBh?=
 =?us-ascii?q?A8qhCKIHIZSgg+ZJIF7AQgBAQEOLwEBhEACgzgjNAkOAgMJAQEFAQEBAQEFB?=
 =?us-ascii?q?AEBAhABAQkNCQgnhUKCOikBgz0BAQQSEQRSEAsLDQICJgICIhIBBQEcBhMig?=
 =?us-ascii?q?wCCCwWfPoEDPIsmfzOIZwEJDYFIEnooAYwNgheBEYMSPodPglgEgS8BAQGLP?=
 =?us-ascii?q?4IxhyuWSQEGAoIQFIxNiD4bmTYtiiidBA8jgS+CETMaJX8GZ4FOUBAUgVoXF?=
 =?us-ascii?q?Y4tJDCRFwEB?=
X-IronPort-AV: E=Sophos;i="5.64,563,1559545200"; d="scan'208";a="79457926"
Received: from mail-lj1-f198.google.com ([209.85.208.198])
 by smtpmx4.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Sep 2019 09:55:11 -0700
Received: by mail-lj1-f198.google.com with SMTP id b64so2275295ljb.14
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 09:55:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sjNdX3e/FDjYlFzLDAbb3JmD3MBe1ko+MmFn61I90Os=;
 b=RDL/hqPzqBWZWMosuefQrU6n239LQ7TyeMccsYNRGEC21tJKOAu+WzMClwLK5naQKw
 iE55oE2ypkXbGTyipIuwmdVtaQpkYMNxg/L4echFJ/uGB/Z6ZHCZB7xodEpdTmgi7Wbq
 lemlKrdusRoGPBy4tCShlBCMeI+Plvm2R03E+zMmXPHcjL3fQ19e9lXhuVCvajdk6R1U
 MHCQjE5gsiaWJffLphs3awLAbzn89ZQJ8ECcFBDB6KwA67fZloWRm6vdLsjN575542vJ
 MrU+4lV0MQxjwqyVZtMryskwvg3NCiROd58z10wbSN1bxC45/ISc7nsZ87PMcpVNnW/Y
 8fXg==
X-Gm-Message-State: APjAAAUspMbH8aD3+L/VeTwYn7cD+OtDYwO+VLIzojo5jMFreXZ8pHB3
 WBHXYWdByyOLSkIp2OemIVoUl4EK+O0agojQ5Fop3BfrBHz8iH0ZwmlbkhoQLhLHSOjNekoxv3L
 dLlAkEwsr45fW4ZUBcVdX1P/xl55fgh8dp928EcMuJ387wuew30ZX
X-Received: by 2002:a19:f512:: with SMTP id j18mr9044161lfb.169.1569776108453; 
 Sun, 29 Sep 2019 09:55:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwVzY32Bt/A8gXhlgqzeWJpqc+TMw73XWbverehqqSktg26b6k0t4TG24jtNlhtaPJc/gwb9AQK9KEvS4UtPUg=
X-Received: by 2002:a19:f512:: with SMTP id j18mr9044142lfb.169.1569776108214; 
 Sun, 29 Sep 2019 09:55:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190928004642.28932-1-yzhai003@ucr.edu>
 <20190928064720.GA24515@osadl.at>
In-Reply-To: <20190928064720.GA24515@osadl.at>
From: Yizhuo Zhai <yzhai003@ucr.edu>
Date: Sun, 29 Sep 2019 09:54:54 -0700
Message-ID: <CABvMjLR1sP+-z6-vy3kKmyv-srVHdvT9=Z7g=RSWo3oDuGt8+A@mail.gmail.com>
Subject: Re: [PATCH] iio: adc: meson-saradc: Variables could be uninitalized
 if regmap_read() fails
To: Nicholas Mc Guire <der.herr@hofr.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_095512_584480_C3D8CA6C 
X-CRM114-Status: GOOD (  24.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.23.248.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chengyu Song <csong@cs.ucr.edu>, Lars-Peter Clausen <lars@metafoo.de>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, Nicholas Mc Guire <hofrat@osadl.org>,
 Zhiyun Qian <zhiyunq@cs.ucr.edu>, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicholas:

Thanks for your feedback, I made changes and submitted new patches
already. Check patch script generated a warning if I strictly align
the parameter with (. I checked other code inside this file and
modified the continuation accordingly.

On Fri, Sep 27, 2019 at 11:47 PM Nicholas Mc Guire <der.herr@hofr.at> wrote:
>
> On Fri, Sep 27, 2019 at 05:46:41PM -0700, Yizhuo wrote:
> > Several functions in this file are trying to use regmap_read() to
> > initialize the specific variable, however, if regmap_read() fails,
> > the variable could be uninitialized but used directly, which is
> > potentially unsafe. The return value of regmap_read() should be
> > checked and handled.
> >
> > Signed-off-by: Yizhuo <yzhai003@ucr.edu>
>
> Just a few minor style issues - contentwise it look correct to me.
> Reviewed-by: Nicholas Mc Guire <hofrat@osadl.org>
>
> > ---
> >  drivers/iio/adc/meson_saradc.c | 28 +++++++++++++++++++++++-----
> >  1 file changed, 23 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/iio/adc/meson_saradc.c b/drivers/iio/adc/meson_saradc.c
> > index 7b28d045d271..c032a64108b4 100644
> > --- a/drivers/iio/adc/meson_saradc.c
> > +++ b/drivers/iio/adc/meson_saradc.c
> > @@ -323,6 +323,7 @@ static int meson_sar_adc_wait_busy_clear(struct iio_dev *indio_dev)
> >  {
> >       struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
> >       int regval, timeout = 10000;
> > +     int ret;
> >
> >       /*
> >        * NOTE: we need a small delay before reading the status, otherwise
> > @@ -331,7 +332,9 @@ static int meson_sar_adc_wait_busy_clear(struct iio_dev *indio_dev)
> >        */
> >       do {
> >               udelay(1);
> > -             regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
> > +             ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
> > +             if (ret)
> > +                     return ret;
> >       } while (FIELD_GET(MESON_SAR_ADC_REG0_BUSY_MASK, regval) && timeout--);
> >
> >       if (timeout < 0)
> > @@ -358,7 +361,11 @@ static int meson_sar_adc_read_raw_sample(struct iio_dev *indio_dev,
>
> any reason not to declear ret in the declaration block ?
> so just for consistency with coding style within meson_saradc.c
> this might be:
>
>         int regval, fifo_chan, fifo_val, count;
> +       int ret;
>
> >               return -EINVAL;
> >       }
> >
> > -     regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);
> > +     int ret = regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);
>
> +       ret = regmap_read(priv->regmap, MESON_SAR_ADC_FIFO_RD, &regval);
>
> > +
> > +     if (ret)
> > +             return ret;
> > +
> >       fifo_chan = FIELD_GET(MESON_SAR_ADC_FIFO_RD_CHAN_ID_MASK, regval);
> >       if (fifo_chan != chan->address) {
> >               dev_err(&indio_dev->dev,
> > @@ -491,6 +498,7 @@ static int meson_sar_adc_lock(struct iio_dev *indio_dev)
> >  {
> >       struct meson_sar_adc_priv *priv = iio_priv(indio_dev);
> >       int val, timeout = 10000;
> > +     int ret;
> >
> >       mutex_lock(&indio_dev->mlock);
> >
> > @@ -506,7 +514,10 @@ static int meson_sar_adc_lock(struct iio_dev *indio_dev)
> >                */
> >               do {
> >                       udelay(1);
> > -                     regmap_read(priv->regmap, MESON_SAR_ADC_DELAY, &val);
> > +                     ret = regmap_read(priv->regmap,
> > +                                     MESON_SAR_ADC_DELAY, &val);
>
> checkpatch does not fuss here but the continuation should be alligned
> witht the ( here
>
> > +                     if (ret)
> > +                             return ret;
> >               } while (val & MESON_SAR_ADC_DELAY_BL30_BUSY && timeout--);
> >
> >               if (timeout < 0) {
> > @@ -784,7 +795,10 @@ static int meson_sar_adc_init(struct iio_dev *indio_dev)
> >                * BL30 to make sure BL30 gets the values it expects when
> >                * reading the temperature sensor.
> >                */
> > -             regmap_read(priv->regmap, MESON_SAR_ADC_REG3, &regval);
> > +             ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG3, &regval);
> > +             if (ret)
> > +                     return ret;
> > +
> >               if (regval & MESON_SAR_ADC_REG3_BL30_INITIALIZED)
> >                       return 0;
> >       }
> > @@ -1014,7 +1028,11 @@ static irqreturn_t meson_sar_adc_irq(int irq, void *data)
> >       unsigned int cnt, threshold;
> >       u32 regval;
>
> same as above
>
> +       int ret;
>
> >
> > -     regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
> > +     int ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
>
> +       ret = regmap_read(priv->regmap, MESON_SAR_ADC_REG0, &regval);
>
> > +
> > +     if (ret)
> > +             return ret;
> > +
> >       cnt = FIELD_GET(MESON_SAR_ADC_REG0_FIFO_COUNT_MASK, regval);
> >       threshold = FIELD_GET(MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, regval);
> >
> > --
> > 2.17.1
> >



-- 
Kind Regards,

Yizhuo Zhai

Computer Science, Graduate Student
University of California, Riverside

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
