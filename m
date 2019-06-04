Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7185934D1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1QxLctWHFGjn6ckO2XZhflSp0WIGEk0apyL/Df25BlI=; b=hAZTy718cl3iRO
	OO3uDRSMvdnbFY26L88rb7UXDtuuMlzMgluRTF9rRQckwU+TI6dmXbI8JCCjZFmPXEbaP/5VfqlRE
	+QygMt+fPGTmS7eYniA1/CRjAY4V4CcXLHrsHiIIVtCS13rGHnN89azUNOQKJSQsiB/scMuF73Enf
	voHUjueH4BWMzbZhju55UrjdhyGw6tZmAKsIRP3Yg5ZmMczRLe767FD9KHCskHbQVXPgh5pQUboPS
	YQ607aFz0A9lcoTX5L8y6gNfo7ppU+Oou7Md60qMh9rpFka4rXztW/o0635DnEBg6jE8gubkifM4P
	IVFR6UQ0jjQsiVzMVaqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCCC-00027u-QS; Tue, 04 Jun 2019 16:21:56 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCC5-000277-3x
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1559665305; bh=qm5r7h8IIEdRL40O9VMAH9oDefKlLBdaHOgDq3xcAx4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gg+XXo5YGTIbCkKbpbL3v8FG0/Jel8Q4iepzwyWg0wYkRjoNxyYP0/4SxXfYhN2yH
 So04IwaJWADhd4PF9Ku/DQaA0uhU4TggtAkiHQvYXkgOb+zXVTzxsFa5xy2Acgzwf2
 GpteETgWrKs2aV143FMJGHL+6CqDtmNnO5TXleg8=
Date: Tue, 4 Jun 2019 18:21:44 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] [PATCH v2] clk: sunxi-ng: sun50i-h6-r: Fix
 incorrect W1 clock gate register
Message-ID: <20190604162144.hba5bmkdnidco7pf@core.my.home>
Mail-Followup-To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20190604154036.23211-1-megous@megous.com>
 <CAJiuCcda0ZDDrbdOF7TpTeoUOgt7GeS6wcgy45DRCo_U2XX6bQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcda0ZDDrbdOF7TpTeoUOgt7GeS6wcgy45DRCo_U2XX6bQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_092149_661006_A7B568CD 
X-CRM114-Status: GOOD (  23.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 open list <linux-kernel@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cl=E9ment,

On Tue, Jun 04, 2019 at 06:14:15PM +0200, Cl=E9ment P=E9ron wrote:
> Hi Ondrej,
> =

> On Tue, 4 Jun 2019 at 17:40, megous via linux-sunxi
> <linux-sunxi@googlegroups.com> wrote:
> >
> > From: Ondrej Jirman <megous@megous.com>
> >
> > The current code defines W1 clock gate to be at 0x1cc, overlaying it
> > with the IR gate.
> >
> > Clock gate for r-apb1-w1 is at 0x1ec. This fixes issues with IR receiver
> > causing interrupt floods on H6 (because interrupt flags can't be cleare=
d,
> > due to IR module's bus being disabled).
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > Fixes: b7c7b05065aa77ae ("clk: sunxi-ng: add support for H6 PRCM CCU")
> > ---
> >  drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c b/drivers/clk/sunxi=
-ng/ccu-sun50i-h6-r.c
> > index 27554eaf6929..8d05d4f1f8a1 100644
> > --- a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
> > +++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
> > @@ -104,7 +104,7 @@ static SUNXI_CCU_GATE(r_apb2_i2c_clk,       "r-apb2=
-i2c",   "r-apb2",
> >  static SUNXI_CCU_GATE(r_apb1_ir_clk,   "r-apb1-ir",    "r-apb1",
> >                       0x1cc, BIT(0), 0);
> >  static SUNXI_CCU_GATE(r_apb1_w1_clk,   "r-apb1-w1",    "r-apb1",
> > -                     0x1cc, BIT(0), 0);
> > +                     0x1ec, BIT(0), 0);
> Just for information where did you find this information?
> Using the vendor kernel or user manual?

Informed guess. All gates and resets are in the same register. And
you can see below that reset register for w1 is 0x1ec. (reset register
for ir is 0x1cc)

regards,
	o.

> Thanks,
> Cl=E9ment
> =

> >
> >  /* Information of IR(RX) mod clock is gathered from BSP source code */
> >  static const char * const r_mod0_default_parents[] =3D { "osc32k", "os=
c24M" };
> > --
> > 2.21.0
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "linux-sunxi" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to linux-sunxi+unsubscribe@googlegroups.com.
> > To view this discussion on the web, visit https://groups.google.com/d/m=
sgid/linux-sunxi/20190604154036.23211-1-megous%40megous.com.
> > For more options, visit https://groups.google.com/d/optout.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
