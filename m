Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E241DCAE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 12:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2Emr4EWdNvWMGQIUj5BBz1dVKFDC6RzErb9l8fpfrM=; b=nW5rZ+DjYmWmgO
	g2xy7gfImACjsRl0QyktpwmPuNu22+8iWBOx6iC11WPzBrdNNLgzde2vH6TdZWk5h8Wh7+fVOHG+a
	V2aMTzvqqq8QJ37s4+LiS9BqV4TgOEBJ7Xkps/QgEHqYMnuoR870C3+Hic4RCv6BEM5/bsLTNo1yq
	eYH5tNwy4BduWUhVYDv1yZW1zpKS7zjTAYCXfodiKb/UNUPQ/5Tgaqkk4Y24NzomgJBr7Fcg7r/el
	3yFblzqBvkTO8U6zdZFqLcPS6n7GDID+3APxO3kF0I5r2RrzQYn5Ew21Q82bNDeBwLgLbJORTNE1Z
	tjsY5D/ba8mj6nt5efog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbiIr-0003z8-6I; Thu, 21 May 2020 10:19:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbiId-0003yL-Qg
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 10:19:42 +0000
Received: by mail-wr1-x442.google.com with SMTP id l11so6157503wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 03:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3soTLfyyUCy3fHQF1Qq2HbNRuRlLZGtCqlLrm7bKL0k=;
 b=iLefinM5WVMUYeWn89hjMmw6P3rJcMvMcXGCYe/sPgv01lWlMMB6pDIB7tTH5QdpRI
 J/wIHKRyTUiez45dT4rX+OBVoYtcQQpgm7r0oTowL2cwl2a8tyLfUBgdrchiF1JegdUC
 YA7oaI86mntloZ/obWxbf9I3aZTSG6xz1WTi4w5++XKbIBVVGmJHg9e+RQV4z1MTwZ2W
 qHbGdTUTZHwlOrigGy25G6d+X6N/lGlufcaLIyrCbHRV+66izSyZ+Gg08QmXz03eW6LK
 ysjJrOAJIR1Yhr3JDE9XVyyIQNpNUk6UhbAnuQATqftrKL4zpiKpAQXoMxry6OlhUtqY
 Fmfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3soTLfyyUCy3fHQF1Qq2HbNRuRlLZGtCqlLrm7bKL0k=;
 b=EWcENOMAvURWkN+FJsEyfQ5lh2dL4Ylvg63tm2Bb5rsLUMkZ5ssc0dg/Sm6Gx4Yes6
 xuTlooHNtarPiqLYCXJITqXQJ4uM8EGdrBzDC5wD3xLVpI4VE0E1GPBxoVuuqEfX7BQ8
 IlsJU1zai5j47+n/gluIZ3ikiYqgKhMJqF+8tl9Pn+BdaAburF1JbXZI+Sgd+ADNaAaT
 tBj1XXjEC5ycy0wPjPhycZRxvVn+pKf2TrchFXWwBLVusYKyrkGD/PNEfxNgtOA9EzSc
 zXyVvhWpWgDG7nV7h6VBTrbisiUpY4ombhojo3ihxcPEQ/EhoQ8iKyJjnl4Bbpt2Z/td
 CF3Q==
X-Gm-Message-State: AOAM530dqk/sOkS1aq4+h0+7QUJhuQqJi7rwQBOVNTp+/JELm9TiOamm
 MgPjdnBLae342G29SJYvn/w8Xg==
X-Google-Smtp-Source: ABdhPJxJaiGlRiaRseMV6CWsbw437c84sE7FLFpur3F+323zkr+qz4VJbqsUD3MeZIdVLu0xE6coNw==
X-Received: by 2002:adf:dc86:: with SMTP id r6mr7594889wrj.45.1590056377059;
 Thu, 21 May 2020 03:19:37 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id v126sm6842237wma.9.2020.05.21.03.19.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 03:19:36 -0700 (PDT)
Date: Thu, 21 May 2020 11:19:34 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [RESEND PATCH v14 04/11] pwm: clps711x: Cast period to u32
 before use as divisor
Message-ID: <20200521101934.j5ivjky4e6byveut@holly.lan>
References: <cover.1589330178.git.gurus@codeaurora.org>
 <1d6918c3fc2976bdbdb687bf54a2ef09fc1558db.1589330178.git.gurus@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d6918c3fc2976bdbdb687bf54a2ef09fc1558db.1589330178.git.gurus@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_031941_395956_812A3F82 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Wed, May 20, 2020 at 03:55:57PM -0700, Guru Das Srinagesh wrote:
> Since the PWM framework is switching struct pwm_args.period's datatype
> to u64, prepare for this transition by typecasting it to u32.
> 
> Also, since the dividend is still a 32-bit number, any divisor greater
> than the numerator will cause the quotient to be zero, so return 0 in
> that case to efficiently skip the division.
> 
> Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> ---
>  drivers/pwm/pwm-clps711x.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pwm/pwm-clps711x.c b/drivers/pwm/pwm-clps711x.c
> index 924d39a..da771b1 100644
> --- a/drivers/pwm/pwm-clps711x.c
> +++ b/drivers/pwm/pwm-clps711x.c
> @@ -43,7 +43,10 @@ static void clps711x_pwm_update_val(struct clps711x_chip *priv, u32 n, u32 v)
>  static unsigned int clps711x_get_duty(struct pwm_device *pwm, unsigned int v)
>  {
>  	/* Duty cycle 0..15 max */
> -	return DIV_ROUND_CLOSEST(v * 0xf, pwm->args.period);
> +	if (pwm->args.period > (v * 0xf))
> +		return 0;

This doesn't look right to me.

DIV_ROUND_CLOSEST() does rounded division and the short circuit doesn't
implement that.


Daniel.

> +
> +	return DIV_ROUND_CLOSEST(v * 0xf, (u32)pwm->args.period);
>  }
>  
>  static int clps711x_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
