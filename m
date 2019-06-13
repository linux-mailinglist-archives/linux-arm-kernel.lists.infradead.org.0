Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C32344E5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 23:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ETnyc/KzeLgqEOY/4r5OxSmJ7FbEvBD8Vk+cT3LtxI=; b=ukJv81IThnB7eO
	qGtgx6wQxARarZZUvJSLsPLvqIpuEnGTGecMmIkweQDw36+5SoRJXY3toh26p+Cp2G1dXTZrEi7H6
	MtdnoSeBHVdWbrtQzraC/j5J7TnkYAcJDcG8pF3eSIfGfuO2d47b+9t2+A+ScVE/3b5Z4mEDYjbxB
	xs+UeyK//66FbcXtKDd7tWrg7+yRG+qkT89WDcSujIjHFILnWbSKqJXG/dNIVmUTva8nypwiMCMEK
	JzFcxGj/M1FarVf1cpkJzH9zdbKE/HiL5yYnjtggtZeNXv1/tHPosQpcIhHD44tMo+hpJfB+LgjpL
	waJBdZ29vnGEAOzhx9Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbXEE-0007dR-GW; Thu, 13 Jun 2019 21:25:50 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbXDt-0007bi-V7; Thu, 13 Jun 2019 21:25:31 +0000
Received: by mail-qt1-f194.google.com with SMTP id n11so137159qtl.5;
 Thu, 13 Jun 2019 14:25:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pwPeTWWoYFYFIhYmi6aZL5cgp0+9f5aFv7IECLWMUt0=;
 b=ZKwC9WWg/MyCqP0C/pjMidAutVxoayU6jjR1AKoX57TiUbGz/xqVCf4FNlpLuvI+jw
 O9nuLm2ECLY2qsNIpmGExIQQVUvq3xoxcMW/8kBm8qd8/pDoo1pgIOJTxisRisJoYDhF
 aMQWaBdxxzxRP7HcFH8rf1cPdjcGQ5ksG8QKMiVLszv0rZDrDPRv9FSfS8LEJrLRZnbX
 xf/SM8v8hk4kMzmTszzckhf6IidZRtXNDNGMbN6WqcLEUD5wOPJmCWDbyy1lM1Ed3gW6
 zQHMDpD0/uuheHZJYRmUtVdNJ4mbSqX3CTy0j5zPU0wTCaLbNTkxwmt7JZrN/eefoeVO
 8e/Q==
X-Gm-Message-State: APjAAAUk1OMAPkPPBC6ORuDwOXd6skOPmOhfsxhfCwvt70sg0aG8Oq+c
 FvB2qG+tu1jg1lqAU1vkvrly++M=
X-Google-Smtp-Source: APXvYqym+4r9cTrTMVSWS00ZJWIUja2MNF8G5k+B4Zqzp4a7yrEhwGp41zWVhrP3vxtOGKU5I9ZF2w==
X-Received: by 2002:ac8:28bc:: with SMTP id i57mr45628479qti.288.1560461128360; 
 Thu, 13 Jun 2019 14:25:28 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id g53sm436943qtk.65.2019.06.13.14.25.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 14:25:27 -0700 (PDT)
Date: Thu, 13 Jun 2019 15:25:25 -0600
From: Rob Herring <robh@kernel.org>
To: Daoyuan Huang <daoyuan.huang@mediatek.com>
Subject: Re: [RFC v2 1/4] dt-binding: mt8183: Add Mediatek MDP3 dt-bindings
Message-ID: <20190613212525.GA6235@bogus>
References: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
 <20190516032332.56844-2-daoyuan.huang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516032332.56844-2-daoyuan.huang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_142530_010157_FD8D795E 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 holmes.chiou@mediatek.com, Jerry-ch.Chen@mediatek.com, tfiga@chromium.org,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 hans.verkuil@cisco.com, Ping-Hsun Wu <ping-hsun.wu@mediatek.com>,
 zwisler@chromium.org, frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 11:23:29AM +0800, Daoyuan Huang wrote:
> From: daoyuan huang <daoyuan.huang@mediatek.com>
> 
> This patch adds DT binding document for Media Data Path 3 (MDP3)
> a unit in multimedia system used for scaling and color format convert.
> 
> Signed-off-by: Ping-Hsun Wu <ping-hsun.wu@mediatek.com>
> Signed-off-by: daoyuan huang <daoyuan.huang@mediatek.com>
> ---
>  .../bindings/media/mediatek,mt8183-mdp3.txt   | 217 ++++++++++++++++++
>  1 file changed, 217 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt b/Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt
> new file mode 100644
> index 000000000000..cf3e808b7146
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt
> @@ -0,0 +1,217 @@
> +* Mediatek Media Data Path 3
> +
> +Media Data Path 3 (MDP3) is used for scaling and color space conversion.
> +
> +Required properties (controller node):
> +- compatible: "mediatek,mt8183-mdp"
> +- mediatek,scp: the node of system control processor (SCP), using the
> +  remoteproc & rpmsg framework, see
> +  Documentation/devicetree/bindings/remoteproc/mtk,scp.txt for details.
> +- mediatek,mmsys: the node of mux(multiplexer) controller for HW connections.
> +- mediatek,mm-mutex: the node of sof(start of frame) signal controller.
> +- mediatek,mailbox-gce: the node of global command engine (GCE), used to
> +  read/write registers with critical time limitation, see
> +  Documentation/devicetree/bindings/mailbox/mtk-gce.txt for details.
> +- mboxes: mailbox number used to communicate with GCE.
> +- gce-subsys: sub-system id corresponding to the register address.
> +- gce-event-names: in use event name list, used to correspond to event IDs.
> +- gce-events: in use event IDs list, all IDs are defined in
> +  'dt-bindings/gce/mt8183-gce.h'.
> +
> +Required properties (all function blocks, child node):
> +- compatible: Should be one of
> +        "mediatek,mt8183-mdp-rdma"  - read DMA
> +        "mediatek,mt8183-mdp-rsz"   - resizer
> +        "mediatek,mt8183-mdp-wdma"  - write DMA
> +        "mediatek,mt8183-mdp-wrot"  - write DMA with rotation
> +        "mediatek,mt8183-mdp-ccorr" - color correction with 3X3 matrix
> +- reg: Physical base address and length of the function block register space
> +- clocks: device clocks, see
> +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> +- power-domains: a phandle to the power domain, see
> +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> +- mediatek,mdp-id: HW index to distinguish same functionality modules.
> +
> +Required properties (DMA function blocks, child node):
> +- compatible: Should be one of
> +        "mediatek,mt8183-mdp-rdma"
> +        "mediatek,mt8183-mdp-wdma"
> +        "mediatek,mt8183-mdp-wrot"
> +- iommus: should point to the respective IOMMU block with master port as
> +  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> +  for details.
> +- mediatek,larb: must contain the local arbiters in the current Socs, see
> +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> +  for details.
> +
> +Required properties (input path selection node):
> +- compatible:
> +        "mediatek,mt8183-mdp-dl"    - MDP direct link input source selection
> +- reg: Physical base address and length of the function block register space
> +- clocks: device clocks, see
> +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> +- mediatek,mdp-id: HW index to distinguish same functionality modules.
> +
> +Required properties (ISP PASS2 (DIP) module path selection node):
> +- compatible:
> +        "mediatek,mt8183-mdp-imgi"  - input DMA of ISP PASS2 (DIP) module for raw image input
> +- reg: Physical base address and length of the function block register space
> +- mediatek,mdp-id: HW index to distinguish same functionality modules.
> +
> +Required properties (SW node):
> +- compatible: Should be one of
> +        "mediatek,mt8183-mdp-exto"  - output DMA of ISP PASS2 (DIP) module for yuv image output
> +        "mediatek,mt8183-mdp-path"  - MDP output path selection
> +- mediatek,mdp-id: HW index to distinguish same functionality modules.
> +
> +Example:
> +		mdp_camin@14000000 {

s/_/-/ in node names

> +			compatible = "mediatek,mt8183-mdp-dl";
> +			mediatek,mdp-id = <0>;
> +			reg = <0 0x14000000 0 0x1000>;
> +			clocks = <&mmsys CLK_MM_MDP_DL_TXCK>,
> +				<&mmsys CLK_MM_MDP_DL_RX>;
> +		};
> +
> +		mdp_camin2@14000000 {
> +			compatible = "mediatek,mt8183-mdp-dl";
> +			mediatek,mdp-id = <1>;
> +			reg = <0 0x14000000 0 0x1000>;

You've got 2 nodes at the same address. You can't do that.

Build your dtb with W=1 and dtc will warn on this. And fix any other 
warnings you get.

> +			clocks = <&mmsys CLK_MM_IPU_DL_TXCK>,
> +				<&mmsys CLK_MM_IPU_DL_RX>;
> +		};
> +
> +		mdp_rdma0: mdp_rdma0@14001000 {
> +			compatible = "mediatek,mt8183-mdp-rdma", "mediatek,mt8183-mdp3";
> +			mediatek,scp = <&scp>;
> +			mediatek,mdp-id = <0>;
> +			reg = <0 0x14001000 0 0x1000>;
> +			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> +			clocks = <&mmsys CLK_MM_MDP_RDMA0>,
> +				<&mmsys CLK_MM_MDP_RSZ1>;
> +			iommus = <&iommu M4U_PORT_MDP_RDMA0>;
> +			mediatek,larb = <&larb0>;
> +			mediatek,mmsys = <&mmsys>;
> +			mediatek,mm-mutex = <&mutex>;
> +			mediatek,mailbox-gce = <&gce>;
> +			mboxes = <&gce 20 0 CMDQ_THR_PRIO_LOWEST>,
> +				<&gce 21 0 CMDQ_THR_PRIO_LOWEST>,
> +				<&gce 22 0 CMDQ_THR_PRIO_LOWEST>,
> +				<&gce 23 0 CMDQ_THR_PRIO_LOWEST>;
> +			gce-subsys = <&gce 0x14000000 SUBSYS_1400XXXX>,
> +				<&gce 0x14010000 SUBSYS_1401XXXX>,
> +				<&gce 0x14020000 SUBSYS_1402XXXX>,
> +				<&gce 0x15020000 SUBSYS_1502XXXX>;
> +			gce-event-names = "rdma0_sof",
> +				"rsz0_sof",
> +				"rsz1_sof",
> +				"tdshp0_sof",
> +				"wrot0_sof",
> +				"wdma0_sof",
> +				"rdma0_done",
> +				"wrot0_done",
> +				"wdma0_done",
> +				"isp_p2_0_done",
> +				"isp_p2_1_done",
> +				"isp_p2_2_done",
> +				"isp_p2_3_done",
> +				"isp_p2_4_done",
> +				"isp_p2_5_done",
> +				"isp_p2_6_done",
> +				"isp_p2_7_done",
> +				"isp_p2_8_done",
> +				"isp_p2_9_done",
> +				"isp_p2_10_done",
> +				"isp_p2_11_done",
> +				"isp_p2_12_done",
> +				"isp_p2_13_done",
> +				"isp_p2_14_done",
> +				"wpe_done",
> +				"wpe_b_done";
> +			gce-events = <&gce CMDQ_EVENT_MDP_RDMA0_SOF>,
> +				<&gce CMDQ_EVENT_MDP_RSZ0_SOF>,
> +				<&gce CMDQ_EVENT_MDP_RSZ1_SOF>,
> +				<&gce CMDQ_EVENT_MDP_TDSHP_SOF>,
> +				<&gce CMDQ_EVENT_MDP_WROT0_SOF>,
> +				<&gce CMDQ_EVENT_MDP_WDMA0_SOF>,
> +				<&gce CMDQ_EVENT_MDP_RDMA0_EOF>,
> +				<&gce CMDQ_EVENT_MDP_WROT0_EOF>,
> +				<&gce CMDQ_EVENT_MDP_WDMA0_EOF>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_0>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_1>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_2>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_3>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_4>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_5>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_6>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_7>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_8>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_9>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_10>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_11>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_12>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_13>,
> +				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_14>,
> +				<&gce CMDQ_EVENT_WPE_A_DONE>,
> +				<&gce CMDQ_EVENT_SPE_B_DONE>;
> +		};
> +
> +		mdp_imgi@15020000 {
> +			compatible = "mediatek,mt8183-mdp-imgi";
> +			mediatek,mdp-id = <0>;
> +			reg = <0 0x15020000 0 0x1000>;
> +		};
> +
> +		mdp_img2o@15020000 {
> +			compatible = "mediatek,mt8183-mdp-exto";
> +			mediatek,mdp-id = <1>;

Missing reg? Again, looks like 2 nodes at the same address.

> +		};
> +
> +		mdp_rsz0: mdp_rsz0@14003000 {
> +			compatible = "mediatek,mt8183-mdp-rsz";
> +			mediatek,mdp-id = <0>;
> +			reg = <0 0x14003000 0 0x1000>;
> +			clocks = <&mmsys CLK_MM_MDP_RSZ0>;
> +		};
> +
> +		mdp_rsz1: mdp_rsz1@14004000 {
> +			compatible = "mediatek,mt8183-mdp-rsz";
> +			mediatek,mdp-id = <1>;
> +			reg = <0 0x14004000 0 0x1000>;
> +			clocks = <&mmsys CLK_MM_MDP_RSZ1>;
> +		};
> +
> +		mdp_wrot0: mdp_wrot0@14005000 {
> +			compatible = "mediatek,mt8183-mdp-wrot";
> +			mediatek,mdp-id = <0>;
> +			reg = <0 0x14005000 0 0x1000>;
> +			clocks = <&mmsys CLK_MM_MDP_WROT0>;
> +			iommus = <&iommu M4U_PORT_MDP_WROT0>;
> +			mediatek,larb = <&larb0>;
> +		};
> +
> +		mdp_path0_sout@14005000 {
> +			compatible = "mediatek,mt8183-mdp-path";
> +			mediatek,mdp-id = <0>;

Missing reg? Again, looks like 2 nodes at the same address.

> +		};
> +
> +		mdp_wdma: mdp_wdma@14006000 {
> +			compatible = "mediatek,mt8183-mdp-wdma";
> +			mediatek,mdp-id = <0>;
> +			reg = <0 0x14006000 0 0x1000>;
> +			clocks = <&mmsys CLK_MM_MDP_WDMA0>;
> +			iommus = <&iommu M4U_PORT_MDP_WDMA0>;
> +			mediatek,larb = <&larb0>;
> +		};
> +
> +		mdp_path1_sout@14006000 {
> +			compatible = "mediatek,mt8183-mdp-path";
> +			mediatek,mdp-id = <1>;
> +		};
> +
> +		mdp_ccorr: mdp_ccorr@1401c000 {
> +			compatible = "mediatek,mt8183-mdp-ccorr";
> +			mediatek,mdp-id = <0>;
> +			reg = <0 0x1401c000 0 0x1000>;
> +			clocks = <&mmsys CLK_MM_MDP_CCORR>;
> +		};
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
