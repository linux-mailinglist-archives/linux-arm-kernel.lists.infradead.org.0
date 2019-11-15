Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FFEFD6E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 08:25:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IBU7PehHt0M3B1ZBZ6AOQQWoQXii61rmsT1cd9Jgu9k=; b=TFza5v3JjYC3HD
	42PINYya3m2MeODqJLk6slkGnLUutEzxc2ePGtuH3gIkGqLIR2SJb9HpcYaAHlBcX7VEC5CwLVqx1
	H57jMxYMAHLvKc3NXxl2UYNb0HQTowa0tjbHBXUWsYfzKmyrVNZfpGvOGzsSuR0wKvhvtDbTO/9bZ
	CxhkdbZz6zEMP6vVkVfqdZRa3Rm01bPsjmrGDRfGlT97BtQp2o3TSOFWXsOC7tcDh1laLiqeQlCNh
	7WGaUT+bbftvm2HNE8UvXmbXDDG6rkTURYWnTet+6YlSIUeboAwwqVgQEWYEksbc11FupKNkHlhyg
	4r2hy/5dqrP3xP+JEMrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVVzC-0002jr-9i; Fri, 15 Nov 2019 07:25:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVVz4-0002jU-Dx
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 07:25:35 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iVVyz-000553-Pd; Fri, 15 Nov 2019 08:25:29 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iVVyy-0000MK-4d; Fri, 15 Nov 2019 08:25:28 +0100
Date: Fri, 15 Nov 2019 08:25:28 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 3/7] pwm: sun4i: Add an optional probe for bus clock
Message-ID: <20191115072528.7p5ks7xhifjiso2p@pengutronix.de>
References: <20191108084517.21617-1-peron.clem@gmail.com>
 <20191108084517.21617-4-peron.clem@gmail.com>
 <20191113083524.aqtf2ed4ltuiazjg@pengutronix.de>
 <CAJiuCccqyPbxRLjv1NRy6eukMnma8OUJGKvVHHDSKwybNJgKrg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCccqyPbxRLjv1NRy6eukMnma8OUJGKvVHHDSKwybNJgKrg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_232534_472827_8A7B145A 
X-CRM114-Status: GOOD (  18.78  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Cl=E9ment,

On Thu, Nov 14, 2019 at 11:36:16PM +0100, Cl=E9ment P=E9ron wrote:
> On Wed, 13 Nov 2019 at 09:35, Uwe Kleine-K=F6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> > On Fri, Nov 08, 2019 at 09:45:13AM +0100, Cl=E9ment P=E9ron wrote:
> > > +     /*
> > > +      * Fallback for old dtbs with a single clock and no name.
> > > +      * If a parent has a clock-name called "mod" whereas the
> > > +      * current node is unnamed the clock reference will be
> > > +      * incorrectly obtained and will not go into this fallback.
> >
> > For me "old dtbs" suggests that today a device tree should have a "mod"
> > clock. Is this true also for machines other than H6? And I'd put the
> > comment before the acquisition of the "mod" clock. Something like:
> =

> Agree to remove the "old dtbs" but specifying the SoC instead
> of the reason is less clear for me.
> =

> I would prefer to have something like this:
> =

> A clock is explicitly called "mod" when several clocks are referenced.
> However, when only one clock is declared this one is unamed.
> So we request "mod" first (and ignore the corner case that a parent
> provides a "mod" clock)
> and if this is not found we fall back to the first clock of the PWM.

It gets better. What about also describing shortly the purpose of this
clock (assuming this is the source clock of the PWM that is then
divided):

	All hardware variants need a source clock that is divided and
	then feeds the counter that defines the output wave form. In the
	device tree this clock is either unnamed or called "mod".
	Some variants (e.g. H6) need another clock to access the
	hardware registers; this is called "bus".

	So we request "mod" first (and ignore the corner case that a
	parent provides a "mod" clock while the right one would be the
	unnamed one of the PWM device) and if this is not found we fall
	back to the first clock of the PWM.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
