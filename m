Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC1C11EA52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:30:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3EAL3MXztWrdVr6zM4FmU3efCGkh52X2qS0BJHyMHY=; b=CSmHfKXs3jHsNM
	h6XBPEd3Mx5Sp/kZNfASV6QbvYmqzot1Y1fNIomaGJBOazQn1hzsxnmUMolJLHe9cHLrRfyvzI/Wh
	NDesfR7S78GIyetOJYy3u1AIDl5dCju/Ranxum8g3QTCdgNYNMbLA13miSJRI7MnGFWNVzNcKvy2X
	+9rhTX4UUYlj+AIjCwSlRsB5m/2nvP9W93WeeD97FdUGOfaiF5GMnSJMvdEyKClaERhPf8rYfMb8c
	Vd9XmGvneNTL9favhVbEiF0E0WN7Qzbns1rACaF0BUdbCNkdamq1oh3BOuW1BtghVdW6ueJouXq0I
	3YTdGsMwBJtIVDWVkC3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifphP-0001sK-5k; Fri, 13 Dec 2019 18:29:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpg1-0000o7-RL; Fri, 13 Dec 2019 18:28:39 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1ifpfq-0003GI-A5; Fri, 13 Dec 2019 19:28:22 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 10/12] arm64: dts: rockchip: Add PX30 CRTCs graph LVDS
 endpoints
Date: Fri, 13 Dec 2019 19:28:21 +0100
Message-ID: <1933192.L6hp5CucIl@diego>
In-Reply-To: <20191213181051.25983-11-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-11-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_102834_058603_C14CD11E 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Miquel,

Am Freitag, 13. Dezember 2019, 19:10:49 CET schrieb Miquel Raynal:
> Add the display subsystem routes with the two available CRTCs: vopb
> and vopl (big and little). For each CRTC, add the LVDS endpoints. MIPI
> DSI endpoints will come later.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index b2af0f02ecbe..1c96ba556daf 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -190,6 +190,16 @@
>  		compatible = "rockchip,display-subsystem";
>  		ports = <&vopb_out>, <&vopl_out>;
>  		status = "disabled";
> +
> +		route {
> +			route_vopb_lvds: route-vopb-lvds {
> +				connect = <&vopb_out_lvds>;
> +			};
> +
> +			route_vopl_lvds: route-vopl-lvds {
> +				connect = <&vopl_out_lvds>;
> +			};
> +		};

where does this route-stuff come from?
The vendor tree? Because so far I've not seen this in mainline-drm
in general nor the Rockchip drm driver itself.


>  	};
>  
>  	gmac_clkin: external-gmac-clock {
> @@ -976,6 +986,11 @@
>  		vopb_out: port {
>  			#address-cells = <1>;
>  			#size-cells = <0>;
> +
> +			vopb_out_lvds: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&lvds_vopb_in>;
> +			};

This (and the one below) would create dangling phandle references
and compile errors, because the referenced phandles only get introduced
in patch12. So ideally merge this into the last patch.


Heiko

>  		};
>  	};
>  
> @@ -1008,6 +1023,11 @@
>  		vopl_out: port {
>  			#address-cells = <1>;
>  			#size-cells = <0>;
> +
> +			vopl_out_lvds: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&lvds_vopl_in>;
> +			};
>  		};
>  	};
>  
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
