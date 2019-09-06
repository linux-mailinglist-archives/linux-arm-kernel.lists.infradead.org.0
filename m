Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 072C5AB75F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 13:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7xl+78b+UJ4YyWt5R/P8+E8X8PrADX4xHHVHP7vpkuc=; b=XKqyTckVFqKLVj
	NylnJLMsd7gpdhp2oOvnJwnX8Ggxncpj3Qk/NDX0GOK36MzbzT9t2j2XyRb5M+Zke4STysuBAI15r
	+BkNl08y5eAozaQ68CQA9z4SoI7hEyZrS/R2hilyHcRCNuIvvKTBWI+iKIBvSnJeZbueKtPOKyszo
	oirfZMnD3S9a5EgpAplQYvwJSmr6Tl6bYz1x1saJd/hnMCCuQVVTAvfK06+BWS7xzDR7cYfZ/kfoW
	ilyaCgdlOKvDdKUuc1dXs9L48PUrzcwb3bLiCnnUFBHxhR5e/MAMC048so2bCOI0GVdWhv46gl1dx
	H4wiX+SgNqjxNMkx+HtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6ClK-00022U-6h; Fri, 06 Sep 2019 11:50:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6ClD-000227-TX
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 11:50:41 +0000
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 256A0208C3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 11:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567770639;
 bh=6UFqIwtKvW1eriIbgBgmH3OSdsldJSwILczL2ULz+PM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=N0csuP4JYNSPIcZcs0RweApE9TD0NSFN9lth+8XvaWizi5oye5mSl1exsL720mVul
 8hs0HcoXfks1iXMpZQRUSutucTK2AHQM5cfFa4//G1fsXWd9hwFBbihKbHHv9wm8nc
 zYiitj3mdsobc6gRClSXtKkB6rbLd2JR/WaCCElc=
Received: by mail-lj1-f172.google.com with SMTP id l20so5743169ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 04:50:39 -0700 (PDT)
X-Gm-Message-State: APjAAAVqTCuc+vZWSKqVzGn52GMPKlgn/gauBTZYohka7tgFF3ec5h7r
 kObTUhLg7JARG8m9y8PFyxxsGnkZnYSg12fLfDc=
X-Google-Smtp-Source: APXvYqxWkRdWTlhJIL7EvtAYDTFsy7AyeWu9slg4CHeVr9feUDarBlHinHRQL9wXQP33htWdRErIEeuuvAQCICFYSck=
X-Received: by 2002:a2e:99cc:: with SMTP id l12mr5508092ljj.5.1567770637352;
 Fri, 06 Sep 2019 04:50:37 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190906101407eucas1p15eb0df53374b27497b4793eab24becf6@eucas1p1.samsung.com>
 <20190906101344.3535-1-l.luba@partner.samsung.com>
 <20190906101344.3535-4-l.luba@partner.samsung.com>
 <CAJKOXPfoYxTVvt_bMQOs1=BkHzUuW_WvL9zn0jTGS6LLpv=fhQ@mail.gmail.com>
 <52963d0d-cf48-7085-5581-a94c6e15e0bd@partner.samsung.com>
In-Reply-To: <52963d0d-cf48-7085-5581-a94c6e15e0bd@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 6 Sep 2019 13:50:26 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfEcURr_bLRaAdjWT3cb7mcuKTk8rmn7OTO=xtvjvJ=jQ@mail.gmail.com>
Message-ID: <CAJKOXPfEcURr_bLRaAdjWT3cb7mcuKTk8rmn7OTO=xtvjvJ=jQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: ddr: Add bindings for Samsung LPDDR3
 memories
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_045040_001518_4AEFB0B8 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, 6 Sep 2019 at 13:39, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> Hi Krzysztof,
>
> On 9/6/19 12:56 PM, Krzysztof Kozlowski wrote:
> > On Fri, 6 Sep 2019 at 12:14, Lukasz Luba <l.luba@partner.samsung.com> wrote:
> >>
> >> Add description of bindings for Samsung k3qf2f20db LPDDR3 memory.
> >> Minor fixes in the old documentation.
> >>
> >> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> >> ---
> >>   .../devicetree/bindings/ddr/lpddr3.txt        | 29 +++++++++++++++++--
> >>   1 file changed, 27 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
> >> index 3b2485b84b3f..de0905239767 100644
> >> --- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
> >> +++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
> >> @@ -40,10 +40,34 @@ Child nodes:
> >>     a given speed-bin. Please see Documentation/devicetree/
> >>     bindings/ddr/lpddr3-timings.txt for more information on "lpddr3-timings"
> >>
> >> +Samsung K3QF2F20DB LPDDR3 memory
> >> +------------------------------------------------------------
> >> +
> >> +This binding uses the LPDDR3 binding (described above)
> >> +
> >> +Required properties:
> >> +- compatible:  Should be:
> >> +               "samsung,K3QF2F20DB"
> >> +               followed by "jedec,lpddr3"
> >> +- density  : <u32> representing density in Mb (Mega bits)
> >> +- io-width : <u32> representing bus width. Possible value 32
> >> +- #address-cells: Must be set to 1
> >> +- #size-cells: Must be set to 0
> >
> > If you decided to repeat all properties again, then it deserves its
> > own bindings file. However I though about simpler solution - just
> > document compatible. Exactly the same as AT24 or AT25 EEPROM bindings.
> > There is not much benefit from copying all these properties.
> OK, I see. I will add only 'compatible' and skip the rest then.
> So the lpddr3.txt file will get this addition:
>
> +Samsung K3QF2F20DB LPDDR3 memory
> +------------------------------------------------------------
> +
> +This binding uses the LPDDR3 binding (described above)
> +
> +Required properties:
> +- compatible:  Should be:
> +               "samsung,K3QF2F20DB"
> +               followed by "jedec,lpddr3"
> +
> +Optional properties:
> +
> +The optional properties are the same as in the LPDDR3 generic bindings and
> +values should be taken from the data-sheet. Detailed bindings are described
> +above.
> +
> +Child nodes:
> +
> +Detailed bindings are described in LPDDR3 generic bindings described above.
> +
>
> Is it OK?

To me it is still a lot of text just for one compatible and I can
image more of such entries for other memories... However I do not mind
and anyway, YAML will simplify it. If you're in doubt, wait for Rob's
reply as this is his part.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
