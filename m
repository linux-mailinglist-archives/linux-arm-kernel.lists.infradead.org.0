Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6A63B12C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZEUSLaBKatupjpaHTCPT6PuYEFrCSvUSNuyy2dOEDg=; b=HPfYp6jUEHXSMl
	fIj9RkdS4wJPBN2FPk0Cq0gvcF4vUSWuFNlNvENgExSJoYWbbf7a7OpuqYo0e4fMOdopVOvxEee52
	hChYWtykFmpMsZ0SoIsI9Y3tVjKJJ6blG2yRqgM5AQg9wuu0Cg1n9ymfT4TmTL80wKuwd6oYy2rwd
	6vFA3cLVqZ+Hfa9PW7Sxn9tUqyt3SUs/YBCrDQBk0geLU/MM32xUBXp33UOjQmBRoJRO5ZSMSwMZL
	2UWL7XWNpe05Fibl71n3+lLIrHfwLdKZdXOP1/rz05886Er+jCe8ku7lQ22ObLQtsM2NkZNBJ/QHv
	irbQLlvZJhzKA9JQZAlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFxI-0006qU-0x; Mon, 10 Jun 2019 08:47:04 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFx3-0006q7-Ko
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:46:51 +0000
Received: by mail-it1-x141.google.com with SMTP id n189so11955160itd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ikcgBnYbP9juRCdJItwhn68EANrq89roggN/h0NSIPw=;
 b=Z8yrK3B8Vo2vsUloPWC/6YqOyL7SvDr+wc3i83jXI97jgSQP3O28eo59oTkF31I0pu
 FdRGYdteGvZ9nMBpjQQWGkO16TmFWxngVwcOKkWJ87ytsYoWaZSbSnQ3vgY2g1VwT2od
 6diA7qJyjNTxao3TutOgCE64N9WVNfz7GQAz3m7t79W+hwXdnur6sjLRTSy8A9YUa4m5
 jX+J5YobXjnBVQD3InEAEmZDTZtAd7fkZVUDJ0kwYGOmw2V7QL9VM52jbNPkEgCmtaJU
 kGpQKtWR61iwtdmbopKPhC3P1EIbXkdY5WiloiqAz3QRcJqCGBxlDzLMqs5HIHRsKOQa
 26KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ikcgBnYbP9juRCdJItwhn68EANrq89roggN/h0NSIPw=;
 b=bvkNSZU2EeuY6S5RVcKboDMeAePD3eD6TsoJQv5Chz1y9tiMYTd+HiSsMPb/VanXPp
 UQxYA1WsD/A98j8bm/yLo9vkXI5mH5bgsxKsK7T6LkEfSq90ks/K/cTfcEvItV4y1NMM
 RREA6hO0Ax83wBsikYx5CcaUHfcSHasfD7Y47U2WqCWG2sG9u6d3x41n1qN9og91TEVx
 6uqPxOLxLetNS+4Lsccvi2cOnGRX1wBuKM6FOoQ1RyvyXNzrjAs6KFlnYB+Z1BJMD+nH
 IyghC96Dip63UfeCsMbYoA9M+a50XLB2Iyiu9D6NJQDIEN0oqF/I667YMTBHpHm7Dot4
 Cy4A==
X-Gm-Message-State: APjAAAXjvWAW1eMsx0/O+1Ut1JZR8rFkwEMXOyloS5q1eZs/GQJlJ3vM
 CvSZ0yuxmk7ZpNxXmyIOBzLp6oDuc+0cibJ2hfPFJTvJU2vkpg==
X-Google-Smtp-Source: APXvYqy6GnWta/8uy1aSmaw7/hpzob6WfnV4XOnpexWzXqqcrSEKpvQgjKiRrjvvzqd947KVY0ETA/9UQAkKUNDadJ8=
X-Received: by 2002:a24:740f:: with SMTP id o15mr14320575itc.76.1560156408672; 
 Mon, 10 Jun 2019 01:46:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-4-lee.jones@linaro.org>
In-Reply-To: <20190610084213.1052-4-lee.jones@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 10 Jun 2019 10:46:36 +0200
Message-ID: <CAKv+Gu_s7i8JC4cv-dJMvm1_0cGzzhzf+Dxu0rxcF7iugF=vHg@mail.gmail.com>
Subject: Re: [PATCH v3 4/8] pinctrl: qcom: sdm845: Provide ACPI support
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_014649_695684_4BCF4F21 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
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
> This patch provides basic support for booting with ACPI instead
> of the currently supported Device Tree.  When doing so there are a
> couple of differences which we need to taken into consideration.
>
> Firstly, the SDM850 ACPI tables omit information pertaining to the
> 4 reserved GPIOs on the platform.  If Linux attempts to touch/
> initialise any of these lines, the firmware will restart the
> platform.
>
> Secondly, when booting with ACPI, it is expected that the firmware
> will set-up things like; Regulators, Clocks, Pin Functions, etc in
> their ideal configuration.  Thus, the possible Pin Functions
> available to this platform are not advertised when providing the
> higher GPIOD/Pinctrl APIs with pin information.
>
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

For the ACPI probing boilerplate:
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

*However*, I really don't like hardcoding reserved GPIOs like this.
What guarantee do we have that each and every ACPI system
incorporating the QCOM0217 device has the exact same list of reserved
GPIOs?

> ---
>  drivers/pinctrl/qcom/Kconfig          |  2 +-
>  drivers/pinctrl/qcom/pinctrl-sdm845.c | 36 ++++++++++++++++++++++++++-
>  2 files changed, 36 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pinctrl/qcom/Kconfig b/drivers/pinctrl/qcom/Kconfig
> index 2e66ab72c10b..aafbe932424f 100644
> --- a/drivers/pinctrl/qcom/Kconfig
> +++ b/drivers/pinctrl/qcom/Kconfig
> @@ -168,7 +168,7 @@ config PINCTRL_SDM660
>
>  config PINCTRL_SDM845
>         tristate "Qualcomm Technologies Inc SDM845 pin controller driver"
> -       depends on GPIOLIB && OF
> +       depends on GPIOLIB && (OF || ACPI)
>         select PINCTRL_MSM
>         help
>           This is the pinctrl, pinmux, pinconf and gpiolib driver for the
> diff --git a/drivers/pinctrl/qcom/pinctrl-sdm845.c b/drivers/pinctrl/qcom/pinctrl-sdm845.c
> index c97f20fca5fd..98a438dba711 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sdm845.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sdm845.c
> @@ -3,6 +3,7 @@
>   * Copyright (c) 2016-2018, The Linux Foundation. All rights reserved.
>   */
>
> +#include <linux/acpi.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
> @@ -1277,6 +1278,10 @@ static const struct msm_pingroup sdm845_groups[] = {
>         UFS_RESET(ufs_reset, 0x99f000),
>  };
>
> +static const int sdm845_acpi_reserved_gpios[] = {
> +       0, 1, 2, 3, 81, 82, 83, 84, -1
> +};
> +
>  static const struct msm_pinctrl_soc_data sdm845_pinctrl = {
>         .pins = sdm845_pins,
>         .npins = ARRAY_SIZE(sdm845_pins),
> @@ -1287,11 +1292,39 @@ static const struct msm_pinctrl_soc_data sdm845_pinctrl = {
>         .ngpios = 150,
>  };
>
> +static const struct msm_pinctrl_soc_data sdm845_acpi_pinctrl = {
> +       .pins = sdm845_pins,
> +       .npins = ARRAY_SIZE(sdm845_pins),
> +       .groups = sdm845_groups,
> +       .ngroups = ARRAY_SIZE(sdm845_groups),
> +       .reserved_gpios = sdm845_acpi_reserved_gpios,
> +       .ngpios = 150,
> +};
> +
>  static int sdm845_pinctrl_probe(struct platform_device *pdev)
>  {
> -       return msm_pinctrl_probe(pdev, &sdm845_pinctrl);
> +       int ret;
> +
> +       if (pdev->dev.of_node) {
> +               ret = msm_pinctrl_probe(pdev, &sdm845_pinctrl);
> +       } else if (has_acpi_companion(&pdev->dev)) {
> +               ret = msm_pinctrl_probe(pdev, &sdm845_acpi_pinctrl);
> +       } else {
> +               dev_err(&pdev->dev, "DT and ACPI disabled\n");
> +               return -EINVAL;
> +       }
> +
> +       return ret;
>  }
>
> +#if CONFIG_ACPI
> +static const struct acpi_device_id sdm845_pinctrl_acpi_match[] = {
> +       { "QCOM0217"},
> +       { },
> +};
> +MODULE_DEVICE_TABLE(acpi, sdm845_pinctrl_acpi_match);
> +#endif
> +
>  static const struct of_device_id sdm845_pinctrl_of_match[] = {
>         { .compatible = "qcom,sdm845-pinctrl", },
>         { },
> @@ -1302,6 +1335,7 @@ static struct platform_driver sdm845_pinctrl_driver = {
>                 .name = "sdm845-pinctrl",
>                 .pm = &msm_pinctrl_dev_pm_ops,
>                 .of_match_table = sdm845_pinctrl_of_match,
> +               .acpi_match_table = ACPI_PTR(sdm845_pinctrl_acpi_match),
>         },
>         .probe = sdm845_pinctrl_probe,
>         .remove = msm_pinctrl_remove,
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
