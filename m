Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC2F198C80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 08:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPm73af24VgtVPE/hiwS6kg5TbXUpUKXFR0GUFXZVXE=; b=nwq31WjGQyHlMG
	LcRMN32EfPXj77I5ToqpYCjxC51+ZB558nukCl5lnKo0ET6lAkmlPLVMRedGgo4lUhNglOGs2OgeE
	AWoY1sMLvnYkvPZ6YwgDdV2OVl8+om4/E2GJWoPm2PSMXjcAyY+j3/sTkFzWMW9oxWiZ7xUpkeCZs
	91LPUasebt5XXNcfMt2D4VdWEFB9c9RxnD/hYeXa00wrATBfCKXd6U+sapKvIxkBixkVr0/N8VMy/
	WnX9i4S1GgvCC3lGra+3yo4ltbPOuhVjnHbED6bc5lCs01E1tAVnf/oBEDmTag4+nfxgUHaNCJ+EZ
	a3czdXiGR6jRhy6/wisA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJAfn-0006dg-O7; Tue, 31 Mar 2020 06:46:55 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJAfe-0006d7-Bv
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 06:46:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id w3so7758206plz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 23:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ozvP2af89tauDdl3uwnfBwoXG01io6pHPiam1L9z8h0=;
 b=joKWJfXn0RRBCCYer0QQpI5clTHBMrOBU81FoGWbvYbTztY9663GnwVeTNOWbjukiN
 pT1xT8xuMA1a8oPVgqshm+GFz+MSKuf0u8oj9j2kgqIKKqhrIWfZFzkJZeXqEJowmkdI
 ByQ3YUogfrpOdaZyySGP8KkXZtFyq11iuz640qeJg0mg9JZih7Sg2aZCDjPHaviua5d/
 V54oWU/nMHrGvRFab0joFjvLkLgd5R/Hed0pnHNEnAXiON/vCitkoEHQucLku7UkyFya
 LaNWAojX8AGC7+j/zS3iP+/iEGR3lcmR5ohdl+KvE8LB+kbmOvdDXWB4vXSoTkiaHsDp
 Jpwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ozvP2af89tauDdl3uwnfBwoXG01io6pHPiam1L9z8h0=;
 b=a3wrl72Xh3yVJxj4qpiQRS2TH5s5F1O66ZaDsrlZnrGxJQ9OiVXuRZ3iBjjuqK4qMR
 MMAf+N3CV5aqEysZlGibL2V9TSUHBSL3y2X0JhaEtIyY2r7Ao4TkCwPj+SSv+fupvmye
 w0MwEY3Bks9wfVRiKOMcH86JuejhXHjWjar1whFmN5p8mH3acFuaQVLfjx5xT4hnOqPc
 1sziMl0H665uLJjDyX6AKUOJSku0TDFP0KzhCCkBJ6cg4kxjtDLV5wO/o8ACa7WqqxRh
 CQQ1dK7UwJi8Qgj3p2UhGk1SQDgq496/FbdebiB01+oRiSYXUGPdDvgDJ+2lIgi8gFDQ
 I/Gw==
X-Gm-Message-State: ANhLgQ1D/HNDiTTNfou8vefpc8Hmu4zRmiZVNW36pSThgaYlgvk7z4so
 1AZkex5xn1xbdLcB8NCV1OW5
X-Google-Smtp-Source: ADFU+vvgBzkgIbpFBd6cy7s7oA9i/Y2hvnVHA/LEq2oeOUqVKEAGpbz9kF7MFwbhGRlCmXwub+2Xkg==
X-Received: by 2002:a17:902:b113:: with SMTP id
 q19mr15697950plr.202.1585637205753; 
 Mon, 30 Mar 2020 23:46:45 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id d26sm11641709pfo.37.2020.03.30.23.46.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 23:46:44 -0700 (PDT)
Date: Tue, 31 Mar 2020 12:16:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 16/22] ARM: dts: stm32: Add alternate pinmux for
 USART2 pins
Message-ID: <20200331064638.GE17400@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-17-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-17-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_234646_416801_72249A1E 
X-CRM114-Status: GOOD (  15.45  )
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

On Tue, Mar 31, 2020 at 02:56:55AM +0200, Marek Vasut wrote:
> Add mux option for USART2 pins, this is used on AV96 board.
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
>  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> index f3f9fc4a3503..4f3b40d5751f 100644
> --- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> @@ -1204,6 +1204,30 @@ pins {
>  		};
>  	};
>  
> +	usart2_pins_a: usart2-0 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('F', 5, AF7)>, /* USART2_TX */
> +				 <STM32_PINMUX('D', 4, AF7)>; /* USART2_RTS */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('D', 6, AF7)>, /* USART2_RX */
> +				 <STM32_PINMUX('D', 3, AF7)>; /* USART2_CTS_NSS */
> +			bias-disable;
> +		};
> +	};
> +
> +	usart2_sleep_pins_a: usart2-sleep-0 {
> +		pins {
> +			pinmux = <STM32_PINMUX('F', 5, ANALOG)>, /* USART2_TX */
> +				 <STM32_PINMUX('D', 4, ANALOG)>, /* USART2_RTS */
> +				 <STM32_PINMUX('D', 6, ANALOG)>, /* USART2_RX */
> +				 <STM32_PINMUX('D', 3, ANALOG)>; /* USART2_CTS_NSS */
> +		};
> +	};
> +
>  	usart3_pins_a: usart3-0 {
>  		pins1 {
>  			pinmux = <STM32_PINMUX('B', 10, AF7)>; /* USART3_TX */
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
