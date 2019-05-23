Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7947028B38
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 22:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kDwXBiZO1pojMwHF+1G5/iHJUAiI4iUCQL0CTGuPFk=; b=cGunaM+7fPwRVA
	vFv3nmLi6rUu3oXM/iUzWtJ8tU02SgMZkT6O61jaFOupBY15w75v+0y3F6PabdBkgi2sVc5akmcJX
	8IjC3EAKRy23BM++4Om6ceppx5NXAswNXI35k3c1EqveA7WBDgd0RqgPYBrVvgclJPu76bI2npX6I
	mK/QaarIWoAPGpzCWHsYkeEAOFMFN0nYVpiXmois5S7B86gfyCOjJD5W0USUkDAxQ69tXL47HYMCh
	kgChtAAj7VDJ7Rsoc9H26EiN/WmDJBXAwD09tgYS9v9MRngphdh2UZbecC/2kYc8SnjJtnniB2OTw
	j96F+Ba2pOqCBBzUBNkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTtuw-0002ay-PW; Thu, 23 May 2019 20:02:22 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtuo-0002aC-Bi
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 20:02:16 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 6398FC0006;
 Thu, 23 May 2019 20:01:53 +0000 (UTC)
Date: Thu, 23 May 2019 22:01:52 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 2/8] dt-bindings: net: Add a YAML schemas for the generic
 PHY options
Message-ID: <20190523200152.c2sz6mrzxgblslya@flea>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <aa5ec90854429c2d9e2c565604243e1b10cfd94b.1558605170.git-series.maxime.ripard@bootlin.com>
 <20190523143744.GB19369@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523143744.GB19369@lunn.ch>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_130214_703614_DB628DF7 
X-CRM114-Status: GOOD (  25.55  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

(Sorry for not CC'ing you on this)

On Thu, May 23, 2019 at 04:37:44PM +0200, Andrew Lunn wrote:
> On Thu, May 23, 2019 at 11:56:45AM +0200, Maxime Ripard wrote:
> > The networking PHYs have a number of available device tree properties that
> > can be used in their device tree node. Add a YAML schemas for those.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/net/ethernet-phy.yaml | 148 +++++++++-
> >  Documentation/devicetree/bindings/net/phy.txt           |  80 +-----
> >  2 files changed, 149 insertions(+), 79 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/net/ethernet-phy.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> > new file mode 100644
> > index 000000000000..eb79ee6db977
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> > @@ -0,0 +1,148 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/net/ethernet-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Ethernet PHY Generic Binding
> > +
> > +maintainers:
> > +  - David S. Miller <davem@davemloft.net>
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^ethernet-phy(@[a-f0-9])?$"
> > +
> > +  compatible:
> > +    oneOf:
>
> I don't know the language. It is valid to have both
> ethernet-phy-ieee802.3-c45 and
> ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$".  Does this oneOf prevent
> multiple compatible strings?

I haven't tested it, I will make sure it works

> Also, the general case is no compatible at all.

This is covered already. The description here just mentions the values
available if the property is set.

The required keyword a bit later lists the required property. In this
case, compatible is omitted so we just list the available values for
the compatible property.

> > +      - const: ethernet-phy-ieee802.3-c22
> > +        description: PHYs that implement IEEE802.3 clause 22
> > +      - const: ethernet-phy-ieee802.3-c45
> > +        description: PHYs that implement IEEE802.3 clause 45
> > +      - pattern: "^ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$"
> > +        description:
> > +          The first group of digits is the 16 bit Phy Identifier 1
> > +          register, this is the chip vendor OUI bits 3:18. The
> > +          second group of digits is the Phy Identifier 2 register,
> > +          this is the chip vendor OUI bits 19:24, followed by 10
> > +          bits of a vendor specific ID.
>
> Could we try to retain:
>
> > -  If the PHY reports an incorrect ID (or none at all) then the
> > -  "compatible" list may contain an entry with the correct PHY ID in the
>      ...
>
> Using it is generally wrong, and that is not clear in the new text.

Ok, I'll add it back.

> > +
> > +  reg:
> > +    maxItems: 1
> > +    minimum: 0
> > +    maximum: 31
> > +    description:
> > +      The ID number for the PHY.
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  max-speed:
> > +    enum:
> > +      - 10
> > +      - 100
> > +      - 1000
>
> This is outdated in the text description. Any valid speed is
> supported, currently 10 - 200000, as listed in phy_setting settings().

Ack, I'll update it

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
