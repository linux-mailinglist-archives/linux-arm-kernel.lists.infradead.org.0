Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F09B11714C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuUc6aW/16SegmQvg2RUaBNiW5A3O/TdEY/IggX2atw=; b=MASb0qvPGbu6dQ
	aIZZjJ4vKbe9HRhM37zYfS1UJxcW7q5bJw2uOrZV51DfPlr/yZDv4rqR5TRz7KKTlKdVoWFx9nPt0
	5EFLUxh/aUTMXNHUZcU5Dc2NFF05mYoRKR1/a/GMXAuEI3K6kFmA8Rle4AaUKwEcv6Odulfo97Xck
	/4jOd9wmO2N0qPnC4xNI6QMHG4rmDDaPAt0fn/BggRnQN13LMj5tYEDoBbjQf6u/qVGo0mbpnX+T/
	xW5x6OrP/R4NyA4uCB4fQz4J4f89xfEuk2AqFGS59NtIstqLf4mdfPDzrFDpQ7Wc9vfQGEpbf7D7H
	VTMnoOisYwmWRY7+PXKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7G7X-0006qo-1o; Thu, 27 Feb 2020 10:10:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7G7E-0006Wh-Pr; Thu, 27 Feb 2020 10:10:02 +0000
X-UUID: 1b03fa6e8a38465ca83dfa9628bcfdfb-20200227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=eLO7gTFF1vCEAIYROkM8MZuVGCM3sjjAWL8M+r6/05Y=; 
 b=BakoIO05e70F2zY4x9CluisQoeR2XSAUbzcWYoBfojDKRB1rabr2ND/3Fc3BDv/lMD4vRzT0evUdvNnSw44hiIW09QV1L/mWtF9KgXsXt6kEnc3NHimSorPXgazAkfYlCxf4yMFJ+Pp2FT2IrCe9OAS7dVxONIKUsyBrzLxNMj0=;
X-UUID: 1b03fa6e8a38465ca83dfa9628bcfdfb-20200227
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 94554355; Thu, 27 Feb 2020 02:09:54 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Feb 2020 02:00:58 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Feb 2020 17:59:00 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 27 Feb 2020 17:59:53 +0800
Message-ID: <1582797590.25607.10.camel@mtksdccf07>
Subject: Re: [PATCH 1/1] pwm: mediatek: add longer period support
From: Sam Shih <sam.shih@mediatek.com>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 27 Feb 2020 17:59:50 +0800
In-Reply-To: <20200227080450.rkvwfjx6vikn5ls3@pengutronix.de>
References: <1582789610-23133-1-git-send-email-sam.shih@mediatek.com>
 <1582789610-23133-2-git-send-email-sam.shih@mediatek.com>
 <20200227080450.rkvwfjx6vikn5ls3@pengutronix.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_021000_846692_483944C2 
X-CRM114-Status: GOOD (  26.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-02-27 at 09:04 +0100, Uwe Kleine-K=F6nig wrote:
On Thu, Feb 27, 2020 at 03:46:50PM +0800, Sam Shih wrote:
> > The pwm clock source could be divided by 1625 with PWM_CON
> > BIT(3) setting in mediatek hardware.
> > =

> > This patch add support for longer pwm period configuration,
> > which allowing blinking LEDs via pwm interface.
> > =

> > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > ---
> >  drivers/pwm/pwm-mediatek.c | 21 +++++++++++++++++----
> >  1 file changed, 17 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
> > index b94e0d09c300..9af309bea01a 100644
> > --- a/drivers/pwm/pwm-mediatek.c
> > +++ b/drivers/pwm/pwm-mediatek.c
> > @@ -121,8 +121,8 @@ static int pwm_mediatek_config(struct pwm_chip
*chip, struct pwm_device *pwm,
> >  			       int duty_ns, int period_ns)
> >  {
> >  	struct pwm_mediatek_chip *pc =3D to_pwm_mediatek_chip(chip);
> > -	u32 clkdiv =3D 0, cnt_period, cnt_duty, reg_width =3D PWMDWIDTH,
> > -	    reg_thres =3D PWMTHRES;
> > +	u32 clkdiv =3D 0, clksel =3D 0, cnt_period, cnt_duty,
> > +	    reg_width =3D PWMDWIDTH, reg_thres =3D PWMTHRES;
> >  	u64 resolution;
> >  	int ret;
> >  =

> Adding some more context:
> =


+ /* The pwm source clock can be divided by 2^clkdiv. When the clksel  +
* bit is set to 1, The final clock output needs to be divided by an +  *
extra 1625.
+  */

Is this ok ?


> > @@ -139,11 +139,20 @@ static int pwm_mediatek_config(struct pwm_chip
*chip, struct pwm_device *pwm,
> > 	while (cnt_period > 8191) {
> >  		resolution *=3D 2;
> >  		clkdiv++;
> >  		cnt_period =3D DIV_ROUND_CLOSEST_ULL((u64)period_ns * 1000,
> >  						   resolution);
> > +		if (clkdiv > PWM_CLK_DIV_MAX && !clksel) {
> > +			clksel =3D 1;
> > +			clkdiv =3D 0;
> > +			resolution =3D (u64)NSEC_PER_SEC * 1000 * 1625;
> > +			do_div(resolution,
> > +				clk_get_rate(pc->clk_pwms[pwm->hwpwm]));
> > +			cnt_period =3D DIV_ROUND_CLOSEST_ULL(
> > +					(u64)period_ns * 1000, resolution);
> =

> The assignment is a repetition from just above the if. Maybe just put
it
> once after this if block?

The cnt_period represents the effective range of the PWM period counter,
when we need changing the pwm output period to a longer value at the
same clock frequency, we can setting a larger cnt_period, but the width
of the cnt_peroid register is 12 bits,
When the request period is too long, we need to divide the clock source
and then recalculate cnt_period outputs the correct waveform.
As mentioned above, when changing clkdiv, we need to recalculate
cnt_period immediately.

If the request period is very long (for example, LED blinking), clkdiv
may be insufficient. =

In this case, we will use clksel to divide the pwm source clock by an
additional 1625, and recalculate clkdiv and cnt_period.

I don't think we can just place assignments after the if block.

> =

> > +		}
> >  	}
> >  =

> > -	if (clkdiv > PWM_CLK_DIV_MAX) {
> > +	if (clkdiv > PWM_CLK_DIV_MAX && clksel) {
> =

> Is this change actually relevant? If the while loop that starts at
line
> 139 is never run (because cnt_period is <=3D 8191) clkdiv is zero and so
> the condition is false with and without "&& clksel". If however the
> while loop is entered and clkdiv becomes bigger than PWM_CLK_DIV_MAX
> clksel is 1 and the "&& clksel" doesn't make a difference, too.
> =


You are right, I will remove this.

> The code is hard to follow, I wonder if this could be cleaned up with
> some comments added that explain the hardware details enough to be
able
> to actually understand the code without having the hardware reference
> manual handy.
> =


Is it sufficient to add some context into comment like the response of
the second question?


> >  		pwm_mediatek_clk_disable(chip, pwm);
> >  		dev_err(chip->dev, "period %d not supported\n", period_ns);
> >  		return -EINVAL;
> > @@ -159,7 +168,11 @@ static int pwm_mediatek_config(struct pwm_chip
*chip, struct pwm_device *pwm,
> >  	}
> >  =

> >  	cnt_duty =3D DIV_ROUND_CLOSEST_ULL((u64)duty_ns * 1000, resolution);
> > -	pwm_mediatek_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | clkdiv);
> > +	if (clksel)
> > +		pwm_mediatek_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | BIT(3) |
> > +				    clkdiv);
> > +	else
> > +		pwm_mediatek_writel(pc, pwm->hwpwm, PWMCON, BIT(15) | clkdiv);
> >  	pwm_mediatek_writel(pc, pwm->hwpwm, reg_width, cnt_period);
> >  	pwm_mediatek_writel(pc, pwm->hwpwm, reg_thres, cnt_duty);
> >  =

> > -- =

> > 2.17.1
> =

> Best regards
> Uwe
> =

>

Best Regards,
Sam
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
