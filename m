Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8F61DE342
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 11:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XxmKolRbIJ8vqAv6VmdnDQZvY4JfXS8OT1DQcUOgQv4=; b=ub7yAxMlj2p4Ac
	QRM+T2OFJ1iaFyuDOWbtcdVuElh2YLUlh8MMVoVny4HNeUwkO0YhFyXM/vi7Mz0WjnPbLLFq1/0e2
	U/5ew8tkWrCQC55nM+6TsfFsYP0RyPQIigMR+ERu9w7TvXOt0xRw1WAago1JjAkyhOe5L0xDJ2u+c
	9qM0+DG8j+Gjjqx6y4Ut7RfnIsascWS0XsFxwuH0TbWyDf8OrMrKK8b8bCYGcX2pfkUpNV3RGXtyV
	X1Prcxej4cQ/HEYVj2yaMnFmZUXgmxACdeE7e9GT1cW/dBe6T8ACjE/wSANlYFWE92Lku2TGvuz0g
	031czbJQjt2nG5SR1kYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc47m-0004MT-Db; Fri, 22 May 2020 09:37:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc47b-0004Li-2U
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 09:37:44 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so5267970wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 02:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+JaGmfrUHhcQkFEPqWe0bVFYz2Arc5TLSoXsPeih+bY=;
 b=NDE9gcYyqD5IEt9rXJkmi/wEyz9UCuTNGRlh7pxa3vfQZLtnrb0Yh6gbJ7K6nO2Kbz
 c8NLy66N6aIhVAMZ2J3zCgJdhK7UhUWk9L5TDQgwBIqSRGfqXc4vnv0QPE17Mbq7BJHA
 JSgLgqn/MxflMn9nvVXvv6xtxhn7uGAXsmEXNSqaSte/pQtBqJWAexAp4asgLGlwA8++
 SWWkv9B8ybyPTREFSvSpyERKSYj7WfhANiXUaEx0o6zPF+PPc+pcLDQa8r2+SDEfMUPL
 sTvz5RTqFljDfVi1YilfsOw8kY0yIwFeJ1KuotodP28/DK7TfAaYGU70lvBCsraWTuUP
 3/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+JaGmfrUHhcQkFEPqWe0bVFYz2Arc5TLSoXsPeih+bY=;
 b=WL3Zd3kvEdyQpcFYZeVcpl7CK1lEF5424zdXgacx89UIA/OIOjvvOnkmhySLCk85q6
 Q9kmaQ8p9VZUCXO0AzNVKa0SirKDeVPIVgXHmPec4SMW8aRjEJAFRqt/g06YQP/WAeou
 KrZRELoo5RrMD6aTcdZ4+W8MCVYg9JqmHR83QF7KcHxL6pP3i9C+hfzQjaYwaLSZV8v1
 rg5GPzt204By1c2p5dK/qEPHt7hHc0cWXllQkKxLx3oHn+iFpyJaoyxoUq7xkpi9bCQR
 cJsm4lCWzr4SQvsVkagTR14GqtspybihiHRzRszZ/h4hWn93mFcilzlcrNIX8A/wGqwv
 QnCw==
X-Gm-Message-State: AOAM532JFSa7o4Xuw5xbUdlcVDWxWXd8zOPL2waUx3d0q3M75v82o6+T
 2oDZhp4b6M17uRe6kZX5qFZdAw==
X-Google-Smtp-Source: ABdhPJzoncU+lNgmINUvGoMOt+KFP+k6Tci7J6tYcLGnKlR7Ymv0eheScbKLeM/5XEl62TSRKym5IQ==
X-Received: by 2002:a5d:4cd1:: with SMTP id c17mr870054wrt.199.1590140261310; 
 Fri, 22 May 2020 02:37:41 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id c140sm9479234wmd.18.2020.05.22.02.37.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 02:37:40 -0700 (PDT)
Date: Fri, 22 May 2020 10:37:38 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [RESEND PATCH v14 04/11] pwm: clps711x: Cast period to u32
 before use as divisor
Message-ID: <20200522093738.cko5rj4wrxfd4hxu@holly.lan>
References: <cover.1589330178.git.gurus@codeaurora.org>
 <1d6918c3fc2976bdbdb687bf54a2ef09fc1558db.1589330178.git.gurus@codeaurora.org>
 <20200521101934.j5ivjky4e6byveut@holly.lan>
 <20200521202525.GA24026@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521202525.GA24026@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_023743_147944_BC0AC765 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, May 21, 2020 at 01:25:25PM -0700, Guru Das Srinagesh wrote:
> On Thu, May 21, 2020 at 11:19:34AM +0100, Daniel Thompson wrote:
> > On Wed, May 20, 2020 at 03:55:57PM -0700, Guru Das Srinagesh wrote:
> > > Since the PWM framework is switching struct pwm_args.period's datatype
> > > to u64, prepare for this transition by typecasting it to u32.
> > > 
> > > Also, since the dividend is still a 32-bit number, any divisor greater
> > > than the numerator will cause the quotient to be zero, so return 0 in
> > > that case to efficiently skip the division.
> > > 
> > > Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> > > ---
> > >  drivers/pwm/pwm-clps711x.c | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)> > > 
> > > diff --git a/drivers/pwm/pwm-clps711x.c b/drivers/pwm/pwm-clps711x.c
> > > index 924d39a..da771b1 100644
> > > --- a/drivers/pwm/pwm-clps711x.c
> > > +++ b/drivers/pwm/pwm-clps711x.c
> > > @@ -43,7 +43,10 @@ static void clps711x_pwm_update_val(struct clps711x_chip *priv, u32 n, u32 v)
> > >  static unsigned int clps711x_get_duty(struct pwm_device *pwm, unsigned int v)
> > >  {
> > >  	/* Duty cycle 0..15 max */
> > > -	return DIV_ROUND_CLOSEST(v * 0xf, pwm->args.period);
> > > +	if (pwm->args.period > (v * 0xf))
> > > +		return 0;
> > 
> > This doesn't look right to me.
> > 
> > DIV_ROUND_CLOSEST() does rounded division and the short circuit doesn't
> > implement that.
> 
> My initial patch [1] was to simply use DIV64_U64_ROUND_CLOSEST(), but I
> got review feedback to add a short-circuit (same thread, [2]). I feel
> like I should skip the short-circuiting and type casting and simply just
> use DIV64_U64_ROUND_CLOSEST() - what do you think?

A trivial review of pwm-clps711x.c suggests that the period is always
32-bit anyway so why not just throw away the short circuit entirely and
replace with a comment saying that CLPS711X has a hard coded period
that is always >1000000000 ?


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
