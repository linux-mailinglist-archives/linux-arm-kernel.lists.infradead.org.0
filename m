Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB6719F04D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 08:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYFVCT0MgIt9UrTF4d3FnQky/2CkDbhm82MWA88+Z+s=; b=AfxlbiE37rpow9
	ITqOwKXYuu8nuxEZX4hbdfYlxJPvTDi56vJalflM53zAr4rxwsb0Xxgdo27PggEjpeyyhOHREthYr
	tw6rAN051ZfEUH/Ha+atZ/oeICyitGwqSFftadBIHrFYE7SXdELjQ6nuqMhP7cS4AcXuaLE3JS3Bl
	VagiPb9A3boEbOiz+2Ji7bgdXKrS2z8TdfobcLII8dJzxYs5sFV6Gm9qyv49aRk4CwzYfiTWQzs6u
	WhRSpRIKA/yz7KDyQGS1CFGOwge3i7L8avnotDr+nJqu8AKJedzCRL+/z1Gi8uRZis1V6WOHJzkzR
	hNNcNSKt9ytwL1jcM+yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLLC8-0004Gg-F1; Mon, 06 Apr 2020 06:25:16 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLLBz-0003IL-R9
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 06:25:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id k15so7058174pfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 23:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SwRnMHrrRPFwcR/UVU/6SoqwmQfw/mrKNkhaRPco2G0=;
 b=r7YfxMgY9GHw01vR75xMnw5tvYS/W55Pu1w0/p8MT+U5DZYWQ33DMqrJdPWF2bATui
 dNdNteN5UyPjxKazCPYjEP5lwXSkG14yG16TB7m6t3aqMkBdwx2+3aNMHHJUY+MMr6kU
 rwFQQLttCrVVM0JmdoncduruJGNDBhnRUg1j9PmH/EwZ+wWMt34br8Kq6IvDPwpOoyNw
 IqN9WqMrYM08OrKnqKojc64H/lxojDP5pRPtvR00F0uXlbe6VCNRXmvsFUO8oBElfZ5s
 KgG4mM2Ab0dE9KRxIgdfMNBEOsaTo9qyYXhkVgENAY2m/+QwUVKVD8xupXAZL1G42Xr0
 GW5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SwRnMHrrRPFwcR/UVU/6SoqwmQfw/mrKNkhaRPco2G0=;
 b=ohKNnppA88pmgr7mVZYCogCkLys0jGQA//SIos3ECbiZME2F3ujtNEskMktGYYtbKH
 nPFfIryJHoXA36RV+2sjlHBuoHE20/4C9TO1tiwnmo//WpaMYAbKXfpF8CZKdKprnzNO
 vAPguVVIwW5pZrYkth0b+DDNbXgs9AWNqMqYFy5JFvAAvR5W3BCuTwTIMqO1JvW4Y8Bx
 xVxrhI+lN/Y2GgDT75XT6+dTQqKuJAYlTC+SgwU5XQWhFXJLt088UkiFhIG+uxjobSD6
 P7ROeooBBiWjgU8EDq1F1IAtVSO6u7rAN9WJZg27Y6wO4PnJxgJe9bz5jFut1oFEuMzu
 2rog==
X-Gm-Message-State: AGi0PuZjvkifAyM+KNkG9UrjRFU236Kg1bHkHJ2r84i3SSwB3WG4fAB/
 ZZg+AycxgqdxIkxsME9WyGkuQZjd7SZ1
X-Google-Smtp-Source: APiQypLI2KEsiOIato+Be+sFRZsyceTFufCm6dUg+LuwT6AfwBM1VoVWJ3cUpOabZZCqrChVioQLKg==
X-Received: by 2002:a63:700f:: with SMTP id l15mr16817684pgc.375.1586154306692; 
 Sun, 05 Apr 2020 23:25:06 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e80:687d:9124:eff9:55e8:1727])
 by smtp.gmail.com with ESMTPSA id np4sm11714918pjb.48.2020.04.05.23.25.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 Apr 2020 23:25:05 -0700 (PDT)
Date: Mon, 6 Apr 2020 11:54:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 06/22] ARM: dts: stm32: Repair SDMMC1 operation on AV96
Message-ID: <20200406062459.GC2937@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-7-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401132237.60880-7-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_232507_942889_241DCBA4 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 03:22:21PM +0200, Marek Vasut wrote:
> The SD uses different pinmux for the D123DIRline, use such a pinmux,
> otherwise there is a pinmux collision on the AV96. Add missing SD
> voltage regulator switch.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: Disable SDR104, it seems unstable thus far
> V3: No change
> V4: Rebase on stm32-next
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 21 ++++++++++++++++++---
>  1 file changed, 18 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index edcc57864495..a6f21ac5a94a 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -77,6 +77,20 @@ led6 {
>  			default-state = "off";
>  		};
>  	};
> +
> +	sd_switch: regulator-sd_switch {
> +		compatible = "regulator-gpio";
> +		regulator-name = "sd_switch";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <2900000>;
> +		regulator-type = "voltage";
> +		regulator-always-on;
> +
> +		gpios = <&gpioi 5 GPIO_ACTIVE_HIGH>;
> +		gpios-states = <0>;
> +		states = <1800000 0x1>,
> +			 <2900000 0x0>;
> +	};
>  };
>  
>  &ethernet0 {
> @@ -304,9 +318,9 @@ &rtc {
>  
>  &sdmmc1 {
>  	pinctrl-names = "default", "opendrain", "sleep";
> -	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_a>;
> -	pinctrl-1 = <&sdmmc1_b4_od_pins_a>;
> -	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a>;
> +	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_b>;
> +	pinctrl-1 = <&sdmmc1_b4_od_pins_a &sdmmc1_dir_pins_b>;
> +	pinctrl-2 = <&sdmmc1_b4_sleep_pins_a &sdmmc1_dir_sleep_pins_b>;
>  	cd-gpios = <&gpioi 8 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
>  	disable-wp;
>  	st,sig-dir;
> @@ -314,6 +328,7 @@ &sdmmc1 {
>  	st,use-ckin;
>  	bus-width = <4>;
>  	vmmc-supply = <&vdd_sd>;
> +	vqmmc-supply = <&sd_switch>;
>  	status = "okay";
>  };
>  
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
