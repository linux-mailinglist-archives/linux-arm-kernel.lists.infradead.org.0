Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73F2108035
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 21:01:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ovoWbrxuawSVttIuzhQd/ADHfJZhVzOUKG3aMGvlU+w=; b=r5lWM9mzBZeIan
	eIKtneJ7j0ZCAWBG+DoTKggTkVbOI/HGPTCcX+4Js9yUERDp/Qt8p1fysQ6Ei29tgfh/KWq01W32X
	7UiuyDbli4qb2BUHS+6uHGADFTvfv6doHl4L+VscCThB7WCAbqVWgJaucwiUvb4+mWuUQhPqnmIAG
	r8UCSExgv8sx6+SL9pRWKXhn/AY8Jctfyn6Zh9v43qpYceUDK+qNuhISMPzHTxtKAWFXmTiaKtYju
	p9x6eeDpiJXeBgpoLkT72GY5gLlFoufSqhf+RhxxOT/ZHj71Lv1vuVkl6pf5D5HF+1yggAJ0rQBIV
	7tm/FsJHbddyxYgD6vRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYbax-0000pF-2R; Sat, 23 Nov 2019 20:01:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYbak-0000oV-Ux
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 20:01:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iYbad-0002X6-7w; Sat, 23 Nov 2019 21:01:07 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iYbaU-0004d5-BV; Sat, 23 Nov 2019 21:00:58 +0100
Date: Sat, 23 Nov 2019 21:00:58 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v8 5/6] pwm: sun4i: Add support to output source clock
 directly
Message-ID: <20191123200058.kz2farbyvruybtjj@pengutronix.de>
References: <20191121195902.6906-1-peron.clem@gmail.com>
 <20191121195902.6906-6-peron.clem@gmail.com>
 <20191121211630.slgayfbuykwvlvdt@pengutronix.de>
 <CAJiuCcdhH9zbRMMYsZbBYL-H8YWn2kimvJEjZ8Z8kF7Uh9MCpg@mail.gmail.com>
 <CAJiuCcd8VK2xHqRuWTVpNvw4e+rCR9-KjOSF5KsTcN9qQhaNVw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcd8VK2xHqRuWTVpNvw4e+rCR9-KjOSF5KsTcN9qQhaNVw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_120115_150826_B1BDD2D8 
X-CRM114-Status: GOOD (  29.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 23, 2019 at 03:05:48PM +0100, Cl=E9ment P=E9ron wrote:
> Hi Uwe,
> =

> On Thu, 21 Nov 2019 at 22:21, Cl=E9ment P=E9ron <peron.clem@gmail.com> wr=
ote:
> >
> > Hi Uwe,
> >
> > On Thu, 21 Nov 2019 at 22:16, Uwe Kleine-K=F6nig
> > <u.kleine-koenig@pengutronix.de> wrote:
> > >
> > > On Thu, Nov 21, 2019 at 08:59:01PM +0100, Cl=E9ment P=E9ron wrote:
> > > > From: Jernej Skrabec <jernej.skrabec@siol.net>
> > > >
> > > > PWM core has an option to bypass whole logic and output unchanged s=
ource
> > > > clock as PWM output. This is achieved by enabling bypass bit.
> > > >
> > > > Note that when bypass is enabled, no other setting has any meaning,=
 not
> > > > even enable bit.
> > > >
> > > > This mode of operation is needed to achieve high enough frequency to
> > > > serve as clock source for AC200 chip which is integrated into same
> > > > package as H6 SoC.
> > > >
> > > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > > ---
> > > >  drivers/pwm/pwm-sun4i.c | 48 +++++++++++++++++++++++++++++++++++++=
++--
> > > >  1 file changed, 46 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> > > > index 1fa2057419fb..0fe9c680d6d0 100644
> > > > --- a/drivers/pwm/pwm-sun4i.c
> > > > +++ b/drivers/pwm/pwm-sun4i.c
> > > > @@ -3,6 +3,10 @@
> > > >   * Driver for Allwinner sun4i Pulse Width Modulation Controller
> > > >   *
> > > >   * Copyright (C) 2014 Alexandre Belloni <alexandre.belloni@free-el=
ectrons.com>
> > > > + *
> > > > + * Limitations:
> > > > + * - When outputing the source clock directly, the PWM logic will =
be bypassed
> > > > + *   and the currently running period is not guaranteed to be comp=
leted
> > > >   */
> > > >
> > > >  #include <linux/bitops.h>
> > > > @@ -73,6 +77,7 @@ static const u32 prescaler_table[] =3D {
> > > >
> > > >  struct sun4i_pwm_data {
> > > >       bool has_prescaler_bypass;
> > > > +     bool has_direct_mod_clk_output;
> > > >       unsigned int npwm;
> > > >  };
> > > >
> > > > @@ -118,6 +123,20 @@ static void sun4i_pwm_get_state(struct pwm_chi=
p *chip,
> > > >
> > > >       val =3D sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
> > > >
> > > > +     /*
> > > > +      * PWM chapter in H6 manual has a diagram which explains that=
 if bypass
> > > > +      * bit is set, no other setting has any meaning. Even more, e=
xperiment
> > > > +      * proved that also enable bit is ignored in this case.
> > > > +      */
> > > > +     if ((val & BIT_CH(PWM_BYPASS, pwm->hwpwm)) &&
> > > > +         sun4i_pwm->data->has_direct_mod_clk_output) {
> > > > +             state->period =3D DIV_ROUND_UP_ULL(NSEC_PER_SEC, clk_=
rate);
> > > > +             state->duty_cycle =3D DIV_ROUND_UP_ULL(state->period,=
 2);
> > > > +             state->polarity =3D PWM_POLARITY_NORMAL;
> > > > +             state->enabled =3D true;
> > > > +             return;
> > > > +     }
> > > > +
> > > >       if ((PWM_REG_PRESCAL(val, pwm->hwpwm) =3D=3D PWM_PRESCAL_MASK=
) &&
> > > >           sun4i_pwm->data->has_prescaler_bypass)
> > > >               prescaler =3D 1;
> > > > @@ -149,13 +168,24 @@ static void sun4i_pwm_get_state(struct pwm_ch=
ip *chip,
> > > >
> > > >  static int sun4i_pwm_calculate(struct sun4i_pwm_chip *sun4i_pwm,
> > > >                              const struct pwm_state *state,
> > > > -                            u32 *dty, u32 *prd, unsigned int *prsc=
lr)
> > > > +                            u32 *dty, u32 *prd, unsigned int *prsc=
lr,
> > > > +                            bool *bypass)
> > > >  {
> > > >       u64 clk_rate, div =3D 0;
> > > >       unsigned int pval, prescaler =3D 0;
> > > >
> > > >       clk_rate =3D clk_get_rate(sun4i_pwm->clk);
> > > >
> > > > +     *bypass =3D sun4i_pwm->data->has_direct_mod_clk_output &&
> > > > +               state->enabled &&
> > > > +               (state->period * clk_rate >=3D NSEC_PER_SEC) &&
> > > > +               (state->period * clk_rate < 2 * NSEC_PER_SEC) &&
> > > > +               (state->duty_cycle * clk_rate * 2 >=3D NSEC_PER_SEC=
);
> > > > +
> > > > +     /* Skip calculation of other parameters if we bypass them */
> > > > +     if (*bypass)
> > > > +             return 0;
> > > > +
> > > >       if (sun4i_pwm->data->has_prescaler_bypass) {
> > > >               /* First, test without any prescaler when available */
> > > >               prescaler =3D PWM_PRESCAL_MASK;
> > > > @@ -206,6 +236,7 @@ static int sun4i_pwm_apply(struct pwm_chip *chi=
p, struct pwm_device *pwm,
> > > >       int ret;
> > > >       unsigned int delay_us, prescaler;
> > > >       unsigned long now;
> > > > +     bool bypass;
> > > >
> > > >       pwm_get_state(pwm, &cstate);
> > > >
> > > > @@ -220,7 +251,8 @@ static int sun4i_pwm_apply(struct pwm_chip *chi=
p, struct pwm_device *pwm,
> > > >       spin_lock(&sun4i_pwm->ctrl_lock);
> > > >       ctrl =3D sun4i_pwm_readl(sun4i_pwm, PWM_CTRL_REG);
> > > >
> > > > -     ret =3D sun4i_pwm_calculate(sun4i_pwm, state, &duty, &period,=
 &prescaler);
> > > > +     ret =3D sun4i_pwm_calculate(sun4i_pwm, state, &duty, &period,=
 &prescaler,
> > > > +                               &bypass);
> > > >       if (ret) {
> > > >               dev_err(chip->dev, "period exceeds the maximum value\=
n");
> > > >               spin_unlock(&sun4i_pwm->ctrl_lock);
> > > > @@ -229,6 +261,18 @@ static int sun4i_pwm_apply(struct pwm_chip *ch=
ip, struct pwm_device *pwm,
> > > >               return ret;
> > > >       }
> > > >
> > > > +     if (sun4i_pwm->data->has_direct_mod_clk_output) {
> > > > +             if (bypass) {
> > > > +                     ctrl |=3D BIT_CH(PWM_BYPASS, pwm->hwpwm);
> > > > +                     /* We can skip other parameter */
> > > > +                     sun4i_pwm_writel(sun4i_pwm, ctrl, PWM_CTRL_RE=
G);
> > > > +                     spin_unlock(&sun4i_pwm->ctrl_lock);
> > > > +                     return 0;
> > > > +             } else {
> > > > +                     ctrl &=3D ~BIT_CH(PWM_BYPASS, pwm->hwpwm);
> > > > +             }
> > > > +     }
> > >
> > > This could be simplified to:
> > >
> > >         if (bypass) {
> > >                 ctrl |=3D BIT_CH(PWM_BYPASS, pwm->hwpwm);
> > >                 /*
> > >                  * Other parameters are not relevant in this mode and=
 so
> > >                  * writing them can be skipped
> > >                  */
> > >                 sun4i_pwm_writel(sun4i_pwm, ctrl, PWM_CTRL_REG);
> > >                 spin_unlock(&sun4i_pwm->ctrl_lock);
> > >                 return 0;
> > >         } else {
> > >                 ctrl &=3D ~BIT_CH(PWM_BYPASS, pwm->hwpwm);
> > >         }
> > >
> > > which has the advantage(?) that the bypass bit is also (more obviousl=
y)
> > > cleared for SoCs that don't support it and it reduces the indention
> > > level.
> >
> > This bit is not guaranteed to be reserved for all the SoC variants.
> >
> > I don't think it's a good idea to set to 0 a bit which is undefined.
> =

> Let me know if you agree or not with this and I send the v9 according
> to your answer.

If my suggestion is not safe according to the documentation, it is
obviously wrong. So only take it into account if a zero can be safely
written.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
