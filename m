Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 708E881037
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 04:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKvmPN6H46hI5gIwdgoeqWuwOfGLXBm8wZYQW1iTA3g=; b=BBlre/OWjmB/7G
	4aqhOsZ5AA0FBzhePmKD1X4UszQRs5trEbPemijKEl9TIeL2H0Sd1XpCDHWjf5NF4m+7KhW5uq97k
	tG2u7d6/NutJf9fommrgXToXE6VEcTQn0z8+EtJxePoMwbIeV/sSsmNOmxarRBQ/G3AnnWJvKL4cl
	wLQX3qw30pnhCiu/KKuvqAHDIF2imF7CG2w9l+VHOtGOd8cSMBcuOFaK7wDnM5AAXMHBMwX1zyJ1+
	4MbddzNIYBAs9Z00RzM7qieENQL5Lv0e2Z/MPwOjBvjcBwLJufPxtvJs/dD7YiscKWvghNfHXnhcd
	6vhBheV6WQ1mRA8YAHiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huSRu-0005CX-29; Mon, 05 Aug 2019 02:10:10 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huSRg-0005C6-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 02:09:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 252C41A49;
 Sun,  4 Aug 2019 22:09:55 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 04 Aug 2019 22:09:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=XBfRrOQ28Bn+dCVbtL/ZXEglGYrMofD
 3T7NHTUbCGus=; b=mcNcSbS3jqoT+fARV0rhU/KYGsg1XoJzD6O0EzyD0fEeohG
 Qn0ybiF/rgmUvgYm7rx9hLHJutnSr/dlBpTAo1mkdEIgE9oPY17ZOXiCanAwHx8V
 FdHtCRu++VLAqm+TXZJC/GsddLiWKHMByiMMnXzDUNHrO6AKLGlXJV+UNWq+cQ75
 FjTgsYe65CM+tZ+RytZpaudBtKVxNc1XSmuZwRSfTHdxuA7qhvwC+1M03HwwfukU
 FDGYvN0w9u/VO5JtBFc7/p0P7WbmDm3Muz1XC77HM+lHVtRJ0tW1IfkGq0znccik
 +ZowCe3p948n9SNIeURdEik60jg+syqn5x5Rh6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=XBfRrO
 Q28Bn+dCVbtL/ZXEglGYrMofD3T7NHTUbCGus=; b=XAhkIWjraQDNfj8Ln4XOn0
 krfY0KMrL/WoxaX9h4DdGNeOTMkx9/nOV8LpP9AvcJmwGmPbsxevW+b+5pFhM8ND
 +P00XNZvUiFNiGqffV2UcEUAje9ZoSkX8Ibp2pC63SWA1w4gycTGGAQPjegidwHL
 3FH5dctwQldUwCpHc0aEdgh+auckc/yjDv083un0IODk8uq9+HvlPRknPVRmGwl6
 34BzJl5B1nC5vQMSS7ooU8goSyhbYztyrGgfXKzTx5W5Cfhxcwfy/oRuO+XiGwh0
 +oSc3rrGYSS2ybFnPgjCX4AgoxvoY/PvGXWW1rVvkoFO1gJFJiRjd6c3f3qY/stg
 ==
X-ME-Sender: <xms:8Y9HXYb7l6c3PoV6udmqdX-5qwVreBaDUpLuz8ujd_gORaw7hx1LXQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddtiedgheefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuffhomh
 grihhnpeguvghvihgtvghtrhgvvgdrohhrghenucfrrghrrghmpehmrghilhhfrhhomhep
 rghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:8Y9HXcdxp1TCjdVnT84ZgR3Q6xoxj1Oosqj2ja9cMoSFnIpQrGwJQw>
 <xmx:8Y9HXcCYZPX61iQHG4psCd9kqFlGT53FhzDxWp3NjlnlkNo5WnCzdQ>
 <xmx:8Y9HXeYI9E4bCPmueGXR8dy2XGmodPJW_NoTAm6qS5pjqTdN8SnsZw>
 <xmx:849HXdgizRiGKNWOzJOr02dYh8SsEubJJJ5mgGfYO-9us33ezf2t7A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 9D405E00A2; Sun,  4 Aug 2019 22:09:53 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-799-g925e343-fmstable-20190729v1
Mime-Version: 1.0
Message-Id: <35aaa5a4-1e0d-4f64-8985-36e2c01ccc05@www.fastmail.com>
In-Reply-To: <CAL_Jsq+oZRREV=VjYUxT3WphOa5tBaF1pvS_JKSphBY=3XB5MA@mail.gmail.com>
References: <20190730062316.32037-1-andrew@aj.id.au>
 <20190730062316.32037-2-andrew@aj.id.au>
 <CAL_Jsq+oZRREV=VjYUxT3WphOa5tBaF1pvS_JKSphBY=3XB5MA@mail.gmail.com>
Date: Mon, 05 Aug 2019 11:40:17 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rob Herring" <robh+dt@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: mmc: Document Aspeed SD controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_190956_677190_37BA9B81 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 2 Aug 2019, at 08:29, Rob Herring wrote:
> On Tue, Jul 30, 2019 at 12:23 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the
> > SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> > data bus if only a single slot is enabled.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> >
> > ---
> > v3:
> > * Fix compatible enums
> > * Add AST2600 compatibles
> > * Describe #address-cells / #size-cells
> > ---
> >  .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 100 ++++++++++++++++++
> >  1 file changed, 100 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > new file mode 100644
> > index 000000000000..dd2a00c59641
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > @@ -0,0 +1,100 @@
> > +# SPDX-License-Identifier: GPL-2.0-or-later
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ASPEED SD/SDIO/eMMC Controller
> > +
> > +maintainers:
> > +  - Andrew Jeffery <andrew@aj.id.au>
> > +  - Ryan Chen <ryanchen.aspeed@gmail.com>
> > +
> > +description: |+
> > +  The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the SDIO
> > +  Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit data bus if
> > +  only a single slot is enabled.
> > +
> > +  The two slots are supported by a common configuration area. As the SDHCIs for
> > +  the slots are dependent on the common configuration area, they are described
> > +  as child nodes.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - aspeed,ast2400-sd-controller
> > +      - aspeed,ast2500-sd-controller
> > +      - aspeed,ast2600-sd-controller
> > +  reg:
> > +    maxItems: 1
> > +    description: Common configuration registers
> > +  "#address-cells":
> > +    const: 1
> > +  "#size-cells":
> > +    const: 1
> > +  ranges: true
> > +  clocks:
> > +    maxItems: 1
> > +    description: The SD/SDIO controller clock gate
> > +
> > +patternProperties:
> > +  "^sdhci@[0-9a-f]+$":
> 
> This should probably have:
> 
> allOf:
>   - $ref: mmc-controller.yaml
> 
> Another new thing in 5.3. :)

Ack.

> 
> > +    type: object
> > +    properties:
> > +      compatible:
> > +        enum:
> > +          - aspeed,ast2400-sdhci
> > +          - aspeed,ast2500-sdhci
> > +          - aspeed,ast2600-sdhci
> > +      reg:
> > +        maxItems: 1
> > +        description: The SDHCI registers
> > +      clocks:
> > +        maxItems: 1
> > +        description: The SD bus clock
> > +      interrupts:
> > +        maxItems: 1
> > +        description: The SD interrupt shared between both slots
> > +    required:
> > +      - compatible
> > +      - reg
> > +      - clocks
> > +      - interrupts
> > +
> > +additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#address-cells"
> > +  - "#size-cells"
> > +  - ranges
> > +  - clocks
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/aspeed-clock.h>
> > +    sdc@1e740000 {
> > +            compatible = "aspeed,ast2500-sd-controller";
> > +            reg = <0x1e740000 0x100>;
> > +            #address-cells = <1>;
> > +            #size-cells = <1>;
> > +            ranges = <0 0x1e740000 0x10000>;
> > +            clocks = <&syscon ASPEED_CLK_GATE_SDCLK>;
> > +
> > +            sdhci0: sdhci@100 {
> > +                    compatible = "aspeed,ast2500-sdhci";
> > +                    reg = <0x100 0x100>;
> > +                    interrupts = <26>;
> > +                    sdhci,auto-cmd12;
> 
> Not documented. Maybe should be common, but there's only a few users.

I'll document it locally for the moment.

Cheers,

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
