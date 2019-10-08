Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B8DCFCB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zeq/aep6EV7OYq8P9Tj3mFbTLqYXUSCCyALosMW1KsA=; b=QHN0FvdObzPaRD
	38eCsbWjeBmRL3bZG7wJqwKQS2CJ2bvEmkvdJWruOy0esWj1nLRsQ9qfNvkL5XzQD6twE1/bXIzS6
	MYDG9yQwzt+GUtY0VKP8PW2zLDBs78xQ6ON+WMFjq6UMSfO3KqAvqtLIMxtLYYYNlr6gRalrt/C41
	VLkOtk/AYWmPFhzdhbSOymkO2xJqXjN4fJ3nZALjnEZiDo2Qqtpf8ESNiZAN+JE2r7lR8H4RQqE1P
	O5+/5jZk3bAamX1c0aTk1AD77vM6jOrkFSTxinf5oxre84mbbRe/CYI8uddUh0RYnbd8aibW0jKOU
	nHZsuCT8d8igxqABVFmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqkF-0002NE-8O; Tue, 08 Oct 2019 14:45:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqk7-0002Mj-6e
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:45:40 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iHqk0-0001Zs-Vp; Tue, 08 Oct 2019 16:45:32 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iHqjz-0001yc-As; Tue, 08 Oct 2019 16:45:31 +0200
Date: Tue, 8 Oct 2019 16:45:31 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] pwm: stm32: add comment to better describe breakinput
 feature
Message-ID: <20191008144531.pjt525xuz7n5a3hq@pengutronix.de>
References: <1570534887-26181-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570534887-26181-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_074539_241436_BEBBA140 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 01:41:27PM +0200, Fabrice Gasnier wrote:
> Add a comment to better describe the purpose of breakinput feature that
> can be found on some STM32 timer instances. Briefly comment on the
> characteristics of this input for PWM, and pinmuxing as suggested in [1].
> =

> [1] https://lkml.org/lkml/2019/10/1/207
> =

> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  drivers/pwm/pwm-stm32.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
> index 359b085..6406ebb 100644
> --- a/drivers/pwm/pwm-stm32.c
> +++ b/drivers/pwm/pwm-stm32.c
> @@ -522,8 +522,14 @@ static int stm32_pwm_apply_breakinputs(struct stm32_=
pwm *priv,
>  					     sizeof(struct stm32_breakinput));
>  =

>  	/*
> +	 * Some timer instances can have BRK input pins (e.g. basically a fault
> +	 * pin from the output power stage). The break feature allows a safe
> +	 * shut-down of the PWM outputs to a predefined state. Further details
> +	 * are available in application note AN4277, "Using STM32 device PWM
> +	 * shut-down features..."

Without having read the application note I don't understand the purpose.
Not sure if this should be a show stopper though.

>  	 * Because "st,breakinput" parameter is optional do not make probe
> -	 * failed if it doesn't exist.
> +	 * failed if it doesn't exist. The pinctrl handle must hold the BRK
> +	 * pin(s) when using "st,breakinput" property.

Is this a comment that has a better place in the binding doc?

Best regards
Uwe


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
