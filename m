Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEF81DF2DC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 01:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shpVeQjxlHZLRBMS8UqcmuXymx6j0YhrA/7mM9m5HhY=; b=YsVheb2Afgz5Q6
	rCJgaR/WxQK8f97JehlnEJkTnaymWtZDHdQs2qwJ7iMibr/OeHEiFzbiV/yg9DPSMKQo0Ux5LlJpI
	N6+u+aPn8BwiMEE27C+glpd3LMgT+hghPHwZbapW6LMvJ6ra4uTGCn/rAC/G+VRcdLAa94hHiKEBl
	c1SWgHFmCVCYOkxt5MXAACB3KeHxBaF33aSoijfvuG19jhBtQDsOWS8rxgMhQuOFJ0qJ3Eu4bgpB+
	SlghoanC7rXUgj8nx3CMi2Bto/QiZD3rxnmn/oy3Gu9I+uDtQhK5KGipl24eCGWDSsYTM7pCxs37a
	dg3R3P2ZbtiU2XAqVzNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcGwf-0000bb-3u; Fri, 22 May 2020 23:19:17 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcGwU-0000ac-UQ
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 23:19:08 +0000
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 22 May 2020 16:19:05 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg03-sd.qualcomm.com with ESMTP; 22 May 2020 16:19:04 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 9E1E24DEF; Fri, 22 May 2020 16:19:04 -0700 (PDT)
Date: Fri, 22 May 2020 16:19:04 -0700
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [RESEND PATCH v14 04/11] pwm: clps711x: Cast period to u32
 before use as divisor
Message-ID: <20200522231904.GB2873@codeaurora.org>
References: <cover.1589330178.git.gurus@codeaurora.org>
 <1d6918c3fc2976bdbdb687bf54a2ef09fc1558db.1589330178.git.gurus@codeaurora.org>
 <20200521101934.j5ivjky4e6byveut@holly.lan>
 <20200521202525.GA24026@codeaurora.org>
 <20200522093738.cko5rj4wrxfd4hxu@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522093738.cko5rj4wrxfd4hxu@holly.lan>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_161907_004222_AC7B4D2B 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.38 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, May 22, 2020 at 10:37:38AM +0100, Daniel Thompson wrote:
> On Thu, May 21, 2020 at 01:25:25PM -0700, Guru Das Srinagesh wrote:
> > On Thu, May 21, 2020 at 11:19:34AM +0100, Daniel Thompson wrote:
> > > On Wed, May 20, 2020 at 03:55:57PM -0700, Guru Das Srinagesh wrote:
> > > > Since the PWM framework is switching struct pwm_args.period's datatype
> > > > to u64, prepare for this transition by typecasting it to u32.
> > > > 
> > > > Also, since the dividend is still a 32-bit number, any divisor greater
> > > > than the numerator will cause the quotient to be zero, so return 0 in
> > > > that case to efficiently skip the division.
> > > > 
> > > > Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> > > > ---
> > > >  drivers/pwm/pwm-clps711x.c | 5 ++++-
> > > >  1 file changed, 4 insertions(+), 1 deletion(-)> > > 
> > > > diff --git a/drivers/pwm/pwm-clps711x.c b/drivers/pwm/pwm-clps711x.c
> > > > index 924d39a..da771b1 100644
> > > > --- a/drivers/pwm/pwm-clps711x.c
> > > > +++ b/drivers/pwm/pwm-clps711x.c
> > > > @@ -43,7 +43,10 @@ static void clps711x_pwm_update_val(struct clps711x_chip *priv, u32 n, u32 v)
> > > >  static unsigned int clps711x_get_duty(struct pwm_device *pwm, unsigned int v)
> > > >  {
> > > >  	/* Duty cycle 0..15 max */
> > > > -	return DIV_ROUND_CLOSEST(v * 0xf, pwm->args.period);
> > > > +	if (pwm->args.period > (v * 0xf))
> > > > +		return 0;
> > > 
> > > This doesn't look right to me.
> > > 
> > > DIV_ROUND_CLOSEST() does rounded division and the short circuit doesn't
> > > implement that.
> > 
> > My initial patch [1] was to simply use DIV64_U64_ROUND_CLOSEST(), but I
> > got review feedback to add a short-circuit (same thread, [2]). I feel
> > like I should skip the short-circuiting and type casting and simply just
> > use DIV64_U64_ROUND_CLOSEST() - what do you think?
> 
> A trivial review of pwm-clps711x.c suggests that the period is always
> 32-bit anyway so why not just throw away the short circuit entirely and
> replace with a comment saying that CLPS711X has a hard coded period
> that is always >1000000000 ?

Sorry, I don't follow the significance of 1000000000 - could you please
explain?

Just to clarify, what I was saying in my previous email was the
following: I think it might be simpler to just throw away the short
circuit and just do:

	s/DIV_ROUND_CLOSEST/DIV64_U64_ROUND_CLOSEST

like in another patch in this series [1]. That should handle the
rounding properly as per design. Is that okay?

[1] https://lore.kernel.org/lkml/ca783e0f5ff7b517ce0854908f0e89b07551bfe5.1588616856.git.gurus@codeaurora.org/

Thank you.

Guru Das.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
