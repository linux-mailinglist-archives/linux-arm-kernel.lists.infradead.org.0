Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B52DF0420
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 18:32:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=He7XgmM506NwQB9ufAPKAYamQTn0SNWnKKuNdN8d7HQ=; b=QaH8Han6IFrQvI
	2A55FFzHifLzpkB4xTxZy4Bf5d8Sn7Iiqb4tDlTZu0hUWFLMRhJK11B/tnzyDyQwtCWtWwKLOp12e
	O0muN+C+OHtw/LdLFsmlhlX6o4iQMVWH9BmTnGdqhVZPbDEsN36ha+ORRuqJzXh+P+xlUkutF8Ljb
	iBttQe0AttisUrL/eFBUBciIdGXK4rdZt79vr+joSz29VMu928DLUZVOoMDSXoCRwsdrJRxKfEopB
	HghWYREByPqdCkOzBJ1hOtOYu3Jx92VnAODqtp2ILJ2SchNi4qPCT+vrh2OABfueT7E8ia7L+GHED
	NbevUCtjLdhn8+N1yrGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2go-0003Gp-6t; Tue, 05 Nov 2019 17:32:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2ge-0003GJ-Cd
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 17:32:14 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8BD482087E;
 Tue,  5 Nov 2019 17:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572975132;
 bh=yDuxotFXs1FYNXnjjemxUjVnTa7mhmweVIbX2xUY4Po=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lH2+6849jtmlQEYhuHDm8T1wfQtFGbiPiMYzlJSBFroTT5+hom11G9nS1EGuMRwMB
 yKDuyuZNPw9UsMin8XJ6oo61kMPcr0DMDg+C7trMcMc7GECpzZSOJr82RoQpmLhV54
 4Ohb/xjlD1HtNDGL0Iq9v8AIRXB5RMpepFdOqzsU=
Date: Tue, 5 Nov 2019 18:32:08 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: pwm: allwinner: Add H6 PWM description
Message-ID: <20191105173208.GA46143@gilmour.lan>
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-2-peron.clem@gmail.com>
 <20191104080359.6kjugbt3yi63ywhb@pengutronix.de>
 <20191105111134.GG3876@gilmour.lan>
 <CAJiuCcc7sQvuPX+FTErXS+_RzUDvbDrB3Z5EX9wE_2EZaex0qw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcc7sQvuPX+FTErXS+_RzUDvbDrB3Z5EX9wE_2EZaex0qw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_093212_467273_02A65237 
X-CRM114-Status: GOOD (  23.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 01:34:37PM +0100, Cl=E9ment P=E9ron wrote:
> On Tue, 5 Nov 2019 at 12:11, Maxime Ripard <mripard@kernel.org> wrote:
> >
> > Hi Clement, Uwe,
> >
> > On Mon, Nov 04, 2019 at 09:03:59AM +0100, Uwe Kleine-K=F6nig wrote:
> > > On Sun, Nov 03, 2019 at 09:33:28PM +0100, Cl=E9ment P=E9ron wrote:
> > > > From: Jernej Skrabec <jernej.skrabec@siol.net>
> > > >
> > > > H6 PWM block is basically the same as A20 PWM, except that it also =
has
> > > > bus clock and reset line which needs to be handled accordingly.
> > > >
> > > > Expand Allwinner PWM binding with H6 PWM specifics.
> > > >
> > > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > > ---
> > > >  .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml | 45 +++++++++++++++=
+++-
> > > >  1 file changed, 44 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-=
a10-pwm.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pw=
m.yaml
> > > > index 0ac52f83a58c..bf36ea509f31 100644
> > > > --- a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm=
.yaml
> > > > +++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm=
.yaml
> > > > @@ -30,13 +30,46 @@ properties:
> > > >        - items:
> > > >            - const: allwinner,sun50i-h5-pwm
> > > >            - const: allwinner,sun5i-a13-pwm
> > > > +      - const: allwinner,sun50i-h6-pwm
> > > >
> > > >    reg:
> > > >      maxItems: 1
> > > >
> > > > -  clocks:
> > > > +  # Even though it only applies to subschemas under the conditiona=
ls,
> > > > +  # not listing them here will trigger a warning because of the
> > > > +  # additionalsProperties set to false.
> > > > +  clocks: true
> > > > +  clock-names: true
> > > > +  resets:
> > > >      maxItems: 1
> > > >
> > > > +  if:
> > > > +    properties:
> > > > +      compatible:
> > > > +        contains:
> > > > +          const: allwinner,sun50i-h6-pwm
> > > > +
> > > > +  then:
> > > > +    properties:
> > > > +      clocks:
> > > > +        items:
> > > > +          - description: Module Clock
> > > > +          - description: Bus Clock
> > > > +
> > > > +      clock-names:
> > > > +        items:
> > > > +          - const: mod
> > > > +          - const: bus
> > > > +
> > > > +    required:
> > > > +      - clock-names
> > > > +      - resets
> > > > +
> > > > +  else:
> > > > +    properties:
> > > > +      clocks:
> > > > +        maxItems: 1
> > > > +
> > >
> > > I guess this hunk says "If this is a allwinner,sun50i-h6-pwm, a mod a=
nd
> > > bus clock is required.", right?
> > >
> > > I wonder if it is sensible to require a clock-names property in the e=
lse
> > > branch, too. This would make it obvious if the clock there corresponds
> > > to the "mod" or the "bus" clock on H6. (I guess it's "mod".)
> >
> > This can be done a bit differently and could address your concerns
> >
> > Something like
> >
> > properties:
> >   ...
> >
> >   clocks:
> >     minItems: 1
> >     maxItems: 2
> >     items:
> >       - description: Bus Clock
> >       - description: Module Clock
> >
> > required:
> >   - clocks
> >
> > if:
> >   ...
> >
> > then:
> >   properties:
> >     clocks:
> >       maxItems: 2
>
> Here we should set minItems to 2 right ?
> so Max =3D Min =3D 2

It's done automatically by the tooling when the other is missing.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
