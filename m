Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BD81DF86B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 19:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tznm6U1kkwkKydwAidJ0rkSeC0Rzxwq0/Wr4yw4aiIg=; b=XKjXz3VvD4KrHL
	GGtlp5wn6h4r7Qdh41Xh0b9HADZrKR0PWXkgKuzw8JYl/C6V/062eplKLLaU2higazkjpstanjHmG
	6p5eFrETR6kj7g6mXOUWJGfVW/uedkRGhpIwhpIlVIxgwBw0zoFUfK3TEfdy77K7NqyiUthilJ8sA
	mB3lX7z7F9BgUXsQumZpC7A9stDry4JOrgc569iEa/85BQiQ5xx7LoT2W2m8hUtkD9Je7UNmoNvm4
	QAhFmsRTXWypNLDIhygWvRSwb5+Xl+FdEoagjOsgNmOcnWO9+TflsJ3unfsv+hTLPboYAUoTzN1RB
	C6+U4BRN4uUlNXqMVbkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcXdE-0003uG-Lx; Sat, 23 May 2020 17:08:20 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcXd7-0003tX-TP
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 17:08:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id s8so13329821wrt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 10:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iWQIftxz3JeSaFEWyWP77ojPUmj1NWrh+y4jjgLcyKs=;
 b=X6NFJSfvxhSBC8xSxM9yjKJkz2nxTH5gH4dXKNaCutG6fFfS/wfMvMydQ0q8/tNa6d
 pE5sP+aF8/3zkwmun4En6jlpuqANyDKlYREYvDb9mcQegZeO2TXg1cMLEINOOvBU6a9W
 FEwJbvhQmkCgd8pblNm7rrth/+DqAeINXltC0GKMusdgqlu8z+Wq6ls47VxLwHwxFEQx
 tl16N9XGrdP9thrZ2fi8Bak+/cK/eYuaOYU0oQtc9DdaYbrasOSRNWvpZkF12HgNS1pc
 E/HoKao6xztJdQJT231Bm6RLIZh6nC9m1LBsI4EN7Y55MWGloYoDx862cSyBH37SgRwR
 Aoeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iWQIftxz3JeSaFEWyWP77ojPUmj1NWrh+y4jjgLcyKs=;
 b=stXPmSobMYAUOkwdmzgyjpybxOzJI7dND+34RRs4oe/g/uHX8u5IQTXfTOyCSQ91i8
 y/AdRkeMSRJak5Wt5+qTr+n5FExqiVFFIMBTQYxy9Th7/58wHwOma5+HaZIjVXiLsvgc
 rUrOxdWGV0j4n3iFdhWldBHftuXmtLgEVYJ1nD5+s4ni37YpiWaCDPgVm3hwaWmDov0s
 gvWrq1NUWpT0BJHkC4kHXUzacg3b5XihJGxkoNTfsRMhGewpvJ8L31+1UJHbbuWueCQa
 K7Qm6I1r7WjEiLVsAOtpXUghOYzAuH0eSc+Dws/kU9GPnCKApQoWgyP5UtqHGs8FApsW
 U4dA==
X-Gm-Message-State: AOAM532ck2bI0XCMD3DmLxjRYB/jcVDQ0PSWedwZVH1g84bkcVGlzwvs
 15pqm3a9U5qzlYwpexsLxwuVig==
X-Google-Smtp-Source: ABdhPJzi3zszxm/Xbxerc+UfbB5JYNQ3nEwV6m60j+HLsiFl+k0r3Alw3K6KWTZtS6WdRmhanRvhCw==
X-Received: by 2002:adf:9447:: with SMTP id 65mr8138681wrq.331.1590253689843; 
 Sat, 23 May 2020 10:08:09 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id 88sm12485764wrq.77.2020.05.23.10.08.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 10:08:08 -0700 (PDT)
Date: Sat, 23 May 2020 18:08:06 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [RESEND PATCH v14 04/11] pwm: clps711x: Cast period to u32
 before use as divisor
Message-ID: <20200523170806.kzqcqzp2rtoqkqk4@holly.lan>
References: <cover.1589330178.git.gurus@codeaurora.org>
 <1d6918c3fc2976bdbdb687bf54a2ef09fc1558db.1589330178.git.gurus@codeaurora.org>
 <20200521101934.j5ivjky4e6byveut@holly.lan>
 <20200521202525.GA24026@codeaurora.org>
 <20200522093738.cko5rj4wrxfd4hxu@holly.lan>
 <20200522231904.GB2873@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522231904.GB2873@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_100813_982756_B0C9DF24 
X-CRM114-Status: GOOD (  26.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, May 22, 2020 at 04:19:04PM -0700, Guru Das Srinagesh wrote:
> On Fri, May 22, 2020 at 10:37:38AM +0100, Daniel Thompson wrote:
> > On Thu, May 21, 2020 at 01:25:25PM -0700, Guru Das Srinagesh wrote:
> > > On Thu, May 21, 2020 at 11:19:34AM +0100, Daniel Thompson wrote:
> > > > On Wed, May 20, 2020 at 03:55:57PM -0700, Guru Das Srinagesh wrote:
> > > > > Since the PWM framework is switching struct pwm_args.period's datatype
> > > > > to u64, prepare for this transition by typecasting it to u32.
> > > > > 
> > > > > Also, since the dividend is still a 32-bit number, any divisor greater
> > > > > than the numerator will cause the quotient to be zero, so return 0 in
> > > > > that case to efficiently skip the division.
> > > > > 
> > > > > Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> > > > > ---
> > > > >  drivers/pwm/pwm-clps711x.c | 5 ++++-
> > > > >  1 file changed, 4 insertions(+), 1 deletion(-)> > > 
> > > > > diff --git a/drivers/pwm/pwm-clps711x.c b/drivers/pwm/pwm-clps711x.c
> > > > > index 924d39a..da771b1 100644
> > > > > --- a/drivers/pwm/pwm-clps711x.c
> > > > > +++ b/drivers/pwm/pwm-clps711x.c
> > > > > @@ -43,7 +43,10 @@ static void clps711x_pwm_update_val(struct clps711x_chip *priv, u32 n, u32 v)
> > > > >  static unsigned int clps711x_get_duty(struct pwm_device *pwm, unsigned int v)
> > > > >  {
> > > > >  	/* Duty cycle 0..15 max */
> > > > > -	return DIV_ROUND_CLOSEST(v * 0xf, pwm->args.period);
> > > > > +	if (pwm->args.period > (v * 0xf))
> > > > > +		return 0;
> > > > 
> > > > This doesn't look right to me.
> > > > 
> > > > DIV_ROUND_CLOSEST() does rounded division and the short circuit doesn't
> > > > implement that.
> > > 
> > > My initial patch [1] was to simply use DIV64_U64_ROUND_CLOSEST(), but I
> > > got review feedback to add a short-circuit (same thread, [2]). I feel
> > > like I should skip the short-circuiting and type casting and simply just
> > > use DIV64_U64_ROUND_CLOSEST() - what do you think?
> > 
> > A trivial review of pwm-clps711x.c suggests that the period is always
> > 32-bit anyway so why not just throw away the short circuit entirely and
> > replace with a comment saying that CLPS711X has a hard coded period
> > that is always >1000000000 ?
> 
> Sorry, I don't follow the significance of 1000000000 - could you please
> explain?

One of the questions you are asked (by Arnd) was whether the period
could ever be larger than UINT_MAX. I think you gave the wrong answer
to that question when you said the divisor could be 64-bit. For this
driver I don't see how the period could ever be larger than 1000000000
(a number that is approximately 4x smaller than UINT_MAX).
 

> Just to clarify, what I was saying in my previous email was the
> following: I think it might be simpler to just throw away the short
> circuit and just do:
> 
> 	s/DIV_ROUND_CLOSEST/DIV64_U64_ROUND_CLOSEST
> 
> like in another patch in this series [1]. That should handle the
> rounding properly as per design. Is that okay?

The short circuit must go because it is broken and we wouldn't want
that code copied somewhere where the code would actually be reachable.
Personally I don't much care which macro you use although given the
divisor cannot be greater then UINT_MAX I guess DIV_ROUND_CLOSEST
is marginally better.


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
