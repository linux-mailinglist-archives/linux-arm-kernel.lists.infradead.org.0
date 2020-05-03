Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9F51C2C85
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 14:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/wI/0QBB+iby8Horfe2ZvknoLtJ0gYjO0ISy+p6zk5E=; b=iHy4dLdVuXMhbuYb9TbC0nAvt
	ngypnEYdckRAP7pbdmOOwQDyCc/fcA3BNVheVvwjcVzkEsuZS+PcUuBhk8KqfQNKCOtGUrSyWehBW
	Cit2kTWaD8YH4TM7wRvxy7xhJWE5KY/juMuzJaiqBETu88Gq6dkFJCdqBH42sY6rwlxFMatMqqX/L
	KnObd2sEj88HKQbTqHz5HFfXy1JsfJVMhxZ0V9Ov3XWE4Cg4XF+XV3RwWD5zmT6MAT7yz2USHdGvx
	diD14uG1BIPky91Y/AlhaUaVfHN/eWiAcslm9dSnVxy91CoFbpQ9zKQxxsggoYJSD+7QV5jbmG8dl
	n/KWbzaLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVE6l-00025p-Hx; Sun, 03 May 2020 12:52:35 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVE6d-00024x-04
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 12:52:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1588510339; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2ko4Xwt96nyrG2ofYwcaiQ3kO8FQgN99Oau+oASza+Y=;
 b=vMLvvQ26mbkRB5ssq4TJnK7+m022JmcEKlGByK0qEt0wZ/cWuoZ2C+xRTochuMQahsnETO
 ABOQBnQJ2/HLIwG+CvdEP4jyvQxShAa+HOezOJtmovqAdOYegmCHPgKTS4wd0UiUZCwl/5
 56vda+SO7iF/CxZEL8qChIccueuMpcE=
Date: Sun, 03 May 2020 14:52:05 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v7 01/12] dt-bindings: add img, pvrsgx.yaml for Imagination
 GPUs
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Message-Id: <TEAR9Q.6HI5DFRO5U0I3@crapouillou.net>
In-Reply-To: <28138EC0-0FA5-4F97-B528-3442BF087C7A@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
 <NMCE9Q.LWG45P20NBVJ@crapouillou.net>
 <28138EC0-0FA5-4F97-B528-3442BF087C7A@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_055227_423423_7FE0016E 
X-CRM114-Status: GOOD (  29.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?iso-8859-1?q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nikolaus,

Le sam. 2 mai 2020 =E0 22:26, H. Nikolaus Schaller <hns@goldelico.com> a =

=E9crit :
> Hi Paul,
> =

>>  Am 26.04.2020 um 15:11 schrieb Paul Cercueil <paul@crapouillou.net>:
>> =

>>  Hi Nikolaus,
>> =

>>  Le ven. 24 avril 2020 =E0 22:34, H. Nikolaus Schaller =

>> <hns@goldelico.com> a =E9crit :
>>>  The Imagination PVR/SGX GPU is part of several SoC from
>>>  multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
>>>  Allwinner A83 and others.
>>>  With this binding, we describe how the SGX processor is
>>>  interfaced to the SoC (registers and interrupt).
>>>  The interface also consists of clocks, reset, power but
>>>  information from data sheets is vague and some SoC integrators
>>>  (TI) deciced to use a PRCM wrapper (ti,sysc) which does
>>>  all clock, reset and power-management through registers
>>>  outside of the sgx register block.
>>>  Therefore all these properties are optional.
>>>  Tested by make dt_binding_check
>>>  Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>>>  ---
>>>  .../devicetree/bindings/gpu/img,pvrsgx.yaml   | 150 =

>>> ++++++++++++++++++
>>>  1 file changed, 150 insertions(+)
>>>  create mode 100644 =

>>> Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
>>>  diff --git a/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml =

>>> b/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
>>>  new file mode 100644
>>>  index 000000000000..33a9c4c6e784
>>>  --- /dev/null
>>>  +++ b/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
>>>  @@ -0,0 +1,150 @@
>>>  +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>>>  +%YAML 1.2
>>>  +---
>>>  +$id: http://devicetree.org/schemas/gpu/img,pvrsgx.yaml#
>>>  +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>  +
>>>  +title: Imagination PVR/SGX GPU
>>>  +
>>>  +maintainers:
>>>  +  - H. Nikolaus Schaller <hns@goldelico.com>
>>>  +
>>>  +description: |+
>>>  +  This binding describes the Imagination SGX5 series of 3D =

>>> accelerators which
>>>  +  are found in several different SoC like TI OMAP, Sitara, =

>>> Ingenic JZ4780,
>>>  +  Allwinner A83, and Intel Poulsbo and CedarView and more.
>>>  +
>>>  +  For an extensive list see: =

>>> https://en.wikipedia.org/wiki/PowerVR#Implementations
>>>  +
>>>  +  The SGX node is usually a child node of some DT node belonging =

>>> to the SoC
>>>  +  which handles clocks, reset and general address space mapping =

>>> of the SGX
>>>  +  register area. If not, an optional clock can be specified here.
>>>  +
>>>  +properties:
>>>  +  $nodename:
>>>  +    pattern: '^gpu@[a-f0-9]+$'
>>>  +  compatible:
>>>  +    oneOf:
>>>  +      - description: SGX530-121 based SoC
>>>  +        items:
>>>  +          - enum:
>>>  +            - ti,omap3-sgx530-121 # BeagleBoard A/B/C, =

>>> OpenPandora 600MHz and similar
>>>  +          - const: img,sgx530-121
>>>  +          - const: img,sgx530
>>>  +
>>>  +      - description: SGX530-125 based SoC
>>>  +        items:
>>>  +          - enum:
>>>  +            - ti,am3352-sgx530-125 # BeagleBone Black
>>>  +            - ti,am3517-sgx530-125
>>>  +            - ti,am4-sgx530-125
>>>  +            - ti,omap3-sgx530-125 # BeagleBoard XM, GTA04, =

>>> OpenPandora 1GHz and similar
>>>  +            - ti,ti81xx-sgx530-125
>>>  +          - const: ti,omap3-sgx530-125
>>>  +          - const: img,sgx530-125
>>>  +          - const: img,sgx530
>>>  +
>>>  +      - description: SGX535-116 based SoC
>>>  +        items:
>>>  +          - const: intel,poulsbo-gma500-sgx535 # Atom Z5xx
>>>  +          - const: img,sgx535-116
>>>  +          - const: img,sgx535
>>>  +
>>>  +      - description: SGX540-116 based SoC
>>>  +        items:
>>>  +          - const: intel,medfield-gma-sgx540 # Atom Z24xx
>>>  +          - const: img,sgx540-116
>>>  +          - const: img,sgx540
>>>  +
>>>  +      - description: SGX540-120 based SoC
>>>  +        items:
>>>  +          - enum:
>>>  +            - samsung,s5pv210-sgx540-120
>>>  +            - ti,omap4-sgx540-120 # Pandaboard, Pandaboard ES and =

>>> similar
>>>  +          - const: img,sgx540-120
>>>  +          - const: img,sgx540
>>>  +
>>>  +      - description: SGX540-130 based SoC
>>>  +        items:
>>>  +          - enum:
>>>  +            - ingenic,jz4780-sgx540-130 # CI20
>>>  +          - const: img,sgx540-130
>>>  +          - const: img,sgx540
>>>  +
>>>  +      - description: SGX544-112 based SoC
>>>  +        items:
>>>  +          - const: ti,omap4470-sgx544-112
>>>  +          - const: img,sgx544-112
>>>  +          - const: img,sgx544
>>>  +
>>>  +      - description: SGX544-115 based SoC
>>>  +        items:
>>>  +          - enum:
>>>  +            - allwinner,sun8i-a31-sgx544-115
>>>  +            - allwinner,sun8i-a31s-sgx544-115
>>>  +            - allwinner,sun8i-a83t-sgx544-115 # Banana-Pi-M3 =

>>> (Allwinner A83T) and similar
>>>  +          - const: img,sgx544-115
>>>  +          - const: img,sgx544
>>>  +
>>>  +      - description: SGX544-116 based SoC
>>>  +        items:
>>>  +          - enum:
>>>  +            - ti,dra7-sgx544-116 # DRA7
>>>  +            - ti,omap5-sgx544-116 # OMAP5 UEVM, Pyra Handheld and =

>>> similar
>>>  +          - const: img,sgx544-116
>>>  +          - const: img,sgx544
>>>  +
>>>  +      - description: SGX545 based SoC
>>>  +        items:
>>>  +          - const: intel,cedarview-gma3600-sgx545 # Atom N2600, =

>>> D2500
>>>  +          - const: img,sgx545-116
>>>  +          - const: img,sgx545
>>>  +
>>>  +  reg:
>>>  +    maxItems: 1
>>>  +
>>>  +  interrupts:
>>>  +    maxItems: 1
>>>  +
>>>  +  interrupt-names:
>>>  +    maxItems: 1
>>>  +    items:
>>>  +      - const: sgx
>>>  +
>>>  +  clocks:
>>>  +    maxItems: 4
>>>  +
>>>  +  clock-names:
>>>  +    maxItems: 4
>>>  +    items:
>>>  +      - const: core
>>>  +      - const: sys
>>>  +      - const: mem
>>>  +      - const: hyd
>>>  +
>>>  +  sgx-supply: true
>>>  +
>>>  +  power-domains:
>>>  +    maxItems: 1
>>>  +
>>>  +  resets:
>>>  +    maxItems: 1
>>>  +
>>>  +required:
>>>  +  - compatible
>>>  +  - reg
>>>  +  - interrupts
>> =

>>  By not making 'clocks' required you make it possible to create =

>> broken bindings; according to your schema, a GPU node without a =

>> 'clocks' for the JZ4780 would be perfectly valid.
> =

> Yes. But it will never pass a test with real hardware. So it can't be =

> omitted anyways.
> =

> On a more general thought, this argument holds for any optional =

> property. So it is not specific to clocks. Since the reg address =

> values are also never specified you can still create broken bindings. =

> Or by connecting the wrong clock. So the ways to create broken =

> bindings are numerous.
> =

> I also assume that SGX integrators are not beginners and do you think =

> they need to find out through a make dt_binding_check dtbs_check that =

> they should define a clock? based on *assumptions* we do without =

> having access to all systems?
> =

> IMHO the bindings documentation is a documentation. So it needs to be =

> helpful but not perfect. Formalizing all corner cases in a bindings =

> document (just because we can since .yaml was introduced) is IMHO =

> overkill.
> =

> In times before the introduction of more formal .yaml I think we =

> would not even have considered this for a comment in the bindings.txt.
> =

>>  It's possible to forbid the presence of the 'clocks' property on =

>> some implementations, and require it on others.
> =

> To be precise we have to specify the exact number of clocks (between =

> 0 and 4) for every architecture.
> =

> This also contradicts my dream to get rid of the architecture =

> specific components in the long run. My dream (because I can't tell =

> how it can be done) is that we can one day develop something which =

> just needs compatible =3D img,530 or imp,540 or img,544. Then we can't =

> make the number clocks depend on the implementation any more.

As we said before, the number of clocks is a property of the GPU and =

*not* its integration into the SoC.

So you would *not* have a number of clocks between 0 and 4. You get =

either 0, or 4, depending on whether or not you have a wrapper.


>>  See how it's done for instance on =

>> Documentation/devicetree/bindings/serial/samsung_uart.yaml.
> =

> Yes I know the design pattern, but I wonder if such a move makes the =

> whole thing even less maintainable.
> =

> Assume we have finished DTS for some SoC. Then these DTS have been =

> tested on real hardware and are working. Clocks are there where =

> needed and missing where not. We may now forbid or not forbid them =

> for some implementations in the bindings.yaml but the result of =

> dtbs_check won't change! Because they are tested and working and the =

> bindings.yaml has been adapted to the result. So we have just =

> duplicated something for no practical benefit.
> =

> Next, assume there is coming support for more and more new SoC. Then, =

> developers not only have to figure out which clocks they need in the =

> DTS but they also have to add a patch to the implementation specific =

> part of the bindings.yaml to clearly define exactly the same what =

> they already have written into their .dts (the clocks are either =

> there for the of_node or they are not). So again the rules are for no =

> benefit, since a new SoC is introduced exactly once. And tested if it =

> works. And if it is there, it will stay as it is. It is just work for =

> maintainers to review that patch as well.

If you add support for a new SoC, you'd still need to modify the =

binding to add the compatible string. So the argument of "more work" is =

moot.

-Paul

> It boils down to the question if we need to formalize the rule how a =

> working DTS was derived. Or just have a working DTS and not formalize =

> everything.
> =

> So IMHO carrying along such a detail (forbid clocks on some =

> architectures) is nice to have (and fun to learn the .yaml thing) but =

> not of benefit for anyone. Not for the DTS developer nor for the =

> maintainers nor for the users of a Linux kernel. "Keep it simple" is =

> always a good rule for maintainability.
> =

> In summary I don't see a good reason to follow this in v8. But you =

> could add it by a separate patch later if the DTS have been reviewed =

> and agreed.
> =

> BR and thanks,
> Nikolaus
> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
