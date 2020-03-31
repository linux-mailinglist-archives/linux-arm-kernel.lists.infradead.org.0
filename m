Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6CC198B25
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 06:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NuvEJp6B64cKgVvyz/T1ul7eDyGdFUIhY9Yi0CrRDg=; b=axAG3dKMwvRXpK
	5iWtz2SoRibTFamwWFgw4Na6euO0qtBb4xvYW4jdCxvi7MExr4TZ8bPrxvVVkKRsQ3lgVSHlVL5mB
	f3nFRG1BmjrgxNcFflHbJv+VIPma3J2ybonyntERMZf4MBq99ayCQjQeJdYtcdhaSTV7kCHzIPc1d
	MHOEg2uggc5qb+n6PUShpqW8nMuDETUX0L39vc3SYK/Iz1sEenwqeDwD3owF94c/Yd1WDuz/ojlwU
	2uQKwA2ddmf5Ef915IEpb7JVPsgRytWHUebIZivnHnhsLe9ewoS2tGo+Nhh/rhWsprWVuvdvXxtW1
	IAje9E9RM63H7UVgcw3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ8QG-0003Kd-8u; Tue, 31 Mar 2020 04:22:44 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ8Q5-0003K8-Nh
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 04:22:35 +0000
Received: by mail-pg1-x543.google.com with SMTP id a32so9762877pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 21:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=K25kdwUJcBgot3xI/Fo/RXxUOUW30/HWq7xi5HWBpBg=;
 b=VG9Myz+HLLWJWNvFmKQbCzAFHo6AGuGzzU2zoN/qW/wvqUHc2AEiSlM/JX1oDzIbCK
 Yr1pkNrD6NClX6ffF2LkgYQf52zvGzxugc0X1j1CZJKXhxb4K4t6OmAcSw4Lx/wvKGPz
 BAP9/+Rmr4xaGo4JWqY6kIGYfKhKuKjHV4WpQ6Gvrdnh4Y9JO2dB4JazhElwji5z2TPX
 tmhLO59cdHIP68iRlkVYGTUmgTreNzHBSjBtE3dZrJUahtS/G9G4xTolscrMSJ5eKg/h
 5RL+1CKY7tFq1395IRNi0OU76VBvRU5bldubCOnEi8ghYAzTcOjnX9c7xH3Ku7uDN9C7
 x+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=K25kdwUJcBgot3xI/Fo/RXxUOUW30/HWq7xi5HWBpBg=;
 b=QKKucEYi/Ay+fRceRSl5XTqWvf99ZAVqNyKxni4UPm7MlVZyhwDM/klCB6Dt1mxNX3
 Yzgk1PSKaccFQmz4PDlWBlBTKEn3VZr6HrJmKo1ykqABZMdL6XN/3BTdlYSlsD5K1kK4
 PPwGJYauSxlpWq/aQ4w0DR5ERrVjkx8X7/sBfSrl8sBvoGM+scexgi7mmScu/qdCkQ9A
 /k7bcVwU2K64FfPllKV6tEtPf6q9TPE3vAqNeAPKrTtZXko7KmICGu8Uwibi+0QAjH6A
 d9ubwM/w0yovjhlSnOTu14sJhr2yZEb1MD0jiAVeNZCT+7TjxUt/knX0qQXn/Ci1D5EY
 NdpQ==
X-Gm-Message-State: AGi0PuYu4/antqJMMl+Ztx/8BoyjejZaq6LTIZu5JcMWLBYj5n1SzYMU
 fqTnSv+4pAoWrbGThY76mSIQ
X-Google-Smtp-Source: APiQypKyrcd55/sX4Gjlmr+UJBnz2TCP2GbWTtQzYH+HuxEM9tpEkD71MNKqLnCPpe4Ud+wmCXOppA==
X-Received: by 2002:a63:2263:: with SMTP id t35mr12545007pgm.253.1585628553100; 
 Mon, 30 Mar 2020 21:22:33 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id x4sm831960pjf.23.2020.03.30.21.22.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 21:22:32 -0700 (PDT)
Date: Tue, 31 Mar 2020 09:52:26 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 04/22] ARM: dts: stm32: Add missing ethernet PHY skews
 on AV96
Message-ID: <20200331042226.GF14274@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-5-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-5-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_212233_773524_66810EAD 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

On Tue, Mar 31, 2020 at 02:56:43AM +0200, Marek Vasut wrote:
> The KS9031 PHY supports configurable PHY skews to compensate for
> the board routing. Fill in the correct values.
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
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index a568d3824cb0..e58653ccb60f 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -96,6 +96,20 @@ mdio0 {
>  		compatible = "snps,dwmac-mdio";
>  		phy0: ethernet-phy@7 {
>  			reg = <7>;
> +
> +			rxc-skew-ps = <1500>;
> +			rxdv-skew-ps = <540>;
> +			rxd0-skew-ps = <420>;
> +			rxd1-skew-ps = <420>;
> +			rxd2-skew-ps = <420>;
> +			rxd3-skew-ps = <420>;
> +
> +			txc-skew-ps = <1440>;
> +			txen-skew-ps = <540>;
> +			txd0-skew-ps = <420>;
> +			txd1-skew-ps = <420>;
> +			txd2-skew-ps = <420>;
> +			txd3-skew-ps = <420>;
>  		};
>  	};
>  };
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
