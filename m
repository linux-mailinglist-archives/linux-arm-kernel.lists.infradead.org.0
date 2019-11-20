Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE96103442
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 07:21:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOj2HTbtKrs6x4m1ltw4j/8VPjJRMjCWG/k2ep7Ao3Y=; b=QRvxMf1yQgwTTy
	cdLq8O/XNT7JyEQTUtg1WLXrMieeC3dr24pqLQ0q9ap1MEUPwMyo/S9T/sMgklj2o0tu6ILD4eTyT
	L9ifyMFyH6Hc2FDDqvF3HzZ5Hun8hMoX+TtegrL5kH+P+i/QUybOk/2uTORyH5U54RJFusmVAHhFG
	dsTglhzBK1DMWAl3AXF3EEzV03dYoSvRJAnUzOyejrXJzwcemnWOMQo2EJutJflYB28/QAPWoY19P
	9NHYEeka8uTPR8pkybFWwH6MslnWsJydPl1wlUAWdTi7QQJEUiJhlKTpMmWeq1FIOZngp3yrxEX85
	NKvt93YWxQRl2Kd48bVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJMl-0003jF-Fp; Wed, 20 Nov 2019 06:21:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJMc-0003ic-PJ; Wed, 20 Nov 2019 06:21:20 +0000
X-UUID: 2122265ee782478fbadd1cfac49d134f-20191119
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=cnXVYOCT6jAm+zO5eJXzFKhez0AEBAzRzE76qZr3S+w=; 
 b=qj3btTHXvPS7xMlbX8vTRXC2GUqS6ADJZ2nrdKrs77bWaH13Rub+7BApAHsewfc+P/PBhnZvbDSF0FjA8RCBwQjdzpV6FH/l0jP6lQLTcF5Abu5CHdAPUYr4kWWcFaz2EimB6GVl6mKOjYzDYV9N4RLZhipFZZ59kHYreDA6MN4=;
X-UUID: 2122265ee782478fbadd1cfac49d134f-20191119
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 968739088; Tue, 19 Nov 2019 22:21:10 -0800
Received: from mtkmbs05dr.mediatek.inc (172.21.101.97) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 19 Nov 2019 22:11:12 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05dr.mediatek.inc (172.21.101.97) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 20 Nov 2019 14:10:53 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 20 Nov 2019 14:10:48 +0800
Message-ID: <1574230265.14846.1.camel@mtksdaap41>
Subject: Re: [PATCH] arm64: dts: mt8173: Add gce setting in mmsys and
 display node
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 20 Nov 2019 14:11:05 +0800
In-Reply-To: <20191118104252.228406-1-hsinyi@chromium.org>
References: <20191118104252.228406-1-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_222118_834209_6FB9E69D 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-11-18 at 18:42 +0800, Hsin-Yi Wang wrote:
> In order to use GCE function, we need add some informations
> into display node (mboxes, mediatek,gce-client-reg, mediatek,gce-events).

Thanks for the patch.

Reviewed-by: Bibby Hsieh <bibby.hsieh@mediatek.com>

> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> - This is based on series "support gce on mt8183 platform"
>   https://patchwork.kernel.org/cover/11208309/
> - gce setting in 8183:
>   https://patchwork.kernel.org/patch/11127105/
> ---
>  arch/arm64/boot/dts/mediatek/mt8173.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> index 15f1842f6df3..e84ec3f95d81 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> @@ -911,6 +911,11 @@ mmsys: clock-controller@14000000 {
>  			assigned-clocks = <&topckgen CLK_TOP_MM_SEL>;
>  			assigned-clock-rates = <400000000>;
>  			#clock-cells = <1>;
> +			mboxes = <&gce 0 CMDQ_THR_PRIO_HIGHEST 1>,
> +				 <&gce 1 CMDQ_THR_PRIO_HIGHEST 1>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0 0x1000>;
> +			mediatek,gce-events = <CMDQ_EVENT_MUTEX0_STREAM_EOF>,
> +					      <CMDQ_EVENT_MUTEX1_STREAM_EOF>;
>  		};
>  
>  		mdp_rdma0: rdma@14001000 {
> @@ -991,6 +996,7 @@ ovl0: ovl@1400c000 {
>  			clocks = <&mmsys CLK_MM_DISP_OVL0>;
>  			iommus = <&iommu M4U_PORT_DISP_OVL0>;
>  			mediatek,larb = <&larb0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xc000 0x1000>;
>  		};
>  
>  		ovl1: ovl@1400d000 {
> @@ -1001,6 +1007,7 @@ ovl1: ovl@1400d000 {
>  			clocks = <&mmsys CLK_MM_DISP_OVL1>;
>  			iommus = <&iommu M4U_PORT_DISP_OVL1>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xd000 0x1000>;
>  		};
>  
>  		rdma0: rdma@1400e000 {
> @@ -1011,6 +1018,7 @@ rdma0: rdma@1400e000 {
>  			clocks = <&mmsys CLK_MM_DISP_RDMA0>;
>  			iommus = <&iommu M4U_PORT_DISP_RDMA0>;
>  			mediatek,larb = <&larb0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xe000 0x1000>;
>  		};
>  
>  		rdma1: rdma@1400f000 {
> @@ -1021,6 +1029,7 @@ rdma1: rdma@1400f000 {
>  			clocks = <&mmsys CLK_MM_DISP_RDMA1>;
>  			iommus = <&iommu M4U_PORT_DISP_RDMA1>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xf000 0x1000>;
>  		};
>  
>  		rdma2: rdma@14010000 {
> @@ -1031,6 +1040,7 @@ rdma2: rdma@14010000 {
>  			clocks = <&mmsys CLK_MM_DISP_RDMA2>;
>  			iommus = <&iommu M4U_PORT_DISP_RDMA2>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0 0x1000>;
>  		};
>  
>  		wdma0: wdma@14011000 {
> @@ -1041,6 +1051,7 @@ wdma0: wdma@14011000 {
>  			clocks = <&mmsys CLK_MM_DISP_WDMA0>;
>  			iommus = <&iommu M4U_PORT_DISP_WDMA0>;
>  			mediatek,larb = <&larb0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x1000 0x1000>;
>  		};
>  
>  		wdma1: wdma@14012000 {
> @@ -1051,6 +1062,7 @@ wdma1: wdma@14012000 {
>  			clocks = <&mmsys CLK_MM_DISP_WDMA1>;
>  			iommus = <&iommu M4U_PORT_DISP_WDMA1>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x2000 0x1000>;
>  		};
>  
>  		color0: color@14013000 {
> @@ -1059,6 +1071,7 @@ color0: color@14013000 {
>  			interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_COLOR0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x3000 0x1000>;
>  		};
>  
>  		color1: color@14014000 {
> @@ -1067,6 +1080,7 @@ color1: color@14014000 {
>  			interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_COLOR1>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x4000 0x1000>;
>  		};
>  
>  		aal@14015000 {
> @@ -1075,6 +1089,7 @@ aal@14015000 {
>  			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_AAL>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x5000 0x1000>;
>  		};
>  
>  		gamma@14016000 {
> @@ -1083,6 +1098,7 @@ gamma@14016000 {
>  			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_GAMMA>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x6000 0x1000>;
>  		};
>  
>  		merge@14017000 {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
