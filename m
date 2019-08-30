Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FCBA2EC5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 07:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W14fr5wpKSGrysAFbVP3z20qfAFnwXJWusGarXoYpvM=; b=PMK1sZET51XacH
	7Lg9xZZajSV/7eyWObFMIb0oEJCjw9hVbvvnxDvFT7G3gtNoqkfeUH8HCgQ+QLlC/grEsV4ZWLvEB
	GqrQUzQ+ZrNSfTpuY4qsrWwHVebt7XXJyXwma+fDxDYLXtgsI8JFgm1kyGVFt1pqFX+KttVptCh+Z
	uz67wWPBZXxrCgF6SvNImtDp5URQvHtP5lAXBzMMGh1uOr36hVxaGmKjHUMrvoeBFA7aV4n5vI+wE
	t7ZZGlbxEwlPB/xJf+1dcUrialocrOBp7j/g3Fh/8WaTgq+I4fxcTF4Hn7+O0p/ThWHuSGs7L5CsS
	etAeoMrEicUNb0g7b8RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ZGi-0008Gr-AF; Fri, 30 Aug 2019 05:16:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ZGD-0008GO-3R; Fri, 30 Aug 2019 05:15:46 +0000
X-UUID: 009652dde76a4a7384b2749c0a3b51be-20190829
X-UUID: 009652dde76a4a7384b2749c0a3b51be-20190829
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 262252725; Thu, 29 Aug 2019 21:15:45 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 22:15:43 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 13:15:34 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 13:15:34 +0800
Message-ID: <1567142129.5942.1.camel@mtksdaap41>
Subject: Re: [PATCH v5, 01/32] dt-bindings: mediatek: add binding for mt8183
 display
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Fri, 30 Aug 2019 13:15:29 +0800
In-Reply-To: <1567090254-15566-2-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-2-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 40D01842456FDB7578DD54B7F9993BB4EE0E3C99E56B99BA4973B50E77C587A62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_221545_149619_DD3E9765 
X-CRM114-Status: GOOD (  14.54  )
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

On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> Update device tree binding documention for the display subsystem for
> Mediatek MT8183 SOCs
> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,display.txt  | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt
> new file mode 100644
> index 0000000..951d2a8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt
> @@ -0,0 +1,21 @@
> +Mediatek Display Device
> +============================
> +
> +The Mediatek Display Device provides power control to the system.
> +
> +Required Properties:
> +
> +- compatible: Should be one of:
> +	- "mediatek,mt8183-display"

I think this is "mediatek,mt8183-mmsys".

Regards,
CK

> +
> +The Display Device power name are defined in
> +include\dt-bindings\power\mt*-power.h
> +
> +
> +Example:
> +
> +display_components: dispsys@14000000 {
> +	compatible = "mediatek,mt8183-display";
> +	reg = <0 0x14000000 0 0x1000>;
> +	power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
> +};
> \ No newline at end of file



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
