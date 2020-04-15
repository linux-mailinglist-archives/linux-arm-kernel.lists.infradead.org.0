Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D484C1AA1D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skhy6JfV4EcORwM9HLmEvy814zdrEENHQLk4Pc65rfE=; b=cN9O6J2WD7SRAd
	nZTG5hKki6lpdCCLZiux39OWxdHj6ZRAKcaW0ji/rSbMiFbDzszPK/bgm5IMBRASE+fjTHuS+wpwi
	YYKDpMLRoIk28gb5vkrFtrrgKgWG+F9fpZ1HJpAU8QWOdctytFc1eBLeGCArVzLcSRuXw+doRbPKf
	4LW7MgIjK9AzQHbdocxZlTJEfckc1I7o7OkiVMzI7TfPfb3Twdm9E0fkybRqh/VjOh4v6OuNUFrtu
	HTTzdtKdtW2XScutgvBmtN+db/DzzIK6GU1h16pTJ5O8pqiodQxdMZovCgpv/klALma4fxuidygum
	bMjSraVOe6f0BIy3z51w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhVi-0007KJ-Br; Wed, 15 Apr 2020 12:51:22 +0000
Received: from mo6-p03-ob.smtp.rzone.de ([2a01:238:20a:202:5303::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhUx-0006iR-Ak
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586955033;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=ZWPeQuNZym8qIi2cOZDzlHwaDAs+LcskJtN8sCgQ/rk=;
 b=G5jhLsHcdYx7caZ+OG6N6OV6aFen4jS1w6N8QOyBetugrsoukTRmPn68RmeqK1Opba
 D4AoFQ+QYvj0Vgzv/isZEr7sK5jQwK78T8ILG+DoCRjV8MOwtou1/1wKzlp9hcWwVgYk
 RBSfKdUQNiqqrQb+k0J9ylv2gSRVEClvzNVL5+IA8GTrqbCgq05QqfmClzEmz/i5Enso
 BgQmsblbOcykYkRoolp7nhp8AmCrp60kLIh5bMArtVs72zNEWUTBIFZFbHeFWaxbBB2e
 /j0JTklJ7nfbFXgN1Y5qwc2bTJoXz/sJf+6qO7ID9kGOonh19XrV/5LL+SfIIoisK3Ch
 dgZg==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PtwDConyM="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.4.0 DYNA|AUTH)
 with ESMTPSA id 6028a2w3FCoV1xp
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 15 Apr 2020 14:50:31 +0200 (CEST)
Subject: Re: [PATCH v6 08/12] arm: dts: s5pv210: Add G3D node
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <CAJKOXPcb9KWNAem-CAx_zCS+sZoEHYc0J8x0nk1xjY9hD4-M4w@mail.gmail.com>
Date: Wed, 15 Apr 2020 14:50:31 +0200
Message-Id: <AB9B8741-CFF7-414D-9489-D381B539538D@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
 <b6733f80546bf3e6b3799f716b9c8e0f407de03d.1586939718.git.hns@goldelico.com>
 <CAJKOXPcb9KWNAem-CAx_zCS+sZoEHYc0J8x0nk1xjY9hD4-M4w@mail.gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_055036_325384_0EEFCC50 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5303:0:0:2 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-omap@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 letux-kernel@openphoenux.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 15.04.2020 um 13:49 schrieb Krzysztof Kozlowski <krzk@kernel.org>:
> 
> On Wed, 15 Apr 2020 at 10:36, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>> 
>> From: Jonathan Bakker <xc-racer2@live.ca>
>> 
>> to add support for SGX540 GPU.
> 
> Do not continue the subject in commit msg like it is one sentence.
> These are two separate sentences, so commit msg starts with capital
> letter and it is sentence by itself.
> 
>> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>
>> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
>> ---
>> arch/arm/boot/dts/s5pv210.dtsi | 15 +++++++++++++++
>> 1 file changed, 15 insertions(+)
>> 
>> diff --git a/arch/arm/boot/dts/s5pv210.dtsi b/arch/arm/boot/dts/s5pv210.dtsi
>> index 2ad642f51fd9..e7fc709c0cca 100644
>> --- a/arch/arm/boot/dts/s5pv210.dtsi
>> +++ b/arch/arm/boot/dts/s5pv210.dtsi
>> @@ -512,6 +512,21 @@ vic3: interrupt-controller@f2300000 {
>>                        #interrupt-cells = <1>;
>>                };
>> 
>> +               g3d: g3d@f3000000 {
>> +                       compatible = "samsung,s5pv210-sgx540-120";
>> +                       reg = <0xf3000000 0x10000>;
>> +                       interrupt-parent = <&vic2>;
>> +                       interrupts = <10>;
>> +                       clock-names = "sclk";
>> +                       clocks = <&clocks CLK_G3D>;
> 
> Not part of bindings, please remove or add to the bindings.

Well, the bindings should describe what is common for all SoC
and they are quite different in what they need in addition.

Thererfore we have no "additionalProperties: false" in the
bindings [PATCH v6 01/12].

> 
>> +
>> +                       power-domains = <&pd S5PV210_PD_G3D>;
> 
> Ditto

In this case it might be possible to add the clock/power-domains
etc. to a wrapper node compatible to "simple-pm-bus" or similar
and make the gpu a child of it.

@Jontahan: can you please give it a try?


> 
>> +
>> +                       assigned-clocks = <&clocks MOUT_G3D>, <&clocks DOUT_G3D>;
>> +                       assigned-clock-rates = <0>, <66700000>;
>> +                       assigned-clock-parents = <&clocks MOUT_MPLL>;
> 
> Probably this should have status disabled because you do not set
> regulator supply.
> 
> Best regards,
> Krzysztof

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
