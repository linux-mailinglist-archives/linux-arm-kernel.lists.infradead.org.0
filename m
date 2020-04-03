Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A8C19DBA1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 18:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agS/p7eub25cKsKbQz40edF2or3lTKhZeqP1VxthP5U=; b=RKJfkGZ0+0Ms8G
	gOIMMU+ie88Z0MyueLAm51D4tX+G+cT8Xjwf9ZM35s6GCNGfR4xVQ6BlxiaGSv/vyqIlGkSuwSRdy
	A8WIdA153vbBOeYZzNJfFpPc6Judjpk1S8qqdJB3ME5wrFg3SKaS017wfIOZaMiH24kDnYuisU6wr
	+iHm5Ra0/p9PJWP+lPCNhOUTI3anUp3jMJKT0F6hvl3TnHBfuZcYDQflhiKOPfPIjOO5gWI8lYVWY
	uQZbMWiPxHbcwZvlGOEH2KVhikS0O13Vdt1Vsx3EVoJovaqqMEihxWJsNj2qr+fdb42dD9tuakSG7
	kdevQXd/64G0DNnXQQWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKPAR-0006F1-0Z; Fri, 03 Apr 2020 16:27:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKPAJ-0006Ds-0s; Fri, 03 Apr 2020 16:27:32 +0000
Received: from p5b127fb0.dip0.t-ipconnect.de ([91.18.127.176]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jKPAF-00065N-VY; Fri, 03 Apr 2020 18:27:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add the camera interface
 description of the PX30
Date: Fri, 03 Apr 2020 18:27:27 +0200
Message-ID: <4068915.k80quj1ed4@phil>
In-Reply-To: <20200403142122.297283-4-maxime.chevallier@bootlin.com>
References: <20200403142122.297283-1-maxime.chevallier@bootlin.com>
 <20200403142122.297283-4-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_092731_214519_A5F128B5 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 3. April 2020, 16:21:22 CEST schrieb Maxime Chevallier:
> The PX30 has a camera interface, supporting CSI2, BT656 and Parallel
> modes. Add a DT description for this interface.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 3e1f51a66daf..38ed35bc9b7a 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1058,6 +1058,18 @@ dsi_in_vopl: endpoint@1 {
>  		};
>  	};
>  
> +	cif: cif@ff490000 {

nit: please sort by register address, so @ff490000 is definitly
somewhere after that ff460000 of the vopb ;-)

> +		compatible = "rockchip,px30-cif";
> +		reg = <0x0 0xff490000 0x0 0x200>;
> +		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>, <&cru SCLK_CIF_OUT>;
> +		clock-names = "aclk_cif", "hclk_cif", "pclk_cif", "cif_out";
> +		resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
> +		reset-names = "rst_cif_a", "rst_cif_h", "rst_cif_pclkin";
> +		power-domains = <&power PX30_PD_VI>;

nit: while doing the above, ideally just move the power-domains above resets
everthing else is sorted nicely.


Thanks
Heiko

> +		status = "disabled";
> +	};
> +
>  	vopb: vop@ff460000 {
>  		compatible = "rockchip,px30-vop-big";
>  		reg = <0x0 0xff460000 0x0 0xefc>;
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
