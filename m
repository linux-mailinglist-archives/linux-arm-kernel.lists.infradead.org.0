Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E756B198C7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 08:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEM+6twKD6GkYEukwF8vPHiWROcXCsPxrJiHgAjoqbc=; b=UegTRbQ3TLmG+P
	DXtrSVlf4yul5XXNSRMUMPmdxR5mSen/HHo0P4QaWc66iBElMYKVQGIshcikAAV/LphrZV6g0jfA1
	EaLxJ4gcSY2uJvvHY3CEmX85/ZYSPiF5CaO4WpIhAiHpUUay/1C0DBhOnjL0Pv8Zl4OSeaOwyqDdu
	3oaN/9MMLXNrK1HD3VMfJeGARVAo9q4KjAF/79A1jOAJM5f32uRq4oIyOO0NPCr+Hca8iXiX6ksj7
	PGW+v+FTHcsgomXQgg7FhzKuBRkYrimj/+0lSyqlIFpVfBsgAJ37R7CGro7+9aR2qx9KeHg8ZldAq
	3wqZFn3Ricx2PdoadYpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJAdB-0004q6-Vu; Tue, 31 Mar 2020 06:44:13 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJAd0-0004pd-UZ
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 06:44:04 +0000
Received: by mail-pg1-x542.google.com with SMTP id l14so2785976pgb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 23:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Z+ad/AWMVaWRvptdozo50uEsB6n25R2bp8xmB/EVVHI=;
 b=cK6WXAGJWAgkLzgsTyMMFHsNdm+WOz51RJktFnvwl5kknooE3uxcdncHymwx0+W8np
 DgCZ0yEqr7jBUgc5TPLUcJ9tDGq8zBdsYUEy6XWJ5/2jcK2eSA6j5rXDHiqFgn28Ig01
 QDrpxppXZmOfVv6Chd+NsPOlopFtactyfHdLN8/e1ngRzQYThBUl4H3zSpEziIJHDDtX
 ckvtc4089MHhQajo0K4Er1k3eGjEzyXVWNtnMt/JwsQe6FAZbKczfKJBxWmgbmSHZcDj
 p9V3FOOjIjHZrgViBM3ChaUMoMb7HHeXf4isI2272dVHFAX/UazhUumrIwgs6axYSUwh
 2W/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z+ad/AWMVaWRvptdozo50uEsB6n25R2bp8xmB/EVVHI=;
 b=tbFQz+xKC1GLJYNwruZsKVVsiUrGh3AmwTzh+tvNwjB6lt/p6mZsmMucxxFJDJdevF
 UIymWhhpwuO+UA/tgpcg21u2NjbXfxe3I81VTH0TSVl0BzIZisrx768jugdKIjD4SrI8
 dhyC6ZlAMKAOOMt6z/72HLM+V0Lq0e4dDZ3/GqgWWDDoS9DuWPBtqlo3MlwRcGIKekgh
 fChI1KbK3nwTS8WQnWE20p3WTvA2iZNSGVGXJIukjzlEAVuEN+gb/f0HOZOgHMSKw5oS
 8/UN+bZ/04jvhuWVms+pL0JmmgSci34OoGKTonCazgtU+QFsTPfNCaBk353yTA0Ofskt
 Hxwg==
X-Gm-Message-State: ANhLgQ2h5NBXkHW9l76BhVMTBAlkW09t8sDWU4Kpt8AJagflkuTLMTPc
 Qi7tnGkdl/IGLPR54MHoL42w
X-Google-Smtp-Source: ADFU+vscCJ2nCjmi6TZ6TEEmlGsEhXPbM6dqLetJ/Oov7NHmHbKjjP0RJGQtbtda/pJrVNsroQQKjg==
X-Received: by 2002:a62:16d2:: with SMTP id 201mr15765745pfw.295.1585637042073; 
 Mon, 30 Mar 2020 23:44:02 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id i13sm7454761pfa.113.2020.03.30.23.43.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 23:44:01 -0700 (PDT)
Date: Tue, 31 Mar 2020 12:13:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 15/22] ARM: dts: stm32: Enable WiFi on AV96
Message-ID: <20200331064356.GD17400@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-16-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-16-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_234403_001153_CEDB91D4 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Tue, Mar 31, 2020 at 02:56:54AM +0200, Marek Vasut wrote:
> The WiFi/Bluetooth SDIO chip is attached to SDMMC3 on AV96, describe it
> in DT to make it available. Remove WiFi LED and turn it into a regulator,
> because it is a GPIO controlling the WL_REG_ON input of the WiFi chip.
> The LED is just an indicator connected to the same line, but not the
> primary function.
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
> V2: No change
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 38 +++++++++++++++++----
>  1 file changed, 31 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 3aeb3afa37d9..12ee95d5adb1 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -65,13 +65,6 @@ led4 {
>  		};
>  
>  		led5 {
> -			label = "yellow:wifi";
> -			gpios = <&gpioz 3 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "phy0tx";
> -			default-state = "off";
> -		};
> -
> -		led6 {
>  			label = "blue:bt";
>  			gpios = <&gpioz 6 GPIO_ACTIVE_HIGH>;
>  			linux,default-trigger = "bluetooth-power";
> @@ -103,6 +96,17 @@ vdd_io: regulator-buck-io {
>  		regulator-boot-on;
>  		vin-supply = <&vdd>;
>  	};
> +
> +	wlan_pwr: regulator-wlan {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "wl-reg";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpios = <&gpioz 3 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
>  };
>  
>  &ethernet0 {
> @@ -382,6 +386,26 @@ &sdmmc2 {
>  	status = "okay";
>  };
>  
> +&sdmmc3 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc3_b4_pins_b>;
> +	pinctrl-1 = <&sdmmc3_b4_od_pins_b>;
> +	pinctrl-2 = <&sdmmc3_b4_sleep_pins_b>;
> +	broken-cd;
> +	non-removable;
> +	st,neg-edge;
> +	bus-width = <4>;
> +	vmmc-supply = <&wlan_pwr>;
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	brcmf: bcrmf@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +	};
> +};
> +
>  &uart4 {
>  	/* On Low speed expansion header */
>  	label = "LS-UART1";
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
