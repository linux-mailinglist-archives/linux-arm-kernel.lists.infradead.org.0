Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CE5BB00C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kp4901rR1d/pQ63YtVv+vim3aDHDto4+jVMBXpDZnvE=; b=KbCo9Wx6FE2kFf
	7gFsmU17yyhnmH+JJpJJEViCo1vPaPIpA9PMqg3GjHEi9PBzfhNRwN1B5nRlhxGUfD8g6OXAXgKEh
	Aw3JUf5non1r0DOAk1jLYtK1Pt77OrVEfOioy6HiAnmCKMh03H3U3zQmVhiydQmFTsLo+SOQN+YWY
	9hF7HfztJ14KBaq0e9/EpK1XJYPkWGiKLK0QKr9zlQftczmfNQ9oWUZjVyDDxIkdybNUCEYwbhFF8
	gFkdbqbM+2qAXK+FaInfTCRcZvcXy4pI6xU+RoDYV9ZZ13IT5AU9pjAZ9T90A5Xt/Xck7Tkz8u1M6
	3frMz+R2jCu06HD/sJIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCK7A-0007Pl-Ba; Mon, 23 Sep 2019 08:54:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCK6w-0007O3-84
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:54:23 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iCK6p-0002FR-FW; Mon, 23 Sep 2019 10:54:15 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iCK6o-0000rV-MN; Mon, 23 Sep 2019 10:54:14 +0200
Date: Mon, 23 Sep 2019 10:54:14 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 3/4] pwm: mxs: add support for inverse polarity
Message-ID: <20190923085414.6d3gbby6gglpjsfe@pengutronix.de>
References: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
 <20190923081348.6843-4-linux@rasmusvillemoes.dk>
 <20190923082735.tzxyhvjlnztsxhsc@pengutronix.de>
 <d2b29144-3de8-4561-3292-49db7e697aca@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2b29144-3de8-4561-3292-49db7e697aca@rasmusvillemoes.dk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_015422_314773_A9843A06 
X-CRM114-Status: GOOD (  17.82  )
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 10:45:56AM +0200, Rasmus Villemoes wrote:
> On 23/09/2019 10.27, Uwe Kleine-K=F6nig wrote:
> > On Mon, Sep 23, 2019 at 10:13:47AM +0200, Rasmus Villemoes wrote:
> >>
> >>  =

> >> +	pol_bits =3D state->polarity =3D=3D PWM_POLARITY_NORMAL ?
> >> +		PERIOD_POLARITY_NORMAL : PERIOD_POLARITY_INVERSE;
> >> +
> >>  	writel(duty_cycles << 16,
> >>  	       mxs->base + PWM_ACTIVE0 + pwm->hwpwm * 0x20);
> >> -	writel(PERIOD_PERIOD(period_cycles) | PERIOD_POLARITY_NORMAL | PERIO=
D_CDIV(div),
> >> +	writel(PERIOD_PERIOD(period_cycles) | pol_bits | PERIOD_CDIV(div),
> > =

> > When will this affect the output? Only on the next start of a period, or
> > immediatly? Can it happen that this results in a mixed output (i.e. a
> > period that has already the new duty cycle from the line above but not
> > the new polarity (or period)?
> =

> The data sheet says "Also, when the user reprograms the channel in this
> manner, the new register values will not take effect until the beginning
> of a new output period. This eliminates the potential for output
> glitches that could occur if the registers were updated while the
> channel was enabled and in the middle of a cycle.". So I think this
> should be ok. "this manner" refers to the registers being written in the
> proper order (first ACTIVEn, then PERIODn).

OK. IMHO this is worth a code comment.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
