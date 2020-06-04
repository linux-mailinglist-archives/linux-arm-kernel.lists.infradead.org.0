Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5321EDB32
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 04:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQt5mB9NshpF8Szp3LGgCsv+ROoqTr4P6I9Yyb8yoV0=; b=KGhTPTCjVxawF3
	v3tKCtDvhIbPUU92iOvn2X2gb/nYq5tkNkjC6ktW/dQKDovAd5vLpRqgB/fxaUUB65J4yQO3bn1aB
	/dV6Pb2zB3tlhNGEBYHLSM5Xt+3QWszfLVmuVemIYGkqGrxR5IAw7W9Ffjp0EstvNgROq5vvccoay
	Wi4r5ZsDNjcx9KlCwT0xFvhNXDVq78T12/tHVCIueAtGETNqtUdAQOrFUBwOoFhilrRNixDpvtXfg
	puDaHOaVHaweqUS7F0bd9kdNotxnphND6Yvd7U2bvWWXhROFb+ybVQuaRZkH37wbz1z/GQd7y5LDM
	is5IiIwezSXWCQuBHqjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgfdY-0006JM-4Y; Thu, 04 Jun 2020 02:29:44 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgfdP-0006I1-Sx
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 02:29:37 +0000
Received: by mail-vk1-xa41.google.com with SMTP id s192so996593vkh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 19:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GiZwMzoPS09yzBU7S2hJ7r+gRIFX95ple22IuWgCNw4=;
 b=gF+uWURRh8uwv2hzNLJPZDege+6/RxAKTa99l8IPtuMOxNN3gLY9hIZiknH3Fkeaar
 cvBMdieSIb+hccNBsqfqKdjKbGDy19j8gffbEb5p9RQpriNR8VSJwJB2NL9Ukxk0KgxX
 RUd+vKOB/CvPR0X5Es5srwyCY/HvUcznw45jU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GiZwMzoPS09yzBU7S2hJ7r+gRIFX95ple22IuWgCNw4=;
 b=ebz07QAybr9pZs4MwuTRknnvmYVKtw7x8Lt1+Dw/crlNMqF02m2xm7Pj9vPZMYBCpW
 axkVFJ60OAhkQtYvqM60kaZaWFkUI4RjOhRfIeTuqCLT08QpsPfyn9gcwjNo6aYoBed0
 fbQNuin2GtSXAxF51H6k/K356/gC1XArsuscUCecArHscWeT5KWzX/Gp/qJ/lP28HpoC
 rEMwE28ToWnDHPrEaASFMy9fk65HRCcYzo++TJeXyAK7HiuFdUc3OaRj8a5c/tvPKn/q
 OlFx0thI17vmU6j6rDr7QIyFYKcuv1ECsHzmTPWcczf0vkP7an0JWslEoayvfdwxxtpB
 B3Qg==
X-Gm-Message-State: AOAM532uuwsM337zTAwLJL6uJr8EZU6DWpmQKzRsTNAbpNp+D3sZ+0JF
 Z/50nP9OORLDh/qMqNxeReqlCGkgJTqpYS9u5n96Sg==
X-Google-Smtp-Source: ABdhPJyOkMxi3kmXQuLdkLG0TI4YGq6+Fj1A2qCxPvej1w2D2dixQYceehb742uQ5rO3puyZGIjvnIKc79wo0ALTZ+8=
X-Received: by 2002:a1f:8d0a:: with SMTP id p10mr1986031vkd.33.1591237770303; 
 Wed, 03 Jun 2020 19:29:30 -0700 (PDT)
MIME-Version: 1.0
References: <1590051985-29149-1-git-send-email-weiyi.lu@mediatek.com>
 <1590051985-29149-7-git-send-email-weiyi.lu@mediatek.com>
In-Reply-To: <1590051985-29149-7-git-send-email-weiyi.lu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 4 Jun 2020 10:29:19 +0800
Message-ID: <CANMq1KBRe81Sa4A6sCM2egOVRWCJbUNPsXHpfzkT33XGVZXBhg@mail.gmail.com>
Subject: Re: [PATCH v15 06/11] soc: mediatek: Add subsys clock control for bus
 protection
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_192935_949631_E2215413 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: James Liao <jamesjj.liao@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 Enric Balletbo Serra <eballetbo@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, Fan Chen <fan.chen@mediatek.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 5:06 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> For the bus protection operations, some subsys clocks need to be enabled
> before releasing the protection, and vice versa.
> But those subsys clocks could only be controlled once its corresponding
> power domain is turned on first.
> In this patch, we add the subsys clock control into its relevant steps.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 62 +++++++++++++++++++++++++++++++++++++--
>  1 file changed, 60 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index 59a525a..ef2c668 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> [snip]
>         val |= PWR_ISO_BIT;
> @@ -498,6 +511,39 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
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
> +       prefix_len = strlen(prefix);
> +
> +       of_property_for_each_string(node, "clock-names", prop, clk_name) {
> +               if (!strncmp(clk_name, prefix, prefix_len) &&
> +                               (clk_name[prefix_len] == '-')) {
> +                       if (sub_clk_cnt >= MAX_SUBSYS_CLKS) {
> +                               dev_err(&pdev->dev,
> +                                       "subsys clk out of range %d\n",
> +                                       sub_clk_cnt);
> +                               return -EINVAL;
> +                       }
> +
> +                       clk[sub_clk_cnt] = devm_clk_get(&pdev->dev,
> +                                               clk_name);
> +
> +                       if (IS_ERR(clk[sub_clk_cnt]))
> +                               return PTR_ERR(clk[sub_clk_cnt]);
> +
> +                       sub_clk_cnt++;
> +               }
> +       }
> +
> +       return sub_clk_cnt;
> +}
> +
>  static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
>                         const char * const *name)
>  {
> @@ -596,6 +642,18 @@ static struct scp *init_scp(struct platform_device *pdev,
>                 if (ret)
>                         return ERR_PTR(ret);
>
> +               if (data->subsys_clk_prefix) {
> +                       ret = init_subsys_clks(pdev,
> +                                       data->subsys_clk_prefix,
> +                                       scpd->subsys_clk);
> +                       if (ret < 0) {
> +                               dev_err(&pdev->dev,
> +                                       "%s: subsys clk unavailable\n",
> +                                       data->name);

init_subsys_clks should already have printed an error (directly or
indirectly), so this is not needed.

> +                               return ERR_PTR(ret);
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
