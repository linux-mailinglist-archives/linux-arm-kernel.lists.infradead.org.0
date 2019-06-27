Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A98AF57C82
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMH1PCT+Ko6zEpw8rsXibwm8/Iw99FYldpq3BqTr2Oo=; b=lmr/6EBcAEQ82S
	5A4sCNU9O2HIRa1o183K75pfZVHgk0bcLLbsMenfDs2l3iWJ+om1uudvVRMwYYf04z8MHfzcfzHMf
	/vjrwhZ5+1Tw4xJII73aOqJYaIUm37uqVcALIZG1k2vvLQIHsGen59q3UZv45lcvj0Jcva96UlxIC
	J27FMBjh3fsv+UjgfzaHSOBLy3fKRKgdYb5BrkOYf6aJtnzxV2bRkml6z5Q6g0QPJkWvDYIvI2UZZ
	UZZvaYQMuWTeXvdCtGbmPd1TQHVMKi9NqLHYQx9LSf3C1gJWMV40rS3KqQgh/+Jf8d8F0vglNdGKH
	rRt2iH8KngS/enHRwrMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOHN-0007ye-5q; Thu, 27 Jun 2019 06:53:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8l-0006KM-8s
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:44:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Subject:Cc:To:From:Date:
 References:In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fpT0JqDAZ1LbsvcXxvksyaOpwMvPGdmJm6T67E0jq2E=; b=vh5/4N2J/XMwXjbu2kqy3/O2k
 Rtc6ojxOAPCp9G89+1Xdq5TJ6KGRFxdTrZqvYoprbGTOVKnq+PUSG7hevR0lCQsTHBwAAKg3Jb2kP
 yYsJC5w2uZXYS/1oH25uiXgiWwb8E/onbmw1EKRBOE8XRLw0ILHzhazu9gUlkCM2Bf9LLaLGNS2lk
 GQItWMFJ7ejRxyQ74T7K4gMBG/bOsSyg8O8bcf8Qr2j59gmjL9kqqpfL3xz+MJXGdFmWo7l+lnCe9
 3sWXW/vVeSWAQDnVzux/Jytz3G4d5hBnLg7LaH2UerJqeueb4R+jDpqusmZ1MT7x/AtIBTJw61HSp
 OmILvuCAQ==;
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIZB-0004VJ-Bj
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 00:47:10 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6889E15F0;
 Wed, 26 Jun 2019 20:44:46 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 26 Jun 2019 20:44:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=fpT0JqDAZ1LbsvcXxvksyaOpwMvPGdm
 Jm6T67E0jq2E=; b=kAye16GfKJbU0NWzzWSdIW4HXu0jSNwdtLtrj/7/PWGDrZJ
 1e5JBZ7Tghc+ZNOoqTzDVuSXmFjTTUqAV5sijqH3OAn7NBLGoY4Q69Erz+2I5t9k
 IiT77FX+m0IOwyn8gCeJD4shCjoNa4jNJDy8C/TXvOJ425jIkkCXAqu0J4K97ADt
 09tKH1Qq3+RAkp1D371KxmTGvoCYPrDmh9fXT0yN+wy9xRqFmyo7wGPMTJgNj0U0
 23DRUuveeE9Vx/ox5BYg4dWWNicsNtAxExF+bV7nQj5NQJXmRWy64amvj522GmKQ
 WdUxMerQ/ZT48EdjRRueRPo1Q0tPt1uLPOia2qQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=fpT0Jq
 DAZ1LbsvcXxvksyaOpwMvPGdmJm6T67E0jq2E=; b=LM8hCUjmJFRQPZu5N+06Vi
 yOpOqYaI5yb+RCXXvI5zrc0TVYUEDDqu0iU0x2uXuyWdh5GY/HCOlELjsKJR7+so
 mzd0GrG4336P+7+NVNyGYOy+umqgSk1ArpCeFbx2siv2ZGjtO+jCHT0TaMHf/rMK
 rRm7UT2/WGKjtAsVgvyYjjczjNqzMCpU8D5dXHHvMoXCir4QeAdjdh813F9FFF97
 jqiIbXiMPE5Yo1PTdu6K2/SO5P/GZRB9UqiJQlPgY2EFipFBzPQBqiN7eh74z3Ir
 2aVvEG8/hUa78s4plNRyXVWLEcwaJqAPjEup1pOJMyr9Y+luR/Djai6wlo93kchA
 ==
X-ME-Sender: <xms:fREUXZ0U7SxpeES9Qlz3dq7XonJ1O3AtQcjzUASFV1AARanvCpOOlA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudejgdeflecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucffohhmrg
 hinhepuggvvhhitggvthhrvggvrdhorhhgnecurfgrrhgrmhepmhgrihhlfhhrohhmpegr
 nhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:fREUXfE1vMiDAkgUNmr5hjQpa0GlVpsE14x6wkwOk266RVHgjeuGzw>
 <xmx:fREUXSIVbHhJj3myuAHVPF1oS8YTEcjms7a5eVgBamlyfdAWRVOzRg>
 <xmx:fREUXTOhy32-NButsOuT38JzEdQAhkIiQpxim51uXsZHqnWWngsihw>
 <xmx:fhEUXVVex6m8ipyZbsmXD3IMMYfkh38q1IplXWOJSenvjX_FRPm65w>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 343C9E00A2; Wed, 26 Jun 2019 20:44:45 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-730-g63f2c3b-fmstable-20190622v1
Mime-Version: 1.0
Message-Id: <ee0cac9e-4b39-4900-87a8-3dabb58ed883@www.fastmail.com>
In-Reply-To: <CAL_JsqKXPzFYTHos-uvCUtBj-bcsNfrzt5GjxQ=PmgeXpp5J-A@mail.gmail.com>
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-3-andrew@aj.id.au>
 <CAL_JsqKXPzFYTHos-uvCUtBj-bcsNfrzt5GjxQ=PmgeXpp5J-A@mail.gmail.com>
Date: Thu, 27 Jun 2019 10:14:40 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rob Herring" <robh+dt@kernel.org>
Subject: =?UTF-8?Q?Re:_[PATCH_2/8]_dt-bindings:_pinctrl:_aspeed:_Convert_AST2400_?=
 =?UTF-8?Q?bindings_to_json-schema?=
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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



On Wed, 26 Jun 2019, at 23:17, Rob Herring wrote:
> On Wed, Jun 26, 2019 at 1:21 AM Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > Convert ASPEED pinctrl bindings to DT schema format using json-schema
> 
> BTW, ASPEED is one of the remaining platforms needing the top-level
> board bindings converted.

Okay, I'll put together patches to fix that.

> 
> >
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > ---
> >  .../pinctrl/aspeed,ast2400-pinctrl.txt        | 80 -------------------
> >  .../pinctrl/aspeed,ast2400-pinctrl.yaml       | 73 +++++++++++++++++
> >  2 files changed, 73 insertions(+), 80 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
> >  create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
> 
> > diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
> > new file mode 100644
> > index 000000000000..3b8cf3e51506
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
> > @@ -0,0 +1,73 @@
> > +# SPDX-License-Identifier: GPL-2.0+
> 
> Do you have rights to change the license?

Where are you coming from with this question? The bindings previously didn't list a
license, is there some implicit license for them? I would have thought it was GPL-2.0?
IBM's (my employer's) preferred contribution license is GPL 2.0-or-later, so I was just
adding the SPDX marker to clarify.

> If so, the preference is to
> dual license with (GPL-2.0 OR BSD-2-Clause).

You're asking if I have the power to relicense so I can dual license it this way?

> 
> BTW, '-or-later' is the preferred form over '+'.

Thanks for the pointer.

> 
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pinctrl/aspeed,ast2400-pinctrl.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ASPEED AST2400 Pin Controller
> > +
> > +maintainers:
> > +  - Andrew Jeffery <andrew@aj.id.au>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +        - enum:
> > +          - aspeed,ast2400-pinctrl
> > +      - items:
> > +        - enum:
> > +          - aspeed,g4-pinctrl
> 
> This can be simplified to:
> 
> compatible:
>   enum:
>     - aspeed,ast2400-pinctrl
>     - aspeed,g4-pinctrl

Ah, that makes more sense, I think I was thrown by some details of the example.

> 
> > +
> > +required:
> > +  - compatible
> > +
> > +description: |+
> 
> description goes before properties.

Okay. I wouldn't have thought the ordering mattered. Is this just a preference?
The tools seemed to run fine as is.

I'll re-order it regardless.

> 
> > +  The pin controller node should be the child of a syscon node with the
> > +  required property:
> > +
> > +  - compatible:     Should be one of the following:
> > +                    "aspeed,ast2400-scu", "syscon", "simple-mfd"
> > +                    "aspeed,g4-scu", "syscon", "simple-mfd"
> > +
> > +  Refer to the the bindings described in
> > +  Documentation/devicetree/bindings/mfd/syscon.txt
> > +
> > +  For the AST2400 pinmux, each mux function has only one associated pin group.
> > +  Each group is named by its function. The following values for the function
> > +  and groups properties are supported:
> > +
> > +  ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
> > +  ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT EXTRST FLACK FLBUSY FLWP GPID GPID0 GPID2
> > +  GPID4 GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4
> > +  I2C5 I2C6 I2C7 I2C8 I2C9 LPCPD LPCPME LPCRST LPCSMI MAC1LINK MAC2LINK MDIO1
> > +  MDIO2 NCTS1 NCTS2 NCTS3 NCTS4 NDCD1 NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4
> > +  NDTR1 NDTR2 NDTR3 NDTR4 NDTS4 NRI1 NRI2 NRI3 NRI4 NRTS1 NRTS2 NRTS3 OSCCLK
> > +  PWM0 PWM1 PWM2 PWM3 PWM4 PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 ROM16 ROM8
> > +  ROMCS1 ROMCS2 ROMCS3 ROMCS4 RXD1 RXD2 RXD3 RXD4 SALT1 SALT2 SALT3 SALT4 SD1
> > +  SD2 SGPMCK SGPMI SGPMLD SGPMO SGPSCK SGPSI0 SGPSI1 SGPSLD SIOONCTRL SIOPBI
> > +  SIOPBO SIOPWREQ SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1DEBUG SPI1PASSTHRU
> > +  SPICS1 TIMER3 TIMER4 TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2 TXD3 TXD4 UART6
> > +  USB11D1 USB11H2 USB2D1 USB2H1 USBCKI VGABIOS_ROM VGAHS VGAVS VPI18 VPI24
> > +  VPI30 VPO12 VPO24 WDTRST1 WDTRST2
> 
> This should be a schema. 

Yeah, I covered this in my cover letter. I was hoping to get away without
that for the moment as this seems like the first pinctrl binding to be
converted, however if you insist...

> You need to define child nodes and list these
> as values for 'function' and 'group'. Ideally, the child nodes would
> have some sort of pattern, but if not, you can just match on '^.*$'
> under patternProperties.
> 
> BTW, You can put the names under a 'definitions' key and then use
> '$ref' to reference them from function and group to avoid duplicating
> the names. Or use patternProperties with '^(function|group)$'.

Okay, I'll take some time to digest this while looking at the documentation.

> 
> Similar comments apply to AST2500 binding.

Yes, will fix that too.

Thanks for the prompt review!

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
