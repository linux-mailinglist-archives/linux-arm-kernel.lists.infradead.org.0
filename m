Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B8DE3B83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 21:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFab6QkRwrLhVaQfkTEPrIuAhxXfYhbQIq/bvOVbSmo=; b=IwJSTI1tWCYrzL
	SHI+LosIp6gTgKSSWZekTw9CcN+tdqGgeWFm3THXYMs8nhylhw0LoPnXcoqc5xnQ6ML23ZRTC74R2
	wrVo1DvJUUFTlW8U/hXyttQk/geZbAvpw13AMtXz81exiTcDlJY4gLi+ZKfA3bAIby8HPljp779Wj
	0dMf+JjaL0VUsOcL5M58/tYeatfxmIpV+O7ckgREGKIYWDiM1oCZ0ocTy6mV+CiEWtP+XZdYFt4Lc
	4ELoFAMR0b1ItRIXthv/1IqX3i3ZAnacLCT9H9ahK+TzcBp0JLDonnHFX/Ka3FVH3JOwjI/ENayNw
	KKRJAt7wR3TA7fg7KmaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNiLE-0004zy-FV; Thu, 24 Oct 2019 19:00:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNiKv-0004yK-4s
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 18:59:54 +0000
Received: from localhost (unknown [109.190.253.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E6C42166E;
 Thu, 24 Oct 2019 18:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571943587;
 bh=a+uIvZuoQVHuTrFvBOzthw/TKu6zM/j2cbpgzHnS7NU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WcOVK2MoQPmQQSsCISXcIBuI7zyFW7PCPi3sEWyZrvsujyJU9KqXd8Lz9FuUcEycP
 LovoXS6q0NzSjx0T9bwgKdiO0D2IdOC+9eCmPibS/8rcntyqRQWHweq3RvmcIYOhW0
 RouTokS1q8E5knnKBp9KdlV/2jWAkeeZMIoYyjos=
Date: Thu, 24 Oct 2019 20:24:05 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: crypto: Add DT bindings
 documentation for sun8i-ss Security System
Message-ID: <20191024182405.a4x5vc4hxwsev2hp@hendrix>
References: <20191023201016.26195-1-clabbe.montjoie@gmail.com>
 <20191023201016.26195-3-clabbe.montjoie@gmail.com>
 <20191024065005.hdypdl2dgqsrry5i@gilmour>
 <20191024093118.GA15113@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024093118.GA15113@Red>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_115953_227070_FFE565A8 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [109.190.253.11 listed in zen.spamhaus.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 11:31:18AM +0200, Corentin Labbe wrote:
> On Thu, Oct 24, 2019 at 08:50:05AM +0200, Maxime Ripard wrote:
> > Hi,
> >
> > On Wed, Oct 23, 2019 at 10:10:14PM +0200, Corentin Labbe wrote:
> > > This patch adds documentation for Device-Tree bindings of the
> > > Security System cryptographic offloader driver.
> > >
> > > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > > ---
> > >  .../bindings/crypto/allwinner,sun8i-ss.yaml   | 64 +++++++++++++++++++
> > >  1 file changed, 64 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
> > > new file mode 100644
> > > index 000000000000..99b7736975bc
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
> > > @@ -0,0 +1,64 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/crypto/allwinner,sun8i-ss.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Allwinner Security System v2 driver
> > > +
> > > +maintainers:
> > > +  - Corentin Labbe <corentin.labbe@gmail.com>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - allwinner,sun8i-a83t-crypto
> > > +      - allwinner,sun9i-a80-crypto
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: Bus clock
> > > +      - description: Module clock
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: bus
> > > +      - const: mod
> > > +
> > > +  resets:
> > > +    maxItems: 1
> >
> > The A83t at least has a reset line, so please make a condition to have
> > it required.
> >
>
> Hello
>
> The A80 have one also, so I need to set minItems: 1
> But setting both minItems: 1 and maxItems:1 lead to a check failure:
>
> properties:resets: {'minItems': 1, 'maxItems': 1} is not valid under
> any of the given schemas
>
> How to do that ?

IIRC the meta-schema prevent having both because the tooling will
insert it for you.

It doesn't really matter at this level though. maxItems alone will
make sure that there's a single element, and the schemas in the tools
will make sure that the type for resets is correct.

What you'd need here though would be to add resets to the list of
required properties, otherwise it will only be checked against if the
property is there.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
