Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4765D28A04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 21:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzsSoGDj2u3QTYqAQQ70YggfrAA7c/PrjvP2/P3yCPY=; b=Sm+U69xnqDQsU6
	TxlA3NBgyg9TN8HGQWMXQP0zigQ9Mvp1CTiRzJ98DFrNBz7/KzjDK/43ogPCQ5ubnxpgh2GkKjZZV
	nKrCgrOfNKmabxLcK6UCthgLwYiBLSk0T5IAyuZBmmqwu2P/ngF9GqxO6Q/Ns/2Mg2PM+dYo7LKbw
	aEnPYkME0aY5KNbRuwyL+CTXXT1OPiWc5IoMzYPZyL3nOrAivB64M1wmLxQbk1scFv4dQJaU/AeRp
	pJ46+zGwQCb32lN5D6ESNX7RDCsrhwQwJDygp8gu2907ArUCcXsRwSyb5DHwA5rnY8z9Xbbb7NGUJ
	rnxT2SZ8JVMBICWlaQ4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTto3-0000RW-LY; Thu, 23 May 2019 19:55:15 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtnx-0000MK-On
 for linux-arm-kernel@bombadil.infradead.org; Thu, 23 May 2019 19:55:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JPhADjxTP71UqzRQCbkzb9W1mSQNNL0J0kiEG3gP/GE=; b=votaoC9JheDCRjH+qjriGZc0a
 8rh1skhDbaIt2RSsM20faPU4L7E4F8oS0JqWu0nc72K/tAJDvgYKwlmaKuBnMfWJaozkSrK/rpMp8
 53lCZ00PoshXT5S709fiqJUD/YMUoUirMCpkI+84orrfRE18P8i8Yx9zlnkBcOu0JWLUgsgyzozzI
 E04gvCcvmY1lOE5k6jl2weT2xlwSJMCG6/x2m8XGOTWyX2ltPC78/xxYA0RCZVFxGKD8AAi6Qer4d
 jsaEr/2I63ZZSACfstV2NVBBsj7X5R4hDC4FBrI1OXxUzjCNifo1x2hL4ZYo/mAtKZe7Ohn7Ld+vK
 Pwzw8zXYA==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtnu-0003Ub-CE
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 19:55:07 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 915DD240004;
 Thu, 23 May 2019 19:54:26 +0000 (UTC)
Date: Thu, 23 May 2019 21:54:26 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/8] dt-bindings: net: Add YAML schemas for the generic
 Ethernet options
Message-ID: <20190523195426.jmlpmofvm3mqw247@flea>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqJnFUt55b+AGpcNNjvsKsHNz9PY+b7FJ4+6CMNppzb3vg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJnFUt55b+AGpcNNjvsKsHNz9PY+b7FJ4+6CMNppzb3vg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_155506_517860_CA87D100 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

Thanks for the review,

On Thu, May 23, 2019 at 08:10:22AM -0500, Rob Herring wrote:
> > +  fixed-link:
> > +    allOf:
> > +      - if:
> > +          type: array
> > +        then:
> > +          minItems: 1
> > +          maxItems: 1
> > +          items:
> > +            type: array
> > +            minItems: 5
> > +            maxItems: 5
> > +          description:
> > +            An array of 5 cells, with the following accepted values
> > +              - At index 0, the emulated PHY ID, choose any but but
> > +                unique to the all specified fixed-links, from 0 to 31
> > +              - at index 1, duplex configuration with 0 for half duplex
> > +                or 1 for full duplex
> > +              - at index 2, link speed in Mbits/sec, accepted values are
> > +                10, 100 and 1000
> > +              - at index 3, pause configuration with 0 for no pause, 1
> > +                for pause
> > +              - at index 4, asymmetric pause configuration with 0 for no
> > +                asymmetric pause, 1 for asymmetric pause
>
> Looks like constraints to me:
>
> items:
>   - minimum: 0
>     maximum: 31
>   - enum: [ 0, 1 ]
>   - enum: [ 10, 100, 1000 ]
> ...

Yeah, we should definitely do something like that. I tried and failed,
but that looks like the right solution.

> > +
> > +
> > +      - if:
>
> Couldn't this be an 'else' and avoid the allOf?

I don't really know, we could go both ways. Which one would be the
more verbose in the case where someone would just have a boolean
instead of the node or the array?

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
