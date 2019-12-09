Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753C2116948
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:27:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fVUhE/zcP+oiDRN170iXFbOd71Ug5eNiFB1lMhcrSg=; b=fF139InfDWw/iJ
	LyCF27UKWDCTBHJe2q0s/2xytOH9Cc3h6BZZ01FZJZEhbfCf5iet0O8xfqdAjeAUYy9KcAYhNAqy7
	jx9kP9+x2jUn/euBlHqD64upOZ2F9X+XIeiAUv07ruQGu8cRqCimrTop731ggxF2i+ucCNt2unxO+
	dpSTWLWx6i7C3iEyy1FL079UrPRsGhYRszbQrhlYp8WMVYy5fBpszS3uZiMH7PMZRgE7TI4kWP0mO
	GjNqtQGf2trqVlcn6RXtKLBQL89limaX6uR+Mlfysoebl5OSWsDkk0ncojLoSb7yYR4NuUhdmrKRk
	ObmbwUsSN3GxGjYJLk7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFKU-0003xQ-Pk; Mon, 09 Dec 2019 09:27:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFKN-0003wN-S4; Mon, 09 Dec 2019 09:27:41 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ieFKD-0007vX-2a; Mon, 09 Dec 2019 10:27:29 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, kishon@ti.com
Subject: Re: [PATCH 1/2] dt-bindings: phy: drop #clock-cells from rockchip,
 px30-dsi-dphy
Date: Mon, 09 Dec 2019 10:27:28 +0100
Message-ID: <2785558.xRCxUMSmLi@diego>
In-Reply-To: <20191108000640.8775-1-heiko.stuebner@theobroma-systems.com>
References: <20191108000640.8775-1-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_012740_057359_30D92334 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, bivvy.bi@rock-chips.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,

Am Freitag, 8. November 2019, 01:06:39 CET schrieb Heiko Stuebner:
> Further review of the dsi components for the px30 revealed that the
> phy shouldn't expose the pll as clock but instead handle settings
> via phy parameters.
> 
> As the phy binding is new and not used anywhere yet, just drop them
> so they don't get used.
> 
> Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
> Hi Kishon,
> 
> this should ideally get into 5.5 as a fix for the previous change
> so that the binding doesn't accidentially get used.

Could you take a look at these 2 changes for the newly added dsi-phy
for some Rockchip SoCs? From a dt-binding-hardliner standpoint, it should
ideally get fixed in 5.5, so that the (wrong) binding doesn't get released
with a full kernel release.

But as it is very much Rockchip-specific and doesn't touch other part,
5.6 would also be ok I guess ;-)


Thanks
Heiko

>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> index bb0da87bcd84..476c56a1dc8c 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> @@ -13,9 +13,6 @@ properties:
>    "#phy-cells":
>      const: 0
>  
> -  "#clock-cells":
> -    const: 0
> -
>    compatible:
>      enum:
>        - rockchip,px30-dsi-dphy
> @@ -49,7 +46,6 @@ properties:
>  
>  required:
>    - "#phy-cells"
> -  - "#clock-cells"
>    - compatible
>    - reg
>    - clocks
> @@ -66,7 +62,6 @@ examples:
>          reg = <0x0 0xff2e0000 0x0 0x10000>;
>          clocks = <&pmucru 13>, <&cru 12>;
>          clock-names = "ref", "pclk";
> -        #clock-cells = <0>;
>          resets = <&cru 12>;
>          reset-names = "apb";
>          #phy-cells = <0>;
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
