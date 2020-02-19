Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D70116516D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 22:15:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35n2cSeJZLFoJx06gFkQAEMPEeruw7z2TWFWDztJsVI=; b=rJ2jb5keEe9YNM
	0QayBEsNMQK+VBAjXtHpgSEYsgPQw2Cq/bziIc9n86N67i4Ar+4oj/r3QE2yKVFaMkP0nYXwNC/Zx
	UwKAb/uIdU9HNRrF7+ctlM31FKJLuowoKdNeaxdZOPmwYfs608JETwVTeQLUQpX7Ur2EmDcSiWnkf
	HbIfFORTNoIMOZXsQn7iCp1bCdqob1ZciEZNmf2h5WK5F1QNP2noXdqorNdQjEMEaJh95fF98KT3y
	h/XpGl5I3cZpN5+BwiPWb/qoydrTWLDDxNGGibDKGucdnUT6m3ZQ6qcH/lRznGpeFDIrT1AZpXlzu
	8bs2G9sBRCPne++oYmxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Wgp-0005qa-Fe; Wed, 19 Feb 2020 21:15:27 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Wgg-0005q0-SR
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 21:15:20 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 09A4980F3;
 Wed, 19 Feb 2020 21:16:00 +0000 (UTC)
Date: Wed, 19 Feb 2020 13:15:13 -0800
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH] backlight: add led-backlight driver
Message-ID: <20200219211513.GE37466@atomide.com>
References: <20200219191412.GA15905@amd> <20200219194540.GD37466@atomide.com>
 <20200219205322.GA1227@duo.ucw.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219205322.GA1227@duo.ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_131518_961786_66E566B8 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: daniel.thompson@linaro.org, mpartap@gmx.net, jingoohan1@gmail.com,
 merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 sre@kernel.org, nekit1000@gmail.com, tomi.valkeinen@ti.com, jjhiblot@ti.com,
 linux-omap@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, agx@sigxcpu.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Pavel Machek <pavel@ucw.cz> [200219 20:54]:
> Hi!
> 
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
> 
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
> If you are willing to do that, it looks like good solution from my
> point of view.

OK. I'll apply them but won't push out yet in case Lee is already
applying the driver change..

Pavel, care to ack the dts patch?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
