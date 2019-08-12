Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D01A789BD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wrhr1Ie44aK/1rjHBmEB40wpUqtQ+NE8Bn3agULraho=; b=ehZrHf9vCkbkkN
	YJEhHshk4BGJhtehS6slZwKz4LHUzAuxMnxrTc21zEFKeoTDB9yagBExB8r2VmoQ8q4/x8pT2mYfq
	fRdS6tC3U1BTuUesniVtNCwq6f3e0ajPiTTVHvdwK7Zsc3UeiqP8Q4AznFnENxydtnXMhvE7PSGU0
	luJTR17WcLSy/Ps4/PMndxrQbSgT46L3IgGV0IlOPhp9yM/3srQxewV7uoQfw9/wwn+OUalEWh9cj
	q4q02wquu2YFGccwaCviVXsSFrxK1ZPy4jy47IbZBMUud7YgzdTRQNfjPCRm7vYLNGzeGfkRaQ1E+
	FD9DRLOBpdqHUmxKLfdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7rN-0007Pw-Sh; Mon, 12 Aug 2019 10:47:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7r6-0007PL-Fs
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:47:13 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hx7qw-0001B8-KY; Mon, 12 Aug 2019 12:47:02 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hx7qu-0001m9-Up; Mon, 12 Aug 2019 12:47:00 +0200
Date: Mon, 12 Aug 2019 12:47:00 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [linux-sunxi] Re: [PATCH 4/6] pwm: sun4i: Add support for H6 PWM
Message-ID: <20190812104700.vzpdxx3yddthiif5@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <173825848.1FZsmuHfpq@jernej-laptop>
 <20190729185108.tpilwoooxvi2z72e@pengutronix.de>
 <2452836.v7ux4bnEjb@jernej-laptop>
 <20190730080900.hhxrqun7vk4nsj2h@pengutronix.de>
 <20190730170601.a7ei43wku6jsjanu@flea>
 <20190731065230.mqbtn5sfoxrkevw5@pengutronix.de>
 <20190812095648.wuefcr2mep3dpkth@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812095648.wuefcr2mep3dpkth@flea>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_034712_526258_E31800CB 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>, linux-sunxi@googlegroups.com,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 kernel@pengutronix.de, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Maxime,

the idea of my mail was to summarize quickly the discussion for the dt
people to give their judgement to stop us circling in a discussion about
the always same points.

I suggest we stop the discussion here now and wait for a reply from them
instead.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
