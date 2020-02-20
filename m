Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B6B166080
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 16:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIZYYWCFH4fEDqNCCVeTmhgXMw/a4gH8B51f74ut2JM=; b=cTmUKmBj+ChhPD
	kSag/5Bnlg1gJ/Bgf2EAb4LTgE0GxuGelhIzhpLzH/fh6z1Nj2hXm/KtuynZZWKHorjOw9mF4hh4/
	ctz2C9CdURH9AWfvGwTNSYyTiIf2v1/DxmgcltlpphgPg8kbaWK9DkJq+XGblbyl9Sdqzzk2JbCuB
	ETzr0svPCiFpIXzPR2pOXxZgaVtYBCCMC6f+oWQwzQ/tcXGVXcfC6G9Z3PjExiO6DWSFAPXb8WM+q
	jARrJdOk4TlwRTNXS046uYcX4pz1+ZPrTgQBRyHbaAnietQon2gpXinWCuZxmh+QtrVW8NyL3F4UG
	RFG5A+63ISHT40dzYb7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4nRz-00073G-PW; Thu, 20 Feb 2020 15:09:15 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nRq-00072v-UU
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 15:09:08 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id DE1ED8080;
 Thu, 20 Feb 2020 15:09:48 +0000 (UTC)
Date: Thu, 20 Feb 2020 07:09:01 -0800
From: Tony Lindgren <tony@atomide.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH] backlight: add led-backlight driver
Message-ID: <20200220150901.GG37466@atomide.com>
References: <20200219191412.GA15905@amd> <20200219194540.GD37466@atomide.com>
 <20200220074849.GF3494@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220074849.GF3494@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_070907_020465_C63CD14F 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net, jingoohan1@gmail.com,
 merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, tomi.valkeinen@ti.com,
 Pavel Machek <pavel@ucw.cz>, jjhiblot@ti.com, linux-omap@vger.kernel.org,
 agx@sigxcpu.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Lee Jones <lee.jones@linaro.org> [200220 07:49]:
> On Wed, 19 Feb 2020, Tony Lindgren wrote:
> 
> > * Pavel Machek <pavel@ucw.cz> [200219 19:15]:
> > > From: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > > 
> > > This patch adds a led-backlight driver (led_bl), which is similar to
> > > pwm_bl except the driver uses a LED class driver to adjust the
> > > brightness in the HW. Multiple LEDs can be used for a single backlight.
> > > 
> > > Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > > Signed-off-by: Jean-Jacques Hiblot <jjhiblot@ti.com>
> > > Acked-by: Pavel Machek <pavel@ucw.cz>
> > > Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
> > > Acked-by: Lee Jones <lee.jones@linaro.org>
> > > Acked-by: Tony Lindgren <tony@atomide.com>
> > > Tested-by: Tony Lindgren <tony@atomide.com>
> > > Signed-off-by: Pavel Machek <pavel@ucw.cz>
> > > ---
> > >  drivers/video/backlight/Kconfig  |   7 ++
> > >  drivers/video/backlight/Makefile |   1 +
> > >  drivers/video/backlight/led_bl.c | 260 +++++++++++++++++++++++++++++++++++++++
> > >  3 files changed, 268 insertions(+)
> > >  create mode 100644 drivers/video/backlight/led_bl.c
> > > 
> > > Hi!
> > > 
> > > Here's the version of the driver I have. AFAICT
> > > default-brightness-level handling is ok, so does not need to be
> > > changed.
> > > 
> > > Lee, it would be easiest for me if you could apply it to your tree and
> > > push, but given enough time I can push it to Linus, too.
> > 
> > Oh you're using quoted-printable for patches.. Got it applied now,
> > and it still works. Below is also the related dts change that
> > I tested with.
> > 
> > Feel free to pick the dts change too, naturally that should
> > not be applied before the driver.
> > 
> > If you guys instead want me to pick these both into my fixes
> > branch, just let me know and I'll do the explaining why these
> > are needed as fixes. Basically we no longer have a way to enable
> > the LCD backlight for droid4 manually starting with v5.6-rc1
> > unlike earlier.
> 
> Please do.  You already have my Ack.

OK pushed out these two patches in omap-for-v5.6/droid4-lcd-fix.

Thanks,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
