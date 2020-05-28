Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4881E6C9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 22:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hK/qYWMMFgtbH36m5uTHFek29k5odMRJHX0mM4HhQow=; b=MKire/LT46lENF
	1C1c2NS/30XPuau9qJ05YF7E6Q7DM3eDPXyb/W1VzsbxPppld5yxijlsX34IjNlSNpeBdKD4HEWS1
	3pwNZl1De6GVCSbem79742yDkwa5K8Jz6AZzHMs0cwZ/Su+Hg6vdzMawt4bj9SQiga8zlFZ0zAPn2
	8FFJQ/BM/uWqk7XgrbjN770lJ3YGhM/8WTb8Pphl24hR+YFUZE8iVbeSomGW8G3jZsxY/ff1sP/2a
	hXWuxAnPx9X4x4nvKSOjBpA+Hv726XJo11Y6BUgBjy6dxmzQ50cpXhepiGLIE/RlgFl9gFKiU+GVy
	Qy1ZHobzcYH+75jN75yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePDr-0003q4-PT; Thu, 28 May 2020 20:33:51 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePDk-0003o0-8q
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 20:33:45 +0000
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 28 May 2020 13:33:41 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg05-sd.qualcomm.com with ESMTP; 28 May 2020 13:33:41 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 40EB24CCF; Thu, 28 May 2020 13:33:41 -0700 (PDT)
Date: Thu, 28 May 2020 13:33:41 -0700
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v15 04/11] pwm: clps711x: Use 64-bit division macro
Message-ID: <20200528203341.GA8065@codeaurora.org>
References: <cover.1590514331.git.gurus@codeaurora.org>
 <dd03cc467ac3fc470826aef523822b32e15dc929.1590514331.git.gurus@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd03cc467ac3fc470826aef523822b32e15dc929.1590514331.git.gurus@codeaurora.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_133344_336129_03CF9295 
X-CRM114-Status: GOOD (  14.48  )
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
Cc: linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 David Collins <collinsd@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Joe Perches <joe@perches.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Lee Jones <lee.jones@linaro.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 10:35:04AM -0700, Guru Das Srinagesh wrote:
> Since the PWM framework is switching struct pwm_args.period's datatype
> to u64, prepare for this transition by using DIV64_U64_ROUND_CLOSEST to
> handle a 64-bit divisor.
> 
> Cc: Daniel Thompson <daniel.thompson@linaro.org>
> Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> ---
>  drivers/pwm/pwm-clps711x.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pwm/pwm-clps711x.c b/drivers/pwm/pwm-clps711x.c
> index 924d39a..ba9500a 100644
> --- a/drivers/pwm/pwm-clps711x.c
> +++ b/drivers/pwm/pwm-clps711x.c
> @@ -43,7 +43,7 @@ static void clps711x_pwm_update_val(struct clps711x_chip *priv, u32 n, u32 v)
>  static unsigned int clps711x_get_duty(struct pwm_device *pwm, unsigned int v)
>  {
>  	/* Duty cycle 0..15 max */
> -	return DIV_ROUND_CLOSEST(v * 0xf, pwm->args.period);
> +	return DIV64_U64_ROUND_CLOSEST(v * 0xf, pwm->args.period);
>  }
>  
>  static int clps711x_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
> -- 

Hi Daniel,

Could you please review this patch when you get a chance to?

Thank you.

Guru Das.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
