Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D883E198C72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 08:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrp3qL7uBff4lDNEdk7HpjZLQNCeP5COI7Jup6ELwfg=; b=dW09gP0gLwc6tU
	ikAIlZmLyJ7+r63Ai6+9Fy32pyCO+3TGLZl9rKv4aji2i7WXq6KczkgxFsZY5ar78vje/zLUce+61
	IelMarq+8Cvvcka5nxC9UnXaHka9ZuNABvzJuoyLIC8dJFy7WrIl5aFPEUOcYDs2bXC/IYtKzTTN8
	OSUuUPSbP4MLctk+3gz8VbVT+EVlqe1goF2HLqAGJpcmFRS3/b3FHvqSxRshCBxu/KiGnPiih0ODH
	ELV3z4RatlXEjmSyXGcivX9uy9jHhEe1wrZlAWVuhSjva0ugifVVvt0g4lZFbGWpaddLEsW8LspS2
	f3IDQq94ySi1f4PBVn0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJAa7-0004EV-Hn; Tue, 31 Mar 2020 06:41:03 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJAZy-0004Ds-UF
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 06:40:56 +0000
Received: by mail-pj1-x1041.google.com with SMTP id w9so667669pjh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 23:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NMixT5EyaYc59LtBYv/IS9+oVWN+dyQvKFglLW9hNR8=;
 b=PrNSmbVf32WLlENs27teTJaSQfj1vc/sbohunckkJp9nTim8JjO3nHFo9BSawhBL2S
 zclu+fux4K2RVn+D05aK4GziYUlYU4VjvpUAlEE8u6nqipiTT7cwPjd6eXV6RTRK0X2M
 u62oZ841WNHdbnh0QdCTqn9HZTP6m4WVOr5LsgN4FUj/9GxuYqhPdCu621JxKjZIak8e
 qaB5t+HhxPcBJCw4M5Au2lBHjDW0FZZrkQqkB0tfSTKe06+BZqBtkyG5QlMHCb5dNVI9
 s+vWTcwT9hhvV1hE/5AIUmLd2PjmoAUphX5jUEOvZttQHjqlqKFzEso/dE+taTXHxLPL
 FPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NMixT5EyaYc59LtBYv/IS9+oVWN+dyQvKFglLW9hNR8=;
 b=eRIgkKuLxlUCNWQwCNQKN+USSOSZMYlH2scpZAFZP2NcWIXtAYZ1GwjTecR2bweIm3
 Jx9cf3aJNWqs7S7UMHfJ6jajEgnxYQinzRYRrw7NNe1XOsJ4y7emJTnvIZFAuEyp5+si
 UiHkBNKl7I1hnmAJullfwFvJGpcoGXC8P5FMKRWh3erzjO9iUuctrZTX7i+pJkOgIrKJ
 qqMnicsh8/Zo+76S2eI0ziB4YZ3MUF4CMlJP6ylPEe2cDqsaO+Wlb580Z3gDPeW+Cibi
 he5NpnQoSY6BWErTbmYyFuEimYI4bbrx1kCL7RnRwjUV+eGuipqxZyObf0Gr+wR53Ii3
 EfUw==
X-Gm-Message-State: AGi0PuYBHQlMz9SSOoKroCz7zoB1vv8YbqU0Y84SSIhN7fWZD4nM3paI
 UFJ5V+yIkrj0cravMuWUNojD
X-Google-Smtp-Source: APiQypINjHafIOsXhyHeCgBp4iX7F7FlFDW8eO+YYZJby8ZiKp5j6fUGl1wRfmCmgCq9cp/Q2gPwlA==
X-Received: by 2002:a17:90a:4d43:: with SMTP id
 l3mr2013351pjh.165.1585636854015; 
 Mon, 30 Mar 2020 23:40:54 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id s22sm658195pfh.18.2020.03.30.23.40.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 23:40:53 -0700 (PDT)
Date: Tue, 31 Mar 2020 12:10:47 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 14/22] ARM: dts: stm32: Add alternate pinmux for
 SDMMC3 pins
Message-ID: <20200331064047.GC17400@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-15-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-15-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_234054_986543_30C758AF 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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

On Tue, Mar 31, 2020 at 02:56:53AM +0200, Marek Vasut wrote:
> Add another mux option for SDMMC3 pins, in particular PD5_SDMMC3_D2 and
> PD0_SDMMC3_CMD, this is used on AV96 board.
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
>  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 54 ++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> index ec3621e0ff08..f3f9fc4a3503 100644
> --- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> @@ -1137,6 +1137,60 @@ pins {
>  		};
>  	};
>  
> +	sdmmc3_b4_pins_b: sdmmc3-b4-1 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
> +				 <STM32_PINMUX('F', 4, AF9)>, /* SDMMC3_D1 */
> +				 <STM32_PINMUX('D', 5, AF10)>, /* SDMMC3_D2 */
> +				 <STM32_PINMUX('D', 7, AF10)>, /* SDMMC3_D3 */
> +				 <STM32_PINMUX('D', 0, AF10)>; /* SDMMC3_CMD */
> +			slew-rate = <1>;
> +			drive-push-pull;
> +			bias-pull-up;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('G', 15, AF10)>; /* SDMMC3_CK */
> +			slew-rate = <2>;
> +			drive-push-pull;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	sdmmc3_b4_od_pins_b: sdmmc3-b4-od-1 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */
> +				 <STM32_PINMUX('F', 4, AF9)>, /* SDMMC3_D1 */
> +				 <STM32_PINMUX('D', 5, AF10)>, /* SDMMC3_D2 */
> +				 <STM32_PINMUX('D', 7, AF10)>; /* SDMMC3_D3 */
> +			slew-rate = <1>;
> +			drive-push-pull;
> +			bias-pull-up;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('G', 15, AF10)>; /* SDMMC3_CK */
> +			slew-rate = <2>;
> +			drive-push-pull;
> +			bias-pull-up;
> +		};
> +		pins3 {
> +			pinmux = <STM32_PINMUX('D', 0, AF10)>; /* SDMMC2_CMD */
> +			slew-rate = <1>;
> +			drive-open-drain;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	sdmmc3_b4_sleep_pins_b: sdmmc3-b4-sleep-1 {
> +		pins {
> +			pinmux = <STM32_PINMUX('F', 0, ANALOG)>, /* SDMMC3_D0 */
> +				 <STM32_PINMUX('F', 4, ANALOG)>, /* SDMMC3_D1 */
> +				 <STM32_PINMUX('D', 5, ANALOG)>, /* SDMMC3_D2 */
> +				 <STM32_PINMUX('D', 7, ANALOG)>, /* SDMMC3_D3 */
> +				 <STM32_PINMUX('G', 15, ANALOG)>, /* SDMMC3_CK */
> +				 <STM32_PINMUX('D', 0, ANALOG)>; /* SDMMC3_CMD */
> +		};
> +	};
> +
>  	spdifrx_pins_a: spdifrx-0 {
>  		pins {
>  			pinmux = <STM32_PINMUX('G', 12, AF8)>; /* SPDIF_IN1 */
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
