Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 293D9B56FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 22:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZKejCLFE8cUaTrMv9Y0rBySmqd4AZn6IT6xiAoKXjw=; b=NN2mSyq+HKdGbX
	EqmXz5TrenI1aQF5nbTPVnGc70xb4yNHaLE+SpuQl77E1/GjThMZT6/r2sxJthaMuWdH35DrLOCFG
	ePh/80L61h2Q3u+XLJzL+lZK4WWfXIPWqFjwtMUP1pjrMVvtJLzNGjAFQAl7sxAWDtyCmJk5fpcZE
	PlY6Ey4IWYrPHync6HMS2e5bQKQTeBQDDPsdgObNiMpwllf8eOdx5mlipqCT0D2zIouMwNmehy+8T
	ljFzZeHW7OV7sz/QK5d1IV/AAJJkDLVMtmp/TtxwPAs+Xh/1F6bxR1r4m4DDMlp+ppSSQU1vi+/h3
	jw6Ur+Cgo5TfFCVghifA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAK65-0001tp-CE; Tue, 17 Sep 2019 20:29:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAK5p-0001st-LE
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 20:28:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAK5l-0007p3-FY; Tue, 17 Sep 2019 22:28:53 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iAK5j-0007Nz-Um; Tue, 17 Sep 2019 22:28:51 +0200
Date: Tue, 17 Sep 2019 22:28:51 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] pwm: stm32-lp: add check in case requested period cannot
 be achieved
Message-ID: <20190917202851.ygvvo6c7rbvofl4g@pengutronix.de>
References: <1568728310-20948-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568728310-20948-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_132857_698958_A021E8D2 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, thierry.reding@gmail.com,
 mcoquelin.stm32@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 03:51:50PM +0200, Fabrice Gasnier wrote:
> LPTimer can use a 32KHz clock for counting. It depends on clock tree
> configuration. In such a case, PWM output frequency range is limited.
> Although unlikely, nothing prevents user from requesting a PWM frequency
> above counting clock (32KHz for instance):
> - This causes (prd - 1) =3D 0xffff to be written in ARR register later in
> the apply() routine.
> This results in badly configured PWM period (and also duty_cycle).
> Add a check to report an error is such a case.
> =

> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  drivers/pwm/pwm-stm32-lp.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> =

> diff --git a/drivers/pwm/pwm-stm32-lp.c b/drivers/pwm/pwm-stm32-lp.c
> index 2211a64..5c2c728 100644
> --- a/drivers/pwm/pwm-stm32-lp.c
> +++ b/drivers/pwm/pwm-stm32-lp.c
> @@ -59,6 +59,12 @@ static int stm32_pwm_lp_apply(struct pwm_chip *chip, s=
truct pwm_device *pwm,
>  	/* Calculate the period and prescaler value */
>  	div =3D (unsigned long long)clk_get_rate(priv->clk) * state->period;
>  	do_div(div, NSEC_PER_SEC);
> +	if (!div) {
> +		/* Fall here in case source clock < period */

Does "clock < period" make sense? I'd just write: "Clock is too slow to
achieve period."

> +		dev_err(priv->chip.dev, "Can't reach expected period\n");

IMHO this is little helpful. If a consumer requests such an
unsatisfiable state several times your log is spammed and you don't even
see the what was requested. I'd drop the message completely (or make it
a dev_debug).

> +		return -EINVAL;
> +	}
> +
>  	prd =3D div;
>  	while (div > STM32_LPTIM_MAX_ARR) {
>  		presc++;

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
