Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B9E198B52
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 06:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jaqOBoaMYHCOoY2hG0fvWTFko4hVQDJCG0nOyoj9UMc=; b=QchfZlVU9cZozp
	8JzDu9r9E/5kSHiwTojAEywNGYV68N4lYGbmizY+TuZiIpvk2AFMERVoBDvv63KHJ+fEkOcQ5/fC3
	8FhapNyAKWMIJBaybwHkHCkvDIBjZ06/82g37xP4GMJl24nZmyglqNC8Z7WwPEarwfPtXlY5hDd1G
	LrysX5OhWvY0T1Dl+041FjNg6FCBoLR19cKv8vu/jzXpVY2OtCifj9ZNonj9NSsF7nu2DZXK+6lVB
	oJqxUjWV4O5+ScCG02IFK2cBYbwJLXjkzxsAsXh+gaJ8SebL9ClNj2TcfHf/HTMZvQ7awhWHFZ9rb
	pWk0kSjfIeWOvRRyxQnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ8WZ-0005cE-1Q; Tue, 31 Mar 2020 04:29:15 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ8WM-0005b0-2R
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 04:29:03 +0000
Received: by mail-pj1-x1044.google.com with SMTP id z3so539728pjr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 21:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5+VD0VICqUDZ03RMPOJuD7+hulAAX+AM3uc7ye10aKA=;
 b=GsimS701sIzESQKuziB6u9ixVUwAmnldR4qeoklJbr0E8sJx2719bbNv+QUdDND4oR
 srlPN3NAC0gQaTuo5XKI08fZONnJjzT0BfXFRzXiQMUsPhKdNzm2Ih6DWWNqujxZsXnw
 QVPvHRu50ZYRFqUFJKuzdWBCN6zTvzg2QCopKyGlx6DsyVitx/OSbWIejNWwDqqwScLt
 pFNt/P2i+sZ1Ff0VKHaU1NntDtDoDNLfu7EBz4FbL+Qu6AlIKwmdzDG//Tv6AyzNor5i
 IMSnju/Jmje5HIU6QcM0cG4BQNpHQH1L3XGE3RtG6/AohUEAlBLyJ3nS7nZlOIuLC/XN
 l89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5+VD0VICqUDZ03RMPOJuD7+hulAAX+AM3uc7ye10aKA=;
 b=CD/qtyjP9q0+jQRMkLqxvpkAhMuwRYjdDOVYee1+KULeQULlfDrwfasGFkIJNNHFO8
 ys77Fz6uP7+8LbP/houTZ6KTwiaYc8mXBilnpN93IeS88+Hx4PyBGZmeYIFxHDCI+6n+
 8mRYSwyarqZjgqQc65ttrrJ7FF0RLEXsj/UpX0mIzdzkl1gEkEQsjJE3L/BZ3MQxPgyZ
 s2Onx6YhHuVGLtfLMixORMB/QJU6LlChn7kICu0bFS3GHfx8SHxxRDGRxaF85Vm5d9dC
 BzllosQ1WmvLuJPho187GflzXw758L6i9LMgZDZoOMD4czW+Bo/Iz3Cu8ead21oBhtsp
 VDVQ==
X-Gm-Message-State: AGi0PuZQbIKYvTmwC02B7CAmtrd0NtCWaLhXFYmgXWwBhGNId0I9VXmZ
 5DdTitdpnM/M60BN3mIDXoo0
X-Google-Smtp-Source: APiQypLlBEVTSevpSbON9G/e7tnribMpmdu34SknCXBWtlzGH9m9Giq4JH+LY9Z256zMD9nqb7pfKA==
X-Received: by 2002:a17:902:b682:: with SMTP id
 c2mr2415794pls.36.1585628941054; 
 Mon, 30 Mar 2020 21:29:01 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id 21sm10837668pgf.41.2020.03.30.21.28.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 21:29:00 -0700 (PDT)
Date: Tue, 31 Mar 2020 09:58:53 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 05/22] ARM: dts: stm32: Add alternate pinmux for
 SDMMC1 direction pins
Message-ID: <20200331042853.GG14274@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-6-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-6-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_212902_128222_69319B48 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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

On Tue, Mar 31, 2020 at 02:56:44AM +0200, Marek Vasut wrote:
> Add another mux option for SDMMC1 direction pins, in particular
> SDMMC1_D123DIR, this is used on AV96 board.
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
> V2: Fix SDMMC1_D123DIR AF, should be AF11
> ---
>  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> index 4569dc16e5a1..8ac534c5bdf6 100644
> --- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> @@ -920,6 +920,30 @@ pins {
>  		};
>  	};
>  
> +	sdmmc1_dir_pins_b: sdmmc1-dir-1 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('F', 2, AF11)>, /* SDMMC1_D0DIR */
> +				 <STM32_PINMUX('E', 14, AF11)>, /* SDMMC1_D123DIR */
> +				 <STM32_PINMUX('B', 9, AF11)>; /* SDMMC1_CDIR */
> +			slew-rate = <1>;
> +			drive-push-pull;
> +			bias-pull-up;
> +		};
> +		pins2{
> +			pinmux = <STM32_PINMUX('E', 4, AF8)>; /* SDMMC1_CKIN */
> +			bias-pull-up;
> +		};
> +	};
> +
> +	sdmmc1_dir_sleep_pins_b: sdmmc1-dir-sleep-1 {
> +		pins {
> +			pinmux = <STM32_PINMUX('F', 2, ANALOG)>, /* SDMMC1_D0DIR */
> +				 <STM32_PINMUX('E', 14, ANALOG)>, /* SDMMC1_D123DIR */
> +				 <STM32_PINMUX('B', 9, ANALOG)>, /* SDMMC1_CDIR */
> +				 <STM32_PINMUX('E', 4, ANALOG)>; /* SDMMC1_CKIN */
> +		};
> +	};
> +
>  	sdmmc2_b4_pins_a: sdmmc2-b4-0 {
>  		pins1 {
>  			pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
