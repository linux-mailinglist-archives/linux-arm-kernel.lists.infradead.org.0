Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5A51A0567
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 05:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wa8x8A/pX1YhbSVY1kzNp9T/VhRn9JEamyk2dtoewJo=; b=lI/T2/SJ9xaPP7
	T+9swnJwwj9fQIF+DldjesgtWgePKtu73GKE4SiBXDxcfvc6Me3McfyaI2ezpA0pN63qCzJ4jYYfJ
	kivylODKE82taYLugvxFw970MmEh4ICaaK/mxuuBOcX/x2K6gBpOUdmDHEDAXe+yuP/Lcltc3k7bX
	DH6YXT+eM6OssOr+0d57NdMRkUwfaw03dAWqstVHr8hMLRCIyt/5vvFamOIermtNtVdpFpwy6LXIR
	fSeENecCBLIQPPhOJWx8HWTgKAA/zv1cEgthtFyzsy+kxZxROwIveGnbj0jM44iWj8ULEcirI7iYY
	F5H0gkXvbw9ydJLhLUkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLfHp-00058u-UY; Tue, 07 Apr 2020 03:52:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLfHj-000589-3A; Tue, 07 Apr 2020 03:52:24 +0000
X-UUID: f4fe6b42f75645d68f948ce5f4d22dca-20200406
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=2aMRNqNHcycdMh8Gya/SUpbpAnyzbzqps6tELV3hW+k=; 
 b=lNl07QVjGYX5g2XlI5AR+18+Pmc/3d9jAdxZEKDg5vK6LOxmER7K7ZcqnAFVeTM2lXE+1c3zkwPE5feldphaIm4hdtAqAOra1aqoa3YKVS+/CPqiTawHPz7NXr8BSc6nTgOdK6ak6XXGI5x+cM2iaKam82pCgLIaEwDT8pFYeLc=;
X-UUID: f4fe6b42f75645d68f948ce5f4d22dca-20200406
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1287352348; Mon, 06 Apr 2020 19:52:20 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 20:52:17 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 7 Apr 2020 11:52:17 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 7 Apr 2020 11:52:17 +0800
Message-ID: <1586231537.16269.2.camel@mtksdaap41>
Subject: Re: [PATCH v8 12/14] arm: dts: Add jpeg enc device tree node
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Xia Jiang <xia.jiang@mediatek.com>
Date: Tue, 7 Apr 2020 11:52:17 +0800
In-Reply-To: <20200403094033.8288-13-xia.jiang@mediatek.com>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-13-xia.jiang@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_205223_143012_F749D395 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org,
 maoguang.meng@mediatek.com, srv_heupstream@mediatek.com,
 Rick Chang <rick.chang@mediatek.com>, senozhatsky@chromium.org,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, sj.huang@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>, mojahsu@chromium.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



This change mt2701.dtsi only, please add that to summary prefix:

arm:dts: mt2701: add jpeg enc device tree node

Joe.C

On Fri, 2020-04-03 at 17:40 +0800, Xia Jiang wrote:
> Add jpeg enc device tree node
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v8: no changes
> 
> v7: no changes
> 
> v6: no changes
> 
> v5: no changes
> 
> v4: no changes
> 
> v3: change compatible to SoC specific compatible
> 
> v2: no changes
> ---
>  arch/arm/boot/dts/mt2701.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/mt2701.dtsi b/arch/arm/boot/dts/mt2701.dtsi
> index 51e1305c6471..f2f92150b3fb 100644
> --- a/arch/arm/boot/dts/mt2701.dtsi
> +++ b/arch/arm/boot/dts/mt2701.dtsi
> @@ -569,6 +569,19 @@
>  			 <&iommu MT2701_M4U_PORT_JPGDEC_BSDMA>;
>  	};
>  
> +	jpegenc: jpegenc@1500a000 {
> +		compatible = "mediatek,mt2701-jpgenc",
> +			     "mediatek,mtk-jpgenc";
> +		reg = <0 0x1500a000 0 0x1000>;
> +		interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_LOW>;
> +		clocks =  <&imgsys CLK_IMG_VENC>;
> +		clock-names = "jpgenc";
> +		power-domains = <&scpsys MT2701_POWER_DOMAIN_ISP>;
> +		mediatek,larb = <&larb2>;
> +		iommus = <&iommu MT2701_M4U_PORT_JPGENC_RDMA>,
> +			 <&iommu MT2701_M4U_PORT_JPGENC_BSDMA>;
> +	};
> +
>  	vdecsys: syscon@16000000 {
>  		compatible = "mediatek,mt2701-vdecsys", "syscon";
>  		reg = <0 0x16000000 0 0x1000>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
