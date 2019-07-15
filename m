Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AA468240
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 04:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRl1Uxc4OdkNP24je9t1CiguJNDyf340DmS/7V87Q4U=; b=KLscZl4ELSoCEW
	JNnnBguhrBfT+J5OoQaQymqrtsJ52EkdbyGwij5/RwRblOdp+hxvSzjoXFBuGtgS3jLEOyzWEmUO0
	ROw4uPfaUK+Aup+QNCD7xRymp0OTodg7j3e4W6I/xPhJHc5zugkNVJ6I690RlpAP1Ft8Zjw5VEdBL
	WbZEb3DFL8Z/COfAMAAtUYmxXTt/bHGe8TR+p0P+KaOHrPBo7k/aCkYFjXKMlJwBLsnliGar/yHjv
	asHOnTIGoOXZdg8tWuO8cY+Rk+slVRWN8+zAB8cSGYq6oStSb+NoP3UAenROqNHTFK8FCDe4bR7ru
	rCeRSTe6mJRa8rXSWWtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmqlY-0004qx-Ui; Mon, 15 Jul 2019 02:31:01 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmqlJ-0004qG-Cj
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 02:30:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4827F2438;
 Sun, 14 Jul 2019 22:30:44 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 14 Jul 2019 22:30:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=8PAqwlgjdusJcJsV/ER++KrpN/QjUb2
 C+McWIpc95aI=; b=Zn7MMKTG/N0hIAqpr6U2P3rR8uuih0dpktX5UP23GxBiqKb
 IGq6Mu5YcLnJIAxNsYZg9fpMdKVLX+4jPgNpSdRiy3o4M8EQAtl5MaIWyDuF9QAm
 kntRmYY9LydzG3kOyRDebZN1ZSzwoCDcCtAtfHb/ersKcB5W3g/maymJRiWgqrB9
 X3IpJtQ8Z35klRtN+fJvZbpRgyoq7Q9IFt97ATA733OvBC9xM2Gi7k32JUKfTW9q
 3YjnMoizzpTHg8FCvruuV4rTF9AQrmuqAbZVCKLZfHkZfbNWDvJJUjO+/Xi6ExX0
 uid+AiW5y/M933n5uasEL/a6Il8L2svkaKomZtA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=8PAqwl
 gjdusJcJsV/ER++KrpN/QjUb2C+McWIpc95aI=; b=HKUWpvyhh5HjlEXQ6PnAt9
 LpFcYzeykPSA7yiyLihVw0GUoc1aQ/2A49XiPxOwMs3Bc0x2H6NFz0ThyafkXPMf
 caJazejBSLzCMzPqNduLp31hniMgl5zeuqozHCoRNWUfSe8KbejWB/cFbhsezkI4
 iNJXN7gHsZD2vo4xNuItJtf56p9+nAbtqrvDuCG5b0Sk92ZAmrBJzXvKVnwqsJVk
 URBX/iCM7gjyeb1t21TcKLzLInPCXisGHtRJzpa967X4ZxLj53iErveQkzsOj4ij
 sVQe8Zm2yIQRihKjDSqjqLUS70IPCOInjC5R+JU5+fy/Ui1uGCCFpkNTpjxGp/yg
 ==
X-ME-Sender: <xms:UuUrXZQIHtCvu8L0EFuL5VK5wZkueralwqJ-7qRNZyaCQlnCkqkQWA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrheejgdeffecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepsghoohhtlhhinhdrtghomhdpuggvvhhitggvthhrvggvrdhorhhgnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrh
 fuihiivgeptd
X-ME-Proxy: <xmx:UuUrXc2p2HFO4fIvPUthNItjF-iEv3Uw-kOVSQPdOo5PVgHJp7BzOQ>
 <xmx:UuUrXTzGdH5Ae_5p9EwuNR1Hs46Ks1guoCO3vHcyUJhJLxxYkkMGmw>
 <xmx:UuUrXYwyEAMIvev_3xEU_XwF0jr81pklcAWuDkexuZeAdG54yw9VAQ>
 <xmx:VOUrXcfV9pE5yGkvpr2ppxUq4JYI9NYjE2gYtsssTyY_CiEak84BLg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 495A7E00CC; Sun, 14 Jul 2019 22:30:42 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <5c831fd3-d0e2-474b-8a6e-8f51f92fbdf8@www.fastmail.com>
In-Reply-To: <20190712131028.ba4d4jetg4btsx4u@flea>
References: <20190712033214.24713-1-andrew@aj.id.au>
 <20190712033214.24713-2-andrew@aj.id.au>
 <20190712131028.ba4d4jetg4btsx4u@flea>
Date: Mon, 15 Jul 2019 12:00:51 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Maxime Ripard" <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: Document Aspeed SD controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_193045_575302_CCDE1623 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 12 Jul 2019, at 22:41, Maxime Ripard wrote:
> Hi,
> 
> On Fri, Jul 12, 2019 at 01:02:13PM +0930, Andrew Jeffery wrote:
> > The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the
> > SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> > data bus if only a single slot is enabled.
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> > In v2:
> >
> > * Rename to aspeed,sdhci.yaml
> > * Rename sd-controller compatible
> > * Add `maxItems: 1` for reg properties
> > * Move sdhci subnode description to patternProperties
> > * Drop sdhci compatible requirement
> > * #address-cells and #size-cells are required
> > * Prevent additional properties
> > * Implement explicit ranges in example
> > * Remove slot property
> >
> >  .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 90 +++++++++++++++++++
> >  1 file changed, 90 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > new file mode 100644
> > index 000000000000..67a691c3348c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > @@ -0,0 +1,90 @@
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
> > +    enum: [ aspeed,ast2400-sd-controller, aspeed,ast2500-sd-controller ]
> > +  reg:
> > +    maxItems: 1
> > +    description: Common configuration registers
> > +  ranges: true
> > +  clocks:
> > +    maxItems: 1
> > +    description: The SD/SDIO controller clock gate
> 
> #address-cells and #size-cells have not been described here.
> 
> > +patternProperties:
> > +  "^sdhci@[0-9a-f]+$":
> > +    type: object
> > +    properties:
> > +      compatible:
> > +        enum: [ aspeed,ast2400-sdhci, aspeed,ast2500-sdhci ]
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
> 
> But that means that it will generate a warning in your DT if you ever
> use them.
> 
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
> 
> Starting with your example.

Heh, right. Thanks. I was inspecting the output of the `dt_binding_check` and
`dtbs_check` make targets, though maybe I overlooked this. The aspeed dtsis
do generate a quite a number of warnings which make it hard to parse, so I'm
going to send a series to clean that up too.

Andrew

> 
> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 
> Attachments:
> * signature.asc

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
