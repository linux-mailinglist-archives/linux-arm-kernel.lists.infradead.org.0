Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E2F4BAAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4jjjfmeHGiXGbFoP25uUABGd7C1/aWk75LJGQwAt+g=; b=PfaVHgIFEOecKX
	SIeXpMJTIt5dMvt+W8TtLLr55OJRQXxCi/iKMT9g2vzqJzObxtP0TPWj2W5pPlb78SCrRcAGu1Pqf
	aR729eo2zQ3DTGmyUHKnUPWRosGr/r2pxvpKEAh1RsT3v9irwxnjlhiDpe12rguT2uHPYppULrDYn
	Jr3fvMwqXZvF11TyVBsfXwjHAFqKbMaLm5yialqHm+A3TE3xOywirdV61O5chRGbMnm2Wp9L1LaEm
	wxQOVJg4OhpNxdVIGoSoU+1RwMGFddpr0QXf4mp0CIGET1hgRbMrwVzzmaBG+GYEuyI94ULwJmdUn
	aQ7zsSIjw9PI3KeP2iZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbBd-0003x2-VM; Wed, 19 Jun 2019 14:03:41 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbBT-0003vo-MZ
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:03:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g/6LlihmMyA9edalIxizKqgeDYFzECLoXeUK/dZh79M=; b=5MzChjyZGap1Y6rGKxn+CiNR/P
 34z6le3HpVkCKRfX2P6R5Fuv+EcVLn/CkrSkFlu70ZkNck4VhFnPTz3pRFR3oA8GM/mAjItrM4Kav
 z/YpNbdI/CmKi6uaqf/30+8Rto7w75+NYufMlHfTW6R2Z1sZUtWqMHmTK7YuHZc/OBMM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hdbBD-0001kz-0q; Wed, 19 Jun 2019 16:03:15 +0200
Date: Wed, 19 Jun 2019 16:03:14 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v3 01/16] dt-bindings: net: Add YAML schemas for the
 generic Ethernet options
Message-ID: <20190619140314.GC18352@lunn.ch>
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_070331_891656_852213A2 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Rob Herring <robh@kernel.org>,
 Antoine =?iso-8859-1?Q?T=E9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime

> +  phy-connection-type:
> +    description:
> +      Operation mode of the PHY interface
> +    enum:
> +      # There is not a standard bus between the MAC and the PHY,
> +      # something proprietary is being used to embed the PHY in the
> +      # MAC.

...

> +
> +  phy-mode:
> +    $ref: "#/properties/phy-connection-type"
> +    deprecated: true

I don't think phy-mode is actually deprecated. ethernet.txt actually says:

"This is now a de-facto standard property;" and no mentions that is
should not be used. Looking at actual device trees, phy-mode is by far
more popular than phy-connection-type.

fwnode_get_phy_mode() first looks for phy-mode and only falls back to
phy-connection-type if it is not present. The same is true for
of_get_phy_mode().

> +  fixed-link:
> +    allOf:
> +      - if:
> +          type: array
> +        then:
> +          minItems: 1
> +          maxItems: 1
> +          items:
> +            items:
> +              - minimum: 0
> +                maximum: 31
> +                description:
> +                  Emulated PHY ID, choose any but unique to the all
> +                  specified fixed-links
> +
> +              - enum: [0, 1]
> +                description:
> +                  Duplex configuration. 0 for half duplex or 1 for
> +                  full duplex
> +
> +              - enum: [10, 100, 1000]
> +                description:
> +                  Link speed in Mbits/sec.
> +
> +              - enum: [0, 1]
> +                description:
> +                  Pause configuration. 0 for no pause, 1 for pause
> +
> +              - enum: [0, 1]
> +                description:
> +                  Asymmetric pause configuration. 0 for no asymmetric
> +                  pause, 1 for asymmetric pause
> +

This array of 5 values format should be marked as deprecated.

> +
> +      - if:
> +          type: object
> +        then:
> +          properties:
> +            speed:
> +              allOf:
> +                - $ref: /schemas/types.yaml#definitions/uint32
> +                - enum: [10, 100, 1000]

This recently changed, depending on context. If PHYLINK is being used,
any speed is allowed. If phylib is used, then only these speeds are
allowed. And we are starting to see some speeds other than listed
here.

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
