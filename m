Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0B8114B93
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 05:05:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y7PNFj3avBDYIyU/t9k6xaakgCR+PN6NSg2EisyRM/s=; b=m9Hftqvhu9njXd
	h5tyKPHAMwwbZ7GA/QjxYGOndHXzq+PJb+26W8GM1mYegObfgUb50PmSSdd/zxcMHmdB5Yfm4VZQX
	01BOsMU19AE6eYSWYevxJoYRBX6TMOhno/xzyiNqy+53FBV1bvToW1z6VH5BvAor/flhuet6yTkqW
	AIufBkZnCWKQBIvrn4IMA1xK59wodl6O+xJyARV/8DNqxxaEqS6iP5gFQU1h710djV1h6n7RSIU0s
	LBLuLisou2IB8lqUtdlFcEQjOauPvy/uM+Y9sPJaceEZL1jXtrieeIz4ORMWB5huQg6VZNs1WmE5u
	5Xl0Ckn/qqZhpiBn83xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id4sG-0004pB-EM; Fri, 06 Dec 2019 04:05:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id4s9-0004oi-Bf; Fri, 06 Dec 2019 04:05:42 +0000
X-UUID: 0a38db9cf884475684b993c59901454d-20191205
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=CV7DAlbfexttU47r175IIVk9wg60txROOSVKG7NLYFA=; 
 b=Y52jFYLB+9X280FVFRBpAuANp9f36YN5zyXlYCynNuptFZ/OLgJ0CBIPuaSgIw4z+zOjd4mZdyc0Q82fbWyAxSjE0+byY/oGMHC71qShnz8zmbqKpS4CvR/HORqdk+fIYJDPJiIoWVLfyFnldB0JaU+HQeqitXNKmAOtho/mQXc=;
X-UUID: 0a38db9cf884475684b993c59901454d-20191205
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1287684418; Thu, 05 Dec 2019 20:05:38 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 20:06:30 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 12:05:19 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 6 Dec 2019 12:05:09 +0800
Message-ID: <1575605122.6151.2.camel@mtksdaap41>
Subject: Re: [PATCH v2 05/14] arm64: dts: add gce node for mt6779
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Fri, 6 Dec 2019 12:05:22 +0800
In-Reply-To: <1574819937-6246-7-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1574819937-6246-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1574819937-6246-7-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_200541_403875_58C0C0A0 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-11-27 at 09:58 +0800, Dennis YC Hsieh wrote:
> add gce device node for mt6779
> 
> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>

Reviewed-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt6779.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt6779.dtsi b/arch/arm64/boot/dts/mediatek/mt6779.dtsi
> index daa25b75788f..10d59385f4a1 100644
> --- a/arch/arm64/boot/dts/mediatek/mt6779.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt6779.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/clock/mt6779-clk.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/gce/mt6779-gce.h>
>  
>  / {
>  	compatible = "mediatek,mt6779";
> @@ -159,6 +160,15 @@
>  			#clock-cells = <1>;
>  		};
>  
> +		gce: mailbox@10228000 {
> +			compatible = "mediatek,mt6779-gce";
> +			reg = <0 0x10228000 0 0x4000>;
> +			interrupts = <GIC_SPI 185 IRQ_TYPE_LEVEL_LOW>;
> +			#mbox-cells = <3>;
> +			clocks = <&infracfg_ao CLK_INFRA_GCE>;
> +			clock-names = "gce";
> +		};
> +
>  		uart0: serial@11002000 {
>  			compatible = "mediatek,mt6779-uart",
>  				     "mediatek,mt6577-uart";

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
