Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F31C1EA2B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 13:33:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5im11T6EPjaPvf6nXpCE/1FE7ltbhFKTeiHEtJ6K3E=; b=KTsTe104YgQPGL
	T3kToOaegj3nbHcx3VzHaCYmEW3Hz2srYuwESz3DYTBSi0pBSYd9alCvy/N8I2lEzCg8lCxaZBo4o
	5lRdoHU8GfMHMUh99Kme4pmxbUC8lTfDcPU6A2dD90VD9jeHtpaMcrFOUSjPnO/4dr39sTiJB/DPL
	yOxwOI8nCSKmmsM1tQYQNL7rWBAGaCdYLVpEFq3lKnrT8fN8J4Fd5GEAuKrZSc8KcUG4C3iIxXA1q
	wtOEVf91VTtmwhlsJTItd7Hm3rr8gDO2Xdkgxo5WBHlBS4MO7i+9uxNExOMnwFcGN0gac1tJVuaAh
	LgJ0VykMIMZL4mID1iSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfihH-0002j2-DF; Mon, 01 Jun 2020 11:33:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfihB-0002ih-2t
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 11:33:34 +0000
Received: by mail-wr1-x443.google.com with SMTP id e1so11171720wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 04:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Nd0MJv58FOzwtHGzKOAQUQrfp095J8UPcRViDxSn4NY=;
 b=W1cq8qUfXNb0j4Lq6BuNFnrIp53KOB8jyeE6rYZeTI51f51hwvHIG8BMXCMp30BfcV
 Kz/SCbb6ETAHq3dGo029IWxUjmMkUz9Max3D/z1jlGGo9qVQX5MaQ0y+BgRt/DHvwxo0
 RdVUU7GjYR/htIut780K5s1uKUZ3OK2iZVbmowEjMjE7GOiArJCYEkC6vgo9QPYK8nZO
 Lqab5QsLwiu8GkCE/AA07HEeFEaNoSkx5MwfuSlQJmGmLDy4JWZJBCDOv5WRJQzgVlwo
 r3zCmmu3iuz7KlkftwAHmjHe7lGtZDZgMfBzSIVGGV85FYemiKmMRx050a7sYfAPJPUW
 IkkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Nd0MJv58FOzwtHGzKOAQUQrfp095J8UPcRViDxSn4NY=;
 b=ZTgNpKfqDCjFwmxCRZPDeKHfmFrnTrRUxSOmJvqsYNLttIR/aPsF3mHUSshAuGqSRR
 GNE9GpPQUZ0mQjEj2FA9T0y8iZWeGz5McAaeB8sQ4CsV4p8tIasnDjZga8iqZhupOMdQ
 BPlENFCOMTDDHptPat6QiAvC9hi5n+lQ3tXAzqxgb6MvRD5bzUik5Y4XBPsj/+kMdOVz
 Udg/JTiV9QVM65qGOtg5Vc6M0GdN5NEZfv61HPQR1QcjAh+FHf/sUKIchbMp2HWafvN2
 p9M+mYPZ0PculDX+IVG4hdaDtrMoRgNFhmd6YvxCLMejOIajLfw45V2OdfQR/xYwpka9
 Oa/g==
X-Gm-Message-State: AOAM530i6+H2mjklN3RMU0WfEez6JE4Y9gmqG0yQnBOYz8Yvpe2qXHbS
 xiZPapNnKgqT3iWPkYjzZWkvjw==
X-Google-Smtp-Source: ABdhPJznm2NwADIlcTttzQpXZsKob+NEyXiM45iR0TXFLhl9xhARzjwzu6BQz/MCHNd4RCDBIowhrg==
X-Received: by 2002:a5d:4e88:: with SMTP id e8mr22527436wru.188.1591011210824; 
 Mon, 01 Jun 2020 04:33:30 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id n23sm10731794wmc.0.2020.06.01.04.33.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 04:33:30 -0700 (PDT)
Date: Mon, 1 Jun 2020 12:33:28 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [PATCH v15 04/11] pwm: clps711x: Use 64-bit division macro
Message-ID: <20200601113328.oyhxosbtlfeaqytq@holly.lan>
References: <cover.1590514331.git.gurus@codeaurora.org>
 <dd03cc467ac3fc470826aef523822b32e15dc929.1590514331.git.gurus@codeaurora.org>
 <20200528203341.GA8065@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528203341.GA8065@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_043333_195439_960E2348 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, May 28, 2020 at 01:33:41PM -0700, Guru Das Srinagesh wrote:
> On Tue, May 26, 2020 at 10:35:04AM -0700, Guru Das Srinagesh wrote:
> > Since the PWM framework is switching struct pwm_args.period's datatype
> > to u64, prepare for this transition by using DIV64_U64_ROUND_CLOSEST to
> > handle a 64-bit divisor.
> > 
> > Cc: Daniel Thompson <daniel.thompson@linaro.org>
> > Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> > ---
> >  drivers/pwm/pwm-clps711x.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/pwm/pwm-clps711x.c b/drivers/pwm/pwm-clps711x.c
> > index 924d39a..ba9500a 100644
> > --- a/drivers/pwm/pwm-clps711x.c
> > +++ b/drivers/pwm/pwm-clps711x.c
> > @@ -43,7 +43,7 @@ static void clps711x_pwm_update_val(struct clps711x_chip *priv, u32 n, u32 v)
> >  static unsigned int clps711x_get_duty(struct pwm_device *pwm, unsigned int v)
> >  {
> >  	/* Duty cycle 0..15 max */
> > -	return DIV_ROUND_CLOSEST(v * 0xf, pwm->args.period);
> > +	return DIV64_U64_ROUND_CLOSEST(v * 0xf, pwm->args.period);
> >  }
> >  
> >  static int clps711x_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
> > -- 
> 
> Hi Daniel,
> 
> Could you please review this patch when you get a chance to?

I don't normally review PWM patches... but this no longer has the bug
there was there when I first read this patch.


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
