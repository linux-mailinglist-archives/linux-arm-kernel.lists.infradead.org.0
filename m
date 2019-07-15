Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCBF68A84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zd1JkUuCRzUtZ+wLPfN0KoVa9aluOS5iRR58iKKvH8=; b=hkrxfn5/5gJNSE
	SS8iAD6g1Rf2d6TLVm2k/ezz5WY+TKfhypEy1mpPmrnktxAJ8ztP/o+eB7ZPO2G/xtB1wahpbb4UR
	QuZcwgV5KKbS3sGE6yYm5tvRqCpk5QqAe/5x6v9LslJzlaenZ586vJAw4vIG9wKQAapWjlfMX8aO7
	2qAiI6uKpjZ1AK7q3+t1Z8XaszaneOGKaXJrBfLzDaEUPNxzzn08NfBYCF+o7ddWtblLqdueZJMUJ
	KlZSgxkB/zPOJfEgF6B+ATLES1y6KOoHkf/lyCEerDivaPW0FGqUmVQMBOiGoHrjVtMPYDjpXSqVO
	jAk4QEYH87eaGxhiZuXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn10k-00080c-Vj; Mon, 15 Jul 2019 13:27:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn10Y-000803-F7
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 13:27:12 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B74F2086C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 13:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563197229;
 bh=GxnhC/Ih/eTne4sAYFx1uwwKG/I5gMIwXQArnlAPCUg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NLvzd1fskhQwU1pIotSqBV89rbfMbVYWIngSGmpeuEsPxyKyJnFQ8pXKBNWzMEjxg
 D3ZoCNenBJ/ixDifgar+e716Ela2R+/V7T8rYIsf7M9DlVgKO3dZHd/aFNgOg05S+q
 IBso2tRwQXwTgPA9bnI/MYh0VNhzV0kjKVeP+6Yk=
Received: by mail-qt1-f179.google.com with SMTP id n11so15545615qtl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 06:27:09 -0700 (PDT)
X-Gm-Message-State: APjAAAUCC/QYSC0PR80wF6eVVj0605bbL4MU287tLdWo/1i7R5MYo28j
 BoFYDOdixubLzZui8mBzRGoEfGNr6GgWNBylsw==
X-Google-Smtp-Source: APXvYqwvshJ20th9zSr6jf5QHFCKYj9JX7MhdNWF2Jwas5AFsAL8CZaYemA4OyF7S4hIa5OiVvjidb5D3A9mE6urluU=
X-Received: by 2002:ac8:368a:: with SMTP id a10mr18044197qtc.143.1563197228400; 
 Mon, 15 Jul 2019 06:27:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190712033214.24713-1-andrew@aj.id.au>
 <20190712033214.24713-2-andrew@aj.id.au>
 <20190712131028.ba4d4jetg4btsx4u@flea>
 <5c831fd3-d0e2-474b-8a6e-8f51f92fbdf8@www.fastmail.com>
In-Reply-To: <5c831fd3-d0e2-474b-8a6e-8f51f92fbdf8@www.fastmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 15 Jul 2019 07:26:57 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK+oLFZof1zpvUs_Siek=+Rc+CPYL-_oE0KuiXwunr0vA@mail.gmail.com>
Message-ID: <CAL_JsqK+oLFZof1zpvUs_Siek=+Rc+CPYL-_oE0KuiXwunr0vA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: Document Aspeed SD controller
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_062710_538382_10245688 
X-CRM114-Status: GOOD (  25.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
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

On Sun, Jul 14, 2019 at 8:30 PM Andrew Jeffery <andrew@aj.id.au> wrote:
>
>
>
> On Fri, 12 Jul 2019, at 22:41, Maxime Ripard wrote:
> > Hi,
> >
> > On Fri, Jul 12, 2019 at 01:02:13PM +0930, Andrew Jeffery wrote:
> > > The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the
> > > SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> > > data bus if only a single slot is enabled.
> > >
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > ---
> > > In v2:
> > >
> > > * Rename to aspeed,sdhci.yaml
> > > * Rename sd-controller compatible
> > > * Add `maxItems: 1` for reg properties
> > > * Move sdhci subnode description to patternProperties
> > > * Drop sdhci compatible requirement
> > > * #address-cells and #size-cells are required
> > > * Prevent additional properties
> > > * Implement explicit ranges in example
> > > * Remove slot property
> > >
> > >  .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 90 +++++++++++++++++++
> > >  1 file changed, 90 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > > new file mode 100644
> > > index 000000000000..67a691c3348c
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> > > @@ -0,0 +1,90 @@
> > > +# SPDX-License-Identifier: GPL-2.0-or-later
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: ASPEED SD/SDIO/eMMC Controller
> > > +
> > > +maintainers:
> > > +  - Andrew Jeffery <andrew@aj.id.au>
> > > +  - Ryan Chen <ryanchen.aspeed@gmail.com>
> > > +
> > > +description: |+
> > > +  The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the SDIO
> > > +  Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit data bus if
> > > +  only a single slot is enabled.
> > > +
> > > +  The two slots are supported by a common configuration area. As the SDHCIs for
> > > +  the slots are dependent on the common configuration area, they are described
> > > +  as child nodes.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum: [ aspeed,ast2400-sd-controller, aspeed,ast2500-sd-controller ]
> > > +  reg:
> > > +    maxItems: 1
> > > +    description: Common configuration registers
> > > +  ranges: true
> > > +  clocks:
> > > +    maxItems: 1
> > > +    description: The SD/SDIO controller clock gate
> >
> > #address-cells and #size-cells have not been described here.
> >
> > > +patternProperties:
> > > +  "^sdhci@[0-9a-f]+$":
> > > +    type: object
> > > +    properties:
> > > +      compatible:
> > > +        enum: [ aspeed,ast2400-sdhci, aspeed,ast2500-sdhci ]
> > > +      reg:
> > > +        maxItems: 1
> > > +        description: The SDHCI registers
> > > +      clocks:
> > > +        maxItems: 1
> > > +        description: The SD bus clock
> > > +      interrupts:
> > > +        maxItems: 1
> > > +        description: The SD interrupt shared between both slots
> > > +    required:
> > > +      - compatible
> > > +      - reg
> > > +      - clocks
> > > +      - interrupts
> > > +
> > > +additionalProperties: false
> >
> > But that means that it will generate a warning in your DT if you ever
> > use them.
> >
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - "#address-cells"
> > > +  - "#size-cells"
> > > +  - ranges
> > > +  - clocks
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/aspeed-clock.h>
> > > +    sdc@1e740000 {
> > > +            compatible = "aspeed,ast2500-sd-controller";
> > > +            reg = <0x1e740000 0x100>;
> > > +            #address-cells = <1>;
> > > +            #size-cells = <1>;
> >
> > Starting with your example.
>
> Heh, right. Thanks. I was inspecting the output of the `dt_binding_check` and
> `dtbs_check` make targets, though maybe I overlooked this. The aspeed dtsis
> do generate a quite a number of warnings which make it hard to parse, so I'm
> going to send a series to clean that up too.

FYI, This will run checks with only the schema file you specify:

make dtbs_check DT_SCHEMA_FILES=path/to/schema/file

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
