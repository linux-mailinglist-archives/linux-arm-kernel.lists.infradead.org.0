Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 822B919F076
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 08:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lqb+diL7hHT6jvhTkluhei7Ib0jYMxmLTn+VnOGYPaM=; b=kil+9Jao4qf17X
	fW7N17GeTCBKVvcE3l8pvACGHpCVU7UVWrYIRJJKoNv5Z7b1vRMK+CwZQ2YeDvNKkaF2Cfa6c65Tm
	gkHSjU42yFlkpGQnL96d6jxp8f03jeX90Sl75pjZ8BGSHlXH+KnRm2iq8mxQbU628Ztv3Ue0Q5nW8
	LcpYDkIWQF42hla/c5WRNOZ3Wt68Z7wrM42HH/BV6R6V2jcOVV1mmhDxWeiw3kArjRZMyj3EP/VV0
	iK+/37DSs+tEfWCdkiyT1RAF5lPLt0lTIJjF4WRJfAye5fVHMCKfIQmEkr50I0EaYIG9SfEEu3f5y
	wGNSKbxin/yPdWNz/x6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLLaL-0001eC-33; Mon, 06 Apr 2020 06:50:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLLa8-0000d8-Au
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 06:50:06 +0000
Received: by mail-pg1-x543.google.com with SMTP id k5so7107743pga.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 23:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MMPUB+HHzN7dKOqTTqqjytQFC/PcyTkIQMgPj4MylwE=;
 b=ZnpiPztDgsYw+9vXL2teT93l9k68RjczlGHtwKTcttqmHbOujrN8ZLPXwUCacPhrQk
 xlrdOCrV1EHZq5UWJ0gSnPq92uV9uRH8eeJ3egSo9/R19/5C8Ss/1Qpv17FrkuQpzQdJ
 R17KaGKFx4PVHv+2HGS/AkyySzwT1+mYG2GA4S8GlM0cvqqPiDjl6Z4cYa0ciqX0ZaUW
 kTjrUZEddF78E6elPmevDgZtQU6367DonkkPeAkPs1HcTOl2SUEjbc1MH6QQdc5rikva
 1ZSPii/RuYNN7sKKDM2fGOyyKumqOIbYcz6cKUFEBL5OYxvoyPREFEl1SlPoxPt+j/Es
 FJWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MMPUB+HHzN7dKOqTTqqjytQFC/PcyTkIQMgPj4MylwE=;
 b=qAysOuJKBW5MYzUJ4Igab/a+iMkDEFbQGtCRa0/pPu7ovZDexCkKG9p0raMRoI9YoJ
 ruWQ6YbnPB6C24iAcgO8n8BBYfjGu2545UZMzrlIAHSbRYdMgVmCM8wFRSCdmHBpGSOx
 F4ehJszTBbincNG6U6k/qKFXw91amjP3Pi0v+FaE+h2e9yO7Nq5NvewdXjmAuTTo/DMr
 jE9YQk6c4nPVqn205WHTOD6ok5NhUpepoGC398HgZV0ueGM/AUWDVn336CSbO3S83krt
 HJdlhU+A8mERWAcK1tT2TCC+xrHnhaVQ8CZVIjSp0xQS66qo7Dx9520fhmIDh7GsA4oN
 ezoA==
X-Gm-Message-State: AGi0PuY7Zup1qULX7ngvP5+/251lVmd+oZHwQK3ON/zvX4IEFMI1UD9n
 X+vnryNfwRq8r+mWnGKg4Ufv
X-Google-Smtp-Source: APiQypKPJDqADLLcdB+8wh5E+jloFCkTq+rOrF8OZA8T5WTGxGxpOi/+ptvpg/Qra9KNyK/yauiv1w==
X-Received: by 2002:a63:1d52:: with SMTP id d18mr19243226pgm.443.1586155803350; 
 Sun, 05 Apr 2020 23:50:03 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e80:687d:9124:eff9:55e8:1727])
 by smtp.gmail.com with ESMTPSA id o5sm9894098pgm.70.2020.04.05.23.49.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 Apr 2020 23:50:02 -0700 (PDT)
Date: Mon, 6 Apr 2020 12:19:54 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 11/22] ARM: dts: stm32: Add QSPI NOR on AV96
Message-ID: <20200406064954.GE2937@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-12-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401132237.60880-12-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_235004_956193_977F6E9B 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

On Wed, Apr 01, 2020 at 03:22:26PM +0200, Marek Vasut wrote:
> The DH Electronics DHCOR SOM has QSPI NOR on the SoM itself, add it
> into the DT.
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
> V2: Use spi-flash in the DT node instead of explicit model name
> V3: Reduce the SPI controller window to 2 MiB, which is the flash size
> V4: Rebase on stm32-next
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index df68768e8a12..5831280f78ee 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -21,6 +21,7 @@ aliases {
>  		mmc0 = &sdmmc1;
>  		serial0 = &uart4;
>  		serial1 = &uart7;
> +		spi0 = &qspi;
>  	};
>  
>  	chosen {
> @@ -312,6 +313,25 @@ &pwr_regulators {
>  	vdd_3v3_usbfs-supply = <&vdd_usb>;
>  };
>  
> +&qspi {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a>;
> +	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a>;
> +	reg = <0x58003000 0x1000>, <0x70000000 0x200000>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	flash0: spi-flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-rx-bus-width = <4>;
> +		spi-max-frequency = <108000000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +};
> +
>  &rng1 {
>  	status = "okay";
>  };
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
