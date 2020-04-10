Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C521A4420
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 11:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0ADEY0oOjMhKIwWMh77btq2+vEdLO8vvLQ8cweSck8=; b=X3jWp1jcHilN+7
	HdhLzDbAkj8VkfoOTINtYVZ1NKcpLVPDduAGmhuUrkq7PsdA1jrMo7ZjqjzvoVq9V0dI2dzeWzGQg
	Cmlkn1nDJHhVIQFbowBUuyM6blhGUR+ALhbYK5NFhXz3qRqEUByPXG03Ya8btS4rLob3rmVO/gnfq
	8mdEMPe9C+qve9OKYpnW49Bm/DtGADib1Ez38EhPWpWuZonyQqsrfP64WwAusB/xH/6wqXExlo5K7
	b6dN5ZxqjsKxPV/g+9vMrQusgXO0lyygNKA17yw96Iqz5Dl7su0RD+0gpMTYrVHjWWZL/ASxd+gyT
	zWvlwdUrDbZ0K9YJU6aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMpXa-0004RY-7R; Fri, 10 Apr 2020 09:01:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMpWa-0003iM-Ik
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 09:00:36 +0000
Received: by mail-pf1-x444.google.com with SMTP id l1so795575pff.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 02:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fq3PsPG42pQs7vQPghfm68ekbP1cDmzNOWQtKbUdjrQ=;
 b=QMjlK+aEy3ZRYdQyeHZvfHtDOLYh66mg1FDXniVJ5I8ZsqEjJprYHdCzjlNZ9QDE3J
 tR7dEm7nLFvx7FTf/NFkPD4pfu2F+sXeEp1qtxQboYEJVuIeCg2/4J64WQOiUlsQMSQj
 8fDt3DcyPKqU/7hUtF3W4i2lUkZoZbp5ZLheOeKipujcHwM912Dudzf+HAjcvtC9snJy
 uI+ZWwu8D3odp1ukRAeKSc7ie4MuVETrcrgLD6GVw0GTCHSiN7sLYwlrMOCcSSQXcOr2
 QJEZJ8EcHJcg7Dpdcs7qjAgEPpHC2TF1WyJX9YmCO1fYQLksROeh9sBONjMbiZ6fNyhw
 Regg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fq3PsPG42pQs7vQPghfm68ekbP1cDmzNOWQtKbUdjrQ=;
 b=A8HDJWFI1+XvifFVeBiVdHdo25I5ZjeJ9xWPSYMJDAsJyrPWu60w+EvyzB2kYEaj3n
 66yBKm/U61kuwG2m+yIoaeI73AxfU+f5pp4YhJhGTot36rFnmCcyIaJDtYMVhNDhGA0k
 F5xuTqwgD3MHu7RTL1uMTXiSId6Bq6H4Lwa+12qaAeLRTiHCx0/DrKCe3dwFrm/ucXHr
 HY++gEmbZM3A68XFcPDe/RVv2vB3xjV8Nvl8urIcGI7QVeiwmSobZJ3TzFOf/bdHBEXY
 0Y/j1GbFnb3/AS9gdqmhVjJFFaMm9GDt1Pri3HS5dLA3SuZQb3jpebp9OQhIp/Jp4evX
 j97g==
X-Gm-Message-State: AGi0PubXl7E8MpN6TgGv33UOnnQrcjKQe6z2sc6KqZCN2Li0ubga+UxO
 BCVZmOXrybcAQ9DAfbS3x3C5
X-Google-Smtp-Source: APiQypIJxX0BPeeAlvhVQg0PScQbrudCvqWcwYXIPlMDUwnkVVzUy3//tbKQGuO3ttoalDzCOoH24Q==
X-Received: by 2002:a63:a34d:: with SMTP id v13mr3542486pgn.10.1586509231387; 
 Fri, 10 Apr 2020 02:00:31 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:999:4ceb:ac45:4d4a:5a11:afed])
 by smtp.gmail.com with ESMTPSA id k24sm1187859pfk.164.2020.04.10.02.00.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 Apr 2020 02:00:30 -0700 (PDT)
Date: Fri, 10 Apr 2020 14:30:24 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
Message-ID: <20200410090024.GB5723@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200406072728.GI2937@Mani-XPS-13-9360>
 <9c51236f-a543-99dc-ca4f-5113831451ea@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c51236f-a543-99dc-ca4f-5113831451ea@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_020032_660796_44216690 
X-CRM114-Status: GOOD (  17.10  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi,

On Tue, Apr 07, 2020 at 05:32:31PM +0200, Marek Vasut wrote:
> On 4/6/20 9:27 AM, Manivannan Sadhasivam wrote:
> > Hi,
> 
> Hi,
> 
> > On Wed, Apr 01, 2020 at 03:22:15PM +0200, Marek Vasut wrote:
> >> The AV96 board device tree is completely broken and does not match the
> >> hardware. This series fixes it up.
> >>
> >> Marek Vasut (22):
> >>   ARM: dts: stm32: Add alternate pinmux for ethernet RGMII
> >>   ARM: dts: stm32: Repair ethernet operation on AV96
> >>   ARM: dts: stm32: Add missing ethernet PHY reset on AV96
> >>   ARM: dts: stm32: Add missing ethernet PHY skews on AV96
> > 
> > Ethernet works fine with cold boot but after warm reboot it fails with below
> > message,
> > 
> > [   18.192842] stm32-dwmac 5800a000.ethernet eth0: no phy at addr -1
> > [   18.197539] stm32-dwmac 5800a000.ethernet eth0: stmmac_open: Cannot attach to PHY (err)
> 
> Try this patch:
> 

[   17.270826] stm32-dwmac 5800a000.ethernet eth0: no phy at addr -1
[   17.275519] stm32-dwmac 5800a000.ethernet eth0: stmmac_open: Cannot attach to PHY (err)

It doesn't work. Sorry, I don't have much time to dig into this issue so
I'll leave it up to you :)

Thanks,
Mani

> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 9fcc15b6e76d..3387d6353418 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -136,12 +136,14 @@ &ethernet0 {
>         phy-mode = "rgmii";
>         max-speed = <1000>;
>         phy-handle = <&phy0>;
> -       phy-reset-gpios = <&gpioz 2 GPIO_ACTIVE_LOW>;
> 
>         mdio0 {
>                 #address-cells = <1>;
>                 #size-cells = <0>;
>                 compatible = "snps,dwmac-mdio";
> +               reset-gpios = <&gpioz 2 GPIO_ACTIVE_LOW>;
> +               reset-delay-us = <1000>;
> +
>                 phy0: ethernet-phy@7 {
>                         reg = <7>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
