Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF7D332A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 16:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Scwk7vB7v1/KmTeP2V0dX20D9X0AqMQpznN1BoYOtZg=; b=UFwIKJG2haGu7G
	uSCKr5v9vFa5PauXqbDc35rAIBQbO5eEMgb0S1Z0ArQmmfLgkWbgL2Af8yjH+rhcmcbP+Y5/SgxZM
	lLdw2mxAr5oYjYm/2tm0tsgdBYs6OCL1pn8yvZObM1WJHQwfqmNERiIHyqr4pxB3olxO+FoBsFEXr
	1KeTJFzwdVxChpalneWzDFF9Pxe8NyTVYbpAAVGBQqJvOPbmacY08W/kCN/Y7cknWDXam66rPdRMX
	cR7GkktRnUjMi2rFDaaK6Yz0M+MRzk0/IKpaEGHZENhJXZ7DR/YBL6W36h+Qwo8++g1DYoUN52VH/
	aVvIUZ8qWiwL905edXNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoGg-0006Bf-GW; Mon, 03 Jun 2019 14:48:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoGY-0006AS-Do
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 14:48:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id go2so7067754plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 07:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Q+sHhqSxZbf8keZOMlJSAWpHXVIafP73qkF/eQ1kaEg=;
 b=lR82yWXUpVnRwrloRqpoNOP0h28pmhl9RZJEKQG+xRMq6tXSFYRiAwRkNwerYbaYyT
 mCi4aJWaTlcYDT14orBv5IHGGmzerqXKyNMQDvzQh39isZbQ6oJ36LC8BqeT7yuWXG7f
 8fyALfgl4w1zSntEm7DRrtKCXvWYtPCRFqSaTSkKeosOkigvtxwR+TDZi1YKPZXgzHsh
 RVsXsNR+bFFsTarRQfzzr2fbY4nHoHS8WlZfhuvLyQbEWhiscP0/0NcM1yQBh+W/xEdT
 abcq/hXaFiugkbBaSCcBFR11OfjpYAF4OGmksbpcxHMyqtCA9vbtDRDVQp6zr9w3Y1Fu
 jWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q+sHhqSxZbf8keZOMlJSAWpHXVIafP73qkF/eQ1kaEg=;
 b=Gg/KvSd7H0pMMY+EFXaZ69lwPe3xI0hlDFCfijgXUuiw/SgnQy0GlOQGUseBBH5Tl5
 pUNeLJvxF4FkNbfnfmWRgj9cnGzdw+5kaW5Hc3B9qOiRK9gffvZXcI/Gf1KZgAhd36/8
 /Niai1mXD2zTg4Uqom6ju6IG7jFKQ+vxg3h3xQlHQzwJvCVVGKTRkxYlB7WgQHfdJQTG
 1LqywnHBZvh9olkvFzQCqprIv9dXjzZKi6hqAomh19E6LW2bONEpbShKsOkUmk2/HWLk
 7jc3Grd+GA54p6ooQebmlYzTsHXuOi9Q3hZIP+pJigEdPJxp4ZSWQEr5x70212bdZVdi
 gxIw==
X-Gm-Message-State: APjAAAXoBrToQfSxVbuvOtEjXtJbnoYfUWpqK58+BmVUz6ZkShtvO8FH
 xYmT/FQnqaUfLNy8y4gT2/Pa
X-Google-Smtp-Source: APXvYqzDCE7HSjzkN8v18+gy/2oC+6Z+r7kTihM1KnbA2Ry1zX6rsvrfzvO37yYwBVRz4RQQxawIEA==
X-Received: by 2002:a17:902:a982:: with SMTP id
 bh2mr29907129plb.224.1559573329403; 
 Mon, 03 Jun 2019 07:48:49 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id z125sm18266392pfb.75.2019.06.03.07.48.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 07:48:48 -0700 (PDT)
Date: Mon, 3 Jun 2019 20:18:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix isp iommu clocks and power
 domain
Message-ID: <20190603144838.GA27534@mani>
References: <20190603142214.24686-1-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603142214.24686-1-helen.koike@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_074850_471340_27DBC504 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>, Tony Xie <tony.xie@rock-chips.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Randy Li <ayaka@soulik.info>,
 linux-kernel@vger.kernel.org, Vicente Bergas <vicencb@gmail.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 laurent.pinchart@ideasonboard.com, Marc Zyngier <marc.zyngier@arm.com>,
 kernel@collabora.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 11:22:15AM -0300, Helen Koike wrote:
> isp iommu requires wrapper variants of the clocks.
> noc variants are always on and using the wrapper variants will activate
> {A,H}CLK_ISP{0,1} due to the hierarchy.
> 
> Also add the respective power domain.
> 
> Refer:
>  RK3399 TRM v1.4 Fig. 2-4 RK3399 Clock Architecture Diagram
>  RK3399 TRM v1.4 Fig. 8-1 RK3399 Power Domain Partition
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>

Tested on Rock960 with ISP patches.

Tested-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> 
> ---
> Hello,
> 
> I tested this using the isp patch set (which is not upstream
> yet). Without this patch, streaming from the isp stalls.
> 
> I'm also enabling the power domain and removing the disable status,
> please let me know if this should be done in a separated patch.
> 
> Thanks
> Helen
> 
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 196ac9b78076..89594a7276f4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1706,11 +1706,11 @@
>  		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
>  		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>  		interrupt-names = "isp0_mmu";
> -		clocks = <&cru ACLK_ISP0_NOC>, <&cru HCLK_ISP0_NOC>;
> +		clocks = <&cru ACLK_ISP0_WRAPPER>, <&cru HCLK_ISP0_WRAPPER>;
>  		clock-names = "aclk", "iface";
>  		#iommu-cells = <0>;
> +		power-domains = <&power RK3399_PD_ISP0>;
>  		rockchip,disable-mmu-reset;
> -		status = "disabled";
>  	};
>  
>  	isp1_mmu: iommu@ff924000 {
> @@ -1718,11 +1718,11 @@
>  		reg = <0x0 0xff924000 0x0 0x100>, <0x0 0xff925000 0x0 0x100>;
>  		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH 0>;
>  		interrupt-names = "isp1_mmu";
> -		clocks = <&cru ACLK_ISP1_NOC>, <&cru HCLK_ISP1_NOC>;
> +		clocks = <&cru ACLK_ISP1_WRAPPER>, <&cru HCLK_ISP1_WRAPPER>;
>  		clock-names = "aclk", "iface";
>  		#iommu-cells = <0>;
> +		power-domains = <&power RK3399_PD_ISP1>;
>  		rockchip,disable-mmu-reset;
> -		status = "disabled";
>  	};
>  
>  	hdmi_sound: hdmi-sound {
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
