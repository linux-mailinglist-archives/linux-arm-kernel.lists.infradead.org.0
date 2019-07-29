Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A45557938C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 21:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hyFtaZSIXAsUnwCQgLWjPwsezoO6xbSHAVzzd6eU3gI=; b=bwzB9ZLOPJhO0B
	ZcN0yuG8Nbf63niJG42XT0ujwYoJnSP9e77BoHGAasZdooVGUo7eVdtl9q6Ncxk9nk225+q0StSwr
	vkpWG2anEoFPM0ttRf3OUAwvAB8Rg33Dmwr0LPi2zTJSsXTk0P1DXDWX6ho5y3F4iFcGPQS/4xYoZ
	+OZkqGQIdtvJNZwYUKSAPa7WL1rO8Z8qjbuIB6nce9YJQ5u7AFfNYxIO5d6wQJJNfgSeijBG4JrrO
	JR74qsCdo6wFVqUW2luHniOJy2aL+3DYhk2Sy1usl1bcfFVt0LZukRfgaq1jYQ9w6mDTkYmE8T8qw
	SOFQkJ0DV5YhUOn+vYoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsAwd-0004sf-Id; Mon, 29 Jul 2019 19:04:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAwT-0004s0-KP
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 19:04:19 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsAwI-00078Z-O8; Mon, 29 Jul 2019 21:04:06 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hsAwG-0002rt-PT; Mon, 29 Jul 2019 21:04:04 +0200
Date: Mon, 29 Jul 2019 21:04:04 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 3/6] pwm: sun4i: Add a quirk for bus clock
Message-ID: <20190729190404.rnxw2aihmciafy6c@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-4-jernej.skrabec@siol.net>
 <20190729063825.wxfky6nswcru26g7@pengutronix.de>
 <4022372.WfP88Fa4Lu@jernej-laptop>
 <20190729161435.5bnj3ikocsyep4dd@pengutronix.de>
 <20190729164516.yxfgj2zd3d5ii4c4@flea.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729164516.yxfgj2zd3d5ii4c4@flea.home>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_120417_672005_40DD35E7 
X-CRM114-Status: GOOD (  14.77  )
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 kernel@pengutronix.de, wens@csie.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Maxime,

On Mon, Jul 29, 2019 at 06:45:16PM +0200, Maxime Ripard wrote:
> On Mon, Jul 29, 2019 at 06:14:35PM +0200, Uwe Kleine-K=F6nig wrote:
> > Then maybe something like the following?:
> >
> > 	busclk =3D devm_clk_get_optional(..., "bus");
> > 	modclk =3D devm_clk_get_optional(..., "mod");
> >
> > 	/*
> > 	 * old dtbs might have a single clock but no clock names. Fall
> > 	 * back to this for compatibility reasons.
> > 	 */
> > 	if (!modclk) {
> > 		modclk =3D devm_clk_get(..., NULL);
> > 	}
> =

> Again, there's nothing optional about these clocks. You need a
> particular set of clocks for a given generation, and a separate set of
> them on another generation of SoCs.

It depends on the way how "optional" is understood. The semantic of
"optional" as it is used and implemented by devm_clk_get_optional (and
gpiod_get_optional and devm_reset_control_get_optional) is different
than yours when saying "on H6 the clock is not optional". If it was
about the "it doesn't matter if it's taken care of or not" semantic you
seem to mean the function would be useless and no driver would need to
actually use it. In the sense of the functions listed above "optional"
means: Some devices need it, others don't. Using this semantic the "bus"
clock is optional.

> It really isn't about DT validation. We're really making sure that the
> device can be operational. It's as much of a validation step than
> making sure we have mapped registers (reg), or an interrupt if we had
> any.

Do you agree with Jernej in the other end of this thread? If so I don't
think that repeating the same arguments here is sensible. Please read
what I wrote there.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
