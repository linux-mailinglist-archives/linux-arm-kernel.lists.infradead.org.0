Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01C36679D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 09:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTu2nRuwz241ZAv/G7nY37aFZCLhWZiiRoTCtKgbdPI=; b=dOP8bIdKrSykQh
	eGj3IZVgdoxt1u6v7A/x7Et45f/ZjGbv7WBa7dIMr3oHB8m5yMVTZDvXrMm12ldeOyiEEjRmLc5c2
	z9I3Tczbwdt11Ylyg3wTZtqAiHTGBiCZGtKnAVRZWNzkN6S7oOilWO73sFAXFEHlrOD9x87AxINns
	0E0m8bewDst3t+P1f7kgoU38bthzZuv/lKEu11tSjXN/R5m5OaKFCzuhUE7SB1PIaGmp4CkeZIXyY
	io1KG+Oq0coeyTvekhTRYZuJT2Y2S9Fd3PCeSaqwyi0+dRPOvkvKJQ+RqJ/6sO6Pi7giqKB6T1T1y
	zfN3ezFdm+2fPbeE2sxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlpod-0008QO-2x; Fri, 12 Jul 2019 07:17:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlpoM-0008P7-Ls; Fri, 12 Jul 2019 07:17:44 +0000
X-UUID: 1756fefe78a0491b82d728b465b589fd-20190711
X-UUID: 1756fefe78a0491b82d728b465b589fd-20190711
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2107442166; Thu, 11 Jul 2019 23:17:04 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 00:17:03 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 15:16:54 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 12 Jul 2019 15:16:55 +0800
Message-ID: <1562915814.27825.2.camel@mtksdaap41>
Subject: Re: [RFC PATCH V2 1/4] dt-bindings: mt8183: Added FD dt-bindings
From: CK Hu <ck.hu@mediatek.com>
To: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
Date: Fri, 12 Jul 2019 15:16:54 +0800
In-Reply-To: <1562661672-22439-2-git-send-email-Jerry-Ch.chen@mediatek.com>
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-2-git-send-email-Jerry-Ch.chen@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 01D485D90E4193B16D3DAB4E8F27AE66C4A63D8F503F77DC805346543E9061B22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_001742_714463_35BD949F 
X-CRM114-Status: GOOD (  14.83  )
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
 po-yang.huang@mediatek.com, suleiman@chromium.org, sj.huang@mediatek.com,
 tfiga@chromium.org, jungo.lin@mediatek.com, shik@chromium.org,
 yuzhao@chromium.org, hans.verkuil@cisco.com, zwisler@chromium.org,
 frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jerry:

On Tue, 2019-07-09 at 16:41 +0800, Jerry-ch Chen wrote:
> From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> 
> This patch adds DT binding documentation for the Face Detection (FD)
> unit of the Mediatek's mt8183 SoC.
> 
> Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> ---
>  .../bindings/media/mediatek,mt8183-fd.txt          | 33 ++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt b/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> new file mode 100644
> index 0000000..0837223
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> @@ -0,0 +1,33 @@
> +* Mediatek Face Detection Unit (FD)
> +
> +Face Detection (FD) unit is a typical memory-to-memory HW device.
> +It provides hardware accelerated face detection function, and it
> +is able to detect different poses of faces. FD will writre result
> +of detected face into memory as output.
> +
> +Required properties:
> +- compatible: "mediatek,mt8183-fd"
> +- mediatek,scp : the node of system control processor (SCP), see
> +  Documentation/devicetree/bindings/remoteproc/mtk,scp.txt for details.
> +- iommus: should point to the 3 entries:  M4U_PORT_CAM_FDVT_RP,
> +  M4U_PORT_CAM_FDVT_WR and M4U_PORT_CAM_FDVT_RB.  (Please see
> +  Documentation/devicetree/bindings/iommu/mediatek,iommu.txt for details.)
> +- reg: Physical base address and length of the register space.
> +- interrupts: interrupt number to the cpu.
> +- clocks : must contain the FDVT clock, see
> +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> +- clock-names: must be "fd".
> +
> +Example:
> +	fd: fd@1502b000 {
> +		compatible = "mediatek,mt8183-fd";
> +		mediatek,scp = <&scp>;
> +		iommus = <&iommu M4U_PORT_CAM_FDVT_RP>,
> +			 <&iommu M4U_PORT_CAM_FDVT_WR>,
> +			 <&iommu M4U_PORT_CAM_FDVT_RB>;
> +		reg = <0 0x1502b000 0 0x1000>;
> +		interrupts = <GIC_SPI 269 IRQ_TYPE_LEVEL_LOW>;
> +		clocks = <&imgsys CLK_IMG_FDVT>;
> +		clock-names = "fd";

This device has no power-domain?

Regards,
CK

> +	};
> +



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
