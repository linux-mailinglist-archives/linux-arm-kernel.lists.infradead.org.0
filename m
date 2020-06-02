Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E271EC51B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 00:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bH3X7lbLbSPo3plNyeHnXvFebM6a3tcPx7aGU+XunU=; b=ox4IQDvjlKhW+H
	niEKYvcjv2PzvD2e7qzSgBT2d97fqtFCsMVVZSz79rSVY9U470IS4eI73hFvDtrcRrwPQTryktZaN
	go2WFpnhi6vyR7TuFUzYjoHrP2o+WeADwqLCJ49BDEwxJFB0hT7a9pN7Cvyjohmwuj0mkvlW9QYDt
	+RX2EmEHEQVv+WbBPSFZSQgjoTxnEnHk0k+QSLWfwtfW4ZcGIq892jc+YZvGYBDBPuP3T34T79g7R
	sx5KV/VBwwH3ehx81wi5a4gVZA2i7vE27+hBdR8L8SZ8DN3phW5pvgxgdeAxPxFx2YN5f1YJuMICG
	YEoFbsxSaLsE2GutQCVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgFUu-0005Bs-90; Tue, 02 Jun 2020 22:35:04 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgFUl-0005BH-8f
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 22:34:56 +0000
Received: from unknown (HELO ironmsg-SD-alpha.qualcomm.com) ([10.53.140.30])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 02 Jun 2020 15:34:53 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg-SD-alpha.qualcomm.com with ESMTP; 02 Jun 2020 15:34:53 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 1888A4D82; Tue,  2 Jun 2020 15:34:53 -0700 (PDT)
Date: Tue, 2 Jun 2020 15:34:53 -0700
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v16 06/11] pwm: imx27: Use 64-bit division macro
Message-ID: <20200602223452.GA470@codeaurora.org>
References: <cover.1591135774.git.gurus@codeaurora.org>
 <fcc92b6499e8200ad6b02ab13b38e4d310afe0ba.1591135774.git.gurus@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fcc92b6499e8200ad6b02ab13b38e4d310afe0ba.1591135774.git.gurus@codeaurora.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_153455_324498_475E5E2E 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.38 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org,
 Daniel Thompson <daniel.thompson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 David Collins <collinsd@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Joe Perches <joe@perches.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Lee Jones <lee.jones@linaro.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 03:31:11PM -0700, Guru Das Srinagesh wrote:
> Since the PWM framework is switching struct pwm_state.period's
> datatype to u64, prepare for this transition by using
> DIV_ROUND_UP_ULL to handle a 64-bit dividend.
> 
> Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> ---
>  drivers/pwm/pwm-imx27.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pwm/pwm-imx27.c b/drivers/pwm/pwm-imx27.c
> index 732a6f3..c50d453 100644
> --- a/drivers/pwm/pwm-imx27.c
> +++ b/drivers/pwm/pwm-imx27.c
> @@ -202,7 +202,7 @@ static void pwm_imx27_wait_fifo_slot(struct pwm_chip *chip,
>  	sr = readl(imx->mmio_base + MX3_PWMSR);
>  	fifoav = FIELD_GET(MX3_PWMSR_FIFOAV, sr);
>  	if (fifoav == MX3_PWMSR_FIFOAV_4WORDS) {
> -		period_ms = DIV_ROUND_UP(pwm_get_period(pwm),
> +		period_ms = DIV_ROUND_UP_ULL(pwm_get_period(pwm),
>  					 NSEC_PER_MSEC);
>  		msleep(period_ms);
>  
> -- 

Please disregard this patch, it was sent by mistake. The correct patch
is [1].

[1]: https://lore.kernel.org/lkml/bb43ff8ad9e0b9884722d85e51c8fdb3ef4154d1.1591136989.git.gurus@codeaurora.org/

Thank you.

Guru Das.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
