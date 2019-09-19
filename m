Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 747CEB740E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 09:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15YCZxobXhcmKJe1j7E8MJ00Mhq9Zppa5IzQUX9mF/c=; b=D3suAqfh+1etZc
	klNtIIMqL1SQpQzU9SWk7ESmPP8VDM8krs6Z7GM+GynBk+Ydwqc6mwMBa4w6ilPB0WTE2fN0Mx+U7
	0aiZltrZmPwIrA6riOSN1RQ0CRzo4RqnAsxJXKjuyvMxE4eDwubcvVRqZiyNvgbrQ3p02cTuzhCIc
	eWVhCD3Xas7ElugJmxk37RaewMcSdlE8UbGoEl0UjQAPN9FgebFzVxIw0+aPcJM01mZ8BRy08yY8e
	0PLK/KhWVLUu3yOVb7VqZKK6+hlGNJiUF5J9cbx8lysJLiQVRGDn0D/FBSkuoHOt+akWSo+D/mLqT
	HWzn7rv2NkR+d7LUW1Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAqsC-0000TA-Vi; Thu, 19 Sep 2019 07:29:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAqrg-0000SG-Jp
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 07:28:34 +0000
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31E422196E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 07:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568878110;
 bh=4pZybG6ie1wq7kPEzXnAIhWrkHP0YAIy7EvNqXIs0nk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Hpi/Z6J0YAAbOxVs8ZaWgVSCqvrnR8B7P+/GUdLyupwWwixlPgAcGD61FvCiaJp8C
 al+551ZPFPd3WOzm1y60AcTOlN8g0hc+qUf41kMC2I+ez+w5cUzQJhwDK2kKA3L993
 YZahqK7xDgB73pcopGFoZRnJm9SuxVvlD7F/bxOA=
Received: by mail-oi1-f174.google.com with SMTP id k9so1881993oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 00:28:30 -0700 (PDT)
X-Gm-Message-State: APjAAAXg/5lJShuD+q7RLouoryd6honbCDxGm89IqSj3tQv0FoELT/7e
 WAGjP/cnKW14VrXwPmFjeyRPiMgVerav3r1fua0=
X-Google-Smtp-Source: APXvYqxcWCabkIkAYweLFABw3mTwh5ueZcYmaLJriDnmtFR+Tcfb38WjBVsL3eNPszwXlF4vNOXyKPu8g8TjuXaQDIc=
X-Received: by 2002:aca:cf51:: with SMTP id f78mr1302933oig.8.1568878109494;
 Thu, 19 Sep 2019 00:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190916100719eucas1p206fe95982b774840b5d6e62ba9c42c79@eucas1p2.samsung.com>
 <20190916100704.26692-1-l.luba@partner.samsung.com>
 <20190916100704.26692-4-l.luba@partner.samsung.com>
 <CAJKOXPcxG-mMKy5u-b0+xj_sOmrq5yq5-LYJx0Ds6_+yo_=JbA@mail.gmail.com>
 <4a0d1d2c-cd1d-5df4-d4b1-f2dd1ef3bb72@partner.samsung.com>
In-Reply-To: <4a0d1d2c-cd1d-5df4-d4b1-f2dd1ef3bb72@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 19 Sep 2019 09:28:18 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfBueaf2UVik8x2L_D_PTxdkvRukuWL3xh_jDiLKtt7pQ@mail.gmail.com>
Message-ID: <CAJKOXPfBueaf2UVik8x2L_D_PTxdkvRukuWL3xh_jDiLKtt7pQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: ddr: Add bindings for Samsung LPDDR3
 memories
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_002832_700315_922A3E63 
X-CRM114-Status: GOOD (  27.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 at 08:49, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> Hi Krzysztof,
>
> On 9/18/19 8:51 PM, Krzysztof Kozlowski wrote:
> > On Mon, 16 Sep 2019 at 12:07, Lukasz Luba <l.luba@partner.samsung.com> wrote:
> >>
> >> Add compatible for Samsung k3qf2f20db LPDDR3 memory bindings.
> >> Introduce minor fixes in the old documentation.
> >>
> >> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> >> ---
> >>   Documentation/devicetree/bindings/ddr/lpddr3.txt | 9 ++++++---
> >>   1 file changed, 6 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
> >> index 3b2485b84b3f..49afe794daaa 100644
> >> --- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
> >> +++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
> >> @@ -1,7 +1,9 @@
> >>   * LPDDR3 SDRAM memories compliant to JEDEC JESD209-3C
> >>
> >>   Required properties:
> >> -- compatible : Should be  - "jedec,lpddr3"
> >> +- compatible : should be one of the following:
> >> +       Generic default - "jedec,lpddr3".
> >
> > The convention is first compatible, then description. I gave you the
> > example to base on - at25. Why making it different?
>
> I have checked at25 that you pointed me to and also checked at24, which
> has a bit longer "compatible" section.
>
> I found that there are many "jedec,spi-nor" compatible devices, which I
> thought would be a better example for my "jedec,lpddr3".
> For example, two configurations, where you have a single labels or dual
> (with specific device)
> arch/arm/boot/dts/imx6dl-rex-basic.dts:
> compatible = "sst,sst25vf016b", "jedec,spi-nor";
> arch/arm/boot/dts/imx6q-ba16.dtsi:
> compatible = "jedec,spi-nor";
>
> The 'compatible' in documentation for the "jedec,spi-nor" is slightly
> different (similar to at24).
> Documentation/devicetree/bindings/mtd/jedec,spi-nor.txt
> It has a long explanation, which is also OK. So I thought that it is
> quite flexible what you put in there.

It is flexible but I see clear pattern in existing sources:
  jedec,spi-nor.txt
  compatible : May include a device-specific ..
  ...
  Supported chip names:
    at25df321a
    ...

  at25.txt:
  - compatible : Should be "<vendor>,<type>", and generic value "atmel,at25".
    Example "<vendor>,<type>" values:
      "anvo,anv32e61w"
      "microchip,25lc040"

In these cases the doc says that "compatible should be" and then you
have the list of values. Your example says that the compatible should
be "Generic default" or "For Samsung 542x SoC"... :) The difference is
slight but putting the value first is a simple and elegant solution.
In your case one has to go to the end of sentence to find the most
important information - the compatible value.

> I have also checked Cadance QSPI controller.
> Documentation/devicetree/bindings/mtd/cadence-quadspi.txt
> The controller might be built-in into different vendor SoC's
> and the "compatible" is ready to reflect it in similar fashion but
> with a short explanation in this section.

I see. I do not find this pattern as much readable as jedec-spi-nor or
at25 therefore I mentioned them as an example to base on ("Exactly the
same as AT24 or AT25 EEPROM bindings."). We can avoid also this entire
discussion with YAML (which also follows approach of at25 - value
first).

> Therefore, what you see in the patch draw heavily on Cadence's qspi,
> with a bit of inspiration from jedec,spi-nor usage.
>
> Should I change it to at25 "compatible" style and send next patch?

Yes, please. Or go to YAML and make entire discussion obsolete.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
