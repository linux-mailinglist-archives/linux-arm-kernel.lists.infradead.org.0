Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2785119F074
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 08:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xq6mXu736T6EIzlsEBNyxFh8tWHSiT+yVyXKH3DZ9xU=; b=HmEZ7aMtdnpdzI
	qHxWPTrQFaTQ6/CoO4fbaJg7r+GTxSqeSyV+ixYtghvNtGFTvUoD0X4CV848ij0MAMSuKAoxyyujO
	dQpv312/eT3BVX48LdDK2AXeP6ESQqpijahD/hCqbP9SX6hnoK4U4GHwaSs9U6JeDbl2Zigo5+XDt
	cpJEnh5Db8VNKQjfCLjZjpbQGiVZVakYXzWo0ZmWewkTpZg+hBFvRMFHzB16gqQSvJGVZdljnR44C
	5VvXWAt2COdwGobXZ2gJlnWUvPqqReBhS6fj+Xx1cBbXSqa83a6eZbMRhNP57i9a0E0VzH9FgMfZa
	f8+ob+9MLVmehxNiOe6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLLXi-00088k-4r; Mon, 06 Apr 2020 06:47:34 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLLXb-00088N-Bx
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 06:47:29 +0000
Received: by mail-pg1-x541.google.com with SMTP id o26so7071020pgc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 23:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7IbKIaDYv+A6RC+8Z7mXi6t6xd0xICoZSFFChfwjGhs=;
 b=SlkYekdhHRkmDMtebWAZ4kHi24vIhUbGq/Pzcs6FC70yFE4n/BWvBsQe64NJw93klR
 8lOYIO16Pzo8sptdCkjDKz5dzojHcmymjosQ/J4/Wa8uKNkoakjexDLenSmw4T3frbTE
 8yKgzDq5wYXpasb4vFYoOB0uPd5Q2HmWVb3vYj4q4OTSBqt+kEn6Wu5u39OKDkwRJ2xQ
 dkW49QLFCdQYb7UJlslbKn1rfbyPqXSlrY1dump2wXolSJUdht9zjIC2FxEYePeAoLHu
 UxysWoUx+iB9S+ac2wNZ6mmzI1XUxzb470oobHkwP9BlhJFMLnwbw1MMD2eA1NgJMTId
 78JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7IbKIaDYv+A6RC+8Z7mXi6t6xd0xICoZSFFChfwjGhs=;
 b=VtypXsagqeamc6f42odhu+sGvesvs2swX9aVXSNN8Fa61rWDzyb0k94HZjwgbszYOa
 3JZbOV8adK+mQvkFuNVrzKl4rtiU4iUXLUaCrpj79XDk2YCpcXiDX15Hf8vcY5bwSA9H
 hT04rkqxOCxKqJJuCjnsqod9Ykg/EFDgTQzMIhF5rTFjgWzwuYAUWwHbexgb9F8xqOPo
 NYGyin7fF+tbF69bVFSq9Q4730B801B8ggb4m40ZIohbP9HQH0mB5JxyiL0zeMn4NU3x
 0LTqF4nwYAnjZZbWVsk3UcmKQbIjFaLUySkdcxMUhnmGTgU8SzrgKcuO45hxhBgmUYVr
 gfKA==
X-Gm-Message-State: AGi0PuZrQ0HH4wgSLyIWjp5iQpzkhTGoNrzqtmZr1+ntWU1GoQp3sZYD
 KLABnPKIbY8Ub++aNCpRidSjfTby7EvI
X-Google-Smtp-Source: APiQypIiPabfsmyC0r/Ej0hIZMDFRtGEXLWo0N70ElIRI0xilj6DqQDSVD766uvUgCT8ey5IO9JHIg==
X-Received: by 2002:a63:f45:: with SMTP id 5mr19311831pgp.31.1586155646613;
 Sun, 05 Apr 2020 23:47:26 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e80:687d:9124:eff9:55e8:1727])
 by smtp.gmail.com with ESMTPSA id w24sm11302427pjn.14.2020.04.05.23.47.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 Apr 2020 23:47:25 -0700 (PDT)
Date: Mon, 6 Apr 2020 12:17:18 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 10/22] ARM: dts: stm32: Add eMMC attached to SDMMC2 on
 AV96
Message-ID: <20200406064718.GD2937@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-11-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401132237.60880-11-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_234727_925307_3E92E8F9 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

On Wed, Apr 01, 2020 at 03:22:25PM +0200, Marek Vasut wrote:
> Add DT node describing the eMMC attached to SDMMC2 controller
> of the STM32MP1 on DHCOR SoM, which is the SoM soldered on AV96.
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
> V3: Connect Vcc to the enpirion output instead of 3v3 directly
>     Note that this patch now depends on:
>       mmc: mmci: Only call .post_sig_volt_switch if voltage switch happened
> V4: Rebase on stm32-next
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index c824ff4e6127..df68768e8a12 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -336,6 +336,22 @@ &sdmmc1 {
>  	status = "okay";
>  };
>  
> +&sdmmc2 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc2_b4_pins_a &sdmmc2_d47_pins_b>;
> +	pinctrl-1 = <&sdmmc2_b4_od_pins_a &sdmmc2_d47_pins_b>;
> +	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a &sdmmc2_d47_sleep_pins_b>;
> +	bus-width = <8>;
> +	mmc-ddr-1_8v;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	st,neg-edge;
> +	vmmc-supply = <&v3v3>;
> +	vqmmc-supply = <&vdd_io>;
> +	status = "okay";
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
