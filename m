Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF24198B23
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 06:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WA/nVGjv4MR9Q+0SU1bnJNJcEa3kjoEe7Df2p+jAzkM=; b=A7MC86CEqYC4BT
	+noQoLuBiz24QGVxtvD19Q+R7RKi/BDvtThYcORX2ByVrOxZfP7gZxguhnKoKI3q/kSUIIdgu7o8W
	gVS1kWYGJP2aBiqLbuhNRD4OLc/p0vI1NmYagBOucMhlPTOhPOfJikL/8JPgAiZV70D2QkFZCJ4EG
	6V9h5OZSLJQaGtdHXBcevGwlQzi4zPHNy4BO9f3+z5JN9vRuEN/SqScBpsxd/o4H+kZlCrvsmzhPM
	F7Z68EYKMBF9iJZt8wBXr1l9M+Y3kIgpZeA8vvoeGsH5hp/FFxxH9jF3S/p/rsVy2N1cNwMGby3nc
	iZegDV44Ac9sOl93jnMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ8PH-00034G-T7; Tue, 31 Mar 2020 04:21:43 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ8P8-00033k-VM
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 04:21:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id k15so4588074pfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 21:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=k3B7w4bhrBAg+tJ7Oq6jA/zTQXLHWO2Kq0NSUIUVhf0=;
 b=tE8Z7RKWxIuJUwJIOS8v8w5J4WKnYNbmyAz9bROWGrmJnH4AtP86Dxd/+0+XZcMvi+
 x/Y5Y8GqmBJOa4MIqgFgMVVuBgv3nzr9qtHaMmaS8yzsT/yI6p3VkdPHo04d/pi1TTlM
 iWsNsK+qTbD1FRkTsKD7rBRHeLTEmXJppL/o4Dzb+a6CZchoTGOpdLmAuIHgW1LKBpQ4
 zLRt3StzZelb4ZkG4uEUQP25tr0WYzirtTR38ZZkeyAfmngUr3u2o8jj0BHPbUG2ZfTv
 mtkbhQo4GILm4Tr6C6ihTZ2WemMFuuxPjEL5o7LdpnBEN8VSSi1mZC0eSh3Y3hE46mnS
 Ashg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k3B7w4bhrBAg+tJ7Oq6jA/zTQXLHWO2Kq0NSUIUVhf0=;
 b=DkPbxwjI7LVeCTXjhGE77DhjjStVwRweK7sGN3p+IZ1U2H9XdsR/j1AN9H2OOGGto/
 re6HkeQ6hsVwqMLflNofDWr92R4mkakXGX4Lov4IW1AcPFmVgocx2GK1/a1ppSF6G8nn
 P8VAfDf8S4UBXBeBQwiOxdb21/hAxtF5BVC8/Qi3ihP9ona/P21it2y6S4X3PUIrBqzl
 tHS7kliHFK22K3bKP6/p6jf7a0aHjck4evg0IClHAj6uHmvsoDuaD0O0AU9wei6eTiKr
 l78IutYUSy5oqhiLNdXRcAIePi6/DYzkEIyUTV0gav2h4qxRJdFwZK/R+0cTUiTBvGE7
 5Z4g==
X-Gm-Message-State: ANhLgQ0v0lt30p8Z1lhLblsgSPX8TGPKp03GtbzkF36h6Wa2QJ8ie7mq
 B96I6O+fhR0Fy86oUMnlgfem
X-Google-Smtp-Source: ADFU+vtU9x44XpdUroKCGOJR1vy+xJYJxOUsjha4D4WRir4U/dqBzhIrbBCjioOpBYKZR18MedqZ7Q==
X-Received: by 2002:aa7:8bdc:: with SMTP id s28mr17095510pfd.110.1585628493675; 
 Mon, 30 Mar 2020 21:21:33 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:630f:1337:c28:2530:7bf4:e941])
 by smtp.gmail.com with ESMTPSA id v20sm10007971pgo.34.2020.03.30.21.21.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 21:21:33 -0700 (PDT)
Date: Tue, 31 Mar 2020 09:51:27 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V2 03/22] ARM: dts: stm32: Add missing ethernet PHY reset
 on AV96
Message-ID: <20200331042127.GE14274@Mani-XPS-13-9360>
References: <20200331005701.283998-1-marex@denx.de>
 <20200331005701.283998-4-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331005701.283998-4-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_212135_532480_C4D79950 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

On Tue, Mar 31, 2020 at 02:56:42AM +0200, Marek Vasut wrote:
> Add PHY reset GPIO on AV96 ethernet PHY.
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
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 1d15b745feeb..a568d3824cb0 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -87,6 +87,8 @@ &ethernet0 {
>  	phy-mode = "rgmii";
>  	max-speed = <1000>;
>  	phy-handle = <&phy0>;
> +	phy-reset-gpios = <&gpioz 2 GPIO_ACTIVE_LOW>;
> +	phy-reset-duration = <100>;

I don't think "phy-reset-duration" property is used by the ethernet controller
driver.

Other than this,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

>  
>  	mdio0 {
>  		#address-cells = <1>;
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
