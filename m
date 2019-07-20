Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0006EF9F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 16:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCSR46QaHX7GVeWQye4OrZzowpjGwwylIYr+FJhdTb4=; b=eLR4Zvnq0Lcq3F
	elLIubMJPuO53GUEzfSRna67isUNLiR16FRJk4d1BWOjQdsE4OBGC7kQgAfIF6rxXI5l63egJ1o5L
	pareFpVGnEsDoq1TB/eN2URUdJlp1nuv5dL1v3iCUksBC4oB/8anMZ0zIqyPip77vLv5augX/xUJQ
	Vh7uBABMuDf6ZvG5PTCsyp/tvLKjryRCFGZdyF/LBGwK1qGzXTQW8FzGJOyaBzZjr6lTDy/VXQb1q
	YYUECeRK65IFV9NLRGOx+AevVY0OxV4sLab4wg5QRVpRxQI8UTuOOfy4uHZD/CZ1KfoKAvuhtHlOF
	1/3hh0iAEGYQeiTY/BJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoq8C-0000fp-Kq; Sat, 20 Jul 2019 14:14:36 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoq7i-0000dV-NV
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 14:14:08 +0000
Received: by mail-qk1-x744.google.com with SMTP id 201so25407957qkm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jul 2019 07:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rjy01hz76qJsGBlj89nPeHsxAVMf/NWX8i7ANc3NyP4=;
 b=I+ScoAv8q6Te/9p4Qm1WL3NsGcfq1HXumf4DYD5boY31ZFYqRutFNJ1S92hcXfaKdW
 ySGkDcfSmbEzvu3bCYyoyAniE54YCEDSk197kKGmTg4uC1O/yTTF/2skSaI2wwX6wvoy
 /UYRUWxI/jlJK8siKJrmwj689HohB+ApkpM7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rjy01hz76qJsGBlj89nPeHsxAVMf/NWX8i7ANc3NyP4=;
 b=H+zQcbXXwjGHn6hx85GdVmTQtzNw/H5APcNLW+igkA2Yt8sqtGD593uHe0D7oslhy2
 M5MKObiJ1tWewcw8rb1gSgcKidznm5r8Dl6EaztfJzop7fHqlGst2ew+pk4noDbnfd+7
 PmHDlykP1RhY/xqa8S9mfKVrnH2ayEwNso49vQQ2TxAx9IqOsatmtPrbtaZVOm8dOR0i
 bdBRqsocB9g7ZgmrQaNLQOGI2VPGlSiwXGCat6JDqX6njtFqsQYkHg8bLUsc6QQWmasD
 ezPFBvIi3QRVPIUNytYOqyzhlTUTNWywBTKAlFH0jV8kFCt2M2f2IFJ5QC2yfxabgOOp
 LdUQ==
X-Gm-Message-State: APjAAAWxRc7XjUBRUKI6R3eJFcpXpCFzTJziyqRVCYWj2Klx47k+T+tx
 P2rH8DVNQCOaPNDniik2KjxylljcqpDE9aJkC/camA==
X-Google-Smtp-Source: APXvYqwPDOsBteUqw3hytvAK4uoJj9IbndzbKZU8k0iNDt6pOzdf6KeidqoUr+AO9CQpwMmx2+ZqXLUueG4APAXdP9E=
X-Received: by 2002:ae9:f017:: with SMTP id l23mr39448045qkg.457.1563632043392; 
 Sat, 20 Jul 2019 07:14:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190718080119.30707-1-zhiyong.tao@mediatek.com>
 <20190718080119.30707-3-zhiyong.tao@mediatek.com>
In-Reply-To: <20190718080119.30707-3-zhiyong.tao@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Sat, 20 Jul 2019 22:13:51 +0800
Message-ID: <CANMq1KBzLjshQGqfULdPFbzzYxMx2+T+Ku6B4j0QoFRhgsP_nw@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] auxadc: mediatek: support efuse calibration in
 auxadc driver
To: Zhiyong Tao <zhiyong.tao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_071406_795171_74727A19 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
 srv_heupstream <srv_heupstream@mediatek.com>, linux-iio@vger.kernel.org,
 Erin Lo <erin.lo@mediatek.com>, hui.liu@mediatek.com,
 Eddie Huang <eddie.huang@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 pmeerw@pmeerw.net, knaack.h@gmx.de, Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, jg_poxu@mediatek.com,
 Sean Wang <sean.wang@mediatek.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 4:01 PM Zhiyong Tao <zhiyong.tao@mediatek.com> wrote:
>
> This patch support efuse calibration in auxadc driver
>
> Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>
> Signed-off-by: jg_poxu <jg_poxu@mediatek.com>
> ---
>  drivers/iio/adc/mt6577_auxadc.c | 71 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
>
> diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
> index 95d76abb64ec..e30d9736b1a5 100644
> --- a/drivers/iio/adc/mt6577_auxadc.c
> +++ b/drivers/iio/adc/mt6577_auxadc.c
> @@ -17,12 +17,14 @@
>  #include <linux/err.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
> +#include <linux/nvmem-consumer.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/iopoll.h>
>  #include <linux/io.h>
>  #include <linux/iio/iio.h>
> +#include <linux/slab.h>
>
>  /* Register definitions */
>  #define MT6577_AUXADC_CON0                    0x00
> @@ -42,6 +44,13 @@
>  #define MT6577_AUXADC_POWER_READY_MS          1
>  #define MT6577_AUXADC_SAMPLE_READY_US         25
>
> +#define ADC_GE_A_SHIFT      10
> +#define ADC_GE_A_MASK       (0x3ff << ADC_GE_A_SHIFT)
> +#define ADC_OE_A_SHIFT      0
> +#define ADC_OE_A_MASK       (0x3ff << ADC_OE_A_SHIFT)
> +#define ADC_CALI_EN_A_SHIFT 20
> +#define ADC_CALI_EN_A_MASK  (0x1 << ADC_CALI_EN_A_SHIFT)
> +
>  struct mt6577_auxadc_device {
>         void __iomem *reg_base;
>         struct clk *adc_clk;
> @@ -74,6 +83,64 @@ static const struct iio_chan_spec mt6577_auxadc_iio_channels[] = {
>         MT6577_AUXADC_CHANNEL(15),
>  };
>
> +s32 cali_oe;
> +s32 cali_ge;

Why do you need these 2 (global) variables? They are set in
mt6577_auxadc_update_cali but never read anywhere.

> +struct adc_cali_info {
> +       u32 cali_ge_a;
> +       u32 cali_oe_a;
> +       u32 gain;
> +};
> +static struct adc_cali_info adc_cali;

This should be inside struct mt6577_auxadc_device structure. And... I
still do not understand what this does, since nothing reads back
adc_cali either...

On gerrit (https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1624410),
you mentioned that thermal module will use these, can you please
upload these changes as part of this series, so that we can review the
whole thing in one piece (and understand better how to fix this
interface).

> +
> +static int mt6577_auxadc_update_cali(struct device *dev)
> +{
> +       struct nvmem_cell *cell;
> +       u32 *buf;
> +       size_t len;
> +       int ret = 0;
> +
> +       cali_oe = 0;
> +       cali_ge = 0;
> +
> +       cell = nvmem_cell_get(dev, "calibration-data");
> +       if (IS_ERR(cell)) {
> +               if (PTR_ERR(cell) == -EPROBE_DEFER)
> +                       return PTR_ERR(cell);
> +               return 0;
> +       }
> +
> +       buf = (u32 *)nvmem_cell_read(cell, &len);

Cast is not necessary.

> +
> +       nvmem_cell_put(cell);
> +
> +       if (IS_ERR(buf))
> +               return PTR_ERR(buf);
> +
> +       if (len < sizeof(u32)) {
> +               dev_warn(dev, "invalid calibration data\n");
> +               ret = -EINVAL;
> +               goto out;
> +       }
> +
> +       if (((buf[0] & ADC_CALI_EN_A_MASK) >> ADC_CALI_EN_A_SHIFT) != 0) {
> +               adc_cali.cali_oe_a =
> +                       (buf[0] & ADC_OE_A_MASK) >> ADC_OE_A_SHIFT;
> +               adc_cali.cali_ge_a =
> +                       ((buf[0] & ADC_GE_A_MASK) >> ADC_GE_A_SHIFT);
> +
> +               cali_ge = adc_cali.cali_ge_a - 512;
> +               cali_oe = adc_cali.cali_oe_a - 512;
> +               adc_cali.gain = 1 + cali_ge;
> +       }  else {
> +               dev_info(dev, "Device not calibrated, using default calibration values\n");
> +       }
> +
> +out:
> +       kfree(buf);
> +
> +       return ret;
> +}
> +
>  static inline void mt6577_auxadc_mod_reg(void __iomem *reg,
>                                          u32 or_mask, u32 and_mask)
>  {
> @@ -274,6 +341,10 @@ static int mt6577_auxadc_probe(struct platform_device *pdev)
>                 goto err_power_off;
>         }
>
> +       ret = mt6577_auxadc_update_cali(&pdev->dev);
> +       if (ret)
> +               return ret;
> +
>         return 0;

Or just
return mt6577_auxadc_update_cali(&pdev->dev);

>
>  err_power_off:
> --
> 2.12.5
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
