Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B785B753
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJaDa78lub55K/A5dAVDb0klOO21mq/wCZYjCjPgajc=; b=Hk4rKo7LBAQt9c
	CqfAs2hQQnDQGrpxMqyC0ICKQGivns6aLwiolGwsWpe42wbu0rESzZjRDSASmK260p6z7/TSJQN0S
	LtgRQQSLFDSA07Fuv5bvA6zyubzRgcRp7WYKm3A+UBAV3VHvlMGhg8KPm0hkdQvJ6PWwaiNlXv1m0
	K6Sq6ImtbIPdv7DBYLjvrd688eUrax07Yvu2Qjp1mDqV/v3TyhB8czqOn55/7Y0ppd+EBtgyhovAh
	5RPLEIhgqUeZIjQwuekEgEmnhrTlqCpaWjrDnjNry8St6+ejhb5hbXPPhlcfgWyPcYzWD0HzebZZ/
	z3E/nxDq/EAKND/HyBMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhs8l-0004lP-AG; Mon, 01 Jul 2019 08:58:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhs8T-0004jw-2Q; Mon, 01 Jul 2019 08:58:06 +0000
X-UUID: 2dd48bab52174c248ae6c8ed3d52fa65-20190701
X-UUID: 2dd48bab52174c248ae6c8ed3d52fa65-20190701
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2104876029; Mon, 01 Jul 2019 00:57:57 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 1 Jul 2019 01:57:55 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 1 Jul 2019 16:57:40 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 1 Jul 2019 16:57:41 +0800
Message-ID: <1561971461.12937.8.camel@mtksdaap41>
Subject: Re: [PATCH v6 14/14] arm64: dts: Add power controller device node
 of MT8183
From: CK Hu <ck.hu@mediatek.com>
To: Weiyi Lu <weiyi.lu@mediatek.com>
Date: Mon, 1 Jul 2019 16:57:41 +0800
In-Reply-To: <1560998286-9189-15-git-send-email-weiyi.lu@mediatek.com>
References: <1560998286-9189-1-git-send-email-weiyi.lu@mediatek.com>
 <1560998286-9189-15-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C8CC8F48001BDECEC9686930E6D8F2F1E80659CD0EC6FE1FD72B5E1F57CB71212000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_015805_113764_14FE2762 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Thu, 2019-06-20 at 10:38 +0800, Weiyi Lu wrote:
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
> index 08274bf..75c4881 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/clock/mt8183-clk.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/power/mt8183-power.h>
>  
>  / {
>  	compatible = "mediatek,mt8183";
> @@ -196,6 +197,62 @@
>  			#clock-cells = <1>;
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

Up to now, MT8183 mmsys has the same resource with another device node:

		mmsys: syscon@14000000 {
			compatible = "mediatek,mt8183-mmsys", "syscon";
			reg = <0 0x14000000 0 0x1000>;
			#clock-cells = <1>;
		};

		display_components: dispsys@14000000 {
			compatible = "mediatek,mt8183-display";
			reg = <0 0x14000000 0 0x1000>;
			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
		};

I think this two node should be merge into one node, so I've try to
merge them:

		mmsys: syscon@14000000 {
			compatible = "mediatek,mt8183-mmsys", "syscon";
			reg = <0 0x14000000 0 0x1000>;
			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
			#clock-cells = <1>;
		};

But I got a kernel panic when boot,

[    3.458523] Unable to handle kernel paging request at virtual address
fffffffffffffdfb
[    3.466999] Mem abort info:
[    3.470116]   ESR = 0x96000005
[    3.473268]   Exception class = DABT (current EL), IL = 32 bits
[    3.479375]   SET = 0, FnV = 0
[    3.482530]   EA = 0, S1PTW = 0
[    3.485785] Data abort info:
[    3.488831]   ISV = 0, ISS = 0x00000005
[    3.493067]   CM = 0, WnR = 0
[    3.496229] swapper pgtable: 4k pages, 39-bit VAs, pgdp =
000000004f8fa26d
[    3.503214] [fffffffffffffdfb] pgd=0000000000000000,
pud=0000000000000000
[    3.510408] Internal error: Oops: 96000005 [#1] PREEMPT SMP
[    3.515974] Modules linked in:
[    3.519023] Process kworker/0:3 (pid: 106, stack limit =
0x00000000281d0651)
[    3.526066] CPU: 0 PID: 106 Comm: kworker/0:3 Tainted: G        W
4.19.43 #208
[    3.533974] Hardware name: MediaTek kukui rev1 board (DT)
[    3.539374] Workqueue: events deferred_probe_work_func
[    3.544507] pstate: 20000005 (nzCv daif -PAN -UAO)
[    3.549294] pc : clk_prepare+0x18/0x40
[    3.553038] lr : scpsys_clk_enable+0x40/0xb4
[    3.557299] sp : ffffff800855b9e0
[    3.560606] x29: ffffff800855b9f0 x28: ffffff93e1e5f594
[    3.565911] x27: 000000000000000f x26: ffffff93e1e5e9b8
[    3.571217] x25: 000000003b9aca00 x24: ffffff800858530c
[    3.576522] x23: ffffffffffffffff x22: fffffffffffffdfb
[    3.581827] x21: 000000000000000a x20: ffffffccb89aafc8
[    3.587132] x19: fffffffffffffdfb x18: 00005a5c77082016
[    3.592438] x17: 0000000000000400 x16: 0000000000000001
[    3.597743] x15: 0000000000000009 x14: ffffff93e271c908
[    3.603048] x13: 0000000000000b22 x12: 0000000000000008
[    3.608353] x11: 0000000001d063de x10: 0000000000000008
[    3.613659] x9 : 00000000ffffffed x8 : 0000000000000000
[    3.618964] x7 : 736d6c2dff7224fe x6 : 0000008000000000
[    3.624269] x5 : 0000000000000000 x4 : 0000000080000000
[    3.629575] x3 : 002f6d6e74000000 x2 : 0000000000000000
[    3.634880] x1 : 000000000000000a x0 : fffffffffffffdfb
[    3.640185] Call trace:
[    3.642625]  clk_prepare+0x18/0x40
[    3.646019]  scpsys_clk_enable+0x40/0xb4
[    3.649935]  scpsys_power_on+0x13c/0x304
[    3.653850]  scpsys_probe+0xe0/0x5fc
[    3.657419]  platform_drv_probe+0x80/0xb0
[    3.661420]  really_probe+0x114/0x28c
[    3.665075]  driver_probe_device+0x64/0xfc
[    3.669164]  __device_attach_driver+0xb8/0xd0
[    3.673513]  bus_for_each_drv+0x88/0xd0
[    3.677341]  __device_attach+0xac/0x130
[    3.681169]  device_initial_probe+0x20/0x2c
[    3.685344]  bus_probe_device+0x34/0x90
[    3.689172]  deferred_probe_work_func+0x74/0xac
[    3.693698]  process_one_work+0x210/0x420
[    3.697700]  worker_thread+0x278/0x3e4
[    3.701443]  kthread+0x11c/0x12c
[    3.704665]  ret_from_fork+0x10/0x18

I'm not really understand what happen, but scpsys and mmsys point to
each other in MT8183. Why these two node point to each other in MT8183?
If this is really hardware limitation, we need to solve this in driver.
If this is not a hardware limitation, I would like to re-organize device
tree to prevent this problem.

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
> @@ -260,6 +317,11 @@
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
