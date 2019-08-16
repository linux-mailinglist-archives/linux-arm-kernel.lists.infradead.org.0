Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE6A90992
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 22:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZXnT9tp1/0xkzi152XnZooQar2jiBpiqdsFTwNjV5E=; b=ZM1WReJtI4xtk7
	YhNA7+cdp38xpJqJSGjU1un/zbBenoiMD7SR7Sqr9FnS8CKzBXJ4o1MMndGb/d/KDlLSt8qpSWtr7
	bmDMk77H/MQKQKWFIbg8yTOFP1UDbJR9A2POWNBBJ36ys5BS7LD65h23JU9Uj5yWzD5o2DWhcfmPO
	Mpw0ZBqoqSS6BvThC9TE4iKB8P/U0A2w37XU3Vln5mcswoTeryRY0GqNMk+4cHyIiXJfcMWno0nJy
	EUBrL7QZC6tx85SnlcBNqyydv2CitzNrRz48dlVGWSZtsToYbYw+l0Des8J+mPVjcgr9MPls32nOJ
	i170wedtY6hhVfGMi2YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyj5G-0005rC-It; Fri, 16 Aug 2019 20:44:26 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyj55-0005qq-98
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 20:44:18 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 00F6AFF807;
 Fri, 16 Aug 2019 20:43:57 +0000 (UTC)
Date: Fri, 16 Aug 2019 22:43:57 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH 4/3] pwm: atmel: document known weaknesses of both
 hardware and software
Message-ID: <20190816204357.GG3545@piout.net>
References: <20190815214133.11134-1-uwe@kleine-koenig.org>
 <20190816093748.11769-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816093748.11769-1-uwe@kleine-koenig.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_134415_472195_67E41DC0 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/08/2019 11:37:48+0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  drivers/pwm/pwm-atmel.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> =

> diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
> index 42fe7bc043a8..1ddb93db9627 100644
> --- a/drivers/pwm/pwm-atmel.c
> +++ b/drivers/pwm/pwm-atmel.c
> @@ -7,6 +7,16 @@
>   *
>   * Reference manual for "atmel,at91sam9rl-pwm":
>   *   http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-11032-32-bit-=
ARM926EJ-S-Microcontroller-SAM9G25_Datasheet.pdf
> + *
> + * Limitations:
> + * - Periods start with the inactive level.
> + * - Hardware has to be stopped in general to update settings.
> + *
> + * Software bugs/possible improvements:
> + * - When atmel_pwm_apply() is called with state->enabled=3Dfalse a chan=
ge in
> + *   state->polarity isn't honored.
> + * - Instead of sleeping to wait for a completed period, the interrupt
> + *   functionality could be used.

This is definitively not trivial to do right. The main reason it is not
done so is that reading PWM_ISR will clear all the bits so it is
necessary to be very careful to avoid race conditions. I'm not sure it
is worth the effort.


-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
