Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5EC39A44
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 05:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHAaWzya6Xe8OcRybjfg9IxRtZkuLea6W5JyHliegOo=; b=RVwj9rEZp4ELnD
	JS9IEd+we/1AE2yx31OiGADh97RLGt60u5lz4mqNc7SOWKSKHIuy6IR4NaUvJ9xt/24MCMLthjXNq
	lX8DBKL+PsWcC5nyTmR+W5Sx8SSAk6DgqsXKEPiF8wFdzP8lgONkGsrTm/tHQbgM09kPLq5bgSYMp
	fo4K3hYclUlu4lO2er0QHbx6AI7DnP8rfK8OsuiuMN+lJTnUQU1zO7fvzxSVE2mKPOXgqLhhoGigM
	HFmZv+IJaPZjPQD80iKKmvqcu6fd4wZDeP8bn+7Ls2YBBHAqfaFG9AnHVQnDP/sGdCgwpSb9AJOft
	LJl3oC/VNKAZ7LWw96Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZS5x-00013r-Ny; Sat, 08 Jun 2019 03:32:41 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZS5p-00013H-BE
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 03:32:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so2195724pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 20:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w8yMs0A1kswOPadFYz1C2fi/C0+bcAjRjGc687sOHgM=;
 b=c7n9thBGRp2TEdtjghoVzImcNhyBb/VGwjyjCm3JbuSUilHIelfibtChp8GIaE13ag
 JNOGB+hr6YlznweL7qHBqLNQTVTGDtYKkRf2j18Y9qAdXrCG+GWCHjakZ6eG8owGdoxP
 Nn0DnoxyIjpF/fzEmh2Sq+lKuLx2brgS3c4ic3En3Eok0EDpahGBcI8woeuCmztpX+hT
 1ynX7bvjVqIZXzxE5zt7kbq8TDS/HkU1IthcxKu99GeKRkqM7xbhzN3ypBD4GyqgshNP
 hJR/Nc4drgs04AE64vN1B+FBz35vmQErDRSlXL+J5SMxFXd2xo/i0qA+X2/h6PjhUuOh
 /tlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w8yMs0A1kswOPadFYz1C2fi/C0+bcAjRjGc687sOHgM=;
 b=Mqo7TdckFozzs0MLioqF+PFYeoXO2JXi1ASpZvs++2W4IGjVvfmnReZozM4CK5Decd
 Qu+FcYCQhkRETMtPwRlQZS3aWEHq+mMy68dXK/gWkyZajvC63/SVqveU+/9BS8NdJCXl
 7ChzLzw0GCN6NBPySad7N7naYyRVojerLxwNFI1Lvru3kC6Mu6dMe8gNPbNA0h2OW7Vh
 PgaZQv1w2i/kMtq9IWrvqp4r8le9/aNiIE1m2f838eG+Vj5reudSmoPWLO2OfJ243nYL
 vqn7AHsZQxcn2CYpBv1VTYRXh/tLZM1G3epdaHZKtqqMI69we7nK8Xgp7B9phkLNxpJh
 1dXw==
X-Gm-Message-State: APjAAAXehTKtfVtigfwlw8XT8pxWQwQddpnw41c64m3X35HhGvu+c3Eu
 7Lgj0uiuq7cUJl1Czkldf+BI9Q==
X-Google-Smtp-Source: APXvYqzrB7QuXo0561fGi5AbE7OYmt8MLxD5Fo8pdCLTO0o6oJi2WGdEIJ2vz0ye4zuI2JWRQJG4IA==
X-Received: by 2002:a65:5003:: with SMTP id f3mr5749817pgo.336.1559964752104; 
 Fri, 07 Jun 2019 20:32:32 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id p65sm7027057pfb.146.2019.06.07.20.32.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 20:32:31 -0700 (PDT)
Date: Fri, 7 Jun 2019 20:32:29 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 4/6] clk: qcom: Add ipq6018 Global Clock Controller support
Message-ID: <20190608033229.GE24059@builder>
References: <1559754961-26783-1-git-send-email-sricharan@codeaurora.org>
 <1559754961-26783-5-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559754961-26783-5-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_203233_393049_5BB9D4E9 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, sboyd@codeaurora.org, agross@kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 linux-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 05 Jun 10:15 PDT 2019, Sricharan R wrote:

> This patch adds support for the global clock controller found on
> the ipq6018 based devices.
> 
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: anusha <anusharao@codeaurora.org>
> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>

Please fix your s-o-b chain, as described in my reply to 1/8..

> ---
>  drivers/clk/qcom/Kconfig       |    9 +
>  drivers/clk/qcom/Makefile      |    1 +
>  drivers/clk/qcom/gcc-ipq6018.c | 5267 ++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 5277 insertions(+)
>  create mode 100644 drivers/clk/qcom/gcc-ipq6018.c
> 
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index e1ff83c..e5fb091 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -120,6 +120,15 @@ config IPQ_GCC_8074
>  	  i2c, USB, SD/eMMC, etc. Select this for the root clock
>  	  of ipq8074.
>  
> +config IPQ_GCC_6018

Please maintain sort order.

> +	tristate "IPQ6018 Global Clock Controller"
> +	depends on COMMON_CLK_QCOM
> +	help
> +	  Support for global clock controller on ipq6018 devices.
> +	  Say Y if you want to use peripheral devices such as UART, SPI,
> +	  i2c, USB, SD/eMMC, etc. Select this for the root clock
> +	  of ipq6018.
> +
>  config MSM_GCC_8660
>  	tristate "MSM8660 Global Clock Controller"
>  	help
> diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
> index f0768fb..025137d 100644
> --- a/drivers/clk/qcom/Makefile
> +++ b/drivers/clk/qcom/Makefile
> @@ -22,6 +22,7 @@ obj-$(CONFIG_APQ_MMCC_8084) += mmcc-apq8084.o
>  obj-$(CONFIG_IPQ_GCC_4019) += gcc-ipq4019.o
>  obj-$(CONFIG_IPQ_GCC_806X) += gcc-ipq806x.o
>  obj-$(CONFIG_IPQ_GCC_8074) += gcc-ipq8074.o
> +obj-$(CONFIG_IPQ_GCC_6018) += gcc-ipq6018.o

Ditto.

>  obj-$(CONFIG_IPQ_LCC_806X) += lcc-ipq806x.o
>  obj-$(CONFIG_MDM_GCC_9615) += gcc-mdm9615.o
>  obj-$(CONFIG_MDM_LCC_9615) += lcc-mdm9615.o
> diff --git a/drivers/clk/qcom/gcc-ipq6018.c b/drivers/clk/qcom/gcc-ipq6018.c
[..]
> +static int gcc_ipq6018_probe(struct platform_device *pdev)
> +{
> +	return qcom_cc_probe(pdev, &gcc_ipq6018_desc);
> +}
> +
> +static int gcc_ipq6018_remove(struct platform_device *pdev)
> +{
> +	return 0;

Just omit .remove from the gcc_ipq6018_driver instead of providing a
dummy function.

> +}
> +
> +static struct platform_driver gcc_ipq6018_driver = {
> +	.probe = gcc_ipq6018_probe,
> +	.remove = gcc_ipq6018_remove,
> +	.driver = {
> +		.name   = "qcom,gcc-ipq6018",
> +		.owner  = THIS_MODULE,

Don't specify .owner in platform drivers.

[..]
> +MODULE_DESCRIPTION("Qualcomm Technologies, Inc. GCC IPQ6018 Driver");
> +MODULE_LICENSE("GPL v2");
> +MODULE_ALIAS("platform:gcc-ipq6018");

This modalias won't be used.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
