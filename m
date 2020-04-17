Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5430E1ADD06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 14:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBIWidTjbdXsnKXQj+a89YZo0FSJFjX3fVci8/pF0Lc=; b=rpoCRtnx1KExd0
	cdv4SndoqvwbNBMnx4pY7OlhE2orWZrB6oII6A4SyBhfc7MS+j/6h75A9yzGfy24GhWLN5ckNJ+6G
	b3QrzSm+rgVGi8RHgHe1CB2vXu3tNi08BcOAtqES6tZ92FS7WCn7VGbRjyJbyXyQJ2KJ0zRyv/1OL
	F1id40z6aRjgHdT/hyDsrtwsCcX+W8Mi++9lkbyPzvuggtzvTm7qB4WlkYEa5cvnfbQ1IPn93yiZd
	hDHNUOV6X9weJd3BmSD35iSOVl5RHSYR9Vj1q18mykG/mK/ETaMVneXnbklkIoRUNJyfXBOyryHuB
	qpPnkL9xp/nTrnphukOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPui-00066E-QI; Fri, 17 Apr 2020 12:16:08 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPuY-0005y3-Jr
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:16:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587125747;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=rWgceOhSWa758bgT+X6qKMY760KerwI9IfGOuR55b2U=;
 b=hva0Ion07f0bL4ztVFsPTiS+FfgJi8RtrnAAkaLPatflay007jYnvMYXqninmsKV3T
 xUfrGk+2gDteDBrg0qyrP1kShnySKs8rsaDnNeliduKc2PICz3REgaSk0eR8qMpphUHC
 +rHSYPqlLt92azIqA4+1WGL5pUlcPg5v/9//Ilnw+xTxQYKgcpeulhrY0lLDKA+cUGQv
 i8RGUN57A1kU4GkaBjb94RwWH97Us7EIvZRSRj0/u74ZDGtrLghyugHKzZG5RAv3dYTR
 BlMQfOaeurdweOnaHDQDGT+KF9xKMhzkZbHgK62WSjQHnkQ0CLcFQ1Dn0HpKQ808iBzK
 F1RA==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PgwDWjbQ=="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.5.0 DYNA|AUTH)
 with ESMTPSA id g06d2dw3HCFa1c0
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Fri, 17 Apr 2020 14:15:36 +0200 (CEST)
Subject: Re: [PATCH v6 08/12] arm: dts: s5pv210: Add G3D node
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <BN6PR04MB0660640B15550F75C8CCD4DEA3DB0@BN6PR04MB0660.namprd04.prod.outlook.com>
Date: Fri, 17 Apr 2020 14:15:36 +0200
Message-Id: <D44C023E-C8B3-4974-B800-1DBEC7B4F82C@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
 <b6733f80546bf3e6b3799f716b9c8e0f407de03d.1586939718.git.hns@goldelico.com>
 <CAJKOXPcb9KWNAem-CAx_zCS+sZoEHYc0J8x0nk1xjY9hD4-M4w@mail.gmail.com>
 <AB9B8741-CFF7-414D-9489-D381B539538D@goldelico.com>
 <BN6PR04MB0660640B15550F75C8CCD4DEA3DB0@BN6PR04MB0660.namprd04.prod.outlook.com>
To: Jonathan Bakker <xc-racer2@live.ca>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_051559_244382_C0E89F93 
X-CRM114-Status: GOOD (  17.58  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-omap@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 letux-kernel@openphoenux.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jonathan,

> Am 15.04.2020 um 20:17 schrieb Jonathan Bakker <xc-racer2@live.ca>:
> 
> Hi Nikolaus,
> 
> On 2020-04-15 5:50 a.m., H. Nikolaus Schaller wrote:
>> 
>>> Am 15.04.2020 um 13:49 schrieb Krzysztof Kozlowski <krzk@kernel.org>:
>>> 
>>> On Wed, 15 Apr 2020 at 10:36, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>>>> 
>>>> From: Jonathan Bakker <xc-racer2@live.ca>
>>>> 
>>>> to add support for SGX540 GPU.
>>> 
>>> Do not continue the subject in commit msg like it is one sentence.
>>> These are two separate sentences, so commit msg starts with capital
>>> letter and it is sentence by itself.
>>> 
> 
> Sorry, that's my fault, I should know better.

Mine as well...

> 
> Nikolaus took this from my testing tree and I apparently didn't have it in
> as good as state as I should have.
> 
>>>> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
>>>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>>>> ---
>>>> arch/arm/boot/dts/s5pv210.dtsi | 15 +++++++++++++++
>>>> 1 file changed, 15 insertions(+)
>>>> 
>>>> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
>>>> index 2ad642f51fd9..e7fc709c0cca 100644
>>>> --- a/arch/arm/boot/dts/s5pv210.dtsi
>>>> +++ b/arch/arm/boot/dts/s5pv210.dtsi
>>>> @@ -512,6 +512,21 @@ vic3: interrupt-controller@f2300000 {
>>>>                       #interrupt-cells = <1>;
>>>>               };
>>>> 
>>>> +               g3d: g3d@f3000000 {
>>>> +                       compatible = "samsung,s5pv210-sgx540-120";
>>>> +                       reg = <0xf3000000 0x10000>;
>>>> +                       interrupt-parent = <&vic2>;
>>>> +                       interrupts = <10>;
>>>> +                       clock-names = "sclk";
>>>> +                       clocks = <&clocks CLK_G3D>;
>>> 
>>> Not part of bindings, please remove or add to the bindings.
>> 
>> Well, the bindings should describe what is common for all SoC
>> and they are quite different in what they need in addition.
>> 
>> Thererfore we have no "additionalProperties: false" in the
>> bindings [PATCH v6 01/12].
>> 
>>> 
>>>> +
>>>> +                       power-domains = <&pd S5PV210_PD_G3D>;
>>> 
>>> Ditto
>> 
>> In this case it might be possible to add the clock/power-domains
>> etc. to a wrapper node compatible to "simple-pm-bus" or similar
>> and make the gpu a child of it.
>> 
>> @Jontahan: can you please give it a try?
>> 
>> 
> 
> The power-domains comes from a (so far) non-upstreamed power domain driver
> for s5pv210 that I've been playing around with.  It's not necessary for proper
> operation as it's on by default.
> 
> Looking at simple-pm-bus, I don't really understand its purpose.  Is it a way of separating
> out a power domain from a main device's node?  Or is it designed for when you have multiple
> devices under the same power domain?
> 
> Nikolaus, I can regenerate a proper patch for you if you want that's not based on my testing tree.

Yes, please.

> 
>>> 
>>>> +
>>>> +                       assigned-clocks = <&clocks MOUT_G3D>, <&clocks DOUT_G3D>;
>>>> +                       assigned-clock-rates = <0>, <66700000>;
>>>> +                       assigned-clock-parents = <&clocks MOUT_MPLL>;
>>> 
>>> Probably this should have status disabled because you do not set
>>> regulator supply.
> 
> I don't believe there is a regulator on s5pv210, if there is, then it is a
> fixed regulator with no control on both s5pv210 devices that I have.
> 
> The vendor driver did use the regulator framework for its power domain
> implementation, but that definitely shouldn't be upstreamed.

Ok, this means there is no need for regulators in the bindings.

BR,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
