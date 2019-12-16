Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A99DF11FEFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 08:26:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGPM5SxYTALWVbSISrQCYT7T3IPOtfkw5Jpc3zINfOE=; b=QHw0tDIbtqSkY8
	ZggIGzDAdDtryhxUe1Y9+sspGB0+xYc81llxT/Wj2UURBv8yaeMLQi0fjB6qoK9Vo8tPlXzvWXelB
	qxm4dbVp11j0ly1iPyO5h/SvOI8tupwi4N7biPCPiTx4p1w67htj1whhb5L9ryOoUZZgiCX8Q5aIS
	GawReaxsCO7jpE/Yq8PLWMJ2F/Be3O0A2ixuv6AQgc5QJKjYFH/dHoiJF4gcA2mp8n8mN+rP9wHaK
	7qyUerRqYhqRH2DwLhvJYaaL0Z/Bf4gKtAQu7eRcOlyEzQ2yk+B2JVJiAwKaPGpOBZO6QkR2/FNkZ
	TrOTD+ksnw6ebBkz5ozw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igkmD-0006nJ-G2; Mon, 16 Dec 2019 07:26:45 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igklz-0006lA-GR
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 07:26:33 +0000
Received: by mail-qt1-x843.google.com with SMTP id e12so4573523qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 23:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qev2qlm66Bfa3+rGRGT2b2yJ/ooSVkMjEt/Wv16RLPQ=;
 b=e8ggX3a1g9wX+PyY5W/KUblmVz3Y6XKLWDlsbNmE9Y5zsYpVs+bEdxp1kjs/qEwoPu
 YTjI6ralNbNsNw2/VBXUPAmvSKJkhjkLSV8gsYhzYVhEZa8htva0lrZyFmxqQQ0Rd+DM
 fr1ZpOomhPXusfqvBBFuXwULgPR0whyL1xmHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qev2qlm66Bfa3+rGRGT2b2yJ/ooSVkMjEt/Wv16RLPQ=;
 b=YEXcdb9UBN2duAfiKNEZx4cgl6MZ5RU0VktFhxFhnc+a4S2nMnBzvxhU/V81SC82WU
 ZhvRna0QZ44LCCMBj6CWHpZtJNBIXxpVFDTiuqzk/KjK9bdxFL0iS1YE2kh1xMfl/GiI
 YM1afX8SSivOBwm61j1s4+Qp3fKqgPhRWZ1d/5LbLNgCel8nUqKZflL5ftdfQYtKglWO
 pz5j8Z6vUaXaLqH8b4LQ17EfsmAqXaFEcUngQRpZSgHP4ruGuPmbhw6d8EBZbKoIvaVm
 ZCVtv/4jNC3ggkY+/+sV/m7UMBNTxNN++9t7KQYoSjvwNVI0AmlN7ehIVGSnF75hRrmi
 L51g==
X-Gm-Message-State: APjAAAXwStoG/asW/hT/Kl+AFZ9MATpxUJDlWKU/81Ps5laXRr53Ig7t
 /sBClcyI3RCbaKdgTql+IeCJEEWegjXT7U0Rarv3jg==
X-Google-Smtp-Source: APXvYqxshH7WEvxYDG0MFKx4p0pn9ypNr7UaFIElKRvCHZ+6xtrrzlkv4ZXIdhS/YyGfeoNUHvUy0JxcrorzHMeRlV4=
X-Received: by 2002:ac8:3946:: with SMTP id t6mr23674125qtb.278.1576481190402; 
 Sun, 15 Dec 2019 23:26:30 -0800 (PST)
MIME-Version: 1.0
References: <1575960413-6900-1-git-send-email-weiyi.lu@mediatek.com>
 <1575960413-6900-6-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1575960413-6900-6-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 16 Dec 2019 15:26:19 +0800
Message-ID: <CANMq1KDQRFzQ9=TinO_qQkXkP056uha_JZTydg0c8UYYHEw1=Q@mail.gmail.com>
Subject: Re: [PATCH v9 5/9] soc: mediatek: Add subsys clock control for bus
 protection
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_232631_556267_E636BAFB 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Yong Wu <yong.wu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 2:47 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> Add subsys CG control flow before/after the bus protect control
> due to bus protection need SMI bus relative CGs enabled to feedback
> its ack.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>

I'm not a clock expert but this one looks ok.

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 72 +++++++++++++++++++++++++++++++++++++--
>  1 file changed, 70 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index 466bb749..2bbf907 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -108,6 +108,7 @@ enum clk_id {
>  };
>
>  #define MAX_CLKS       3
> +#define MAX_SUBSYS_CLKS 10
>
>  /**
>   * struct scp_domain_data - scp domain data for power on/off flow
> @@ -120,6 +121,8 @@ enum clk_id {
>   * @clk_id: The basic clocks required by this power domain.
>   * @basic_clk_id: provide the same purpose with field "clk_id"
>   *                by declaring basic clock prefix name rather than clk_id.
> + * @subsys_clk_prefix: The prefix name of the clocks need to be enabled
> + *                     before releasing bus protection.
>   * @caps: The flag for active wake-up action.
>   * @bp_table: The mask table for multiple step bus protection.
>   */
> @@ -132,6 +135,7 @@ struct scp_domain_data {
>         u32 bus_prot_mask;
>         enum clk_id clk_id[MAX_CLKS];
>         const char *basic_clk_id[MAX_CLKS];
> +       const char *subsys_clk_prefix;
>         u8 caps;
>         struct bus_prot bp_table[MAX_STEPS];
>  };
> @@ -142,6 +146,7 @@ struct scp_domain {
>         struct generic_pm_domain genpd;
>         struct scp *scp;
>         struct clk *clk[MAX_CLKS];
> +       struct clk *subsys_clk[MAX_SUBSYS_CLKS];
>         const struct scp_domain_data *data;
>         struct regulator *supply;
>  };
> @@ -349,16 +354,22 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
>         val |= PWR_RST_B_BIT;
>         writel(val, ctl_addr);
>
> -       ret = scpsys_sram_enable(scpd, ctl_addr);
> +       ret = scpsys_clk_enable(scpd->subsys_clk, MAX_SUBSYS_CLKS);
>         if (ret < 0)
>                 goto err_pwr_ack;
>
> +       ret = scpsys_sram_enable(scpd, ctl_addr);
> +       if (ret < 0)
> +               goto err_sram;
> +
>         ret = scpsys_bus_protect_disable(scpd);
>         if (ret < 0)
> -               goto err_pwr_ack;
> +               goto err_sram;
>
>         return 0;
>
> +err_sram:
> +       scpsys_clk_disable(scpd->subsys_clk, MAX_SUBSYS_CLKS);
>  err_pwr_ack:
>         scpsys_clk_disable(scpd->clk, MAX_CLKS);
>  err_clk:
> @@ -385,6 +396,8 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
>         if (ret < 0)
>                 goto out;
>
> +       scpsys_clk_disable(scpd->subsys_clk, MAX_SUBSYS_CLKS);
> +
>         /* subsys power off */
>         val = readl(ctl_addr);
>         val |= PWR_ISO_BIT;
> @@ -422,6 +435,48 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
>         return ret;
>  }
>
> +static int init_subsys_clks(struct platform_device *pdev,
> +               const char *prefix, struct clk **clk)
> +{
> +       struct device_node *node = pdev->dev.of_node;
> +       u32 prefix_len, sub_clk_cnt = 0;
> +       struct property *prop;
> +       const char *clk_name;
> +
> +       if (!node) {
> +               dev_err(&pdev->dev, "Cannot find scpsys node: %ld\n",
> +                       PTR_ERR(node));
> +               return PTR_ERR(node);
> +       }
> +
> +       prefix_len = strlen(prefix);
> +
> +       of_property_for_each_string(node, "clock-names", prop, clk_name) {
> +               if (!strncmp(clk_name, prefix, prefix_len) &&
> +                               (clk_name[prefix_len] == '-')) {
> +                       if (sub_clk_cnt >= MAX_SUBSYS_CLKS) {
> +                               dev_err(&pdev->dev,
> +                                       "subsys clk out of range %d\n",
> +                                       sub_clk_cnt);
> +                               return -ENOMEM;
> +                       }
> +
> +                       clk[sub_clk_cnt] = devm_clk_get(&pdev->dev,
> +                                               clk_name);
> +
> +                       if (IS_ERR(clk[sub_clk_cnt])) {
> +                               dev_err(&pdev->dev,
> +                                       "Subsys clk get fail %ld\n",
> +                                       PTR_ERR(clk[sub_clk_cnt]));
> +                               return PTR_ERR(clk[sub_clk_cnt]);
> +                       }
> +                       sub_clk_cnt++;
> +               }
> +       }
> +
> +       return sub_clk_cnt;
> +}
> +
>  static void init_clks(struct platform_device *pdev, struct clk **clk)
>  {
>         int i;
> @@ -509,6 +564,7 @@ static struct scp *init_scp(struct platform_device *pdev,
>                 struct scp_domain *scpd = &scp->domains[i];
>                 struct generic_pm_domain *genpd = &scpd->genpd;
>                 const struct scp_domain_data *data = &scp_domain_data[i];
> +               int clk_cnt;
>
>                 pd_data->domains[i] = genpd;
>                 scpd->scp = scp;
> @@ -537,6 +593,18 @@ static struct scp *init_scp(struct platform_device *pdev,
>                                                 data->basic_clk_id[j]);
>                 }
>
> +               if (data->subsys_clk_prefix) {
> +                       clk_cnt = init_subsys_clks(pdev,
> +                                       data->subsys_clk_prefix,
> +                                       scpd->subsys_clk);
> +                       if (clk_cnt < 0) {
> +                               dev_err(&pdev->dev,
> +                                       "%s: subsys clk unavailable\n",
> +                                       data->name);
> +                               return ERR_PTR(clk_cnt);
> +                       }
> +               }
> +
>                 genpd->name = data->name;
>                 genpd->power_off = scpsys_power_off;
>                 genpd->power_on = scpsys_power_on;
> --
> 1.8.1.1.dirty

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
