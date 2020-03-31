Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFCB198B64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 06:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VemxaRG5hOJQ4HnoTH++gGD4LXJpW66Uh8SyvUa0sY=; b=pmQ2LRsS9H/7Lm
	g5TAhR+nHFk6+G3r7zkh0YzljbSvxy8mNQNvaFfMA5i+Si5G5Dzfpjfd7JR+ogfuvOhtjfciT0exm
	ekGfKZrWVBOu0FLM+8Ylifs7xTvsu+4BhM+SkdV6J5yKv2NmTqk75M4fUjsCOtrPjo2jaHYVs1fIm
	qZ9wdc09t0z1hH6UT3gubSNW3Fgdpmk8x+RpGZNJN44m87DCIVJ+dUV9Qu8Zmui/Fn/qTz9tpyodm
	1q1AbDhptOQIRfOjeaKfgxFTyhH5acnpwcXgBHPdCXtNlLb8n8OYlIA0nZOpjwZmPhJDr11zyJ9Qj
	5aRH5wBe8Krbofadkhug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ8kU-0002pc-RI; Tue, 31 Mar 2020 04:43:38 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ8kM-0002pC-3A
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 04:43:31 +0000
Received: by mail-pj1-x1041.google.com with SMTP id l36so557601pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 21:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zeAZTOcQMXT5nA+5GmtSltIMIUp94GmpV1W9h0pkYMY=;
 b=ev3qAl7oT4/8F1UfZg/770ctK4+PYkaLVYDZT5o5YPyFUOXH2win/o1ELDSpbC2Yyz
 xOWMZ+4V4cJO3io68zdwBT0iaCSjzDLFpFbWhxjLEqPkgoKKjSCoZ/nkN0VeutZP+9di
 jldEHu7uR4xaeGn+tP0k8r5p8BW7hARhTWvFtTd3SIsI7jINcnTD/15fPsG2+iVejD6k
 17S9LK+f+N1CSOdhEH9IYPfP+yV+sjlEIVlZSjYw6lcWUoBMtCNcnqw9bz6l+ZLETNxu
 e7ftamOKGHD1jlvul1nejz0bvJJM2l3VX7J56nmeo2EqDxcCC3SLXVKKGYCoVvdYhgdu
 jeEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zeAZTOcQMXT5nA+5GmtSltIMIUp94GmpV1W9h0pkYMY=;
 b=eDBF3qF9MIX9O8YFR9tOh513bi8E2g3lgqlfReosJfPfSD5YZ00WOtzbe06xjz5ou9
 W8LJ4Kp7ghsVZbdwZCbvYwJttzBNUZNuTYZxczk5SZmJeoJrdXhgW1YjweHPLGUfk3uY
 b/y4ikoO/DPq+4Ep5/P4A3CfmqUssFW+0EU6GRVas9QCVdMYkVYhvJxCMsD99aL2MgXT
 ic19jFcKbUz+5LXT9fBl3G7Gqky7l0fUY9Wld4IAHypIEzIZfPHJJxOZcj7lyHpcNjyu
 QRrYiKpzt8yFtvXVQ52b1FFmGuFlzdqHxWzjVQiWRFoEMRfrxKK3pLJig3iwcinjG20Q
 5eWg==
X-Gm-Message-State: AGi0Pubpf8WfC1bFVcJhonLTwcx1ERz/KSPqekfm8ULlKXDaIxENZB7I
 Ii0UFUsiFNkczxQ9Ginw4NtS
X-Google-Smtp-Source: APiQypJRpzBdJ1JJdERj/vam8ih8UjRqlNMs1t79AVs5fpylf2A+UsycAIqR7xycx1qEXq5IeWx/iQ==
X-Received: by 2002:a17:90a:9f88:: with SMTP id
 o8mr1664774pjp.145.1585629809075; 
 Mon, 30 Mar 2020 21:43:29 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id y3sm11358793pfy.158.2020.03.30.21.43.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 21:43:28 -0700 (PDT)
Date: Tue, 31 Mar 2020 10:13:21 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 08/22] ARM: dts: stm32: Add eMMC attached to SDMMC2 on
 AV96
Message-ID: <20200331044321.GJ14274@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-9-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-9-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_214330_156247_B391DFDB 
X-CRM114-Status: GOOD (  16.60  )
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

On Tue, Mar 31, 2020 at 02:56:47AM +0200, Marek Vasut wrote:
> Add DT node describing the eMMC attached to SDMMC2 controller
> of the STM32MP1 on DHCOR SoM, which is the SoM soldered on AV96.
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
> V2: No change
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 04280353fdbe..6c34a003c3f6 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -333,6 +333,21 @@ &sdmmc1 {
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
> +	vmmc-supply = <&v1v8>;

As per the latest schematics, vmmc supply is 3v3 and vqmmc supply is 1v8.
With that fixed,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

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
