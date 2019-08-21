Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E6796FC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5XgD4J5vA2zElRtSMO7o7WB13eYGbGG2q+nSAA8kVk=; b=J0Ls34JXHxn8Zq
	TtkTdJ/VkB3qrg08Pd1BB5eMhBBcnnzH3LxUC8WDL9UJ1U00TRWQeZKNYDXC9OzMZ7ghr5wE0EdEM
	uzBFLJfN7wyXFre6Wy/aynoQ9sfDoJPT0/sV6Ev0r5Sw0kkzYnr5bRHr9LsoZg7k6R0Wpa/iMRNq+
	qwTYiiIiLfjk7LBkph0mz4wR/ADzrROiULBdJ3CUjcRWg6UHCVLV5D4GaCv1hRNLdrkI7wMSNFx0z
	gv5SwU+NrGp1DvQ3H7KqYndXMhgXkvlV+7g0PX7uxD7HvxS6vtTJkqIiT8KBffpcPFoRux2UfeB0r
	nMP778z1JDukAmNLNThw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GeK-0000w6-Ge; Wed, 21 Aug 2019 02:47:00 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GeC-0000vP-N4
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:46:54 +0000
Received: by mail-pf1-x442.google.com with SMTP id q139so377249pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rzA9S1AIz/6xQmIDVoSvFl0QH4KJ3JhpAFF3D1CfKh0=;
 b=s+ipYvK/PXc0BFsqo5Tnmt2Vnc6JFR0aG8HAWklRvlWdQyin8D1mC7EnMGjfhhEy7O
 qGmpCNR02TbHZhdQ/+2f7zpJJAJ1jyftQeKEWnNFTYymKnDuID4xnBxALF7r9DMvAiwe
 f0n42KeMUI2n3utsk8x+EKkqiXYKo9BtU3xWPR22lQ7A5ThtHJ4rJxXSfg3+NguML63t
 VL7nUXJe8KbLx36EXA0i4nQdDQtMmvRJADZbIrOPuBliIvCw/JEL+DYXdBh1cdLlpIyL
 hs/gPjQSXzFGNPnsYytfIqvcVXjg2MxQ36l0r8Y1drjG/qqd4lziE/XKOvupAVPalNs9
 iXWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rzA9S1AIz/6xQmIDVoSvFl0QH4KJ3JhpAFF3D1CfKh0=;
 b=G7MjQ1GJyczpIXeE8WHepN9KyFqFIo3eqC4qZghUNqmvXww5DgFXwIjy/SompR7yW/
 v3B0906ZyoQF5POfpu2krwGUVQ9RkS1H39Jcl061zowCxEV5TsxSX437RKQlnn6nZ2kL
 bjP87MsN0IqrFgtDrSvPBLEkswzoQBTiPR6d93pcbqfyVuWy6kERSR3P1WiPSeIqZmO1
 tBp/Qcop3xVoYKwZHSCm1RQc7fCrRLSNu5YPrDO3UX6DynnzCLkwVlnWIpDLMD2rV6FI
 IvXC8Q2/MLZvhgNf9BRaedI2BKOSGvNHhGHgI7tLT1bBKXu4EacnHzuVEqliZbsmYtji
 zOZA==
X-Gm-Message-State: APjAAAU2yugHYs9SbAd7ESKbrIDf3rQiuOOsV/UB3QqHvu3N8Tfh9rFe
 Qh2U4Dg41uFgzmIwJZRy7j9f
X-Google-Smtp-Source: APXvYqxWjSAeaVO7l8MTk1p6uF2HhW/owqfIUdX/K1HMqNwAehrCyxIRk1mn/yYnS0T+S5vx1rqVzA==
X-Received: by 2002:a17:90a:c24e:: with SMTP id
 d14mr3161488pjx.129.1566355611709; 
 Tue, 20 Aug 2019 19:46:51 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id x2sm1517865pja.22.2019.08.20.19.46.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 20 Aug 2019 19:46:51 -0700 (PDT)
Date: Wed, 21 Aug 2019 08:16:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: afaerber@suse.de
Subject: Re: [PATCH v2 4/7] arm64: dts: actions: Add uSD and eMMC support for
 Bubblegum96
Message-ID: <20190821024643.GA14176@Mani-XPS-13-9360>
References: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
 <20190821024014.14070-5-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821024014.14070-5-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_194652_767828_C8FD5FFC 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org, sboyd@kernel.org,
 linux-mmc@vger.kernel.org, linus.walleij@linaro.org,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 thomas.liau@actions-semi.com, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

On Wed, Aug 21, 2019 at 08:10:11AM +0530, Manivannan Sadhasivam wrote:
> Add uSD and eMMC support for Bubblegum96 board based on Actions Semi
> Owl SoC. SD0 is connected to uSD slot and SD2 is connected to eMMC.
> Since there is no PMIC support added yet, fixed regulator has been
> used as a regulator node.
> 

Just realised that I missed your review on the patch description here.
Will either modify in next iteration (if needed) or modify it while
applying.

Sorry for that!

Thanks,
Mani

> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../boot/dts/actions/s900-bubblegum-96.dts    | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
> index 732daaa6e9d3..92376b71cb8f 100644
> --- a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
> +++ b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
> @@ -12,6 +12,9 @@
>  	model = "Bubblegum-96";
>  
>  	aliases {
> +		mmc0 = &mmc0;
> +		mmc1 = &mmc1;
> +		mmc2 = &mmc2;
>  		serial5 = &uart5;
>  	};
>  
> @@ -23,6 +26,22 @@
>  		device_type = "memory";
>  		reg = <0x0 0x0 0x0 0x80000000>;
>  	};
> +
> +	vcc_3v1: vcc-3v1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-3.1V";
> +		regulator-min-microvolt = <3100000>;
> +		regulator-max-microvolt = <3100000>;
> +		regulator-always-on;
> +	};
> +
> +	sd_vcc: sd-vcc {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-3.1V";
> +		regulator-min-microvolt = <3100000>;
> +		regulator-max-microvolt = <3100000>;
> +		regulator-always-on;
> +	};
>  };
>  
>  &i2c0 {
> @@ -241,6 +260,47 @@
>  			bias-pull-up;
>  		};
>  	};
> +
> +	mmc0_default: mmc0_default {
> +		pinmux {
> +			groups = "sd0_d0_mfp", "sd0_d1_mfp", "sd0_d2_d3_mfp",
> +				 "sd0_cmd_mfp", "sd0_clk_mfp";
> +			function = "sd0";
> +		};
> +	};
> +
> +	mmc2_default: mmc2_default {
> +		pinmux {
> +			groups = "nand0_d0_ceb3_mfp";
> +			function = "sd2";
> +		};
> +	};
> +};
> +
> +/* uSD */
> +&mmc0 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc0_default>;
> +	no-sdio;
> +	no-mmc;
> +	no-1-8-v;
> +	cd-gpios = <&pinctrl 120 GPIO_ACTIVE_LOW>;
> +	bus-width = <4>;
> +	vmmc-supply = <&sd_vcc>;
> +	vqmmc-supply = <&sd_vcc>;
> +};
> +
> +/* eMMC */
> +&mmc2 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc2_default>;
> +	no-sdio;
> +	no-sd;
> +	non-removable;
> +	bus-width = <8>;
> +	vmmc-supply = <&vcc_3v1>;
>  };
>  
>  &timer {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
