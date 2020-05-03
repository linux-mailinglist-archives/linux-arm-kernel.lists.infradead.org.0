Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E41561C2CCD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 15:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anFp0LZxUbwXskyCcHapD56uUrqVwwEDnaEZ9wCESuI=; b=OuWnx1VYYjdouk
	MHzM9xQ4kG0iPel5v+VHCDs1IuH++cw6MaDlG6/A5be6Jy8Y2gyN+Lewoce9GrVg8buRbWApx3Ys+
	5W4jSQHqVwMRK6APVwbSw2LR1GxBZAO0CIBZz2nsw98ID7lm+yI1LMDRgCcn1t60vdXj2OzzA2YWF
	Yzjvwpl9BJfjcj+soXlRMOm9pvkT/FkCCwnp7ehU9xoFSeTJDyd8qjyM1ps8WaIxfU1UHtUllEHFq
	Q4sB6YRbYjuzA4H/ToGdoBOjQLv0TyJ6yAxcAPx3TsIVXI0IrU70qlJHEWFMeu3AtAHDIFYAPab7A
	uo/Vqftnm9i3bAM3xMQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVEiy-0001Th-Iw; Sun, 03 May 2020 13:32:04 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVEip-0001St-Rk
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 13:31:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1588512713;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=P2n1VxAj51ovTRVckIsPeyqg24p7NzEQivx7HgyjYQo=;
 b=naDRUHxA8BH9Oehq6Z9A3GLQFyWztYCw+Mb/S2R3qv0OWToGTNeF8gv23NDKN78c/m
 iKd2uv4uyp/jztwals5iM5Ubo1+r1nSvM8FW9UNVOKT2Z9HprubjuEal8PsGoP7Dc5xZ
 xNe5tYeZpUoMG+lPhU862xWllshg+Q9isYR9g+AqvOldNHH0wacBMHq8gfhzLWUiJh3D
 OI+mrk8VdSNvdSra8ME71/Jx09YnZI/7fMeYig4Rm6Vfey/oGzo3y4GyW/fHAZqNnf6r
 c5on1qCgpeaySCa870XF7W4kKy0owznNmN29xyvd8CEsGNJ0yuGWp4c+duVT9XX9uBX2
 ZXWg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDlaZXA4J2Ms="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw43DVhfoF
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Sun, 3 May 2020 15:31:43 +0200 (CEST)
Subject: Re: [PATCH v7 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <TEAR9Q.6HI5DFRO5U0I3@crapouillou.net>
Date: Sun, 3 May 2020 15:31:42 +0200
Message-Id: <3D8B59D6-83E3-4FE6-9C99-E2E5616A8139@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
 <NMCE9Q.LWG45P20NBVJ@crapouillou.net>
 <28138EC0-0FA5-4F97-B528-3442BF087C7A@goldelico.com>
 <TEAR9Q.6HI5DFRO5U0I3@crapouillou.net>
To: Paul Cercueil <paul@crapouillou.net>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_063156_493843_6D848FFB 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 =?iso-8859-1?Q?Beno=EEt_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

> Am 03.05.2020 um 14:52 schrieb Paul Cercueil <paul@crapouillou.net>:
> 
>>> It's possible to forbid the presence of the 'clocks' property on some implementations, and require it on others.
>> To be precise we have to specify the exact number of clocks (between 0 and 4) for every architecture.
>> This also contradicts my dream to get rid of the architecture specific components in the long run. My dream (because I can't tell how it can be done) is that we can one day develop something which just needs compatible = img,530 or imp,540 or img,544. Then we can't make the number clocks depend on the implementation any more.
> 
> As we said before, the number of clocks is a property of the GPU and *not* its integration into the SoC.

Well, it is a not very well documented property of the GPU. We have no data sheet of the standalone GPU. Only several SoC data sheets which give some indications.

It appears as if some sgx5xx versions have 3 clocks and some have 4. So you are right, the number of clocks depends on the sgx5xx version and that could be made dependent in the bindings (if necessary).

> 
> So you would *not* have a number of clocks between 0 and 4. You get either 0, or 4, depending on whether or not you have a wrapper.

I think this is contradicting your previous sentence. If the number of clocks is a property of the GPU and not the integration it must also not depend on whether there is a wrapper. I.e. it must be a constant for any type of integration.

The really correct variant would be to always make the SoC integration (wrapper) a separate subsystem (because it is never part of the SGX core but some interface bus) and clock provider and connect it explicitly to the clock inputs.

To be clear: I am not at all against describing the clocks. I just doubt that the time we invest into discussing on this level of detail and adding conditional clock requirements is worth the result. IMHO the bindings and .dts do not become better by describing them in more detail than just "optional". It just takes our time from contributing to other subsystems.

> 
> 
>>> See how it's done for instance on Documentation/devicetree/bindings/serial/samsung_uart.yaml.
>> Yes I know the design pattern, but I wonder if such a move makes the whole thing even less maintainable.
>> Assume we have finished DTS for some SoC. Then these DTS have been tested on real hardware and are working. Clocks are there where needed and missing where not. We may now forbid or not forbid them for some implementations in the bindings.yaml but the result of dtbs_check won't change! Because they are tested and working and the bindings.yaml has been adapted to the result. So we have just duplicated something for no practical benefit.
>> Next, assume there is coming support for more and more new SoC. Then, developers not only have to figure out which clocks they need in the DTS but they also have to add a patch to the implementation specific part of the bindings.yaml to clearly define exactly the same what they already have written into their .dts (the clocks are either there for the of_node or they are not). So again the rules are for no benefit, since a new SoC is introduced exactly once. And tested if it works. And if it is there, it will stay as it is. It is just work for maintainers to review that patch as well.
> 
> If you add support for a new SoC, you'd still need to modify the binding to add the compatible string. So the argument of "more work" is moot.

Agreed, I forgot this aspect. Nevertheless, it is easier to review a new compatible string than a new clock number rule (question: how do you practically review this? By looking if it does match the DTS?).

We have to add the compatible string as long as we need to have the SoC name in the compatible string (which as said is my dream to get rid of in far future). If we could get rid of it, there won't be a change any more. By just taking "img,sgx544" into a new SoC. The change would be moved into SoC specific wrappers. In such an ideal world, we would explicitly describe the wrappers as separate DT nodes. Even if they have no explicit driver (e.g. by some simple-pm-bus).

                   PRCM,bus,
Processor <<---->> Wrapper <<----->> SGX
ti,...             ti,sysc           img,sgx530
img,...            simple-bus        img,sgx540
samsung,...        ...               img,sgx544
other,             other,gpu-wrapper img,...

But this IMHO correct proposal was already rejected.

So at the moment we are circling around several proposals because none can fulfill all requirements.

Therefore my attempt to solve the gordian knot is to make clocks generally optional. This keeps the bindings simple but not generally wrong. And since the DTS are not only tested against bindings.yaml but on real hardware, the omission to enforce a specific number of clocks doesn't harm anyone. As said it is impossible to get the SGX running without defining the correct clocks (whether they are enforced by bindings.yaml or not).

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
