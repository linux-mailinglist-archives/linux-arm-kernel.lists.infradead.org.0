Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2919D1A34D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 15:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ji9q8NrBsyqf+Wci2/Nyi2nwPcA7f+UvkPyXMd3o54k=; b=qwhJNOaTdBLSVt
	k+O74fxq+eUUyeBNkpZqjjf/nWAJOKv6tEh1QfMtlC/XGjSWOoaWemqZqbOyNQ1CB/AM1Oid6I5Jk
	c3cXL+dgHyguAM31oaEopz5UbqXPYhHVFjmr4SOMDduB5d5mQMYc0ob7GeCRd5ptmSDCeoeqWflFH
	FHiGOFEMNs5gXLSbUi68NYwKk2QNHo4/Y1mXK1kKkFTqATmQDc1zVXlzpQ2qjieeLxOnPNBbC96wl
	u9+JKdqmT2eswm5/iC+Y42YmbXdjZQAJe7nnhsxhYvAX9ywb/OfOSrfRgPtGNpxolxeOz6kIzjBNx
	r7cZGzIS1kSGODMgYmPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXBI-0007QD-BN; Thu, 09 Apr 2020 13:25:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXBA-0006fY-2g; Thu, 09 Apr 2020 13:25:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 0A542297B00
Subject: Re: [PATCH v2] arm64: dts: mt8173: Add gce setting in mmsys and
 display node
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200409055012.199320-1-hsinyi@chromium.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <63058ea1-9cce-2c2e-0041-9369033a7b33@collabora.com>
Date: Thu, 9 Apr 2020 15:25:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409055012.199320-1-hsinyi@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_062512_388698_3356DCEA 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hsin-Yi,

Thanks for sending the patch upstream

On 9/4/20 7:50, Hsin-Yi Wang wrote:
> In order to use GCE function, we need add some informations
> into display node (mboxes, mediatek,gce-client-reg, mediatek,gce-events).
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reviewed-by: Bibby Hsieh <bibby.hsieh@mediatek.com>

Tested on my Acer Chromebook R13, so

Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

> ---
> change log:
> v1->v2: align with
> 19d8e335d58a ("dt-binding: gce: remove atomic_exec in mboxes property")
> 60fa8c13ab1a ("drm/mediatek: Move gce event property to mutex device node")
> ---
>  arch/arm64/boot/dts/mediatek/mt8173.dtsi | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> index ccb8e88a60c5..8337ba42845d 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> @@ -549,7 +549,7 @@ gce: mailbox@10212000 {
>  			interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_LOW>;
>  			clocks = <&infracfg CLK_INFRA_GCE>;
>  			clock-names = "gce";
> -			#mbox-cells = <3>;
> +			#mbox-cells = <2>;
>  		};
>  
>  		mipi_tx0: mipi-dphy@10215000 {
> @@ -916,6 +916,9 @@ mmsys: clock-controller@14000000 {
>  			assigned-clocks = <&topckgen CLK_TOP_MM_SEL>;
>  			assigned-clock-rates = <400000000>;
>  			#clock-cells = <1>;
> +			mboxes = <&gce 0 CMDQ_THR_PRIO_HIGHEST>,
> +				 <&gce 1 CMDQ_THR_PRIO_HIGHEST>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0 0x1000>;
>  		};
>  
>  		mdp_rdma0: rdma@14001000 {
> @@ -996,6 +999,7 @@ ovl0: ovl@1400c000 {
>  			clocks = <&mmsys CLK_MM_DISP_OVL0>;
>  			iommus = <&iommu M4U_PORT_DISP_OVL0>;
>  			mediatek,larb = <&larb0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xc000 0x1000>;
>  		};
>  
>  		ovl1: ovl@1400d000 {
> @@ -1006,6 +1010,7 @@ ovl1: ovl@1400d000 {
>  			clocks = <&mmsys CLK_MM_DISP_OVL1>;
>  			iommus = <&iommu M4U_PORT_DISP_OVL1>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xd000 0x1000>;
>  		};
>  
>  		rdma0: rdma@1400e000 {
> @@ -1016,6 +1021,7 @@ rdma0: rdma@1400e000 {
>  			clocks = <&mmsys CLK_MM_DISP_RDMA0>;
>  			iommus = <&iommu M4U_PORT_DISP_RDMA0>;
>  			mediatek,larb = <&larb0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xe000 0x1000>;
>  		};
>  
>  		rdma1: rdma@1400f000 {
> @@ -1026,6 +1032,7 @@ rdma1: rdma@1400f000 {
>  			clocks = <&mmsys CLK_MM_DISP_RDMA1>;
>  			iommus = <&iommu M4U_PORT_DISP_RDMA1>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xf000 0x1000>;
>  		};
>  
>  		rdma2: rdma@14010000 {
> @@ -1036,6 +1043,7 @@ rdma2: rdma@14010000 {
>  			clocks = <&mmsys CLK_MM_DISP_RDMA2>;
>  			iommus = <&iommu M4U_PORT_DISP_RDMA2>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0 0x1000>;
>  		};
>  
>  		wdma0: wdma@14011000 {
> @@ -1046,6 +1054,7 @@ wdma0: wdma@14011000 {
>  			clocks = <&mmsys CLK_MM_DISP_WDMA0>;
>  			iommus = <&iommu M4U_PORT_DISP_WDMA0>;
>  			mediatek,larb = <&larb0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x1000 0x1000>;
>  		};
>  
>  		wdma1: wdma@14012000 {
> @@ -1056,6 +1065,7 @@ wdma1: wdma@14012000 {
>  			clocks = <&mmsys CLK_MM_DISP_WDMA1>;
>  			iommus = <&iommu M4U_PORT_DISP_WDMA1>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x2000 0x1000>;
>  		};
>  
>  		color0: color@14013000 {
> @@ -1064,6 +1074,7 @@ color0: color@14013000 {
>  			interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_COLOR0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x3000 0x1000>;
>  		};
>  
>  		color1: color@14014000 {
> @@ -1072,6 +1083,7 @@ color1: color@14014000 {
>  			interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_COLOR1>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x4000 0x1000>;
>  		};
>  
>  		aal@14015000 {
> @@ -1080,6 +1092,7 @@ aal@14015000 {
>  			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_AAL>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x5000 0x1000>;
>  		};
>  
>  		gamma@14016000 {
> @@ -1088,6 +1101,7 @@ gamma@14016000 {
>  			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_GAMMA>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x6000 0x1000>;
>  		};
>  
>  		merge@14017000 {
> @@ -1193,6 +1207,8 @@ mutex: mutex@14020000 {
>  			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_MUTEX_32K>;
> +			mediatek,gce-events = <CMDQ_EVENT_MUTEX0_STREAM_EOF>,
> +                                              <CMDQ_EVENT_MUTEX1_STREAM_EOF>;
>  		};
>  
>  		larb0: larb@14021000 {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
