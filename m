Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBF01359EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0snPcymdFc+XwN2V+2Xz6oquxhEhrZ+tWDxZ4KwUVs=; b=E1xPFsLgcYbWlm
	Ybe4fGe4CJ7qLz0jRajD+nIed59d0l2j4pB0JxKDtFejBaIzBbAS+RTbj4/lCfO7fMaYWaXheGRaP
	+EO1InB1DcHDeCJt0Cz/aWdm9G7VYljGw7vmSS61JKaYHas4doz7NXFjOqhZUU9/6j2kOFtGRk3B3
	IqiclOL2XgR1lFgaiLpPGqL7j4vw8dp8aqExbAZPuqwesEgcDdZfx91FWTUW1ZkJ5ehz+bwWQcaMN
	NjqeyFbAJWo0n0V5YGihwuevW7oIb+4QVDMFZhzfkZDbtfVoWeHHHmxvJrFZFFKHJacYRhTC9oMua
	c6ssKUbagG/H3ss96POQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipXiD-00049j-0v; Thu, 09 Jan 2020 13:18:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipXi2-00048A-N0
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:18:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ipXhi-0005IE-Nk; Thu, 09 Jan 2020 14:18:26 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ipXhh-0000jy-9i; Thu, 09 Jan 2020 14:18:25 +0100
Date: Thu, 9 Jan 2020 14:18:25 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] pwm: sun4i: Fix inconsistent IS_ERR and PTR_ERR
Message-ID: <20200109131825.beaspmfaxh4gpcx5@pengutronix.de>
References: <20200109072735.GA22886@embeddedor>
 <20200109074445.73n3vapjl4vfjtsu@pengutronix.de>
 <CAJiuCcdFiXVtECtVGz3N9oUM38ca=MDmdK4+T+peUKKzNr_5KQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcdFiXVtECtVGz3N9oUM38ca=MDmdK4+T+peUKKzNr_5KQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_051846_752614_8174E96D 
X-CRM114-Status: GOOD (  10.90  )
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
Cc: Linux PWM List <linux-pwm@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Thu, Jan 09, 2020 at 10:14:00AM +0100, Cl=E9ment P=E9ron wrote:
> On Thu, 9 Jan 2020 at 08:44, Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> > Hello Gustavo,
> >
> > On Thu, Jan 09, 2020 at 01:27:35AM -0600, Gustavo A. R. Silva wrote:
> > > Fix inconsistent IS_ERR and PTR_ERR in sun4i_pwm_probe().
> > >
> > > The proper pointers to be passed as arguments are pwm->clk and pwm->b=
us_clk.
> =

> Thanks for the catch.
> =

> As these patches are still in next should we update them or apply a fix ?

That's for Thierry to answer.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
