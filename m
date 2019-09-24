Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E77ABC7CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 14:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvXDIwqBUCVMX/fGApABR55qYXe5meu7h7u/5BC4zy8=; b=Ah5QMT/fk0/Iri
	4w+cDDy/Klw0iK7LEcNaHKuANzGmcycOgvMbdjT7N351gZy7bGeMJ7RGBuqI/jjXUXsu1PtQ/HndV
	zkI/w3Mv5FUuLcVWH2vsrhHgVRnVOfMXxL05VafmCe6U9yFyqtswvdctkY7GVP22EZSHPsxn1gZk1
	S+G0Wi4EVsryaKRaRxm2m9joKsrhPXOM7cihB7m8c4gHi00V5BLQEWI/5e91L1NePRyE3F4d/X/JF
	nV02O0bWTATQwAkqtt096g3oTAnweoIDH3/Yng6oldNRYM8ymSPnPV7KJc4moSixJU0qRX0JGlcpr
	vk/JNoojbdI03dsaO9Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCjpd-0003a1-6Z; Tue, 24 Sep 2019 12:22:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCjpR-0003ZH-02
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 12:22:02 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iCjpI-0006IT-GQ; Tue, 24 Sep 2019 14:21:52 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iCjpD-00085A-Ku; Tue, 24 Sep 2019 14:21:47 +0200
Date: Tue, 24 Sep 2019 14:21:47 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] clk: at91: avoid sleeping early
Message-ID: <20190924122147.fojcu5u44letrele@pengutronix.de>
References: <20190920153906.20887-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920153906.20887-1-alexandre.belloni@bootlin.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_052201_040527_3205244B 
X-CRM114-Status: GOOD (  17.53  )
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 05:39:06PM +0200, Alexandre Belloni wrote:
> It is not allowed to sleep to early in the boot process and this may lead
> to kernel issues if the bootloader didn't prepare the slow clock and main
> clock.
> =

> This results in the following error and dump stack on the AriettaG25:
>    bad: scheduling from the idle thread!
> =

> Ensure it is possible to sleep, else simply have a delay.
> =

> Reported-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Tested-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

See below for a comment.

> Note that this was already discussed a while ago and Arnd said this appro=
ach was
> reasonable:
>   https://lore.kernel.org/lkml/6120818.MyeJZ74hYa@wuerfel/
> =

>  drivers/clk/at91/clk-main.c |  5 ++++-
>  drivers/clk/at91/sckc.c     | 20 ++++++++++++++++----
>  2 files changed, 20 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
> index f607ee702c83..ccd48e7a3d74 100644
> --- a/drivers/clk/at91/clk-main.c
> +++ b/drivers/clk/at91/clk-main.c
> @@ -293,7 +293,10 @@ static int clk_main_probe_frequency(struct regmap *r=
egmap)
>  		regmap_read(regmap, AT91_CKGR_MCFR, &mcfr);
>  		if (mcfr & AT91_PMC_MAINRDY)
>  			return 0;
> -		usleep_range(MAINF_LOOP_MIN_WAIT, MAINF_LOOP_MAX_WAIT);
> +		if (system_state < SYSTEM_RUNNING)
> +			udelay(MAINF_LOOP_MIN_WAIT);
> +		else
> +			usleep_range(MAINF_LOOP_MIN_WAIT, MAINF_LOOP_MAX_WAIT);

Given that this construct is introduced several times, I wonder if we
want something like:

	static inline void early_usleep_range(unsigned long min, unsigned long max)
	{
		if (system_state < SYSTEM_RUNNING)
			udelay(min);
		else
			usleep_range(min, max);
	}

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
