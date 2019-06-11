Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77F03D5A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 20:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+9nDxNyJr4XjxcPTqQl1a71SSBsiyb2qRa/XGUsBmc=; b=HDFWVUsXeIdfgG
	jrWmRYhizXrlLb/O9UCqLDpdx5ARhu2saW89MumUs6e7E37s41JNqP3WEQ2lrWpbSAptuWlHp/Kbn
	O+qJ8OvX4eyWbMHK26XfuVfLgxij7gMZyvlkD7A4ZYh8pS7PCDMZd/26mWohqglw/RrNeJlQV2X0S
	rspoPozAbJq6acdQ7MKvHXhd70M1wOrU/sWuNtuFZs4paO19zo+x/KswiGQla4fb44lH9NrkfnPUf
	mrWeCS57sQTzXBR2LXLj6p9XY/6Jb1KkDDZxaTYqq+ZvGUpx2zYkud27iTOm4dM4xDpRGUNAIfaFK
	ACBeU5EkQYG2VJFvL0bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halhL-0004V6-6M; Tue, 11 Jun 2019 18:40:43 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halgv-0004HY-Em
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 18:40:20 +0000
Received: by mail-pg1-x542.google.com with SMTP id n2so7434135pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 11:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uF3scc9KxW/hDBo9yixpL6JLeJpWpCyfDiMubViqV3w=;
 b=a/IwH23tLKxZG4tHXQYxewZQ8XALRw+eja67K+M5/z/FNEeQwad3oJrXDdqxeiXTN0
 JCAwohTOmYwVBqWlbh42hI790jxwWh4U7uRcx6iTsHcNG9GOMmvR7eRoOZHCF44GQkAc
 oBTcWSoDfgJNn8h6THvhoka1uM5v+sahJRRAWiy3tyw+ghRjdlPOV/RqYAp7i23/sYBV
 WdLTaSx1YeAeEKSHV86SZ4KKKcgaww9h2/1TcVgsPu9BPYuNOpvH/c9FRbJrA+UdQdT2
 ErF4h0gR+JelusMccEw/LhaR3SsZ6jvNo5sTT6OAgRUOneDLE7TtHLWu3tcBzFB8NTzf
 RtgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uF3scc9KxW/hDBo9yixpL6JLeJpWpCyfDiMubViqV3w=;
 b=lnqaubf0Cxa1FOklb7VOfpcxrMRemb/1hKaH4J20dkWzjpzo6eJK0vK44VrUVwJzuF
 8KCwqVO+bxWQpxPzcRHH+W4DiIm7dZqqNAOctaw1BSyZEIbVRLHAS63oWNv+c7H+eNCD
 td81U6gaE6ImBgPyrqEhld9FZ4G45RYveW2liNW4+/ZPZ5EtPf79SdT5BOX+rEVqW4Dd
 fgc85B4RvIpOJV8CvYhPIRluC7wxbOKQSgp9WoCe7elDgdfEE/T7z2dP4RB+VWkJDHm8
 Cs1D5q6Tvi24VaUn5xHUik7/A9ld9v9V5/gwnVhh7gPFawALPZaNPGdL7kKbe91FayJP
 tsGA==
X-Gm-Message-State: APjAAAU4zFZ09eBcxOiaUJp/9jfHHzKkNKrj/bHEsx+LiIeAChFMEb8A
 8k23dmQhYpBcIwa0+fRj7SVrHg==
X-Google-Smtp-Source: APXvYqynYnWiv/cECcNpuyerUBO5l0k57vUwYWheEE66J+ItnSzBpP+OdXuYXnj2u0eHb908ZqL+nA==
X-Received: by 2002:a62:3085:: with SMTP id
 w127mr78659179pfw.170.1560278416611; 
 Tue, 11 Jun 2019 11:40:16 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id a7sm13394893pgj.42.2019.06.11.11.40.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 11:40:16 -0700 (PDT)
Date: Tue, 11 Jun 2019 11:40:13 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 4/8] pinctrl: qcom: sdm845: Provide ACPI support
Message-ID: <20190611184013.GQ4814@minitux>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-4-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610084213.1052-4-lee.jones@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_114017_686968_77F898AD 
X-CRM114-Status: GOOD (  22.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, david.brown@linaro.org, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 10 Jun 01:42 PDT 2019, Lee Jones wrote:

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

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

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
>  	UFS_RESET(ufs_reset, 0x99f000),
>  };
>  
> +static const int sdm845_acpi_reserved_gpios[] = {
> +	0, 1, 2, 3, 81, 82, 83, 84, -1
> +};
> +
>  static const struct msm_pinctrl_soc_data sdm845_pinctrl = {
>  	.pins = sdm845_pins,
>  	.npins = ARRAY_SIZE(sdm845_pins),
> @@ -1287,11 +1292,39 @@ static const struct msm_pinctrl_soc_data sdm845_pinctrl = {
>  	.ngpios = 150,
>  };
>  
> +static const struct msm_pinctrl_soc_data sdm845_acpi_pinctrl = {
> +	.pins = sdm845_pins,
> +	.npins = ARRAY_SIZE(sdm845_pins),
> +	.groups = sdm845_groups,
> +	.ngroups = ARRAY_SIZE(sdm845_groups),
> +	.reserved_gpios = sdm845_acpi_reserved_gpios,
> +	.ngpios = 150,
> +};
> +
>  static int sdm845_pinctrl_probe(struct platform_device *pdev)
>  {
> -	return msm_pinctrl_probe(pdev, &sdm845_pinctrl);
> +	int ret;
> +
> +	if (pdev->dev.of_node) {
> +		ret = msm_pinctrl_probe(pdev, &sdm845_pinctrl);
> +	} else if (has_acpi_companion(&pdev->dev)) {
> +		ret = msm_pinctrl_probe(pdev, &sdm845_acpi_pinctrl);
> +	} else {
> +		dev_err(&pdev->dev, "DT and ACPI disabled\n");
> +		return -EINVAL;
> +	}
> +
> +	return ret;
>  }
>  
> +#if CONFIG_ACPI
> +static const struct acpi_device_id sdm845_pinctrl_acpi_match[] = {
> +	{ "QCOM0217"},
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(acpi, sdm845_pinctrl_acpi_match);
> +#endif
> +
>  static const struct of_device_id sdm845_pinctrl_of_match[] = {
>  	{ .compatible = "qcom,sdm845-pinctrl", },
>  	{ },
> @@ -1302,6 +1335,7 @@ static struct platform_driver sdm845_pinctrl_driver = {
>  		.name = "sdm845-pinctrl",
>  		.pm = &msm_pinctrl_dev_pm_ops,
>  		.of_match_table = sdm845_pinctrl_of_match,
> +		.acpi_match_table = ACPI_PTR(sdm845_pinctrl_acpi_match),
>  	},
>  	.probe = sdm845_pinctrl_probe,
>  	.remove = msm_pinctrl_remove,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
