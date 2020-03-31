Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F33E3198B5B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 06:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTsYC1N/L5IkcRC+NTzauy61JWEBTbSySwRyLH7alQU=; b=N9Ny6dmVay0hzO
	poXusAbYgi18m+nQbTmuM5EnvpEx5JsW1vOk35Pzyj9Pra1AZWv7VZCM9qGE7KuDkiGr7uRyCdqt0
	LUonevW/Dp01qtyravdG9jFlxcOMyjW4LfdIYb52DaVxbV3NsEXdaqqyxBgzv0yEe0Z7lH2jWctqW
	8B5ZBSu3DEKsRnRgI0977o2ZUud3L6mIM3IZye67PXtfelDpsYj43ZI+moGte6jLW1KXHcECXh/Vc
	j7J5zHPYelCZY3vIt0GXO9dqNdjBJhcPKzXy96ahkDdsxqstNB/3GVA8hPPIKpOjE2NFddJLxHqFw
	gDkoRW9P+HDQ07sbZawA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ8b6-0007ud-66; Tue, 31 Mar 2020 04:33:56 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ8aw-0007u1-Kr
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 04:33:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id h11so7638058plk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 21:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KHj39y5fdH9Uv51+nxOzjv4v2uANykWV5CO0Mi85N6I=;
 b=vCDPFgxTTiWo5KOk4iJIiAKcSrHBIauour4dahxzyJugvrzYps5/MAuuYqxjfbDw/L
 vIYUm9DmpFEqeQts9+aLrGP8wGqW99S6SHoNgxNaIv/ZfefuVRD/2NdqWyNXS36XQM8H
 BCAEiQSZ9faEw9fyxplPGCRUgl4NSnR6BlX+lIPS18Qy4RrGTb+r81D4AlE/ZEPu3hhI
 Fl1vlZUsf/mJTkJl7MmlG7CnPtliOj/5RPyCxZ5cwBhUK1HD7meNEA7ub3RNiyWabNhQ
 v9UMXgxhQGtsgVPLXSFMnGSwMeMtzYoYrqwSOjqbx2/rErLLIURuOL4r/Q4NF2UbRHXt
 NjSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KHj39y5fdH9Uv51+nxOzjv4v2uANykWV5CO0Mi85N6I=;
 b=E6S65XhTdqltfHx5B8WpxpI+elYoqwgZ7L+ES7hLGZAVrINyLS6l2wDKQi1VQsiELK
 ggGZ3n1XzLfNITWONvMXujCPONdysvbZYxqAo3TfL8tEja5RXS5MeG8gRWbOgc28txzC
 F5+DJe0uKh+qVfjyWA0rQbju8PZytATFmcSnNQrFSUGvswZwkioFCmjgymgnN99zGP13
 fyuhI8kWd87wn/D5oaIuOueSXrDvSbHORz90iD6l+CkPobKPDfskMzWyCY8gcoNqj3Zk
 iECRjtqiE6VMyy12TA31v7Rxb/6fSClCVrNot/KCVv7NxhqNvDRmsFx+gbNI/x6e17ym
 A5KA==
X-Gm-Message-State: AGi0Pubi6xR5ouavv+m4c89oX1CZNYCAlsw+2/5f6aZL53u1/NnyMEaJ
 Mb7X8d+bbVozlZwJ0U//Uc/gjeQaRg==
X-Google-Smtp-Source: APiQypIPQMHA7xCDE37J1tm9V8LvIzT94pFuOlkJKUqV9VsympLng+X6jurgccQ3cev51Tc0bVEhjg==
X-Received: by 2002:a17:90a:868b:: with SMTP id
 p11mr1769236pjn.34.1585629225956; 
 Mon, 30 Mar 2020 21:33:45 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id go9sm850663pjb.27.2020.03.30.21.33.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 21:33:45 -0700 (PDT)
Date: Tue, 31 Mar 2020 10:03:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 06/22] ARM: dts: stm32: Repair SDMMC1 operation on AV96
Message-ID: <20200331043338.GH14274@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-7-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-7-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_213346_697178_2737D9E9 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 02:56:45AM +0200, Marek Vasut wrote:
> The SD uses different pinmux for the D123DIRline, use such a pinmux,
> otherwise there is a pinmux collision on the AV96. Add missing SD
> voltage regulator switch.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: Disable SDR104, it seems unstable thus far
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 21 ++++++++++++++++++---
>  1 file changed, 18 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index e58653ccb60f..04280353fdbe 100644
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
> @@ -305,9 +319,9 @@ &rtc {
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

The "cd-gpios" change is not present in mainline. I think you can add it to
this patch as well with relevant commit description.

With that fixed,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

>  	disable-wp;
>  	st,sig-dir;
> @@ -315,6 +329,7 @@ &sdmmc1 {
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
