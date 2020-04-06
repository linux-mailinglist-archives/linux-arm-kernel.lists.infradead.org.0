Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D23719F092
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 09:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJgIt2pf8cQ8r28wwjtskWGV8rgxG120V2Luye+6LbY=; b=kHrcTHTVDKl27U
	c4O5aMsyqwY6p0CP5q2GPJv9xIHFofbpojlDx5BSV4Wd0vfnvOcpudsDtALA2chG2m2wL+oIPK50a
	ZvApePzCg4jFGSjKlvylm/0KPi+o558pNiL5SE+2NeVP/r6HqUNVe/aDvY+TcPSaXi44I2wyooptg
	hdXdr8DSeiLvqZkSXE8oCHBN/vauAwoljzjsOWDGnEA+kRUFkCU6dhOq0RDv9wyi/V8jJQ+rDByf3
	sXty5j+VSTjyvq209bjQZPlaCgEBbGsSM+Y4iMqlhFNUbcsYG9iH57XDh5CuvUYLCV6zLRI+7LrY0
	BjcW6D42fnfg639DzPLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLLpe-0002ki-4l; Mon, 06 Apr 2020 07:06:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLLpW-0002kD-BK
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 07:06:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id q3so7068696pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 00:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DDpQKxORmlKumoUF8G/6nT57ECq+/mjuSgf1G0iOMS4=;
 b=rsmrRGwEePctcyPVU9wPRvM1Vat/Zwzujp/tMrrTc2yR4i7cvJAAbk//2S6IhOznTM
 BJKpg1jmK65SmrlNYxrAosXw2Q5CAxUnLjMLudJybaaeVJTNXW36rYpd+XZi+1CMoEwd
 y6kaROlO0LFlyKeV706XjClNtsyMFYORo3LT9sQockGa8RZn1qAiVIWWn+7Hvda7ycxm
 qqlmrhLZJB4bZhMggsL8HslYbC4Uo2xVU3Q7UA3qbUtv02EKZ0ftlkNfahrJUftUeTAo
 7EXk5fHMkIvL8FPqZHas8y6id52R5+hDTQ12bXZz3CCaUfxncufua1Qyw+7Jb4B7aGTR
 te4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DDpQKxORmlKumoUF8G/6nT57ECq+/mjuSgf1G0iOMS4=;
 b=VNhw7a+vGEoMpsz07kQx/4yl4j3qL17t3VtlWzJyvtts1ptde4bqY+Mv3SNt9ud+We
 q5Evi8JYfk1dqQCrCfTR/7f9izHXDS0agg5vrF5aoq178m1ylA13yh5qXA7skAXgBDsq
 nHPp9d8bQo/uLEobxmryl+cMEftYzIjwfOhhPnwFo31y84OcOGQutTgPBghC0wudaQJX
 3d34RO+p7NMjpcPrAUWaQrVhpf4Ij681ij9W3BjRmrqnFSeAPFK1qPUruijkVawkMMJd
 fhQHF2//NcIllrYkABpwBjWqFjS0coSEvTPv0H2bpvA0A09fzu8HwvC6/dxq3RLwD/kF
 7SuA==
X-Gm-Message-State: AGi0PuYGRLqWxSugajMr5mgAnD2ugRrrAOCW7TUCbU+76I9qzE+bDUsQ
 oPFUEvRqgrAK3yWv1Kn+4TcS
X-Google-Smtp-Source: APiQypKrNFjnlpd8RsFYzq4UArfG2/9dBM4zlXsO29A7kUzAgoT9dc+rlsWiPv1GPeX4qGKZKY/EPw==
X-Received: by 2002:a63:8041:: with SMTP id j62mr18833652pgd.273.1586156757220; 
 Mon, 06 Apr 2020 00:05:57 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e80:687d:9124:eff9:55e8:1727])
 by smtp.gmail.com with ESMTPSA id l22sm11339152pjq.15.2020.04.06.00.05.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Apr 2020 00:05:56 -0700 (PDT)
Date: Mon, 6 Apr 2020 12:35:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 18/22] ARM: dts: stm32: Add bindings for HDMI video on
 AV96
Message-ID: <20200406070550.GF2937@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-19-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401132237.60880-19-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_000558_410906_AC2912CD 
X-CRM114-Status: GOOD (  17.20  )
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

On Wed, Apr 01, 2020 at 03:22:33PM +0200, Marek Vasut wrote:
> Fill in the HDMI video pipeline from AV96 into the DT.
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
> V3: No change
> V4: Rebase on stm32-next
>     Use renamed ltdc_*_pins_d
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 79 +++++++++++++++++++++
>  1 file changed, 79 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index faa9a5185ddd..756e79f2255a 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -25,10 +25,28 @@ aliases {
>  		spi0 = &qspi;
>  	};
>  
> +	/* XTal Q1 */
> +	cec_clock: clk-cec-fixed {
> +		#clock-cells = <0>;
> +		compatible = "fixed-clock";
> +		clock-frequency = <24000000>;
> +	};
> +
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	hdmi-out {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con: endpoint {
> +				remote-endpoint = <&adv7513_out>;
> +			};
> +		};
> +	};
> +
>  	memory@c0000000 {
>  		device_type = "memory";
>  		reg = <0xc0000000 0x40000000>;
> @@ -300,6 +318,50 @@ watchdog {
>  		};
>  	};
>  
> +	hdmi-transmitter@3d {
> +		compatible = "adi,adv7513";
> +		reg = <0x3d>, <0x2d>, <0x4d>, <0x5d>;
> +		reg-names = "main", "cec", "edid", "packet";
> +		clocks = <&cec_clock>;
> +		clock-names = "cec";
> +
> +		avdd-supply = <&v3v3>;
> +		dvdd-supply = <&v3v3>;
> +		pvdd-supply = <&v3v3>;
> +		dvdd-3v-supply = <&v3v3>;
> +		bgvdd-supply = <&v3v3>;
> +
> +		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
> +		interrupt-parent = <&gpiog>;
> +
> +		status = "okay";
> +
> +		adi,input-depth = <8>;
> +		adi,input-colorspace = "rgb";
> +		adi,input-clock = "1x";
> +		adi,input-style = <1>;
> +		adi,input-justification = "evenly";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				adv7513_in: endpoint {
> +					remote-endpoint = <&ltdc_ep0_out>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +				adv7513_out: endpoint {
> +					remote-endpoint = <&hdmi_con>;
> +				};
> +			};
> +		};
> +	};
> +
>  	eeprom@53 {
>  		compatible = "atmel,24c02";
>  		reg = <0x53>;
> @@ -312,6 +374,23 @@ &iwdg2 {
>  	status = "okay";
>  };
>  
> +&ltdc {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&ltdc_pins_d>;
> +	pinctrl-1 = <&ltdc_sleep_pins_d>;
> +	status = "okay";
> +
> +	port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ltdc_ep0_out: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&adv7513_in>;
> +		};
> +	};
> +};
> +
>  &pwr_regulators {
>  	vdd-supply = <&vdd_io>;
>  	vdd_3v3_usbfs-supply = <&vdd_usb>;
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
