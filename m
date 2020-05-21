Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A4A1DD83C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 22:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYLgoS0JzHYO1+Gj+ForGDYcs4xfwDAH5TT7PX75VzU=; b=RSV/u4LEThMDCJ
	Jbk0UDw3UQQEt5gmHcDmVsxWoLeRhz0IwsBveJXJU9aM+aLKg2ldmHtVox0IgAli3VuSWQBwQ2h4F
	n+hvp2RSbN3jOCO6on4ROwJ6HrKcN18wN034l14mSh9SPYBbFBI8A4SF4fGUB9LSnPF2DKJpA6H2P
	7JeJ0ChomaUvGbAeRX1AxRtZj+2q/TlQJ+BAq+1yJIz89/cwn3nTUR4S1HuR7pQCd+67/ipKf9dWA
	L650BbaoIhijDjK4IP8gfbfHxcVGNNT+AVpUnDlIwcH4U/Bna2eyDNyRgIeee2ZbIUYz4rXbJmY+m
	XkJg47FTYByDdeVxXZHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbrl9-0006AS-69; Thu, 21 May 2020 20:25:43 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbrkv-00069g-CY
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 20:25:30 +0000
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 21 May 2020 13:25:26 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg03-sd.qualcomm.com with ESMTP; 21 May 2020 13:25:25 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id C4B744DDE; Thu, 21 May 2020 13:25:25 -0700 (PDT)
Date: Thu, 21 May 2020 13:25:25 -0700
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [RESEND PATCH v14 04/11] pwm: clps711x: Cast period to u32
 before use as divisor
Message-ID: <20200521202525.GA24026@codeaurora.org>
References: <cover.1589330178.git.gurus@codeaurora.org>
 <1d6918c3fc2976bdbdb687bf54a2ef09fc1558db.1589330178.git.gurus@codeaurora.org>
 <20200521101934.j5ivjky4e6byveut@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521101934.j5ivjky4e6byveut@holly.lan>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_132529_452655_1C278698 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, David Collins <collinsd@codeaurora.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Lee Jones <lee.jones@linaro.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 11:19:34AM +0100, Daniel Thompson wrote:
> On Wed, May 20, 2020 at 03:55:57PM -0700, Guru Das Srinagesh wrote:
> > Since the PWM framework is switching struct pwm_args.period's datatype
> > to u64, prepare for this transition by typecasting it to u32.
> > 
> > Also, since the dividend is still a 32-bit number, any divisor greater
> > than the numerator will cause the quotient to be zero, so return 0 in
> > that case to efficiently skip the division.
> > 
> > Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> > ---
> >  drivers/pwm/pwm-clps711x.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/pwm/pwm-clps711x.c b/drivers/pwm/pwm-clps711x.c
> > index 924d39a..da771b1 100644
> > --- a/drivers/pwm/pwm-clps711x.c
> > +++ b/drivers/pwm/pwm-clps711x.c
> > @@ -43,7 +43,10 @@ static void clps711x_pwm_update_val(struct clps711x_chip *priv, u32 n, u32 v)
> >  static unsigned int clps711x_get_duty(struct pwm_device *pwm, unsigned int v)
> >  {
> >  	/* Duty cycle 0..15 max */
> > -	return DIV_ROUND_CLOSEST(v * 0xf, pwm->args.period);
> > +	if (pwm->args.period > (v * 0xf))
> > +		return 0;
> 
> This doesn't look right to me.
> 
> DIV_ROUND_CLOSEST() does rounded division and the short circuit doesn't
> implement that.

My initial patch [1] was to simply use DIV64_U64_ROUND_CLOSEST(), but I
got review feedback to add a short-circuit (same thread, [2]). I feel
like I should skip the short-circuiting and type casting and simply just
use DIV64_U64_ROUND_CLOSEST() - what do you think?

[1] https://lore.kernel.org/lkml/587f9ccae68ad7e1ce97fa8da6037292af1a5095.1584473399.git.gurus@codeaurora.org/
[2] https://lore.kernel.org/lkml/CAK8P3a2Hi_AoRC3g7qKth4e_Y1jZrbBDhWUb3YPZm10FWMu-ig@mail.gmail.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
