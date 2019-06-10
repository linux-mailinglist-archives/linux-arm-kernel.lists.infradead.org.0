Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 247153AD0B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 04:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjLVdqXvJEfXfyIdcrhUAZu/cipYRnClLvXx9OfW2nU=; b=Covf9CC/5w0RzM
	T5kmw243dr9hfv/PozKW54N1/l6CcrBYsersUMv45BEM9jyeJ6YujDKf6vFA83bF4YI8w5FP9+Zck
	a5v/vhhCxvqZ0Q/lMrNi91wPmGbxkLK/SZ0FOnbUw6oiiqgvB3RCYt98F1i0Exk0rRgV208yN8fAO
	3CxmlAmW+3LjaLQyQU47qIqc/khNYzagWKgANT9wtE3kknyK2n0EkglJIwsjlRxesafLf8JIUzcs5
	B9OJ7K7kEyynuPMVmsHlKnVakaBUAdQF/6PaXmC8hqrSTFavMFnP1LCLJSmCCst72YiWHSP2rIvnm
	8JiLnOLUNQNIhUJ9ssBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haA8v-0004Oo-6U; Mon, 10 Jun 2019 02:34:41 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haA8j-0004Na-11; Mon, 10 Jun 2019 02:34:30 +0000
X-UUID: ca19227acd514dfba4c3176993029b79-20190609
X-UUID: ca19227acd514dfba4c3176993029b79-20190609
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 983181262; Sun, 09 Jun 2019 18:34:27 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 9 Jun 2019 19:34:25 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 10:34:24 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 10:34:17 +0800
Message-ID: <1560134057.28527.5.camel@mtksdaap41>
Subject: Re: [PATCH v4 01/14] dt-bindings: Add binding for MT2712 MIPI-CSI2
From: CK Hu <ck.hu@mediatek.com>
To: Stu Hsieh <stu.hsieh@mediatek.com>
Date: Mon, 10 Jun 2019 10:34:17 +0800
In-Reply-To: <1559643115-15124-2-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
 <1559643115-15124-2-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_193429_069909_86A37090 
X-CRM114-Status: GOOD (  17.22  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stu:

"mediatek,mt2712-mipicsi" and "mediatek,mt2712-mipicsi-common" have many
common part with "mediatek,mt8183-seninf", and I've a discussion in [1],
so I would like these two to be merged together.

[1] https://patchwork.kernel.org/patch/10979131/

Regards,
CK

On Tue, 2019-06-04 at 18:11 +0800, Stu Hsieh wrote:
> Add MIPI-CSI2 dt-binding for Mediatek MT2712 SoC
> 
> Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
> ---
>  .../bindings/media/mediatek-mipicsi.txt       | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt b/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt
> new file mode 100644
> index 000000000000..e30b6a468129
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt
> @@ -0,0 +1,58 @@
> +* Mediatek MIPI-CSI2 receiver
> +
> +Mediatek MIPI-CSI2 receiver is the MIPI Signal capture hardware present in Mediatek SoCs
> +
> +Required properties:
> +- compatible: should be "mediatek,mt2712-mipicsi"
> +- reg : physical base address of the mipicsi receiver registers and length of
> +  memory mapped region.
> +- power-domains: a phandle to the power domain, see
> +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> +- mediatek,larb: must contain the local arbiters in the current Socs, see
> +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> +  for details.
> +- iommus: should point to the respective IOMMU block with master port as
> +  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> +  for details.
> +- mediatek,seninf_mux_camsv: seninf_mux_camsv the data go through of the mipicsi port
> +  any mipicsi port can contain max four seninf_mux_camsv
> +  The Total seninf_mux_camsv is six for mt2712
> +- mediatek,mipicsiid: the id of the mipicsi port, there are two port for mt2712
> +- mediatek,mipicsi: the common component of the two mipicsi port
> +- mediatek,mipicsi_max_vc: the number of virtual channel which subdev used
> +- mediatek,serdes_link_reg: the register of subdev to get the link status
> +
> +Example:
> +	mipicsi0: mipicsi@10217000 {
> +		compatible = "mediatek,mt2712-mipicsi";
> +		mediatek,mipicsi = <&mipicsi>;
> +		iommus = <&iommu0 M4U_PORT_CAM_DMA0>,
> +			 <&iommu0 M4U_PORT_CAM_DMA1>;
> +		mediatek,larb = <&larb2>;
> +		power-domains = <&scpsys MT2712_POWER_DOMAIN_ISP>;
> +
> +		mediatek,seninf_mux_camsv = <&seninf1_mux_camsv0
> +					     &seninf2_mux_camsv1
> +					     &seninf3_mux_camsv2
> +					     &seninf4_mux_camsv3>;
> +		reg = <0 0x10217000 0 0x60>,
> +		      <0 0x15002100 0 0x4>,
> +		      <0 0x15002300 0 0x100>;
> +		mediatek,mipicsiid = <0>;
> +		mediatek,mipicsi_max_vc = <4>;
> +		mediatek,serdes_link_reg = <0x49>;
> +	};
> +
> +	mipicsi1: mipicsi@10218000 {
> +		compatible = "mediatek,mt2712-mipicsi";
> +		mediatek,mipicsi = <&mipicsi>;
> +		iommus = <&iommu0 M4U_PORT_CAM_DMA2>;
> +		mediatek,larb = <&larb2>;
> +		power-domains = <&scpsys MT2712_POWER_DOMAIN_ISP>;
> +		mediatek,seninf_mux_camsv = <&seninf5_mux_camsv4
> +					     &seninf6_mux_camsv5>;
> +		reg = <0 0x10218000 0 0x60>,
> +		      <0 0x15002500 0 0x4>,
> +		      <0 0x15002700 0 0x100>;
> +		mediatek,mipicsiid = <1>;
> +	};



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
