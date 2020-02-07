Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8CC154FF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 02:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3yPWOnO3h2UZw9xOqQea8P9IhwEtML6iOpPGo6gKdQ=; b=Gg9R3ncUY7iSZh
	X641DJzlxA8TvTBQIEWEYmIvJl9DGLUMgZQc2aZkVyji/MQoQa4nXN4dZjYsbX9okkN6e/KMIwrkT
	YA1ntHh9PzWnHlF3dqvV0xkNm316LPtWlx3AgIwKb2BScdBWxDGPM0RMWoCwnMQ8tzuZv+uDiOcmh
	ljguBXvNGuY3mAu8QWpVv+wtD6bdg2h/L3WrDeWMSp3TLqnffsNNJH5LqkkRsGDu6x6+zFMQdU48t
	Zf4i7LrPDdqYyGkJvAMMi9w6kyUV9pbyidEKbIys9NOEPWTcTYcPK7ptiBcr4lb0X2Y6EJywBv6MV
	j+qaJXKZ4KgZBSErk8DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izsF3-0002lK-3A; Fri, 07 Feb 2020 01:15:33 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izsEw-0002iN-QG
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 01:15:28 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 07 Feb 2020 10:15:20 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 3B949180237;
 Fri,  7 Feb 2020 10:15:20 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Fri, 7 Feb 2020 10:15:20 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id B18EA40365;
 Fri,  7 Feb 2020 10:15:19 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 780A3120133;
 Fri,  7 Feb 2020 10:15:19 +0900 (JST)
Date: Fri, 07 Feb 2020 10:15:19 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: dmaengine: Add UniPhier external DMA
 controller bindings
In-Reply-To: <20200206175458.GA12845@bogus>
References: <1580362048-28455-2-git-send-email-hayashi.kunihiko@socionext.com>
 <20200206175458.GA12845@bogus>
Message-Id: <20200207101519.6F78.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_171527_089592_E3EDAB7D 
X-CRM114-Status: GOOD (  27.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Thank you for reviewing.
Your comments are helpful as I'm not familiar with the new bindings yet.

On Thu, 6 Feb 2020 17:54:58 +0000 <robh@kernel.org> wrote:

> On Thu, Jan 30, 2020 at 02:27:27PM +0900, Kunihiko Hayashi wrote:
> > Add devicetree binding documentation for external DMA controller
> > implemented on Socionext UniPhier SoCs.
> > 
> > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > ---
> >  .../bindings/dma/socionext,uniphier-xdmac.yaml     | 57 ++++++++++++++++++++++
> >  1 file changed, 57 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> > new file mode 100644
> > index 00000000..32abf18
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> > @@ -0,0 +1,57 @@
> > +# SPDX-License-Identifier: GPL-2.0
> 
> Dual license new bindings:
> 
> (GPL-2.0-only OR BSD-2-Clause)

I'll replace with it.

> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/dma/socionext,uniphier-xdmac.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Socionext UniPhier external DMA controller
> > +
> > +description: |
> > +  This describes the devicetree bindings for an external DMA engine to perform
> > +  memory-to-memory or peripheral-to-memory data transfer capable of supporting
> > +  16 channels, implemented in Socionext UniPhier SoCs.
> > +
> > +maintainers:
> > +  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > +
> > +allOf:
> > +  - $ref: "dma-controller.yaml#"
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - const: socionext,uniphier-xdmac
> 
> You can drop 'items' for a single item.

I see.
I found some documents didn't have expression for a compatible string.

> > +
> > +  reg:
> > +    minItems: 1
> > +    maxItems: 2
> 
> You need to say what each entry is:
> 
> items:
>   - description: ...
>   - description: ...

Surely there must be descriotions here.

> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  "#dma-cells":
> > +    const: 2
> > +    description: |
> > +      DMA request from clients consists of 2 cells:
> > +        1. Channel index
> > +        2. Transfer request factor number, If no transfer factor, use 0.
> > +           The number is SoC-specific, and this should be specified with
> > +           relation to the device to use the DMA controller.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - "#dma-cells"
> 
> Add:
> 
> additionalProperties: false

I'll add it.

> > +
> > +examples:
> > +  - |
> > +    xdmac: dma-controller@5fc10000 {
> > +        compatible = "socionext,uniphier-xdmac";
> > +        reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> > +        interrupts = <0 188 4>;
> > +        #dma-cells = <2>;
> > +        dma-channels = <16>;
> 
> Not documented. You need at least 'dma-channels: true' to indicate 
> you're using this. But you should be able to have some constraints such 
> as 'maximum: 16'.

I forgot to document 'dma-channels'. I'll add it.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
