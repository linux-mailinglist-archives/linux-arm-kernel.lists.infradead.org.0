Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABDC0A5CDC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 22:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbfYgJ+wrQbwww1LN5B4evm5nfHJ6Lre3kIpKI41CBg=; b=CekrI4QyYs57rv
	WlrcxVPg/zEiHcV4r45qyicdIVlgnZDPSjm1Tve/1EGfqumEzNY+kU4KUSti/jUzKCfWx7a72Rza7
	acF1WRdGrd5c6Pefd34ntlGWVgp3gXlMRBxZyhryMZAfcMB/LrotMSlwDa/6CnhKYH5kWB61gj0JD
	202rYj8WVuLLt4kliI1w+Q2XxQLfcXjB7QRvg3Tnd7MzUZayrWkZuZqFPzVLquPbaoR5PLYBvrxEN
	3oixL/B0FWEzsVWy6jUsb2imDXjC2y1gJDL9BkeRHHFVaZLf6RkvRUscbXWo+aQF+en1MCWn3KZmJ
	8E01BrG+6KdOVLD/cLIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4say-0006w7-6U; Mon, 02 Sep 2019 20:06:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4sae-0006vj-IC
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 20:06:18 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1i4saY-000596-5w; Mon, 02 Sep 2019 22:06:10 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1i4saT-0002Nc-Kv; Mon, 02 Sep 2019 22:06:05 +0200
Date: Mon, 2 Sep 2019 22:06:05 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v2 6/6] pwm: atmel: implement .get_state()
Message-ID: <20190902200605.2tipkzh3n7ylehku@pengutronix.de>
References: <20190824001041.11007-1-uwe@kleine-koenig.org>
 <20190824001041.11007-7-uwe@kleine-koenig.org>
 <8da4ef26-872f-beaf-b5cb-9d8cb93a2ce9@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8da4ef26-872f-beaf-b5cb-9d8cb93a2ce9@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_130616_602801_FBB35987 
X-CRM114-Status: GOOD (  18.85  )
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
Cc: linux-pwm@vger.kernel.org, alexandre.belloni@bootlin.com,
 Ludovic.Desroches@microchip.com, thierry.reding@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Claudiu,

On Wed, Aug 28, 2019 at 10:26:18AM +0000, Claudiu.Beznea@microchip.com wrot=
e:
> On 24.08.2019 03:10, Uwe Kleine-K=F6nig wrote:
> > External E-Mail
> > This function reads back the configured parameters from the hardware. As
> > .apply rounds down (mostly) I'm rounding up in .get_state() to achieve
> > that applying a state just read from hardware is a no-op.
> =

> Since this read is only at probing, at least for the moment, and, as far =
as

Yes, up to now .get_state() is only called at probing time. There is a
patch series (by me) on the list that changes that. (Though I'm not
entirely sure this is a good idea. Will comment my doubts in that thread
later.)

> I remember, the idea w/ .get_state was to reflect in Linux the states of
> PWMs that were setup before Linux takes control (e.g. PWMs setup in
> bootloaders) I think it would no problem if it would be no-ops in this
> scenario.

IMHO it should be a no-op.

> In case of run-time state retrieval, pwm_get_state() should be
> enough. If one would get the state previously saved w/ this .get_state API
> he/she would change it, then it would apply the changes to the hardware. =
No
> changes of PWM state would be anyway skipped from the beginning, in
> pwm_apply_state() by this code:
> =

>         if (state->period =3D=3D pwm->state.period &&
>             state->duty_cycle =3D=3D pwm->state.duty_cycle &&
> 	    state->polarity =3D=3D pwm->state.polarity &&
>             state->enabled =3D=3D pwm->state.enabled)
> 		return 0;
> =

> But maybe I'm missing something.

There is a problem I want to solve generally, not only for the atmel driver.

For example I consider it "expected" that

	s1 =3D pwm_get_state(pwm)
	pwm_apply_state(pwm, s2)
	pwm_apply_state(pwm, s1)

ends in the same configuration as it started. For that it is necessary
(even for the atmel driver with the guard you pointed out above) to
round up in .get_state if .apply rounds down.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
