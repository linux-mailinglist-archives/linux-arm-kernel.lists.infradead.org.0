Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FD9135910
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 13:21:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYc5o9UYVbJRnBZfXiUlvQfktgyspjJTtkYAzHBeADQ=; b=j80KszcanXA2th
	jjhjiiPiAvd3HtOYa8UoACuZGhJnQdLnv1xUZlk3LOQcpd9UCw4eIv3Kxfklt4cni0JXOFEvwNqF/
	2cx7OLtbpV4vIMS20Vzn2GiRU3HdeMO898AieoEhmld3wVs78gvAYPgyu/f35xu0CkYYcskKFjpNV
	kS5LXLj4b58n5AJtiwN+fGZpSZ3KGBdoAZbRdYfJV0zvcSb2btWFa9IoXvc5k6dMuBzezFgPCA9hk
	RU/A/y9k/kzyA53EJdvyourhmBnDFr5T03R8mpfEl4VKeavgV4y8SyTjFayrs31HkrfotqmY7Ujeu
	v1ISVQ/lwD2XzuLQ06Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWo2-0005n4-Rx; Thu, 09 Jan 2020 12:20:54 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWns-0005mJ-U4
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 12:20:46 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 09 Jan 2020 21:20:44 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 345DE180093;
 Thu,  9 Jan 2020 21:20:44 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 9 Jan 2020 21:21:34 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id EB0AE1A01CF;
 Thu,  9 Jan 2020 21:20:43 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id B48FF120456;
 Thu,  9 Jan 2020 21:20:43 +0900 (JST)
Date: Thu, 09 Jan 2020 21:20:43 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: dmaengine: Add UniPhier external DMA
 controller bindings
In-Reply-To: <20200108035537.GA7843@bogus>
References: <1576630620-1977-2-git-send-email-hayashi.kunihiko@socionext.com>
 <20200108035537.GA7843@bogus>
Message-Id: <20200109212043.5800.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_042045_196919_674B6D87 
X-CRM114-Status: GOOD (  25.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Thank you for your comment.

On Tue, 7 Jan 2020 21:55:37 -0600 <robh@kernel.org> wrote:

> On Wed, Dec 18, 2019 at 09:56:59AM +0900, Kunihiko Hayashi wrote:
> > Add external DMA controller bindings implemented in Socionext UniPhier
> > SoCs.
> > 
> > Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> > ---
> >  .../devicetree/bindings/dma/uniphier-xdmac.txt     | 86 ++++++++++++++++++++++
> >  1 file changed, 86 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/dma/uniphier-xdmac.txt
> 
> Please make this a DT schema. See 
> Documentation/devicetree/writing-schema.rst.

Although I'm not familiar with this format, I'll try to make it.

> > 
> > diff --git a/Documentation/devicetree/bindings/dma/uniphier-xdmac.txt b/Documentation/devicetree/bindings/dma/uniphier-xdmac.txt
> > new file mode 100644
> > index 00000000..4e3927f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/dma/uniphier-xdmac.txt
> > @@ -0,0 +1,86 @@
> > +Socionext UniPhier external DMA controller bindings
> > +
> > +This describes the devicetree bindings for an external DMA engine to perform
> > +memory-to-memory or peripheral-to-memory data transfer, implemented in
> > +Socionext UniPhier SoCs.
> > +
> > +* DMA controller
> > +
> > +Required properties:
> > +- compatible: Should be "socionext,uniphier-xdmac".
> > +- reg: Specifies offset and length of the register set for the device.
> > +- interrupts: An interrupt specifier associated with the DMA controller.
> > +- #dma-cells: Must be <2>. The first cell represents the channel index.
> > +	The second cell represents the factor for transfer request.
> > +	This is mentioned in DMA client section.
> > +- dma-channels : Number of DMA channels supported. Should be 16.
> 
> If always 16, then why do you need this?

Oh, currently this means 16 or less, though, this is the number supported
by the controller. I'll fix it.

> 
> > +
> > +Example:
> > +	xdmac: dma-controller@5fc10000 {
> > +		compatible = "socionext,uniphier-xdmac";
> > +		reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> > +		interrupts = <0 188 4>;
> > +		#dma-cells = <2>;
> > +		dma-channels = <16>;
> > +	};
> > +
> > +* DMA client
> > +
> > +Required properties:
> > +- dmas: A list of DMA channel requests.
> > +- dma-names: Names of the requested channels corresponding to dmas.
> > +
> > +DMA clients must use the format described in the dma.txt file, using a two cell
> > +specifier for each channel.
> 
> No need to redefine the client binding here. Just need the cell format 
> as below.

I see. I'll replace with the cell format.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
