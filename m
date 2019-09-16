Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D91B3473
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 07:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HicEt6Z0FFJJIiKfvFMM8yu8718HFztokLj0cbJG7w0=; b=lyP3N0L+yVjoHo
	Tak7rSzShrc+Pz/axWpa6Yn03EaDtKSlBvSJRTnmj7YEx9oWjDqezdBpExSWrsFiJpl20a6nTIqpD
	lfcEAKnDLbZXL90EJhoEfAu1Agu6xJEC6pMGuSfxSiTK3XSAaqwjpN/ck9odJVTFeZ6mCuyWzzWJG
	X0qzNOFE4Bb3QBwmfwwk5GoowrEt+uPO7bNN/X/zC1GGBfKT8xbtK1qb0xysxjTZwJN4kwBjye/KR
	xdsvhmc32KUTww28scTHX1HczFT2fblzp/tEvvdSMffPIaa9i+KgGh2z740W+sNZF+K6//Y1c8g0P
	DRzw95zAm49epLhj8cuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9jge-0006GF-U9; Mon, 16 Sep 2019 05:36:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9jgS-0006FM-Rw; Mon, 16 Sep 2019 05:36:22 +0000
X-UUID: 9d8a9cd6d0e144b7ade354635eb78cdc-20190915
X-UUID: 9d8a9cd6d0e144b7ade354635eb78cdc-20190915
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1164024764; Sun, 15 Sep 2019 21:36:14 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Sep 2019 22:36:13 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Sep 2019 13:36:11 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Sep 2019 13:36:11 +0800
Message-ID: <1568612172.14078.3.camel@mtksdaap41>
Subject: Re: [RFC PATCH V4 4/4] dts: arm64: mt8183: Add sensor interface nodes
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Louis Kuo <louis.kuo@mediatek.com>
Date: Mon, 16 Sep 2019 13:36:12 +0800
In-Reply-To: <20190915065004.20257-5-louis.kuo@mediatek.com>
References: <20190915065004.20257-1-louis.kuo@mediatek.com>
 <20190915065004.20257-5-louis.kuo@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_223620_916741_91176A90 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 Jerry-ch.Chen@mediatek.com, tfiga@chromium.org, keiichiw@chromium.org,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 hans.verkuil@cisco.com, zwisler@chromium.org, frederic.chen@mediatek.com,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2019-09-15 at 14:50 +0800, Louis Kuo wrote:
> Add nodes for Mediatek's sensor interface device. Sensor interface module
> embedded in Mediatek SOCs, works as a HW camera interface controller
> intended for image and data transmission between cameras and host devices.
> 
> Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 66aaa07f6cec..f1d081b99867 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -506,4 +506,18 @@
>  			#clock-cells = <1>;
>  		};
>  	};
> +
> +	seninf: seninf@1a040000 {
> +		compatible = "mediatek,mt8183-seninf";
> +		reg = <0 0x1a040000 0 0x8000>,
> +		      <0 0x11C80000 0 0x6000>;

Please use lower case for hex value.


> +		reg-names = "base_reg", "rx_reg";
> +		interrupts = <GIC_SPI 251 IRQ_TYPE_LEVEL_LOW>;
> +		power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
> +		clocks = <&camsys CLK_CAM_SENINF>,
> +			 <&topckgen CLK_TOP_MUX_SENINF>;
> +		clock-names = "CLK_CAM_SENINF", "CLK_TOP_MUX_SENINF";
> +		status = "disabled";
> +		};
> +	};


extra } ?

Joe.C



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
