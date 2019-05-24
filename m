Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23A32925E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/4c4QFJNiBVEzBxpHSQ+/YOkmm2Q7moNYcYusYnJvA=; b=P0uxqlSpMjEXOt
	8LNG6/XA+QX9NeBFXCEN1WwcR2acNed3KwC+W9mVBNYnI23CMRhT5SQOKQvVIbv7ZzzIphS5L1C+v
	4ScAPeZYyhyVGpKZaepod/hXZEY1VnY2PyTaqNJ9oxo52YVDluJ0iB3aKQlxtAey5neNroMuvkcQ/
	SowbD849GJXI98MlGjzCxsM02G4q2tX4dPBH+uhNTAprmn/PugW3gNxIy8H4LSLcgOf7eJxFubTmc
	DziPeFg2sm0C1cjkhLxu+piMOs2A4WeWSTpuOSABWaJlPnozYRtCniKXTuZPn7r0Wq17xIYQs4b7+
	ZJS/5/YtsH6bc9/w3Bxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5CA-0004YR-A9; Fri, 24 May 2019 08:04:54 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5C2-0004X1-3Z
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 08:04:47 +0000
Received: by mail-qk1-x742.google.com with SMTP id c15so6127398qkl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 01:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LBXfo3f3VBxQHXcdRSMKfsobC/cqHl7OlQRiXsV30VE=;
 b=Up8QcnJHOhogEiKKRZBk7rIW48oCZIkD0YdLLu9spajcuW7/MYtWd3epuGdovq00P/
 SUbc99vqX5gDHrPGwN7Dolt/v7jcwDTPibqK8zKHGAFtJqYgHfxoBXw0+0oNALI2mIfE
 KUT7oul7kXsOiTjUSfdzkVzzqJ1UInOsTxARo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LBXfo3f3VBxQHXcdRSMKfsobC/cqHl7OlQRiXsV30VE=;
 b=MwBME6DXMYbcTzoj+oHWoGGEj74uPlWftU+cq4uEcHIynSo8plS+HKgiWM8Qa1qJMk
 dDKqRDr3BmklxHIvy5Wbrwu2tsXQYIc4ALPoxFxxynlUf5n1Phc9+74LDsgmA+q+1GvG
 9YN98JkX8mLMrGo/foU0rCOUSORukyJnkuZdRxBMw00zpXeQwiUUSfeB6J1W9Hs5ZwX6
 acB7pFbVaQmr1CgQv/wJQDvU2rxDcrSk5gYhA95LGYoqNQ32/c2O8GP7ZsjNl/2/gAIx
 QiH3jvjyWeM6oplssz+QsQ4II19MlZB/Raay9kf2Uzh/cIFGM0vOvjxXFdg1skF28y4/
 4nRA==
X-Gm-Message-State: APjAAAUuVtDYny0uEgErsYwEiXmWGeFzVeDF0+XR0dDaIWsU8Lr2dQ7e
 PLN26s08oBjPPiww/xSpgSHUOXflk2rXH5dzrdYO2g==
X-Google-Smtp-Source: APXvYqyB85ubtcUVl583XzKJZMZmxA4tCmm7+GDK24kIDpdUoaqG/G/G21Le/PPOJRIOpUavh90Nb+rOMBaAuEwQaXA=
X-Received: by 2002:aed:3512:: with SMTP id a18mr85921585qte.181.1558685084516; 
 Fri, 24 May 2019 01:04:44 -0700 (PDT)
MIME-Version: 1.0
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1557997725-12178-9-git-send-email-andrew-sh.cheng@mediatek.com>
In-Reply-To: <1557997725-12178-9-git-send-email-andrew-sh.cheng@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 24 May 2019 16:04:18 +0800
Message-ID: <CAJMQK-hF3RT7wPRunE8q4uaEVaS1wkvmQO5t28Poz9ztiJ5Rmg@mail.gmail.com>
Subject: Re: [PATCH 8/8] devfreq: mediatek: cci devfreq register opp
 notification for SVS support
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_010446_252282_FADFFC99 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 9:08 AM Andrew-sh.Cheng
<andrew-sh.cheng@mediatek.com> wrote:
>
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
>
> SVS will change the voltage of opp item.
> CCI devfreq need to react to change frequency.
>
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---
>  drivers/devfreq/mt8183-cci-devfreq.c | 63 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
>
> diff --git a/drivers/devfreq/mt8183-cci-devfreq.c b/drivers/devfreq/mt8183-cci-devfreq.c
> index 818a167c442f..250c963789f3 100644
> --- a/drivers/devfreq/mt8183-cci-devfreq.c
> +++ b/drivers/devfreq/mt8183-cci-devfreq.c
> @@ -19,7 +19,10 @@ struct cci_devfreq {
>         struct regulator *proc_reg;
>         unsigned long proc_reg_uV;
>         struct clk *cci_clk;
> +       unsigned long freq;
>         struct notifier_block nb;
> +       struct notifier_block opp_nb;
> +       int cci_min_freq;
>  };
>
>  static int cci_devfreq_regulator_notifier(struct notifier_block *nb,
> @@ -65,17 +68,62 @@ static int cci_devfreq_regulator_notifier(struct notifier_block *nb,
>         return 0;
>  }
>
> +static int ccidevfreq_opp_notifier(struct notifier_block *nb,
> +unsigned long event, void *data)
> +{
> +       int ret;
> +       struct dev_pm_opp *opp = data;
> +       struct cci_devfreq *cci_df = container_of(nb, struct cci_devfreq,
> +                                                 opp_nb);
> +       unsigned long   freq, volt, cur_volt;
> +
> +       if (event == OPP_EVENT_ADJUST_VOLTAGE) {
> +               freq = dev_pm_opp_get_freq(opp);
> +               /* current opp item is changed */
> +               if (freq == cci_df->freq) {
> +                       volt = dev_pm_opp_get_voltage(opp);
> +                       cur_volt = regulator_get_voltage(cci_df->proc_reg);
> +
> +                       if (volt > cur_volt) {
> +                               /* need reduce freq */
> +                               mutex_lock(&cci_df->devfreq->lock);
> +                               ret = update_devfreq(cci_df->devfreq);
> +                               if (ret)
> +                                       pr_err("Fail to reduce cci frequency by opp notification: %d\n",
This line is too long
> +                                              ret);
> +                               mutex_unlock(&cci_df->devfreq->lock);
> +                       }
> +               }
> +
> +               if (freq == cci_df->cci_min_freq) {
> +                       volt = dev_pm_opp_get_voltage(opp);
> +                       regulator_set_voltage(cci_df->proc_reg, volt, INT_MAX);
> +               }
> +       } else if (event == OPP_EVENT_DISABLE) {
Is this case handled? If not, is this branch needed?
> +       }
> +
> +       return 0;
> +}
> +
> +
>  static int mtk_cci_governor_get_target(struct devfreq *devfreq,
>                                        unsigned long *freq)
>  {
>         struct cci_devfreq *cci_df;
>         struct dev_pm_opp *opp;
> +       int ret;
>
>         cci_df = dev_get_drvdata(devfreq->dev.parent);
>
>         /* find available frequency */
>         opp = dev_pm_opp_find_freq_ceil_by_volt(devfreq->dev.parent,
>                                                 cci_df->proc_reg_uV);
> +       ret = PTR_ERR_OR_ZERO(opp);
> +       if (ret) {
> +               pr_err("%s[%d], cannot find opp with voltage=%d: %d\n",
> +                      __func__, __LINE__, cci_df->proc_reg_uV, ret);
> +               return ret;
> +       }
>         *freq = dev_pm_opp_get_freq(opp);
>
>         return 0;
> @@ -87,9 +135,11 @@ static int mtk_cci_governor_event_handler(struct devfreq *devfreq,
>         int ret;
>         struct cci_devfreq *cci_df;
>         struct notifier_block *nb;
> +       struct notifier_block *opp_nb;
>
>         cci_df = dev_get_drvdata(devfreq->dev.parent);
>         nb = &cci_df->nb;
> +       opp_nb = &cci_df->opp_nb;
>
>         switch (event) {
>         case DEVFREQ_GOV_START:
> @@ -100,6 +150,8 @@ static int mtk_cci_governor_event_handler(struct devfreq *devfreq,
>                 if (ret)
>                         pr_err("%s: failed to add governor: %d\n", __func__,
>                                ret);
> +               opp_nb->notifier_call = ccidevfreq_opp_notifier;
> +               dev_pm_opp_register_notifier(devfreq->dev.parent, opp_nb);
>                 break;
>
>         case DEVFREQ_GOV_STOP:
> @@ -141,6 +193,8 @@ static int mtk_cci_devfreq_target(struct device *dev, unsigned long *freq,
>                 return ret;
>         }
>
> +       cci_df->freq = *freq;
> +
>         return 0;
>  }
>
> @@ -152,6 +206,8 @@ static int mtk_cci_devfreq_probe(struct platform_device *pdev)
>  {
>         struct device *cci_dev = &pdev->dev;
>         struct cci_devfreq *cci_df;
> +       unsigned long freq, volt;
> +       struct dev_pm_opp *opp;
>         int ret;
>
>         cci_df = devm_kzalloc(cci_dev, sizeof(*cci_df), GFP_KERNEL);
> @@ -181,6 +237,13 @@ static int mtk_cci_devfreq_probe(struct platform_device *pdev)
>                 return ret;
>         }
>
> +       /* set voltage lower bound */
> +       freq = 1;
> +       opp = dev_pm_opp_find_freq_ceil(cci_dev, &freq);
> +       cci_df->cci_min_freq = dev_pm_opp_get_freq(opp);
> +       volt = dev_pm_opp_get_voltage(opp);
> +       dev_pm_opp_put(opp);
> +
>         platform_set_drvdata(pdev, cci_df);
>
>         cci_df->devfreq = devm_devfreq_add_device(cci_dev,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
