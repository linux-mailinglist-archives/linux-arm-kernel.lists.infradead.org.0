Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE391C2835
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 22:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpGSQvLhhbjrDuWtUe8s4etkg5urybBFzr+GtbczEsQ=; b=Th/ZFHjGeCCYp3
	A3P8DMiHFMtKf8+2u4vBBYObBrKTeRHBBgRCBedhjERTP5DI/tEsYtORwnG3N2RpUHAaKgxk9FuTb
	m9w15jTUt51fxzQnbetQO8JbSK82lD5xKQrKX5SXaSDczppjD7CKE3axKWT+a26sgggwfG3+6Baun
	uZNB6XajTgDF6+S47DcyaRVPecg9EW5lNpXT6zC53sLDruBa1fDugBFXuWy3chLRmVEJAW7UUleyD
	FSuJ8o7ufLi8FJtS07FsSiAIp8x1yPkTfcyD5LNJ+GHBJr77y9pZQWkztdUGX2dGo6QldjjDRvZJ8
	rr6BpApR/1364MbxIDOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUyj1-00071o-5f; Sat, 02 May 2020 20:27:03 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUyit-0006z3-HA
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 20:26:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1588451201;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=aFutSXBhxdQGsI0cADyst3RpMgduPhgX/DjMd6AXC1k=;
 b=eK/Ovkbqzy5BVMn6tifuopT8p+CKtPIZUs08VSTFF6CHf9vMSfiLUJ5RK+bAWI/q1Q
 kmk4sSLJW8lW2sL/yVFac56W2ag8UI9eeT88NdV67G14MjHbsb2SBv3fWc6qbhtEZpmb
 4qDZAjkeVEioYjzeVSgiRB3FtkqepxhSRSJgXT6HktZmfygaTJhczr11fwgtV0Kdj970
 NU8yM9bzHPlhyChwoflJP/dLx2w9aT1Dkm9mw0qFeDxmBA+QQdGbGkEdt7NSSHiSDp/v
 G5jhtSMuE3MxxkGHS25dWe1up+96EKkLA4fSOyKuwtfWbl6B4OtHjRybrucNk/LX5oIv
 do0w==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj5Qpw97WFDlSVXA4OCWU="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw42KQTesh
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Sat, 2 May 2020 22:26:29 +0200 (CEST)
Subject: Re: [PATCH v7 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <NMCE9Q.LWG45P20NBVJ@crapouillou.net>
Date: Sat, 2 May 2020 22:26:29 +0200
Message-Id: <28138EC0-0FA5-4F97-B528-3442BF087C7A@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
 <NMCE9Q.LWG45P20NBVJ@crapouillou.net>
To: Paul Cercueil <paul@crapouillou.net>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_132656_162711_41D60E3E 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:6 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul,

> Am 26.04.2020 um 15:11 schrieb Paul Cercueil <paul@crapouillou.net>:
> =

> Hi Nikolaus,
> =

> Le ven. 24 avril 2020 =E0 22:34, H. Nikolaus Schaller <hns@goldelico.com>=
 a =E9crit :
>> The Imagination PVR/SGX GPU is part of several SoC from
>> multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
>> Allwinner A83 and others.
>> With this binding, we describe how the SGX processor is
>> interfaced to the SoC (registers and interrupt).
>> The interface also consists of clocks, reset, power but
>> information from data sheets is vague and some SoC integrators
>> (TI) deciced to use a PRCM wrapper (ti,sysc) which does
>> all clock, reset and power-management through registers
>> outside of the sgx register block.
>> Therefore all these properties are optional.
>> Tested by make dt_binding_check
>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>> ---
>> .../devicetree/bindings/gpu/img,pvrsgx.yaml   | 150 ++++++++++++++++++
>> 1 file changed, 150 insertions(+)
>> create mode 100644 Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
>> diff --git a/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml b/Doc=
umentation/devicetree/bindings/gpu/img,pvrsgx.yaml
>> new file mode 100644
>> index 000000000000..33a9c4c6e784
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
>> @@ -0,0 +1,150 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/gpu/img,pvrsgx.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Imagination PVR/SGX GPU
>> +
>> +maintainers:
>> +  - H. Nikolaus Schaller <hns@goldelico.com>
>> +
>> +description: |+
>> +  This binding describes the Imagination SGX5 series of 3D accelerators=
 which
>> +  are found in several different SoC like TI OMAP, Sitara, Ingenic JZ47=
80,
>> +  Allwinner A83, and Intel Poulsbo and CedarView and more.
>> +
>> +  For an extensive list see: https://en.wikipedia.org/wiki/PowerVR#Impl=
ementations
>> +
>> +  The SGX node is usually a child node of some DT node belonging to the=
 SoC
>> +  which handles clocks, reset and general address space mapping of the =
SGX
>> +  register area. If not, an optional clock can be specified here.
>> +
>> +properties:
>> +  $nodename:
>> +    pattern: '^gpu@[a-f0-9]+$'
>> +  compatible:
>> +    oneOf:
>> +      - description: SGX530-121 based SoC
>> +        items:
>> +          - enum:
>> +            - ti,omap3-sgx530-121 # BeagleBoard A/B/C, OpenPandora 600M=
Hz and similar
>> +          - const: img,sgx530-121
>> +          - const: img,sgx530
>> +
>> +      - description: SGX530-125 based SoC
>> +        items:
>> +          - enum:
>> +            - ti,am3352-sgx530-125 # BeagleBone Black
>> +            - ti,am3517-sgx530-125
>> +            - ti,am4-sgx530-125
>> +            - ti,omap3-sgx530-125 # BeagleBoard XM, GTA04, OpenPandora =
1GHz and similar
>> +            - ti,ti81xx-sgx530-125
>> +          - const: ti,omap3-sgx530-125
>> +          - const: img,sgx530-125
>> +          - const: img,sgx530
>> +
>> +      - description: SGX535-116 based SoC
>> +        items:
>> +          - const: intel,poulsbo-gma500-sgx535 # Atom Z5xx
>> +          - const: img,sgx535-116
>> +          - const: img,sgx535
>> +
>> +      - description: SGX540-116 based SoC
>> +        items:
>> +          - const: intel,medfield-gma-sgx540 # Atom Z24xx
>> +          - const: img,sgx540-116
>> +          - const: img,sgx540
>> +
>> +      - description: SGX540-120 based SoC
>> +        items:
>> +          - enum:
>> +            - samsung,s5pv210-sgx540-120
>> +            - ti,omap4-sgx540-120 # Pandaboard, Pandaboard ES and simil=
ar
>> +          - const: img,sgx540-120
>> +          - const: img,sgx540
>> +
>> +      - description: SGX540-130 based SoC
>> +        items:
>> +          - enum:
>> +            - ingenic,jz4780-sgx540-130 # CI20
>> +          - const: img,sgx540-130
>> +          - const: img,sgx540
>> +
>> +      - description: SGX544-112 based SoC
>> +        items:
>> +          - const: ti,omap4470-sgx544-112
>> +          - const: img,sgx544-112
>> +          - const: img,sgx544
>> +
>> +      - description: SGX544-115 based SoC
>> +        items:
>> +          - enum:
>> +            - allwinner,sun8i-a31-sgx544-115
>> +            - allwinner,sun8i-a31s-sgx544-115
>> +            - allwinner,sun8i-a83t-sgx544-115 # Banana-Pi-M3 (Allwinner=
 A83T) and similar
>> +          - const: img,sgx544-115
>> +          - const: img,sgx544
>> +
>> +      - description: SGX544-116 based SoC
>> +        items:
>> +          - enum:
>> +            - ti,dra7-sgx544-116 # DRA7
>> +            - ti,omap5-sgx544-116 # OMAP5 UEVM, Pyra Handheld and simil=
ar
>> +          - const: img,sgx544-116
>> +          - const: img,sgx544
>> +
>> +      - description: SGX545 based SoC
>> +        items:
>> +          - const: intel,cedarview-gma3600-sgx545 # Atom N2600, D2500
>> +          - const: img,sgx545-116
>> +          - const: img,sgx545
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  interrupt-names:
>> +    maxItems: 1
>> +    items:
>> +      - const: sgx
>> +
>> +  clocks:
>> +    maxItems: 4
>> +
>> +  clock-names:
>> +    maxItems: 4
>> +    items:
>> +      - const: core
>> +      - const: sys
>> +      - const: mem
>> +      - const: hyd
>> +
>> +  sgx-supply: true
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  resets:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
> =

> By not making 'clocks' required you make it possible to create broken bin=
dings; according to your schema, a GPU node without a 'clocks' for the JZ47=
80 would be perfectly valid.

Yes. But it will never pass a test with real hardware. So it can't be omitt=
ed anyways.

On a more general thought, this argument holds for any optional property. S=
o it is not specific to clocks. Since the reg address values are also never=
 specified you can still create broken bindings. Or by connecting the wrong=
 clock. So the ways to create broken bindings are numerous.

I also assume that SGX integrators are not beginners and do you think they =
need to find out through a make dt_binding_check dtbs_check that they shoul=
d define a clock? based on *assumptions* we do without having access to all=
 systems?

IMHO the bindings documentation is a documentation. So it needs to be helpf=
ul but not perfect. Formalizing all corner cases in a bindings document (ju=
st because we can since .yaml was introduced) is IMHO overkill.

In times before the introduction of more formal .yaml I think we would not =
even have considered this for a comment in the bindings.txt.

> It's possible to forbid the presence of the 'clocks' property on some imp=
lementations, and require it on others.

To be precise we have to specify the exact number of clocks (between 0 and =
4) for every architecture.

This also contradicts my dream to get rid of the architecture specific comp=
onents in the long run. My dream (because I can't tell how it can be done) =
is that we can one day develop something which just needs compatible =3D im=
g,530 or imp,540 or img,544. Then we can't make the number clocks depend on=
 the implementation any more.

> See how it's done for instance on Documentation/devicetree/bindings/seria=
l/samsung_uart.yaml.

Yes I know the design pattern, but I wonder if such a move makes the whole =
thing even less maintainable.

Assume we have finished DTS for some SoC. Then these DTS have been tested o=
n real hardware and are working. Clocks are there where needed and missing =
where not. We may now forbid or not forbid them for some implementations in=
 the bindings.yaml but the result of dtbs_check won't change! Because they =
are tested and working and the bindings.yaml has been adapted to the result=
. So we have just duplicated something for no practical benefit.

Next, assume there is coming support for more and more new SoC. Then, devel=
opers not only have to figure out which clocks they need in the DTS but the=
y also have to add a patch to the implementation specific part of the bindi=
ngs.yaml to clearly define exactly the same what they already have written =
into their .dts (the clocks are either there for the of_node or they are no=
t). So again the rules are for no benefit, since a new SoC is introduced ex=
actly once. And tested if it works. And if it is there, it will stay as it =
is. It is just work for maintainers to review that patch as well.

It boils down to the question if we need to formalize the rule how a workin=
g DTS was derived. Or just have a working DTS and not formalize everything.

So IMHO carrying along such a detail (forbid clocks on some architectures) =
is nice to have (and fun to learn the .yaml thing) but not of benefit for a=
nyone. Not for the DTS developer nor for the maintainers nor for the users =
of a Linux kernel. "Keep it simple" is always a good rule for maintainabili=
ty.

In summary I don't see a good reason to follow this in v8. But you could ad=
d it by a separate patch later if the DTS have been reviewed and agreed.

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
