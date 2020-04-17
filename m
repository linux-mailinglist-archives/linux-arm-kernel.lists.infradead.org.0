Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E97641ADD07
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 14:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXirUm/E7WXnCru45CIY/QHhpWKvMhnVGfW7JxI5Rqo=; b=KTETwlKdxKLTDt
	PPg70UrymMr5a+kuj/S3wAWB66pH9Qv4GpPDDH0oWKVi6QEpCSlVA9JnQLJoZH0Hqpr1LHrKUkSP+
	5hnDSPQRbp/4vEu1z3tSZqA3r+LQdi0VaJjfiuoTSiwVAsXJv5i+mxYXb8q9JjCJHz510CvtWDgub
	cjeXNwDwbT2TqEdri7t0FanakVnaKsJDAFpmjmxp5HdqZq2igRrt8xRyqAwrilBkENxnpJ6vggBAr
	S/h9Be5de4bjroiBBfWqevQTGkUIIS5HLPl1t4IcsPdiHGyD2orN08f+q6VKUidC1oFfC5cXtmRAO
	cRr1uaIVRtZYt+psNVxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPv9-0006TN-Sg; Fri, 17 Apr 2020 12:16:35 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPun-0006L3-VO
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:16:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587125771;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=/7wrW+vEcFP2PmT/hlYc+qdlh6LxN2NKNrBMs+kwhos=;
 b=d8yxNDTpCWE5GwpDyfh5QmDnUYTg2imc3kmrs6EjtMM2wwiaaBpMcEnmuomCb2G0uQ
 xyrgnU0RuwvOZOPNKRktAqdWWkbEkNUMJ+sJnhaXtoXndC9thM1rUTT4sBI+xmDHoMWx
 zqi4VgIUOwK+3vlTFYncWWk+zLsZ8eHB2sS+X3IOXraeY7r5WYAqGUIPCnzvW3YHvAAi
 HkBf+7ZfAluC8iHRcmIG/Hdyzan0430om5YUK2h+hiuX0IUHPoLwY81KhxFXnxJrO58M
 V0Kxw0+taHrn2q9vSt23EJzZfplz1Z+XcBdbqSRFBR2xB3s+t7HbjtcvYaZ0Cos42piU
 LioQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PgwDWjbQ=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.5.0 DYNA|AUTH)
 with ESMTPSA id g06d2dw3HCFt1cA
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Fri, 17 Apr 2020 14:15:55 +0200 (CEST)
Subject: Re: [PATCH v6 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20200417102500.erayf6quenp3cvn3@gilmour.lan>
Date: Fri, 17 Apr 2020 14:15:44 +0200
Message-Id: <C8816F10-8773-4ECD-B42D-6EEF642476EB@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
 <06fb6569259bb9183d0a0d0fe70ec4f3033b8aab.1586939718.git.hns@goldelico.com>
 <20200415101251.o3wi5t6xvf56xmhq@gilmour.lan>
 <72919514-0657-4B71-902F-3E775E528F64@goldelico.com>
 <f4fdca8a-d18c-a8d2-7f51-d1ebbbab3647@baylibre.com>
 <535CAEBE-F43E-4BFC-B989-612C81F0D7EF@goldelico.com>
 <20200415142124.yzfh6mtqq7cdq22e@gilmour.lan>
 <DC0A2DE2-3D77-46F8-8DE1-55050FDACC9B@goldelico.com>
 <20200415162151.rwym4ioqz27migfn@gilmour.lan>
 <45F411C0-150B-4FBA-A0E1-B863B3F36DF6@goldelico.com>
 <20200417102500.erayf6quenp3cvn3@gilmour.lan>
To: Maxime Ripard <maxime@cerno.tech>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_051614_175468_BC1B5A2D 
X-CRM114-Status: GOOD (  30.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:9 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
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
 kernel@pyra-handheld.com,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

> Am 17.04.2020 um 12:25 schrieb Maxime Ripard <maxime@cerno.tech>:
> 
> Hi,
> 
> On Wed, Apr 15, 2020 at 06:42:18PM +0200, H. Nikolaus Schaller wrote:
>>> Am 15.04.2020 um 18:21 schrieb Maxime Ripard <maxime@cerno.tech>:
>>> 
>>> On Wed, Apr 15, 2020 at 05:09:45PM +0200, H. Nikolaus Schaller wrote:
>>>> Hi Maxime,
>>>> 
>>>> Hm. Yes. We know that there likely are clocks and maybe reset
>>>> but for some SoC this seems to be undocumented and the reset
>>>> line the VHDL of the sgx gpu provides may be permanently tied
>>>> to "inactive".
>>>> 
>>>> So if clocks are optional and not provided, a driver simply can assume
>>>> they are enabled somewhere else and does not have to care about. If
>>>> they are specified, the driver can enable/disable them.
>>> 
>>> Except that at the hardware level, the clock is always going to be
>>> there. You can't control it, but it's there.
>> 
>> Sure, we can deduce that from general hardware design knowledge.
>> But not every detail must be described in DT. Only the important
>> ones.
>> 
>>>>> If OMAP is too much of a pain, you can also make
>>>>> a separate binding for it, and a generic one for the rest of us.
>>>> 
>>>> No, omap isn't any pain at all.
>>>> 
>>>> The pain is that some other SoC are most easily defined by clocks in
>>>> the gpu node which the omap doesn't need to explicitly specify.
>>>> 
>>>> I would expect a much bigger nightmare if we split this into two
>>>> bindings variants.
>>>> 
>>>>> I'd say that it's pretty unlikely that the clocks, interrupts (and
>>>>> even regulators) are optional. It might be fixed on some SoCs, but
>>>>> that's up to the DT to express that using fixed clocks / regulators,
>>>>> not the GPU binding itself.
>>>> 
>>>> omap already has these defined them not to be part of the GPU binding.
>>>> The reason seems to be that this needs special clock gating control
>>>> especially for idle states which is beyond simple clock-enable.
>>>> 
>>>> This sysc target-module@56000000 node is already merged and therefore
>>>> we are only adding the gpu child node. Without defining clocks.
>>>> 
>>>> For example:
>>>> 
>>>> 		sgx_module: target-module@56000000 {
>>>> 			compatible = "ti,sysc-omap4", "ti,sysc";
>>>> 			reg = <0x5600fe00 0x4>,
>>>> 			      <0x5600fe10 0x4>;
>>>> 			reg-names = "rev", "sysc";
>>>> 			ti,sysc-midle = <SYSC_IDLE_FORCE>,
>>>> 					<SYSC_IDLE_NO>,
>>>> 					<SYSC_IDLE_SMART>;
>>>> 			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
>>>> 					<SYSC_IDLE_NO>,
>>>> 					<SYSC_IDLE_SMART>;
>>>> 			clocks = <&gpu_clkctrl OMAP5_GPU_CLKCTRL 0>;
>>>> 			clock-names = "fck";
>>>> 			#address-cells = <1>;
>>>> 			#size-cells = <1>;
>>>> 			ranges = <0 0x56000000 0x2000000>;
>>>> 
>>>> 			gpu: gpu@0 {
>>>> 				compatible = "ti,omap5-sgx544-116", "img,sgx544-116", "img,sgx544";
>>>> 				reg = <0x0 0x10000>;
>>>> 				interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
>>>> 			};
>>>> 		};
>>>> 
>>>> The jz4780 example will like this:
>>>> 
>>>> 	gpu: gpu@13040000 {
>>>> 		compatible = "ingenic,jz4780-sgx540-130", "img,sgx540-130", "img,sgx540";
>>>> 		reg = <0x13040000 0x4000>;
>>>> 
>>>> 		clocks = <&cgu JZ4780_CLK_GPU>;
>>>> 		clock-names = "gpu";
>>>> 
>>>> 		interrupt-parent = <&intc>;
>>>> 		interrupts = <63>;
>>>> 	};
>>>> 
>>>> So the question is which one is "generic for the rest of us"?
>>> 
>>> I'd say the latter.
>> 
>> Why?
>> 
>> TI SoC seem to be the broadest number of available users
>> of sgx5xx in the past and nowadays. Others are more the exception.
> 
> And maybe TI has some complicated stuff around the GPU that others don't have?

Looks so.

> If I look quickly at the Allwinner stuff, I see nothing looking alike in the
> SoC, so making the binding like that for everyone just because TI did something
> doesn't really make much sense.

That is why I propose to make the clocks optional. This solves both
cases in a simple and neat way.

> 
>>> If your clock is optional, then you define it but don't mandate
>>> it. Not documenting it will only result in a mess where everyone will
>>> put some clock into it, possibly with different semantics each and
>>> every time.
>> 
>> So you mean that we should require a dummy clock for the omap gpu node
>> or did I misunderstand that?
>> 
>> Well, yes there is of course a clock connection between the
>> omap target-module and the sgx but it is IMHO pointless to
>> describe it because it can't and does not need to be controlled
>> separately.
>> 
>> As said the target-module is already accepted and upstream and my
>> proposal is to get the gpu node described there. There is simply
>> no need for a clocks node for the omap.
> 
> There is no need for a clocks property *currently* *on the OMAP*.

Yes. But why "currently"? Do you think the OMAPs we already have
defined and tested will change?

> 
>> What I also assume is that developers of DTS know what they do.
>> So the risk that there is different semantics is IMHO very low.
> 
> Well, they know what they do if you document the binding. Let's say I have two
> clocks now on my SoC, and you just document that you want a clocks property,
> with a generic name in clock-names like "gpu".

Yes, that is what I want to propose for v7:

  clocks:
    maxItems: 1

  clock-names:
    maxItems: 1
    items:
      - const: gpu

> 
>> If you agree I can add the clocks/clock-names property as an
>> optional property. This should solve omap and all others.
> 
> With the above example, what clock should I put in there? In which order? This
> isn't some random example pulled out of nowhere. The Allwinner A31 has (at
> least) 4 clocks for the GPU, 1 reset line and 1 regulator, so I can only assume
> that the GPU actually needs at least that amount to be properly integrated into
> an SoC.

Ah, now I understand your motivation: you have access and experience with
the A31 and you know that our proposal doesn't fit to it.

From what I know from your description is that the A31 is quite special with
4 GPU clocks... Are they all really for the GPU or 3 of them for the interface
logic (like on OMAP which separates between "functional clocks" and "interface
clocks")? Or are there 4 groups of GPU cores with a separate clock for each one?

So what would be your proposal for the A31 DT?

Then I get a chance to compare DT snippets and try to make a mixture for
the bindings.

> 

>>> This has nothing to do with the binding being complete. And if you use
>>> a binding like this one, you'll be severely limited when you'll want
>>> to implement things like DVFS.
>> 
>> Now you have unhooked me... Nobody seems to know if and how DVFS can be
>> applied to SGX. IMHO we should bake small bread first and get initial
>> support into mainline.
> 
> On the software side, yes, of course. But the discussion here doesn't have much
> to do with software support, this is about the hardware. No matter if you enable
> DVFS or not, you'll have those resources connected to the GPU.
> 
> And if you want to enable the strict minimum in DT for now and expand it later
> as the software gains support for more stuff, then you'll have to deal with the
> minimal stuff in software later-on to keep the backward compatibility.

That is IMHO common practise everywhere. Sometimes you even have to adapt
years old DT to new limitations of the drivers (this happened recently for
combination of SPI and GPIO). 

And you can still write two different drivers for a single bindings document
or use the .data field of the compatibility table. And I think clocks and regulators
can also be referenced by name if they are not defined in DT. This is not a
"single variety" style, but a potential solution.

What I want to say: there are many roads to Rome.

> But given that the current state on the Allwinner SoCs (at least) is that you
> can't even read a register, it might be a good idea to delay the introduction of
> that binding until you have something that works to avoid drowning under the
> number of special cases to deal with backward compatibility.

Philipp has something minimal working on the A83 which works with the proposed
binding and enabled him to read out the sgx revision register.

So if you are a specialist for the A31 SGX, please make a proposal for a binding
that covers all the A31 needs and all other SoC we know. Or define a separate
bindings for the A31.

Thank you very much,
Nikolaus Schaller


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
