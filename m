Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD63519B95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLooCgqoJ33tHdMTcAjrK0hknqG6v5EPOxW8jM89WSc=; b=U8/jaZhBofrTkn
	Ijo9/McN3e6SBEn97W+Jox6vUtSQFlRUoz45RvMMl1GLlmafyHxZUv3MAoy/V5E8BdpMGL4XhmZh/
	BOloRPjL/pYqKVXGz1K2KW5WIE2nvdnL7cCSLt7sz2NYSBU864/mgzzeW+EdofU86tA1ab1huQMMO
	PjwV4bYT5uEMR33QeUuwbjJJbKbaFWLK/n1HJlEmTkBqMsJ7HD7hEWfWJrdVeuUYQ0bY+V+UKEclQ
	cj950N45mjJHkV5MSTHLx6HRNpKn5lG4CZC49ZzqX219xNYNL+QyGP+sFGkzztmrmkz0LGNLLvoNE
	jzYxEwhrj3hsKRSgR6dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2jr-0004BQ-Of; Fri, 10 May 2019 10:26:51 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2jk-00049y-46
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:26:45 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id DF1B520001C;
 Fri, 10 May 2019 10:26:28 +0000 (UTC)
Date: Fri, 10 May 2019 12:26:28 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 2/2] dt-bindings: sound: sun4i-spdif: Document that
 the RX channel can be missing
Message-ID: <20190510102628.u344cqe7sftuamfg@flea>
References: <dc84c7e9ce272109052f553a5e050bfe1a09e9d6.1557252411.git-series.maxime.ripard@bootlin.com>
 <d9afb19c32f8b9b2c40c8d4c0c3df74bff0ccf35.1557252411.git-series.maxime.ripard@bootlin.com>
 <CAL_Jsq+iLmzti5TX-TUU3PN4taC66UMqHMk-aKTjZKt1kVRtMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+iLmzti5TX-TUU3PN4taC66UMqHMk-aKTjZKt1kVRtMQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_032644_318312_23081CB5 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Wed, May 08, 2019 at 02:35:10PM -0500, Rob Herring wrote:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: allwinner,sun8i-h3-spdif
> > +
> > +    then:
> > +      properties:
> > +        dmas:
> > +          maxItems: 1
>
> In this and below, these should get added automatically by
> fixup_schema. If not present, we set minItems/maxItems to the size of
> the items list. It look like you added support for that, so left over
> from before you addressed that for if/then/else?

Sorry, I should have brought that up in the pull request.

It seems that it's still necessary when using allOf, otherwise the
schema won't match

Maybe there's something more to fix when using allOf?

> > +          items:
> > +            - description: RX DMA Channel
>
> s/RX/TX/
>
> > +
> > +        dma-names:
> > +          maxItems: 1
> > +          items:
> > +            - const: tx
> > +
> > +    else:
> > +      properties:
> > +        dmas:
> > +          minItems: 2
> > +          maxItems: 2
> > +          items:
> > +            - description: RX DMA Channel
> > +            - description: TX DMA Channel
> > +
> > +        dma-names:
> > +          minItems: 2
> > +          maxItems: 2
> > +          items:
> > +            - const: rx
> > +            - const: tx
>
> I'm really on the fence whether it's worth it to add all this just add
> the restrictions based on the compatible. I guess with copy-n-paste
> this would be a common error.

Converting most of the bindings to the schemas has shown that (at
least in our case), we've been pretty bad at keeping the documentation
up to date with that kind of information.

Adding that kind of construct at least has the benefit to actively
enforce that the documentation is complete.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
