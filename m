Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D431A10BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 07:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVd1fFKFvZu9NJy8BeVBPEwoYDlmqKdIT7fGNiZ+S5g=; b=XIktvwO6u/HvMW
	YvHqxmZt9oJWJG15RBQfZqCJmEdGe4UmRd5xosZ7yjw13FBvdGau7W1VFxEre1x2nJjBCgfPjRJDc
	CVq61lL2NmPkTdP+P1LaPwocF0s/FG4BvZUDuqDVFs5XnVoaU47Hd2DuWXguirXhaDx7JkAMvO2/D
	suZwFkguJfZl3nDUrAi6lGadsXAYttz0fexGWvH7sL3FECzKeURnyDGIYDb1KfRj7PfchycNzhQNC
	9mgNZDzwA5G0YO+3hmcKTl59sfkhqrnyOL0esol9ethjnRM24n4pZpdPV+LHs9HZACj8O5dGrEyUb
	/v5+KQRRMr3ieJpeb4Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Cn9-0006UN-6l; Thu, 29 Aug 2019 05:16:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Cmx-0006SC-47; Thu, 29 Aug 2019 05:16:04 +0000
X-UUID: ca87f77e6b814378b6d17ecdd8248781-20190828
X-UUID: ca87f77e6b814378b6d17ecdd8248781-20190828
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1067041833; Wed, 28 Aug 2019 21:16:05 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 22:16:04 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 13:16:01 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 13:16:01 +0800
Message-ID: <1567055755.27361.3.camel@mtksdaap41>
Subject: Re: [PATCH v7 13/13] arm64: dts: Add power controller device node
 of MT8183
From: CK Hu <ck.hu@mediatek.com>
To: Weiyi Lu <weiyi.lu@mediatek.com>
Date: Thu, 29 Aug 2019 13:15:55 +0800
In-Reply-To: <1566983506-26598-14-git-send-email-weiyi.lu@mediatek.com>
References: <1566983506-26598-1-git-send-email-weiyi.lu@mediatek.com>
 <1566983506-26598-14-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B69F33BAB9488FF3E2E1D3931DE7BABACED7F6D46C9DA57B32E857A256A086172000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_221603_173738_6DF59796 
X-CRM114-Status: GOOD (  11.63  )
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
Cc: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, James Liao <jamesjj.liao@mediatek.com>,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Yong Wu <yong.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Weiyi:

On Wed, 2019-08-28 at 17:11 +0800, Weiyi Lu wrote:
> Add power controller node and smi-common node for MT8183
> In scpsys node, it contains clocks and regmapping of
> infracfg and smi-common for bus protection.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 62 ++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index c2749c4..66aaa07 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/clock/mt8183-clk.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/power/mt8183-power.h>
>  #include "mt8183-pinfunc.h"
>  
>  / {
> @@ -238,6 +239,62 @@
>  			#interrupt-cells = <2>;
>  		};
>  
> +		scpsys: syscon@10006000 {
> +			compatible = "mediatek,mt8183-scpsys", "syscon";
> +			#power-domain-cells = <1>;
> +			reg = <0 0x10006000 0 0x1000>;
> +			clocks = <&topckgen CLK_TOP_MUX_AUD_INTBUS>,
> +				 <&infracfg CLK_INFRA_AUDIO>,
> +				 <&infracfg CLK_INFRA_AUDIO_26M_BCLK>,
> +				 <&topckgen CLK_TOP_MUX_MFG>,
> +				 <&topckgen CLK_TOP_MUX_MM>,
> +				 <&topckgen CLK_TOP_MUX_CAM>,
> +				 <&topckgen CLK_TOP_MUX_IMG>,
> +				 <&topckgen CLK_TOP_MUX_IPU_IF>,
> +				 <&topckgen CLK_TOP_MUX_DSP>,
> +				 <&topckgen CLK_TOP_MUX_DSP1>,
> +				 <&topckgen CLK_TOP_MUX_DSP2>,
> +				 <&mmsys CLK_MM_SMI_COMMON>,
> +				 <&mmsys CLK_MM_SMI_LARB0>,
> +				 <&mmsys CLK_MM_SMI_LARB1>,
> +				 <&mmsys CLK_MM_GALS_COMM0>,
> +				 <&mmsys CLK_MM_GALS_COMM1>,
> +				 <&mmsys CLK_MM_GALS_CCU2MM>,
> +				 <&mmsys CLK_MM_GALS_IPU12MM>,
> +				 <&mmsys CLK_MM_GALS_IMG2MM>,
> +				 <&mmsys CLK_MM_GALS_CAM2MM>,
> +				 <&mmsys CLK_MM_GALS_IPU2MM>,

Just mention the discussion in [1], we need to confirm this is hardware
limitation or not.

[1] https://patchwork.kernel.org/patch/11005731/

Regards,
CK

> +				 <&imgsys CLK_IMG_LARB5>,
> +				 <&imgsys CLK_IMG_LARB2>,
> +				 <&camsys CLK_CAM_LARB6>,
> +				 <&camsys CLK_CAM_LARB3>,
> +				 <&camsys CLK_CAM_SENINF>,
> +				 <&camsys CLK_CAM_CAMSV0>,
> +				 <&camsys CLK_CAM_CAMSV1>,
> +				 <&camsys CLK_CAM_CAMSV2>,
> +				 <&camsys CLK_CAM_CCU>,
> +				 <&ipu_conn CLK_IPU_CONN_IPU>,
> +				 <&ipu_conn CLK_IPU_CONN_AHB>,
> +				 <&ipu_conn CLK_IPU_CONN_AXI>,
> +				 <&ipu_conn CLK_IPU_CONN_ISP>,
> +				 <&ipu_conn CLK_IPU_CONN_CAM_ADL>,
> +				 <&ipu_conn CLK_IPU_CONN_IMG_ADL>;
> +			clock-names = "audio", "audio1", "audio2",
> +				      "mfg", "mm", "cam",
> +				      "isp", "vpu", "vpu1",
> +				      "vpu2", "vpu3", "mm-0",
> +				      "mm-1", "mm-2", "mm-3",
> +				      "mm-4", "mm-5", "mm-6",
> +				      "mm-7", "mm-8", "mm-9",
> +				      "isp-0", "isp-1", "cam-0",
> +				      "cam-1", "cam-2", "cam-3",
> +				      "cam-4", "cam-5", "cam-6",
> +				      "vpu-0", "vpu-1", "vpu-2",
> +				      "vpu-3", "vpu-4", "vpu-5";
> +			infracfg = <&infracfg>;
> +			smi_comm = <&smi_common>;
> +		};
> +
>  		apmixedsys: syscon@1000c000 {
>  			compatible = "mediatek,mt8183-apmixedsys", "syscon";
>  			reg = <0 0x1000c000 0 0x1000>;
> @@ -396,6 +453,11 @@
>  			#clock-cells = <1>;
>  		};
>  
> +		smi_common: smi@14019000 {
> +			compatible = "mediatek,mt8183-smi-common", "syscon";
> +			reg = <0 0x14019000 0 0x1000>;
> +		};
> +
>  		imgsys: syscon@15020000 {
>  			compatible = "mediatek,mt8183-imgsys", "syscon";
>  			reg = <0 0x15020000 0 0x1000>;



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
