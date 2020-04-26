Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597891B919F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 18:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etaXTL+wLrV+x7AxbqsY7x/LnZY9Xed9+MBmSs/p8wQ=; b=Qb7rbQXeDqiSCK
	DX2Ygl+Cr2A+GkuTDWSOObwkr6nsUalH5kZS0t2q5PP/tvDzUawiesH95SS5bP8hcPdd7Tj+RUpAe
	YfQicAl8s+SYVJal4sqcTxPbCxA9IN1+bHx8gT7N+7iayd6KEwco1INWLIcn9keIJA0qARX0zR3EC
	btZj44pmzMMLWB5nOyh0/a04Qb27EEAiUKDv0ole6guymByUuFpzpthGBzSvKYYWFVZc4zmBMja3N
	1Vkz+E9OFlLRZt6B64gHEykv7/Dckt585EBFVm2kpBtLmB3GAEfGJhYILxyvXe/hUM+pkpeUYmpmt
	Nz1b9rd8aiELH1GY/mwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSk02-0004eY-Pd; Sun, 26 Apr 2020 16:19:22 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSjzm-0004cG-QV; Sun, 26 Apr 2020 16:19:08 +0000
Received: by mail-ot1-x343.google.com with SMTP id g14so21814351otg.10;
 Sun, 26 Apr 2020 09:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pj77SUe5CaP0v/pGWWFayVD62/A8i5UvOJukuyc5CVo=;
 b=SIwT+DkVtRJGCGDj8udPoICtBFP7hrscvBQWiU0tS87Hi5Ub3I1cYpvxxILSYGE4mX
 MlfGSgGmoKDKR+oBhDomOElD2/kvt1RWQwS8rofoR3mG9BLTlgM1Zyb+Ud4o+KY6zy3Y
 LrWRcaznHY/gjdDzpHdFmNK2YPN/SnoAzv7eUtCZJbgVgYlIcjonkoh4AXWFMoKRaW+f
 edblil7K6KgdjdQXccDkJuWlnZr6A0Nbl2HRRU43++iafGWFdzM3iv2CUX3Nx/HF7p8W
 Tyi1v4Lw5TcsD8B2kMJeeuBpQePpEdWfHYh0muGgmhrqB7dtKAk8LOn0bnH9+eHzOPWD
 /qVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pj77SUe5CaP0v/pGWWFayVD62/A8i5UvOJukuyc5CVo=;
 b=hxBZ88/7roVs0UgZKmB8DF/wGbn/uPJNbqGr+riqpBxzNDA+3/CDnVCudwJuXeasa+
 P5JWvFJog8rJqQoVRoRXu4oPXShGqiSEGnM90frt59pxqybTZFFFs/o7M+d0OV/nkoaI
 T+5uDwjBlt7DO65vCBCycwV71TNI9njTQe6wbojG6bmIcHOtcMTtCUveH2LdxqZh5MEr
 S63a6Hh+oEIwblHXBJsgnoPhiOImrXlD3/Ft/Nc3ie9nTJcckVpMHkwYEg47mRNYVdB2
 pCBFm2zsKr5Nsu9Z/G08vwW4pmw0voJUal1QxzmrOeOShl3uEg7PURuQ74oXPfEuTRnd
 9liQ==
X-Gm-Message-State: AGi0Pub+xe4+fyV7hpMFpFCUivRIwjq6c3sZ9TSqv9dxoSgKW4nnOYEW
 Bclo7edNrKjFX3z60ieBvYYk9uuckQIIrNqO2JY=
X-Google-Smtp-Source: APiQypJ5+V3+lSZEofKJqMAVpQSdTAk1rec+Esu8ZijtDxFh7g90i2TLV7E4NrCm5MZu1Oonan3gRu8weMxFg1oIXTo=
X-Received: by 2002:a9d:21ca:: with SMTP id s68mr15145763otb.15.1587917945530; 
 Sun, 26 Apr 2020 09:19:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200422233928.GA2816@imac>
 <8255d8b1-f652-9ece-67d2-68c30a5cfbac@baylibre.com>
In-Reply-To: <8255d8b1-f652-9ece-67d2-68c30a5cfbac@baylibre.com>
From: Tim Lewis <elatllat@gmail.com>
Date: Sun, 26 Apr 2020 12:18:54 -0400
Message-ID: <CA+3zgmsVK9Uuv947-pniByP7QJVGcVK_EgiRkFipV5CUx70sHQ@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: meson: S922X: extend cpu opp-points
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_091906_863991_C3F021D6 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [elatllat[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, joy.cho@hardkernel.com,
 khilman@baylibre.com, Christian Hewitt <christianshewitt@gmail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 tobetter <tobetter@gmail.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Oops, will fix in v4.


On Thu, Apr 23, 2020 at 3:40 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 23/04/2020 01:39, Tim Lewis wrote:
> > HardKernel supports overclock through the addition to extra opp points
> > in their official kernel sources for odroid-n2 [1]. Christian tested
> > on other S922X devices with "no obvious issues". Neil thinks dvfs and
> > thermal managementis can keep other S922X devices safe.
> --------------/\
>           management
>
> >
> > [1] https://github.com/hardkernel/linux/commit/f86cd9487c7483b2a05f448b9ebacf6bd5a2ad2f
> > Tested-by: Christian Hewitt <christianshewitt@gmail.com>
> > Signed-off-by: Tim Lewis <elatllat@gmail.com>
> >
> > ---
> >  arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi | 15 +++++++++++++++
> >  1 files changed, 15 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
> > index 046cc332d..1e5d0ee5d 100644
> > --- a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
> > +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
> > @@ -65,6 +65,11 @@
> >                       opp-hz = /bits/ 64 <1896000000>;
> >                       opp-microvolt = <981000>;
> >               };
> > +
> > +             opp-1992000000 {
> > +                     opp-hz = /bits/ 64 <1992000000>;
> > +                     opp-microvolt = <1001000>;
> > +             };
> >       };
> >
> >       cpub_opp_table_1: opp-table-1 {
> > @@ -120,5 +125,15 @@
> >                       opp-hz = /bits/ 64 <1704000000>;
> >                       opp-microvolt = <891000>;
> >               };
> > +
> > +             opp-1800000000 {
> > +                     opp-hz = /bits/ 64 <1800000000>;
> > +                     opp-microvolt = <981000>;
> > +             };
> > +
> > +             opp-1908000000 {
> > +                     opp-hz = /bits/ 64 <1908000000>;
> > +                     opp-microvolt = <1022000>;
> > +             };
> >       };
> >  };
> >
>
> The patch is well formed but I can only test on Odroid-N2.
>
> Anyway, Christian did a test other S922X boxes and it doesn't crash.
>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
>
> Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
