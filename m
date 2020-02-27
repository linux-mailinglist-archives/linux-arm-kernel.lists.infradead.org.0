Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAF5171555
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tj4S+drcDTmU55zT5K0Nnhx2SrZRX0JkBjRkEOaHoVs=; b=hQHGL4SIFd/Rbx
	mxerQCoa62pJ5sTgNY1V5qkV27Y1WogOLGUlNMACOR9ZfteZRlBqfSdP6tZHliy9xuEq9X3x00jqm
	If7vbiVkjXoGU5UAzFmZznq/pboVxGrS7IwBALbJJKpJiTkPLK2C+0LaeS5koMtvhljj/axvbcwnO
	MI+UDrHvo57YQp+XCCa3ENKXGHgWXxK6XIlBEslp78uFSucdzu4z4fdcQ2b4jGSHqCXY0hraweLbE
	/HqrmhzQPdgPJtt3kS9obUzAgm9d/mLSMXy0EWLaHrlPpxlJgM1XeO/pE35XhGFYY5limFHp85IVx
	qA+CsXcOAdxrHfz5823Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Gmy-00064s-NY; Thu, 27 Feb 2020 10:53:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Gmm-00063v-UO
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 10:52:58 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1j7Gmg-0004u9-0P; Thu, 27 Feb 2020 11:52:50 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1j7Gma-0002Lt-3N; Thu, 27 Feb 2020 11:52:44 +0100
Date: Thu, 27 Feb 2020 11:52:44 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH 1/1] pwm: mediatek: add longer period support
Message-ID: <20200227105244.orwitjst3wzoqcsq@pengutronix.de>
References: <1582789610-23133-1-git-send-email-sam.shih@mediatek.com>
 <1582789610-23133-2-git-send-email-sam.shih@mediatek.com>
 <20200227080450.rkvwfjx6vikn5ls3@pengutronix.de>
 <1582797590.25607.10.camel@mtksdccf07>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582797590.25607.10.camel@mtksdccf07>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_025256_983931_9E91F73D 
X-CRM114-Status: GOOD (  33.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Thu, Feb 27, 2020 at 05:59:50PM +0800, Sam Shih wrote:
> On Thu, 2020-02-27 at 09:04 +0100, Uwe Kleine-K=F6nig wrote:
> On Thu, Feb 27, 2020 at 03:46:50PM +0800, Sam Shih wrote:
> > > The pwm clock source could be divided by 1625 with PWM_CON
> > > BIT(3) setting in mediatek hardware.
> > > =

> > > This patch add support for longer pwm period configuration,
> > > which allowing blinking LEDs via pwm interface.
> > > =

> > > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > > ---
> > >  drivers/pwm/pwm-mediatek.c | 21 +++++++++++++++++----
> > >  1 file changed, 17 insertions(+), 4 deletions(-)
> > > =

> > > diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
> > > index b94e0d09c300..9af309bea01a 100644
> > > --- a/drivers/pwm/pwm-mediatek.c
> > > +++ b/drivers/pwm/pwm-mediatek.c
> > > @@ -121,8 +121,8 @@ static int pwm_mediatek_config(struct pwm_chip
> *chip, struct pwm_device *pwm,
> > >  			       int duty_ns, int period_ns)
> > >  {
> > >  	struct pwm_mediatek_chip *pc =3D to_pwm_mediatek_chip(chip);
> > > -	u32 clkdiv =3D 0, cnt_period, cnt_duty, reg_width =3D PWMDWIDTH,
> > > -	    reg_thres =3D PWMTHRES;
> > > +	u32 clkdiv =3D 0, clksel =3D 0, cnt_period, cnt_duty,
> > > +	    reg_width =3D PWMDWIDTH, reg_thres =3D PWMTHRES;
> > >  	u64 resolution;
> > >  	int ret;
> > >  =

> > Adding some more context:
> > =

> =

> + /* The pwm source clock can be divided by 2^clkdiv. When the clksel  +
> * bit is set to 1, The final clock output needs to be divided by an +  *
> extra 1625.
> +  */

I'd write:

The source clock is divided by 2^clkdiv or iff the clksel bit is set by
2^clkdiv + 1625.

> =

> Is this ok ?
> =

> =

> > > @@ -139,11 +139,20 @@ static int pwm_mediatek_config(struct pwm_chip
> *chip, struct pwm_device *pwm,
> > > 	while (cnt_period > 8191) {
> > >  		resolution *=3D 2;
> > >  		clkdiv++;
> > >  		cnt_period =3D DIV_ROUND_CLOSEST_ULL((u64)period_ns * 1000,
> > >  						   resolution);
> > > +		if (clkdiv > PWM_CLK_DIV_MAX && !clksel) {
> > > +			clksel =3D 1;
> > > +			clkdiv =3D 0;
> > > +			resolution =3D (u64)NSEC_PER_SEC * 1000 * 1625;
> > > +			do_div(resolution,
> > > +				clk_get_rate(pc->clk_pwms[pwm->hwpwm]));
> > > +			cnt_period =3D DIV_ROUND_CLOSEST_ULL(
> > > +					(u64)period_ns * 1000, resolution);
> > =

> > The assignment is a repetition from just above the if. Maybe just put
> it
> > once after this if block?
> =

> The cnt_period represents the effective range of the PWM period counter,
> when we need changing the pwm output period to a longer value at the
> same clock frequency, we can setting a larger cnt_period, but the width
> of the cnt_peroid register is 12 bits,
> When the request period is too long, we need to divide the clock source
> and then recalculate cnt_period outputs the correct waveform.
> As mentioned above, when changing clkdiv, we need to recalculate
> cnt_period immediately.
> =

> If the request period is very long (for example, LED blinking), clkdiv
> may be insufficient. =

> In this case, we will use clksel to divide the pwm source clock by an
> additional 1625, and recalculate clkdiv and cnt_period.
> =

> I don't think we can just place assignments after the if block.

I didn't care enough to read your reasoning and retry to convince you
with mine:

With your patch you have:

	cnt_period =3D someexpression;

	if (somecondition) {
		...
		cnt_period =3D someexpression;
	}

As somecondition doesn't make use of cnt_period this is equivalent to:

	if (somecondition) {
		...
	}
	cnt_period =3D someexpression;

isn't it?

> > The code is hard to follow, I wonder if this could be cleaned up with
> > some comments added that explain the hardware details enough to be able
> > to actually understand the code without having the hardware reference
> > manual handy.
> =

> Is it sufficient to add some context into comment like the response of
> the second question?

I didn't check but I wouldn't be surprised if the code is more
complicated than necessary. If you don't see something to simplify, go
for adding an explanation as suggested and I will take a look in a quiet
moment.

Not sure I already pointed out that having a link to a publicly
available reference manual in the driver's header is useful. If there is
such a manual, please add a link there. Your benefit is that you
simplify others to improve your driver.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
