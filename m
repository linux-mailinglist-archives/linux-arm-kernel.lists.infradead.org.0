Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9676A12F403
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 06:11:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Hm1PoTJXXt7TbtcW9wRX0Oilb/9h7lB/AtARR1OFbc=; b=iKvZG/+f6WmMTF
	wLFc3UKvY89kXFsTlzh6h9dm+lXfi8+Vs8LubR872bduZO59PxSOmuqTk1QYTRXnyUQtJ8Y8Yd+is
	sXdRXKtTEIGR5qqcgjRAYG+gOSeyOW8aiwULY1+lVKtpOEB8ixxcEBeAb+Ji0qvb/9Io7QoZSYzIt
	9SvDu15M16645OpEtNWhCQtrlaIyUH7nspCagub2tQpVz/M0M/htwzVreRGrAUm17LdpVd0uf6K70
	LB8EHoHDkdwGb/hhJ+3G1EJCS5UT7BSW6X/OXMoEOpx8GpHiiZCKiwaRu49cb3aQ2Wu0saNS+DWbn
	/Pj6+y2NnH/KUiyLENLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inFEd-0000wq-7i; Fri, 03 Jan 2020 05:10:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inFEU-0000wG-Ke; Fri, 03 Jan 2020 05:10:48 +0000
X-UUID: db2464a7b7cc41a7ac60c5d2f4a4c066-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=IHfE2/cUwA9PEC02rixYfsxdmjk+Xm9SLy2M7/wL2z0=; 
 b=gLoH/uxpS5v/wPVDWh1RDv2Z1+spfEKGpl4N58+bzVp7JoTGjqDD45E80mZ1QQQaUV3byb5rS5EtFSXJRxBvT5XHi6FRh3dNvO5NyBIl9qDDJ6y/Cj5ukchHCdNVivkDJSco+yUq2zYnlqrJ4gjDW+T4xqTUuVjwOJ0UEVfVgpA=;
X-UUID: db2464a7b7cc41a7ac60c5d2f4a4c066-20200102
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1101560080; Thu, 02 Jan 2020 21:10:42 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 21:11:04 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Jan 2020 13:10:07 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 3 Jan 2020 13:11:06 +0800
Message-ID: <1578028238.31107.2.camel@mtksdaap41>
Subject: Re: [RESEND PATCH v6 01/17] dt-bindings: mediatek: add
 rdma_fifo_size description for mt8183 display
From: CK Hu <ck.hu@mediatek.com>
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
Date: Fri, 3 Jan 2020 13:10:38 +0800
In-Reply-To: <1578021148-32413-2-git-send-email-yongqiang.niu@mediatek.com>
References: <1578021148-32413-1-git-send-email-yongqiang.niu@mediatek.com>
 <1578021148-32413-2-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CA0325267D1E118D9AC11A3B80C3B2A10A2F0AF8FD38E2509178C262CC5F8E2C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_211046_683970_4AF9C7E6 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Fri, 2020-01-03 at 11:12 +0800, Yongqiang Niu wrote:
> Update device tree binding documention for rdma_fifo_size
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,disp.txt  | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> index 681502e..34bef44 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
> @@ -70,6 +70,10 @@ Required properties (DMA function blocks):
>    argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
>    for details.
>  
> +Required properties (DMA function blocks):
> +- mediatek,rdma_fifo_size: rdma fifo size may be different even in same SOC, add this
> +  property to the corresponding rdma

I think "mediatek,rdma_fifo_size" is not a 'required' property. In
mt8173.dtsi [1], there is no mediatek,rdma_fifo_size in rdma0, rdma1,
and rdma2. So I think you should move this to 'optional' property.

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/mediatek/mt8173.dtsi?h=v5.5-rc4

Regards,
CK

> +
>  Examples:
>  
>  mmsys: clock-controller@14000000 {
> @@ -211,3 +215,12 @@ od@14023000 {
>  	power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  	clocks = <&mmsys CLK_MM_DISP_OD>;
>  };
> +
> +rdma1: rdma@1400c000 {
> +	compatible = "mediatek,mt8183-disp-rdma";
> +	reg = <0 0x1400c000 0 0x1000>;
> +	interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_LOW>;
> +	power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> +	clocks = <&mmsys CLK_MM_DISP_RDMA1>;
> +	mediatek,rdma_fifo_size = <2048>;
> +};
> \ No newline at end of file

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
