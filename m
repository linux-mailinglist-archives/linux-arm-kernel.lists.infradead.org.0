Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E291356C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+1CqIU7pLxcFJU251v7FBiiRfeJsycGIlqGxNgtQrY=; b=qb8JCMI1vjWtUS
	yZf9drhkNBZCiOB4PP6b82/PHlabvyv3XkTMyGPu3fY1BPUhepb6geXiC6u1DzRqGHiFbRHymXqEo
	jq8o6Ne+972uZ7ZTkxRsiZYqSRgS+SFGou2MwRHnsNMQf/DzWPvhfe7/ZfuCP6jb1uzP732wHWyMj
	I6lRW1e4kPJxfjRqvawtem/UDCzcdUqdQiPjCeM+gtgRd4lr/p746DXeImnbj+DorVV50W0c+K4u9
	LKLzTGI7IGJt5zyCp0QnMmkicuLMkAuZtD/BWfV0Xs5XcBmv4LsN0OhlNmPO8pddXM+HPTZFXrL4p
	OPUeIRh/6vAnAnqTHjyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPE5-0006r7-3G; Wed, 05 Jun 2019 06:16:45 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPDx-0006qK-R2
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:16:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id s27so6198556pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 23:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yPLGcJboWqTS41OXT0YPS9mFDLi+KIswrNZ4xj5RMzE=;
 b=a2p19VFRYfiN+slwv4mz43rBb2yISQyrLkTJcMwSA/WWx9l79OZvNlzb0McxQjlz1q
 V0H85qKfEr5ZtprV5QK9qBTKSV8I1gF9ndrBiqTp2IS+Bz1UAF4xjzJ5ovK8Dbv9obd/
 E4MAUdbc473B8+RS4fi0cnV5jtQ/pttN9wdLEjbGLZPKISnutmqS1RoLvLUmatV7Sxj4
 1YpTj26Z25oIhkuyqe73xgLobBxUTtBRWPzTU80HA6shTFVU+iFMdg7A/LeV1fBVQ54j
 iipbbvvwaXrxFxqY26USW52xFqh7PwiURi/plOK8dz92vePi2swKlawieFKqGfDli8E8
 zFfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yPLGcJboWqTS41OXT0YPS9mFDLi+KIswrNZ4xj5RMzE=;
 b=kZIztfGaz+wxxz/xjTpjGvcdLK5Vi9oPMjTGj4asCLtsdyP28YfKec2ZcIsxbITrmN
 FAThan7dVOwseoTjgt96WkcuGBZDmi4+tELbyP6MBkj7s3jQ0PbHznmJd8ynWNUt9ODz
 mXuAdDNgouXqNNZktAjMDLY1tLOhDjqW7rmU8SygT+wnhXMLm5B1PR5gteDeMBDfuCBW
 rhi81lrfZUf9XuHzpnRVFEhFxrf0WT7PLB7vQB1HuYHOT6wCZg9tv18P4oM9n91TJChK
 KrPGI937LQ8HuonEoVEVht4Qfy20c7y5KRHvKKacOpjD4nT2/wt5JvQIpqJQfrKym5Yx
 B63Q==
X-Gm-Message-State: APjAAAUGR7i/KozfxprD9vqmoBkYI/WrFPbG69MgBGUxw8JY9x9oyDd0
 zzyDZE0305GtZymOHPkK5J++qg==
X-Google-Smtp-Source: APXvYqwEJhIs8QubYN0avnbvfixWjIzhGaRnp7YPaFTgZ2Z2O0BG2WDaO37plKfU2MMrMOlw9tyzHw==
X-Received: by 2002:a62:ea0a:: with SMTP id t10mr43421341pfh.236.1559715396814; 
 Tue, 04 Jun 2019 23:16:36 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z18sm8987858pgh.88.2019.06.04.23.16.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 23:16:36 -0700 (PDT)
Date: Tue, 4 Jun 2019 23:17:21 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 4/8] pinctrl: qcom: sdm845: Provide ACPI support
Message-ID: <20190605061721.GK22737@tuxbook-pro>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-4-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604104455.8877-4-lee.jones@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_231637_895667_FFCB4ADE 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, kramasub@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 04 Jun 03:44 PDT 2019, Lee Jones wrote:

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
> ---
>  drivers/pinctrl/qcom/Kconfig          |  2 +-
>  drivers/pinctrl/qcom/pinctrl-sdm845.c | 35 ++++++++++++++++++++++++++-
>  2 files changed, 35 insertions(+), 2 deletions(-)
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
> index c97f20fca5fd..7188bee3cf3e 100644
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
> @@ -1284,14 +1289,41 @@ static const struct msm_pinctrl_soc_data sdm845_pinctrl = {
>  	.nfunctions = ARRAY_SIZE(sdm845_functions),
>  	.groups = sdm845_groups,
>  	.ngroups = ARRAY_SIZE(sdm845_groups),
> +	.reserved_gpios = sdm845_acpi_reserved_gpios,

The reason why put these in DT is because the list is board/firmware
dependent. E.g. the firmware on db845c does not support the peripherals
that sits on these 8 pins and as such these are not reserved.

But given that the two structs looks identical now, did you perhaps not
intend to add.reserved_gpios for the non-ACPI case?

Regards,
Bjorn

> +	.ngpios = 150,
> +};
> +
> +static const struct msm_pinctrl_soc_data sdm845_acpi_pinctrl = {
> +	.pins = sdm845_pins,
> +	.npins = ARRAY_SIZE(sdm845_pins),
> +	.groups = sdm845_groups,
> +	.ngroups = ARRAY_SIZE(sdm845_groups),
> +	.reserved_gpios = sdm845_acpi_reserved_gpios,
>  	.ngpios = 150,
>  };
>  
>  static int sdm845_pinctrl_probe(struct platform_device *pdev)
>  {
> -	return msm_pinctrl_probe(pdev, &sdm845_pinctrl);
> +	int ret;
> +
> +	if (pdev->dev.of_node) {
> +		ret = msm_pinctrl_probe(pdev, &sdm845_pinctrl);
> +	} else if (ACPI_HANDLE(&pdev->dev)) {
> +		ret = msm_pinctrl_probe(pdev, &sdm845_acpi_pinctrl);
> +	} else {
> +		dev_err(&pdev->dev, "DT and ACPI disabled\n");
> +		return -EINVAL;
> +	}
> +
> +	return ret;
>  }
>  
> +static const struct acpi_device_id sdm845_pinctrl_acpi_match[] = {
> +	{ "QCOM0217"},
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(acpi, sdm845_pinctrl_acpi_match);
> +
>  static const struct of_device_id sdm845_pinctrl_of_match[] = {
>  	{ .compatible = "qcom,sdm845-pinctrl", },
>  	{ },
> @@ -1302,6 +1334,7 @@ static struct platform_driver sdm845_pinctrl_driver = {
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
