Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987BA27FEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoZR83fS6z7YHE+gXusfyIKLJ5FU17dPZlhPAfV5Rog=; b=Hi/IK8PweDFDIQ
	lWym0VeVqsQgklg5oHJyv2wO62xZ9u5X8DycPj1PjBvzcfDDAbRXlGePSk4Wv2N0jcrzHxQzKl9u2
	Z2ZwtmyHu2fd2jK0PZYxLeJpehOOrqjgMAwXBa4tbG58pYvvoxZOmR3yxC+ZhVlnKMYtAwwRLnEr0
	K3+we14dxmOkikIQYeUnWhtKs9W7spBJ0pEzr193vBzuLXGIg00Fex/0izfTiHfAAuFTjSNqg4FtK
	Qld2QwO9PlpnK4jVJT6GXG+nbTqbJK30/+PFeqxfSEopaasIt7VYPnT5yCZRiM+7LF+oip7fjYEVY
	zxrqy6izTxOvbGLNsU1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTorC-0008Eh-IE; Thu, 23 May 2019 14:38:10 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTor5-0008EC-5q
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:38:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ENx3kqedT/0klsMuf6qE0zDvG+kSozHAtQW6A5pcGGc=; b=OmcCPX/Rl/CibSt6QsRQi2K4ka
 vK9N7FzgvEl0MjXlIi8SxTA/wP98YUhM3sdDE7aDmBlBJCxTNb8xfvVfZxah2l4adFwurpZbEGYJA
 wRA0EfIRapEFD1q83khflFZL24g1GHkeji54fcjg6IHJVes/5mLsE2K/ZnH9bu+lf0Cg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hToqm-0005Z2-EC; Thu, 23 May 2019 16:37:44 +0200
Date: Thu, 23 May 2019 16:37:44 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 2/8] dt-bindings: net: Add a YAML schemas for the generic
 PHY options
Message-ID: <20190523143744.GB19369@lunn.ch>
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <aa5ec90854429c2d9e2c565604243e1b10cfd94b.1558605170.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa5ec90854429c2d9e2c565604243e1b10cfd94b.1558605170.git-series.maxime.ripard@bootlin.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_073803_367231_33595A6B 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Antoine =?iso-8859-1?Q?T=E9nart?= <antoine.tenart@bootlin.com>,
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

On Thu, May 23, 2019 at 11:56:45AM +0200, Maxime Ripard wrote:
> The networking PHYs have a number of available device tree properties that
> can be used in their device tree node. Add a YAML schemas for those.
> 
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/net/ethernet-phy.yaml | 148 +++++++++-
>  Documentation/devicetree/bindings/net/phy.txt           |  80 +-----
>  2 files changed, 149 insertions(+), 79 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/ethernet-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> new file mode 100644
> index 000000000000..eb79ee6db977
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> @@ -0,0 +1,148 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/ethernet-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Ethernet PHY Generic Binding
> +
> +maintainers:
> +  - David S. Miller <davem@davemloft.net>
> +
> +properties:
> +  $nodename:
> +    pattern: "^ethernet-phy(@[a-f0-9])?$"
> +
> +  compatible:
> +    oneOf:

I don't know the language. It is valid to have both
ethernet-phy-ieee802.3-c45 and
ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$".  Does this oneOf prevent
multiple compatible strings?

Also, the general case is no compatible at all.

> +      - const: ethernet-phy-ieee802.3-c22
> +        description: PHYs that implement IEEE802.3 clause 22
> +      - const: ethernet-phy-ieee802.3-c45
> +        description: PHYs that implement IEEE802.3 clause 45
> +      - pattern: "^ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$"
> +        description:
> +          The first group of digits is the 16 bit Phy Identifier 1
> +          register, this is the chip vendor OUI bits 3:18. The
> +          second group of digits is the Phy Identifier 2 register,
> +          this is the chip vendor OUI bits 19:24, followed by 10
> +          bits of a vendor specific ID.

Could we try to retain:

> -  If the PHY reports an incorrect ID (or none at all) then the
> -  "compatible" list may contain an entry with the correct PHY ID in the
     ...

Using it is generally wrong, and that is not clear in the new text.

> +
> +  reg:
> +    maxItems: 1
> +    minimum: 0
> +    maximum: 31
> +    description:
> +      The ID number for the PHY.
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  max-speed:
> +    enum:
> +      - 10
> +      - 100
> +      - 1000

This is outdated in the text description. Any valid speed is
supported, currently 10 - 200000, as listed in phy_setting settings().

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
