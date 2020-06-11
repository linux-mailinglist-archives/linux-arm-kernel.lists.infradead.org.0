Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBF91F6323
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 10:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4E57TWIrrb4iPccf4zLvnsVeqCX5fy0xbV0s3r0tqfk=; b=UVhpFMaIcHIO9z
	NgxwIupI2BoM1E4kJrAn9+UX75X608yGBUbAuRLB0biASdwjRVQEN1sF4+uJxJxGUB7KhoeC0NSV+
	wzG9IGSwcG/+7q2zxPpAiHOuecXlfAGuGWYmOtYxjEtipZdNEvOrzLqRhRK+MfBk7y+TscAK0eMZS
	alXJBE3dYAnfOdGgFJF9xfvqA4MB+SDtii3PB5mJQbijU8MQL1hSd+OfwrUWrN+Pe+Xz9exOOXM8Y
	WncZzSlrpu0oeqnbr2yw9STfl8OwHJrZJhB78texZJUVWovykadtbvMgho3J8j8ld4BGQ/+UZuFMq
	V8lyR72NZ07SQJXAjUuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjI8g-0001rp-49; Thu, 11 Jun 2020 08:00:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjI8X-0001rF-Fb; Thu, 11 Jun 2020 08:00:35 +0000
X-UUID: ec3bea5c96074b0c985b96a5ecae4d0c-20200611
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ymFyA3aRkGFQ0hwS3c5JqbCS9zGTSs9AXR5E+TUVjRw=; 
 b=IMcY6+ndne/pmzJYoDIvoKGGLZDsmRyLtkaBoT9f9k3kS042rQr2UNfVVjFsMNaU0TIrg1vDpeIFOhntx/+VzslwpHRyXvmBu/Aw5OmqYguvwR5+02g/yR/n8LERFqQ/VcTlDVb05mwkpoo8Ar5MVDjfgePkYsYuOZW1mxMvjLM=;
X-UUID: ec3bea5c96074b0c985b96a5ecae4d0c-20200611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1554295; Thu, 11 Jun 2020 00:00:01 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 11 Jun 2020 01:00:12 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 11 Jun 2020 16:00:10 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 11 Jun 2020 16:00:10 +0800
Message-ID: <1591862411.23595.5.camel@mtkswgap22>
Subject: Re: [PATCH v4 1/4] dt-bindings: dmaengine: Add MediaTek
 Command-Queue DMA controller bindings
From: EastL <EastL.Lee@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 11 Jun 2020 16:00:11 +0800
In-Reply-To: <20200529192443.GA2785767@bogus>
References: <1590659832-31476-1-git-send-email-EastL.Lee@mediatek.com>
 <1590659832-31476-2-git-send-email-EastL.Lee@mediatek.com>
 <20200529192443.GA2785767@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E454FB0951BC790B45883925983748159758D5FE3D941C0A086BA0DD8420AA522000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_010033_526631_CBFED0D0 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, vkoul@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-05-29 at 13:24 -0600, Rob Herring wrote:
> On Thu, May 28, 2020 at 05:57:09PM +0800, EastL wrote:
> > Document the devicetree bindings for MediaTek Command-Queue DMA controller
> > which could be found on MT6779 SoC or other similar Mediatek SoCs.
> > 
> > Signed-off-by: EastL <EastL.Lee@mediatek.com>
> 
> Need a full name

OK
> .
> 
> > ---
> >  .../devicetree/bindings/dma/mtk-cqdma.yaml         | 100 +++++++++++++++++++++
> >  1 file changed, 100 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml b/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
> > new file mode 100644
> > index 0000000..045aa0c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
> > @@ -0,0 +1,100 @@
> > +# SPDX-License-Identifier: GPL-2.0
> 
> Dual license new bindings:
> 
> (GPL-2.0-only OR BSD-2-Clause)

OK
> 
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/dma/mtk-cqdma.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MediaTek Command-Queue DMA controller Device Tree Binding
> > +
> > +maintainers:
> > +  - EastL <EastL.Lee@mediatek.com>
> > +
> > +description:
> > +  MediaTek Command-Queue DMA controller (CQDMA) on Mediatek SoC
> > +  is dedicated to memory-to-memory transfer through queue based
> > +  descriptor management.
> > +
> 
> Need a $ref to dma-controller.yaml

OK
> 
> > +properties:
> > +  "#dma-cells":
> > +    minimum: 1
> > +    # Should be enough
> > +    maximum: 255
> > +    description:
> > +      Used to provide DMA controller specific information.
> > +
> > +  compatible:
> > +    const: mediatek,cqdma
> 
> Needs SoC specific compatible string(s).
OK
> 
> > +
> > +  reg:
> > +    minItems: 1
> > +    maxItems: 255
> 
> You can have 255 register regions?
No, I'll fix maxItems to 5
> 
> You need to define what each region is if more than 1.
> 
> > +
> > +  interrupts:
> > +    minItems: 1
> > +    maxItems: 255
> 
> 255 interrupts?

the same, 5 interripts.
> 
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: cqdma
> > +
> > +  dma-channel-mask:
> > +    description:
> > +      Bitmask of available DMA channels in ascending order that are
> > +      not reserved by firmware and are available to the
> > +      kernel. i.e. first channel corresponds to LSB.
> > +      The first item in the array is for channels 0-31, the second is for
> > +      channels 32-63, etc.
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +    items:
> > +      minItems: 1
> > +      # Should be enough
> > +      maxItems: 255
> 
> This already has a definition in dma-common.yaml. Don't copy-n-paste 
> it. Just add any constraints you have. Like what is the max number of 
> channels?

OK, the max channel number is 5, I'll fix it on next version.
> 
> > +
> > +  dma-channels:
> > +    $ref: /schemas/types.yaml#definitions/uint32
> > +    description:
> > +      Number of DMA channels supported by the controller.
> > +
> > +  dma-requests:
> > +    $ref: /schemas/types.yaml#definitions/uint32
> > +    description:
> > +      Number of DMA request signals supported by the controller.
> 
> Same comment on these 2.

OK
> 
> > +
> > +required:
> > +  - "#dma-cells"
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - dma-channel-mask
> > +  - dma-channels
> > +  - dma-requests
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/clock/mt6779-clk.h>
> > +    cqdma: dma-controller@10212000 {
> > +        compatible = "mediatek,cqdma";
> > +        reg = <0 0x10212000 0 0x80>,
> > +            <0 0x10212080 0 0x80>,
> > +            <0 0x10212100 0 0x80>;
> 
> Examples default to 1 cell each for address and size.
OK
> 
> > +        interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_LOW>,
> > +            <GIC_SPI 140 IRQ_TYPE_LEVEL_LOW>,
> > +            <GIC_SPI 141 IRQ_TYPE_LEVEL_LOW>;
> > +        clocks = <&infracfg_ao CLK_INFRA_CQ_DMA>;
> > +        clock-names = "cqdma";
> > +        dma-channel-mask = <63>;
> > +        dma-channels = <3>;
> > +        dma-requests = <32>;
> > +        #dma-cells = <1>;
> > +    };
> > +
> > +...
> > -- 
> > 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
