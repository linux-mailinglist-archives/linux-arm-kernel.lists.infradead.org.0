Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BD33B131
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WB01heEmRPEmDDSZH20PsPTmy1W6xqWnl3cCucemps=; b=uqhIVaWJXdtonj
	URSi1Zh7jBB6ab2/mbrpv7QoXYtLqd0AaKRCTo9Nu8KX8Z5njuJu2M+CKWEJMWinZEvDhhtcjNsdu
	MuqePPz4uAl2s80NIviyglTwyiDRllbIdCDaKG55mkADtJ0MD2ClM/fsemBJ5ul8mo1BgW5peCy09
	jkk2MqsJKj4tcnQ0qtjrKTkmxpMbEpxxLtL57/U2VGrzJLtIN3sPHmurlSvQOsGLRUBp6wySho9ez
	P1Z1KTtbuDCHgnGMpkk6PRyWqI4Ohwjqxxp+4K1NNxuPWBimsDYHGWNtuPF+AASda5fFYvfBt4gKT
	/xxiH56qtty2gYOoGS8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFxk-00076b-Hm; Mon, 10 Jun 2019 08:47:32 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFxW-000766-9C
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:47:19 +0000
Received: by mail-it1-x141.google.com with SMTP id m3so12045792itl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RmMgFC6x9c/PorZ5L1nntqs3jUWepuR6IOl/Io6t8sA=;
 b=sr8LqP500iKG1pr5zd1qhsvzDTNmX/T7ykQZZsyxgglCuxvXsuoG2h2rzKF1mareen
 K5i73RDXA9cNqJMjk4i7hxv/kSfuQqnj+jH5Ap1EihoQIxgAMPoB9lTd8HITSyHf0KNL
 0Q1vQ8j8bvqoz3mcV5cEqFzhPOabZZ7eNVRF944TG7eiZ+7qHZ8IYqCcsJrOSgavffCU
 t+MwCweWLy+1yPOrDWbg7Ob/+p5s+niwe6dh9AyMCMBqKnZ9S/KKQ1kGnf1iB463WxUl
 sIDeELFr0jraRh2oL+VHH+gFD3/1J2XrIZtVvdu6ak6ZMzc3fabZsLNkuqLNXOM/y6UY
 bofQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RmMgFC6x9c/PorZ5L1nntqs3jUWepuR6IOl/Io6t8sA=;
 b=D44aNGmsu1IRvoWBqKgRr/KzvGPef25XjMbI8Oib2G1fYPVLjzpSKSKfbA2Pb+CI8K
 A4CbWZ7i4o2mLEP33yrrtnQwGdfXQ2fo4ZGSjeNs6WTe35iukKPBVo4VC5/iL0Hif9mL
 C9WYJypybD1atKP/dF4e9zvhVzadNavkAsr0PdGXmbcCgrvuBlldSGPBuY8skbl+woSf
 ddsjptdSfIcHxhMSVXyCjJbi5kGYLnjd5Eal1HFlAXQgvIr8eAyVfDLQl0pfZ9b/nNWu
 Lu5YoXK+UXJKaT9aDFZVW7nN8DZhbXLXvi/vrdod9ggn+s5onQ5cNw+wqOppJzKYG3Sd
 BiPQ==
X-Gm-Message-State: APjAAAWBFDa/x87H3xWzwX9yJ8eSugZWDwWt6mKWRv7jlEz4bYJE9y5i
 HFlJNuLHxxHKMV7w7N16vQOegOJRaP7NdJaJFFqEEQ==
X-Google-Smtp-Source: APXvYqwYB5U4OOSNSqzBUVwcdMd5AxTJod5Bfub6eHYJFeIO+izmDcMKGFZM5Fn9MIcLTMjawmgYjhbtGhG/6pzPbWM=
X-Received: by 2002:a24:5f87:: with SMTP id r129mr813080itb.104.1560156437323; 
 Mon, 10 Jun 2019 01:47:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-5-lee.jones@linaro.org>
In-Reply-To: <20190610084213.1052-5-lee.jones@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 10 Jun 2019 10:47:05 +0200
Message-ID: <CAKv+Gu_b5NCnkaenX16_ChkPiH4ztTz=SiAehQoHcHJOb3kmNQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/8] soc: qcom: geni: Add support for ACPI
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014718_322208_B7866E29 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019 at 10:42, Lee Jones <lee.jones@linaro.org> wrote:
>
> When booting with ACPI as the active set of configuration tables,
> all; clocks, regulators, pin functions ect are expected to be at
> their ideal values/levels/rates, thus the associated frameworks
> are unavailable.  Ensure calls to these APIs are shielded when
> ACPI is enabled.
>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

> ---
>  drivers/soc/qcom/qcom-geni-se.c | 21 +++++++++++++++------
>  1 file changed, 15 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/soc/qcom/qcom-geni-se.c b/drivers/soc/qcom/qcom-geni-se.c
> index 6b8ef01472e9..d5cf953b4337 100644
> --- a/drivers/soc/qcom/qcom-geni-se.c
> +++ b/drivers/soc/qcom/qcom-geni-se.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  // Copyright (c) 2017-2018, The Linux Foundation. All rights reserved.
>
> +#include <linux/acpi.h>
>  #include <linux/clk.h>
>  #include <linux/slab.h>
>  #include <linux/dma-mapping.h>
> @@ -450,6 +451,9 @@ int geni_se_resources_off(struct geni_se *se)
>  {
>         int ret;
>
> +       if (has_acpi_companion(se->dev))
> +               return 0;
> +
>         ret = pinctrl_pm_select_sleep_state(se->dev);
>         if (ret)
>                 return ret;
> @@ -487,6 +491,9 @@ int geni_se_resources_on(struct geni_se *se)
>  {
>         int ret;
>
> +       if (has_acpi_companion(se->dev))
> +               return 0;
> +
>         ret = geni_se_clks_on(se);
>         if (ret)
>                 return ret;
> @@ -724,12 +731,14 @@ static int geni_se_probe(struct platform_device *pdev)
>         if (IS_ERR(wrapper->base))
>                 return PTR_ERR(wrapper->base);
>
> -       wrapper->ahb_clks[0].id = "m-ahb";
> -       wrapper->ahb_clks[1].id = "s-ahb";
> -       ret = devm_clk_bulk_get(dev, NUM_AHB_CLKS, wrapper->ahb_clks);
> -       if (ret) {
> -               dev_err(dev, "Err getting AHB clks %d\n", ret);
> -               return ret;
> +       if (!has_acpi_companion(&pdev->dev)) {
> +               wrapper->ahb_clks[0].id = "m-ahb";
> +               wrapper->ahb_clks[1].id = "s-ahb";
> +               ret = devm_clk_bulk_get(dev, NUM_AHB_CLKS, wrapper->ahb_clks);
> +               if (ret) {
> +                       dev_err(dev, "Err getting AHB clks %d\n", ret);
> +                       return ret;
> +               }
>         }
>
>         dev_set_drvdata(dev, wrapper);
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
