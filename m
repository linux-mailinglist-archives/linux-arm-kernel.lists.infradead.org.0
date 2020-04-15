Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F37021AAE65
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9lZEmFJ514tQENzL0WERsu1K3GkE79DYk3I7EhaLgc=; b=MITAs26VvjXKR5
	kxVfd2Lc0agukmRR+pRlexmH/fBUYEjDyXjmpT+3ZwArphg0cEEiPLlYaV2MWDp2UF7CgT5fCyoTs
	SWKg7h1fyt6MOaSQ/75vaZfhCTBzRx07Xz48Z/DfCG4rooVOzdcZ8RaXCfnIk7nc0eEdNuKmf+9C3
	gFzaXaWTWe2xm0zpMXjaCZQS2B2XpZ0KbYJ3zpAGDHfr+SZAS+GBSacWEzLTTnYGNfMa+2sW3h+vo
	RQeadttXNix1gt6H0Ed0IsQ8adoVTGDtQXCORb7IyI8YCuFTSqtfbJMKGrcWoEcS+Ry/SKX6+gi5S
	IfqJXHRbSG6FQuMmgdXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOl7Z-0007xW-8F; Wed, 15 Apr 2020 16:42:41 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOl7Q-0007wv-Hc
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:42:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586968949;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=H2qE4hwg4kGp3kHpuvtDMm+CDX8JoRFz/HdnCL4Fkbw=;
 b=bKF6HWX7TsO/3OAmGIOEu14YRdLn36ejy9oJ4xqIS+W1r1RG8J3cUYr4jKJV4tVG3p
 WS1fbEPAJesIsZwcdHGIzQ0iPQWwWI3aDtJdCd9HtZCCbbkTNxVFIwPpuFiC+3wZPAUQ
 FN18qTzgz9jU3ca3XpZrQQ3q70fY2D6Q4xdzpejqsZxfDl/S7D+mujIlNxExzQfcYEWL
 KiSzK/4NsMsmpGbvCrawbnE4EXFvYsJ8rkV+ptz9ITRvqS9zH30ujscjBJK58yrLlixr
 HBNlsoA4ekDH0oYzk+FqGsZ4PYWFkXbwOPTiLoS9o8YHS+6+HlC2i99ouKt+CCkqKSbv
 RIpg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PtwDConyM="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.4.0 DYNA|AUTH)
 with ESMTPSA id 6028a2w3FGgI2rK
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 15 Apr 2020 18:42:18 +0200 (CEST)
Subject: Re: [PATCH v6 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20200415162151.rwym4ioqz27migfn@gilmour.lan>
Date: Wed, 15 Apr 2020 18:42:18 +0200
Message-Id: <45F411C0-150B-4FBA-A0E1-B863B3F36DF6@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
 <06fb6569259bb9183d0a0d0fe70ec4f3033b8aab.1586939718.git.hns@goldelico.com>
 <20200415101251.o3wi5t6xvf56xmhq@gilmour.lan>
 <72919514-0657-4B71-902F-3E775E528F64@goldelico.com>
 <f4fdca8a-d18c-a8d2-7f51-d1ebbbab3647@baylibre.com>
 <535CAEBE-F43E-4BFC-B989-612C81F0D7EF@goldelico.com>
 <20200415142124.yzfh6mtqq7cdq22e@gilmour.lan>
 <DC0A2DE2-3D77-46F8-8DE1-55050FDACC9B@goldelico.com>
 <20200415162151.rwym4ioqz27migfn@gilmour.lan>
To: Maxime Ripard <maxime@cerno.tech>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_094233_174896_3DF0F105 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:12 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, letux-kernel@openphoenux.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

> Am 15.04.2020 um 18:21 schrieb Maxime Ripard <maxime@cerno.tech>:
> 
> On Wed, Apr 15, 2020 at 05:09:45PM +0200, H. Nikolaus Schaller wrote:
>> Hi Maxime,
>> 
>> Hm. Yes. We know that there likely are clocks and maybe reset
>> but for some SoC this seems to be undocumented and the reset
>> line the VHDL of the sgx gpu provides may be permanently tied
>> to "inactive".
>> 
>> So if clocks are optional and not provided, a driver simply can assume
>> they are enabled somewhere else and does not have to care about. If
>> they are specified, the driver can enable/disable them.
> 
> Except that at the hardware level, the clock is always going to be
> there. You can't control it, but it's there.

Sure, we can deduce that from general hardware design knowledge.
But not every detail must be described in DT. Only the important
ones.

> 
>>> If OMAP is too much of a pain, you can also make
>>> a separate binding for it, and a generic one for the rest of us.
>> 
>> No, omap isn't any pain at all.
>> 
>> The pain is that some other SoC are most easily defined by clocks in
>> the gpu node which the omap doesn't need to explicitly specify.
>> 
>> I would expect a much bigger nightmare if we split this into two
>> bindings variants.
>> 
>>> I'd say that it's pretty unlikely that the clocks, interrupts (and
>>> even regulators) are optional. It might be fixed on some SoCs, but
>>> that's up to the DT to express that using fixed clocks / regulators,
>>> not the GPU binding itself.
>> 
>> omap already has these defined them not to be part of the GPU binding.
>> The reason seems to be that this needs special clock gating control
>> especially for idle states which is beyond simple clock-enable.
>> 
>> This sysc target-module@56000000 node is already merged and therefore
>> we are only adding the gpu child node. Without defining clocks.
>> 
>> For example:
>> 
>> 		sgx_module: target-module@56000000 {
>> 			compatible = "ti,sysc-omap4", "ti,sysc";
>> 			reg = <0x5600fe00 0x4>,
>> 			      <0x5600fe10 0x4>;
>> 			reg-names = "rev", "sysc";
>> 			ti,sysc-midle = <SYSC_IDLE_FORCE>,
>> 					<SYSC_IDLE_NO>,
>> 					<SYSC_IDLE_SMART>;
>> 			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
>> 					<SYSC_IDLE_NO>,
>> 					<SYSC_IDLE_SMART>;
>> 			clocks = <&gpu_clkctrl OMAP5_GPU_CLKCTRL 0>;
>> 			clock-names = "fck";
>> 			#address-cells = <1>;
>> 			#size-cells = <1>;
>> 			ranges = <0 0x56000000 0x2000000>;
>> 
>> 			gpu: gpu@0 {
>> 				compatible = "ti,omap5-sgx544-116", "img,sgx544-116", "img,sgx544";
>> 				reg = <0x0 0x10000>;
>> 				interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
>> 			};
>> 		};
>> 
>> The jz4780 example will like this:
>> 
>> 	gpu: gpu@13040000 {
>> 		compatible = "ingenic,jz4780-sgx540-130", "img,sgx540-130", "img,sgx540";
>> 		reg = <0x13040000 0x4000>;
>> 
>> 		clocks = <&cgu JZ4780_CLK_GPU>;
>> 		clock-names = "gpu";
>> 
>> 		interrupt-parent = <&intc>;
>> 		interrupts = <63>;
>> 	};
>> 
>> So the question is which one is "generic for the rest of us"?
> 
> I'd say the latter.

Why?

TI SoC seem to be the broadest number of available users
of sgx5xx in the past and nowadays. Others are more the exception.

> If your clock is optional, then you define it but don't mandate
> it. Not documenting it will only result in a mess where everyone will
> put some clock into it, possibly with different semantics each and
> every time.

So you mean that we should require a dummy clock for the omap gpu node
or did I misunderstand that?

Well, yes there is of course a clock connection between the
omap target-module and the sgx but it is IMHO pointless to
describe it because it can't and does not need to be controlled
separately.

As said the target-module is already accepted and upstream and my
proposal is to get the gpu node described there. There is simply
no need for a clocks node for the omap.

What I also assume is that developers of DTS know what they do.
So the risk that there is different semantics is IMHO very low.

If you agree I can add the clocks/clock-names property as an
optional property. This should solve omap and all others.

> 
> This has nothing to do with the binding being complete. And if you use
> a binding like this one, you'll be severely limited when you'll want
> to implement things like DVFS.

Now you have unhooked me... Nobody seems to know if and how DVFS can be
applied to SGX. IMHO we should bake small bread first and get initial
support into mainline.

BR,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
