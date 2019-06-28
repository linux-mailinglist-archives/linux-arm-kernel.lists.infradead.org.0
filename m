Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAD158F77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 02:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GhwtGkUNF16E2sjBMnJSX4K0zpj8Rdv09t5+lfKuEtA=; b=ZXVr0I2H/AagP1
	BhwBGhgsIYdFXyv5j75gbPMtd8HDMNL1AFxJBshcBPEudaNRXPUsNIt026oh978uVEYHcf8vOK53n
	IhchF5ZZLqoBT3t9U/Er9mPjp2xbJQVUK1H3MnofxkE8nREVpk03ifiNpZGs0xQEvKBLn9Gx050X2
	D8eewPpFAJ44Tf5TFo1InUHdJDNuUYhpgw2qJVhcZE9Fw0TWtZ7g+csi0MXJ2pRVqtwm3QAFgKu++
	fTIFuBZICrfXLla0XeUb+brUpDiTmcRmf/uMlMblP4FeNH0+EAhX4jkUxK7o1PFkZcZejWzEOUQqg
	Hlh90poM+bMmPN4D0PTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgfCa-0003Nd-1r; Fri, 28 Jun 2019 00:57:20 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgfCH-0003NF-2h
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 00:57:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4FE602B27;
 Thu, 27 Jun 2019 20:57:00 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 27 Jun 2019 20:57:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=043I6QRugTZZZzQoRRotbiNYBi8pllQ
 2voPZIJLupLo=; b=EHrMXIN8eIAPLVrxoFl5foWvQZBLG/OiqQRGtFFpLNZmX2i
 mJ+PzQIhS9daSt0UQe3MCkWM7sUZ9MPBt/iiVcQshFQYI8cBfuI1oE+CyJWyuzjN
 sVQ4liK3n7Zq+YJKto5vX1iYsAWT56n9cBF51Ef6ezQVFbhaH40o4gCIWdcbdlse
 iW0+i7dYt8fsCunV9pqtiQMD0OR6Ep3p+x+NGtWQNI0PvFygphdDwEQ/JXuwcLB8
 I/71ZzyeyktMOInAVDy2BbtNmGqEo/ZJx74pXiXTtf8hSsqxVZyvH4E0uMw084m2
 fSkmXkr7pnWP5gIvImMi7sx8wivbXE1awJFQO9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=043I6Q
 RugTZZZzQoRRotbiNYBi8pllQ2voPZIJLupLo=; b=wOakTTjqxxQRr0Ig8nozP8
 nrppHZUg6AlqtBgnXzrXUxnhd3PR6QByxINMyY/bYTamyQOfRsqKlWRbtgHYTZXe
 xSz9Us7YWC30uOEpx3X4qAID1zgm9LVoP6Zxz6Vf81MliCg0cxTq+0DaHmh85DBn
 VcSzMUEgswd+6Pt2PurM6NTWvcfYqudabeG+MC/rTdLH7wpR2YBFKq1TasOF/gZM
 mQpnlw3KrhlbTEfYgt1cHTn4+7f4ZZKYRfAUsa9m+pbNWfm/4K41Y5MVyvtcYnVp
 0NgxGKjVkEx2KTn4HoLjan3W3LntQ6nodCNvcC8ivgM82eDOatXcaqeYqkJ0S9FA
 ==
X-ME-Sender: <xms:2mUVXbl8svb0BJxB_G2OAwq_haIaXm1J8SI23RjvUy1n1em-_mq84Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudelgdegudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepuggvvhhitggvthhrvggvrdhorhhgpdhkvghrnhgvlhdrohhrghenucfrrghrrghm
 pehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghruf
 hiiigvpedt
X-ME-Proxy: <xmx:2mUVXfp0tcHcnsEZ51jICUPGgJGGytPcpTqIcmPqbvU7B4JgPC2reQ>
 <xmx:2mUVXQOrG8rAd0UY9TCILGHT39ieqnWLHbhJ1JCUs2rAmD1u9OfrbA>
 <xmx:2mUVXZauuZuDpkMibuArB-xPHeBfNGPVdAlSntd8-Hvk7MKSV7YWZw>
 <xmx:3GUVXdB5aazI_8p5VYqte25K3cKFgtcutopRmW6uvebFNPsic9TVMw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 40357E00A3; Thu, 27 Jun 2019 20:56:58 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <fc74d4a3-7e7d-414a-8a58-26809ebb66f1@www.fastmail.com>
In-Reply-To: <CAL_JsqJo37LQV9WKx_Zqy8KZ52=37TiGcNbFah6MsJmMYP23XA@mail.gmail.com>
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-3-andrew@aj.id.au>
 <CAL_JsqKXPzFYTHos-uvCUtBj-bcsNfrzt5GjxQ=PmgeXpp5J-A@mail.gmail.com>
 <30d5585b-7591-4149-87c4-816e4c18fb9d@www.fastmail.com>
 <CAL_JsqJo37LQV9WKx_Zqy8KZ52=37TiGcNbFah6MsJmMYP23XA@mail.gmail.com>
Date: Fri, 28 Jun 2019 10:26:57 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rob Herring" <robh+dt@kernel.org>
Subject: =?UTF-8?Q?Re:_[PATCH_2/8]_dt-bindings:_pinctrl:_aspeed:_Convert_AST2400_?=
 =?UTF-8?Q?bindings_to_json-schema?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_175701_277717_07F4CA80 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Fri, 28 Jun 2019, at 00:02, Rob Herring wrote:
> On Wed, Jun 26, 2019 at 9:55 PM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> >
> >
> > On Wed, 26 Jun 2019, at 23:17, Rob Herring wrote:
> > > On Wed, Jun 26, 2019 at 1:21 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> > > > +  The pin controller node should be the child of a syscon node with the
> > > > +  required property:
> > > > +
> > > > +  - compatible:     Should be one of the following:
> > > > +                    "aspeed,ast2400-scu", "syscon", "simple-mfd"
> > > > +                    "aspeed,g4-scu", "syscon", "simple-mfd"
> > > > +
> > > > +  Refer to the the bindings described in
> > > > +  Documentation/devicetree/bindings/mfd/syscon.txt
> > > > +
> > > > +  For the AST2400 pinmux, each mux function has only one associated pin group.
> > > > +  Each group is named by its function. The following values for the function
> > > > +  and groups properties are supported:
> > > > +
> > > > +  ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
> > > > +  ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT EXTRST FLACK FLBUSY FLWP GPID GPID0 GPID2
> > > > +  GPID4 GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4
> > > > +  I2C5 I2C6 I2C7 I2C8 I2C9 LPCPD LPCPME LPCRST LPCSMI MAC1LINK MAC2LINK MDIO1
> > > > +  MDIO2 NCTS1 NCTS2 NCTS3 NCTS4 NDCD1 NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4
> > > > +  NDTR1 NDTR2 NDTR3 NDTR4 NDTS4 NRI1 NRI2 NRI3 NRI4 NRTS1 NRTS2 NRTS3 OSCCLK
> > > > +  PWM0 PWM1 PWM2 PWM3 PWM4 PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 ROM16 ROM8
> > > > +  ROMCS1 ROMCS2 ROMCS3 ROMCS4 RXD1 RXD2 RXD3 RXD4 SALT1 SALT2 SALT3 SALT4 SD1
> > > > +  SD2 SGPMCK SGPMI SGPMLD SGPMO SGPSCK SGPSI0 SGPSI1 SGPSLD SIOONCTRL SIOPBI
> > > > +  SIOPBO SIOPWREQ SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1DEBUG SPI1PASSTHRU
> > > > +  SPICS1 TIMER3 TIMER4 TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2 TXD3 TXD4 UART6
> > > > +  USB11D1 USB11H2 USB2D1 USB2H1 USBCKI VGABIOS_ROM VGAHS VGAVS VPI18 VPI24
> > > > +  VPI30 VPO12 VPO24 WDTRST1 WDTRST2
> > >
> > > This should be a schema. You need to define child nodes and list these
> > > as values for 'function' and 'group'. Ideally, the child nodes would
> > > have some sort of pattern, but if not, you can just match on '^.*$'
> > > under patternProperties.
> >
> > The children don't have any pattern in their node name, which drives
> > me towards the '^.*$' pattern match, however, what I've found is that
> > I get the following errors for some of the relevant dts files:
> >
> > ```
> > /home/andrew/src/linux/aspeed/arch/arm/boot/dts/aspeed-bmc-opp-palmetto.dt.yaml: compatible: ['aspeed,g4-pinctrl'] is not of type 'object'
> > /home/andrew/src/linux/aspeed/arch/arm/boot/dts/aspeed-bmc-opp-palmetto.dt.yaml: pinctrl-names: ['default'] is not of type 'object'
> > /home/andrew/src/linux/aspeed/arch/arm/boot/dts/aspeed-bmc-opp-palmetto.dt.yaml: pinctrl-0: [[7, 8, 9, 10, 11, 12]] is not of type 'object'
> > /home/andrew/src/linux/aspeed/arch/arm/boot/dts/aspeed-bmc-opp-palmetto.dt.yaml: phandle: [[13]] is not of type 'object'
> > /home/andrew/src/linux/aspeed/arch/arm/boot/dts/aspeed-bmc-opp-palmetto.dt.yaml: $nodename: ['pinctrl'] is not of type 'object'
> > /home/andrew/src/linux/aspeed/arch/arm/boot/dts/aspeed-bmc-quanta-q71l.dt.yaml: compatible: ['aspeed,g4-pinctrl'] is not of type 'object'
> > /home/andrew/src/linux/aspeed/arch/arm/boot/dts/aspeed-bmc-quanta-q71l.dt.yaml: pinctrl-names: ['default'] is not of type 'object'
> > /home/andrew/src/linux/aspeed/arch/arm/boot/dts/aspeed-bmc-quanta-q71l.dt.yaml: pinctrl-0: [[9, 10, 11, 12]] is not of type 'object'
> > /home/andrew/src/linux/aspeed/arch/arm/boot/dts/aspeed-bmc-quanta-q71l.dt.yaml: phandle: [[13]] is not of type 'object'
> > /home/andrew/src/linux/aspeed/arch/arm/boot/dts/aspeed-bmc-quanta-q71l.dt.yaml: $nodename: ['pinctrl'] is not of type 'object'
> > ```
> >
> 
> The problem is "^.*$" matches both properties and child nodes.
> 
> > We shouldn't be expecting these properties in the child nodes, so
> > something is busted. Looking at processed-schema.yaml, we have:
> >
> > ```
> > - $filename: /home/andrew/src/linux/aspeed/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
> >   $id: http://devicetree.org/schemas/pinctrl/aspeed,ast2400-pinctrl.yaml#
> >   $schema: http://devicetree.org/meta-schemas/core.yaml#
> >   patternProperties:
> >     ^.*$:
> >       patternProperties:
> >         ^function|groups$:
> >           allOf:
> >           - {$ref: /schemas/types.yaml#/definitions/string}
> >           - additionalItems: false
> >             items:
> >               enum: [ACPI, ADC0, ADC1, ADC10, ADC11, ADC12, ADC13, ADC14, ADC15, ADC2,
> >                 ADC3, ADC4, ADC5, ADC6, ADC7, ADC8, ADC9, BMCINT, DDCCLK, DDCDAT,
> >                 EXTRST, FLACK, FLBUSY, FLWP, GPID, GPID0, GPID2, GPID4, GPID6, GPIE0,
> >                 GPIE2, GPIE4, GPIE6, I2C10, I2C11, I2C12, I2C13, I2C14, I2C3, I2C4,
> >                 I2C5, I2C6, I2C7, I2C8, I2C9, LPCPD, LPCPME, LPCRST, LPCSMI, MAC1LINK,
> >                 MAC2LINK, MDIO1, MDIO2, NCTS1, NCTS2, NCTS3, NCTS4, NDCD1, NDCD2,
> >                 NDCD3, NDCD4, NDSR1, NDSR2, NDSR3, NDSR4, NDTR1, NDTR2, NDTR3, NDTR4,
> >                 NDTS4, NRI1, NRI2, NRI3, NRI4, NRTS1, NRTS2, NRTS3, OSCCLK, PWM0,
> >                 PWM1, PWM2, PWM3, PWM4, PWM5, PWM6, PWM7, RGMII1, RGMII2, RMII1, RMII2,
> >                 ROM16, ROM8, ROMCS1, ROMCS2, ROMCS3, ROMCS4, RXD1, RXD2, RXD3, RXD4,
> >                 SALT1, SALT2, SALT3, SALT4, SD1, SD2, SGPMCK, SGPMI, SGPMLD, SGPMO,
> >                 SGPSCK, SGPSI0, SGPSI1, SGPSLD, SIOONCTRL, SIOPBI, SIOPBO, SIOPWREQ,
> >                 SIOPWRGD, SIOS3, SIOS5, SIOSCI, SPI1, SPI1DEBUG, SPI1PASSTHRU, SPICS1,
> >                 TIMER3, TIMER4, TIMER5, TIMER6, TIMER7, TIMER8, TXD1, TXD2, TXD3,
> >                 TXD4, UART6, USB11D1, USB11H2, USB2D1, USB2H1, USBCKI, VGABIOS_ROM,
> >                 VGAHS, VGAVS, VPI18, VPI24, VPI30, VPO12, VPO24, WDTRST1, WDTRST2]
> >             maxItems: 1
> >             minItems: 1
> >             type: array
> >         pinctrl-[0-9]+: true
> >       properties: {phandle: true, pinctrl-names: true, status: true}
> >       type: object
> >     pinctrl-[0-9]+: true
> >   properties:
> >     $nodename: true
> >     compatible:
> >       additionalItems: false
> >       items:
> >       - enum: ['aspeed,ast2400-pinctrl', 'aspeed,g4-pinctrl']
> >       maxItems: 1
> >       minItems: 1
> >       type: array
> >     phandle: true
> >     pinctrl-names: true
> >     status: true
> >   required: [compatible]
> >   select:
> >     properties:
> >       compatible:
> >         contains:
> >           enum: ['aspeed,ast2400-pinctrl', 'aspeed,g4-pinctrl']
> >     required: [compatible]
> >   title: ASPEED AST2400 Pin Controller
> > ```
> >
> > `properties: {phandle: true, pinctrl-names: true, status: true}` has been
> > merged into my '^.*$' patternProperty, presumably partly from
> > pinctrl-consumer.yaml, and this seems to be the source of the bad
> > output. If as a hack I change my pattern to '^.*_default$' the problem
> > goes away as we no longer try to enforce the constraints on properties
> > provided by other bindings, but the problem is the node names are
> > largely freeform[1] (unless I enforce a naming constraint as part of my
> > bindings?).
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt?h=v5.2-rc6#n112
> >
> > >
> > > BTW, You can put the names under a 'definitions' key and then use
> > > '$ref' to reference them from function and group to avoid duplicating
> > > the names. Or use patternProperties with '^(function|group)$'.
> >
> > I've used the patternProperties approach above as I couldn't get the
> > definitions/$ref approach to work. I did the following:
> 
> The problem is we'd need to process the schema under definitions. The
> YAML encoding we validate against always encodes strings as arrays as
> dtc has no way of knowing if a given property is a string array or
> single string. So to avoid a bunch of boilerplate in every binding, we
> process the schema to transform single strings into arrays of length
> 1.
> 
> It's probably best to stick with the patternProperties approach. I
> think you can do something like this:
> 
> "^.*$":
>   if:
>     type: object
>   then:
>     patternProperties:
>        '^(function|group)$':
>          ...
> 
> I'm not completely certain this works though, so if you can send me an
> updated binding with what you have so far I can test it out.

This works, thanks. I'll send an updated series.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
