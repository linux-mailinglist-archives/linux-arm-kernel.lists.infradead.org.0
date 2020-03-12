Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE13F1826CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 02:48:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XjWMIVpTOhsVgNRZkBK+Myg2GKkoKcsNt697saVeO8=; b=PQFBi/uAAWp5Zu
	IrgeC4ByeB7zAtlwT/1MMjp9hHNEJp1OWR0T9qRu1fZt0WBVvaSMyaNlWMYTyFz4KnixonsXXRhFf
	W8gbK9yrmpJ74mYRqB3qGs49g/r1HYEfAPvNbNxBwTHLWW0y1D3R+zeB27zLRErrpBtUkHQxdJZqc
	sYryo9mnUb5BbcNy7BqWrBmQooPOuENqaJYKta8+JIwJEONmo0DxkCLzZziD/ofYd5sBsxhyJg3hY
	hbs0qBIq97UZDG3OyxjzdBZ9TB9PghQnTOpPBWiTmhmmhMdz3yGPet6CsRjTzwIdLJkpWN6HX4hO2
	qGMUChVfFVqpgo/rTYcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCCwz-0006w1-KK; Thu, 12 Mar 2020 01:47:53 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCCwr-0006ug-LD
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 01:47:47 +0000
Received: by mail-ua1-x944.google.com with SMTP id o16so1516784uap.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 18:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PgMVUPr9CJB662kw0Etj9PzDmEhHdAooW8/c8EV2Xs4=;
 b=JI0NdUuOBJi8irQniAHDZus9gSxHFsPWYFnKXsiqwsOhKAbNzUqHq+VcEDM8T4TnEJ
 OGifAyneQ4sO654BJ/tCMwd7iiHnlmHuV7b42qkExDUAC0x85FWZUcqYT2EqaWfTVQ3c
 PY8jyoS8ygU8ctvk99m1zD0Sk/ux/dUV8qhvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PgMVUPr9CJB662kw0Etj9PzDmEhHdAooW8/c8EV2Xs4=;
 b=FvcbR2HYBEegW6ulgdHFVYPtU0odM25PWNvPfPxhOlD3UFg91/YOkqZ0AdN3KqtO+V
 eeLJpZ4SRv6RXoL8hmReIThfWFwTsbA5XGb2O1szfgazoMem9/iU+4iUZXi3eLoJZJvi
 rSm/mITTWro9HFRNOfrHlESj2zsp6MFPcu3VzzhWx+i9bCw5qn21P5MV1oU43EUda6vG
 5q2vqgHoJcTnYfb9wwv9iMkcPyaDY1ZMt5wBk9m9NFkSPboP58oJBPjWVTYpImvk52LZ
 ikQ3hK3lWzJOfQYMAZmx1n1GVa9cGWDp5bC6V1ep6DivypoBZUesLwKxX902nxntlR8k
 fyzA==
X-Gm-Message-State: ANhLgQ3piP8AtTOdrJs7OiqagCjbjj23r0+VAQ7wrhk61m6wymFtyqMB
 WGl+iLlF18AyMAwF6872UF2rkEK/psnriMzKRb+dqg==
X-Google-Smtp-Source: ADFU+vsxe8uIFuMytA3ZTH+Dvv+Qm9+AJ1NhP8oHDjWpECQUTxgXsbkqu31HUYTB81OepoijiVoqI3hoMedJGeKGa20=
X-Received: by 2002:a9f:32da:: with SMTP id f26mr3606235uac.40.1583977664301; 
 Wed, 11 Mar 2020 18:47:44 -0700 (PDT)
MIME-Version: 1.0
References: <1583918223-22506-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1583918223-22506-5-git-send-email-hsin-hsiung.wang@mediatek.com>
In-Reply-To: <1583918223-22506-5-git-send-email-hsin-hsiung.wang@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 12 Mar 2020 09:47:33 +0800
Message-ID: <CANMq1KDZeBOzVfWF0xjWpcLFDbO9WY7xRvzpGmtfePTOxVZpzg@mail.gmail.com>
Subject: Re: [PATCH v10 4/5] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_184745_690890_7A724C31 
X-CRM114-Status: GOOD (  22.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Richard Fontana <rfontana@redhat.com>,
 Devicetree List <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 5:17 PM Hsin-Hsiung Wang
<hsin-hsiung.wang@mediatek.com> wrote:
>
> From: Ran Bi <ran.bi@mediatek.com>
>
> This add support for the MediaTek MT6358 RTC. Driver using
> compatible data to store different RTC_WRTGR address offset.
> This replace RTC_WRTGR to RTC_WRTGR_MT6323 in mt6323-poweroff
> driver which only needed by armv7 CPU without ATF.
>
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  drivers/power/reset/mt6323-poweroff.c |  2 +-
>  drivers/rtc/rtc-mt6397.c              | 32 ++++++++++++++++++++++++--------
>  include/linux/mfd/mt6397/rtc.h        |  9 ++++++++-
>  3 files changed, 33 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/power/reset/mt6323-poweroff.c b/drivers/power/reset/mt6323-poweroff.c
> index 1caf43d..0532803 100644
> --- a/drivers/power/reset/mt6323-poweroff.c
> +++ b/drivers/power/reset/mt6323-poweroff.c
> @@ -30,7 +30,7 @@ static void mt6323_do_pwroff(void)
>         int ret;
>
>         regmap_write(pwrc->regmap, pwrc->base + RTC_BBPU, RTC_BBPU_KEY);
> -       regmap_write(pwrc->regmap, pwrc->base + RTC_WRTGR, 1);
> +       regmap_write(pwrc->regmap, pwrc->base + RTC_WRTGR_MT6323, 1);
>
>         ret = regmap_read_poll_timeout(pwrc->regmap,
>                                         pwrc->base + RTC_BBPU, val,
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index cda238d..7a5a9e2 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -9,18 +9,38 @@
>  #include <linux/mfd/mt6397/core.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  #include <linux/rtc.h>
>  #include <linux/mfd/mt6397/rtc.h>
>  #include <linux/mod_devicetable.h>
>
> +static const struct mtk_rtc_data mt6358_rtc_data = {
> +       .wrtgr = RTC_WRTGR_MT6358,
> +};
> +
> +static const struct mtk_rtc_data mt6397_rtc_data = {
> +       .wrtgr = RTC_WRTGR_MT6397,
> +};
> +
> +static const struct of_device_id mt6397_rtc_of_match[] = {
> +       { .compatible = "mediatek,mt6323-rtc",
> +               .data = (void *)&mt6397_rtc_data, },
> +       { .compatible = "mediatek,mt6358-rtc",
> +               .data = (void *)&mt6358_rtc_data, },
> +       { .compatible = "mediatek,mt6397-rtc",
> +               .data = (void *)&mt6397_rtc_data, },
> +       {}
> +};
> +MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
> +
>  static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>  {
>         int ret;
>         u32 data;
>
> -       ret = regmap_write(rtc->regmap, rtc->addr_base + RTC_WRTGR, 1);
> +       ret = regmap_write(rtc->regmap, rtc->addr_base + rtc->data->wrtgr, 1);
>         if (ret < 0)
>                 return ret;
>
> @@ -269,6 +289,9 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>         rtc->addr_base = res->start;
>
> +       rtc->data = (struct mtk_rtc_data *)
> +                       of_device_get_match_data(&pdev->dev);

Sorry for not noticing earlier, the cast is not needed. (also, you
cast a const pointer into a non-const, which doesn't matter anyway as
rtc->data is const again, but still...).

> +
>         rtc->irq = platform_get_irq(pdev, 0);
>         if (rtc->irq < 0)
>                 return rtc->irq;
> @@ -325,13 +348,6 @@ static int mt6397_rtc_resume(struct device *dev)
>  static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_suspend,
>                         mt6397_rtc_resume);
>
> -static const struct of_device_id mt6397_rtc_of_match[] = {
> -       { .compatible = "mediatek,mt6323-rtc", },
> -       { .compatible = "mediatek,mt6397-rtc", },
> -       { }
> -};
> -MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
> -

Why are you moving the MODULE_DEVICE_TABLE to the top of the file? I
think you can keep it here with the mt63xx_rtc_data structs?

>  static struct platform_driver mtk_rtc_driver = {
>         .driver = {
>                 .name = "mt6397-rtc",
> diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
> index 7dfb63b..66534ed 100644
> --- a/include/linux/mfd/mt6397/rtc.h
> +++ b/include/linux/mfd/mt6397/rtc.h
> @@ -18,7 +18,9 @@
>  #define RTC_BBPU_CBUSY         BIT(6)
>  #define RTC_BBPU_KEY            (0x43 << 8)
>
> -#define RTC_WRTGR              0x003c
> +#define RTC_WRTGR_MT6358       0x3a
> +#define RTC_WRTGR_MT6397       0x3c
> +#define RTC_WRTGR_MT6323       RTC_WRTGR_MT6397
>
>  #define RTC_IRQ_STA            0x0002
>  #define RTC_IRQ_STA_AL         BIT(0)
> @@ -65,6 +67,10 @@
>  #define MTK_RTC_POLL_DELAY_US  10
>  #define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
>
> +struct mtk_rtc_data {
> +       u32                     wrtgr;
> +};
> +
>  struct mt6397_rtc {
>         struct device           *dev;
>         struct rtc_device       *rtc_dev;
> @@ -74,6 +80,7 @@ struct mt6397_rtc {
>         struct regmap           *regmap;
>         int                     irq;
>         u32                     addr_base;
> +       const struct mtk_rtc_data *data;
>  };
>
>  #endif /* _LINUX_MFD_MT6397_RTC_H_ */
> --
> 2.6.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
