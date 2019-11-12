Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8A7F89B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvIZdnVcyeygBCpio6tsOIoxN3jvHsOmBu48TkkihqM=; b=gcGE9D+MEfu1Hf
	BWu1lFFq4CL4XeJ3hrC/IfyqV6R62FLmjGfzFZ1C3Lzk3Amr2I6Gx5WFbIrD8TYNQMT+2t0vM6q9G
	T+J2kD581FBpjuLf3uTp/pXdV6B8F4cUdRQ6i5iy7WSMMGAsLasfSh5s0OYDBLodcgAdDr3KNmj8j
	TS2ALy/07rfiaLQ64IlRDbThZKiPaki8oM00kSKT9GGF8uuQP9lS+z+NrfixAIgcbl3RpdXlj6Riq
	VTfrDoiM0YzDBOF8dY18QIhKKt5pG87sx8ktx2pJahHwcKjjdG2nP1uHSvk9XijbsBqSJvI6YjwU5
	vpRZK70zCCI4535QHkJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQcg-0007GA-4A; Tue, 12 Nov 2019 07:29:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQcU-0007EV-N7
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:29:48 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iUQcG-0001qJ-9e; Tue, 12 Nov 2019 08:29:32 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iUQcA-0001xe-RB; Tue, 12 Nov 2019 08:29:26 +0100
Date: Tue, 12 Nov 2019 08:29:26 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] base: soc: Export soc_device_to_device() helper
Message-ID: <20191112072926.isjxfa4ci6akhx56@pengutronix.de>
References: <20191103013645.9856-3-afaerber@suse.de>
 <20191111045609.7026-1-afaerber@suse.de>
 <20191111052741.GB3176397@kroah.com>
 <586fa37c-6292-aca4-fa7c-73064858afaf@suse.de>
 <20191111064040.GA3502217@kroah.com>
 <a88442df-dc6b-07e5-8dee-9e308bdda450@suse.de>
 <20191112052347.GA1197504@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112052347.GA1197504@kroah.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_232946_750525_9EB6B450 
X-CRM114-Status: GOOD (  25.68  )
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-realtek-soc@lists.infradead.org, Tony Lindgren <tony@atomide.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 linux-amlogic@lists.infradead.org, linux-omap@vger.kernel.org,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 06:23:47AM +0100, Greg Kroah-Hartman wrote:
> On Mon, Nov 11, 2019 at 09:10:41PM +0100, Andreas F=E4rber wrote:
> > Am 11.11.19 um 07:40 schrieb Greg Kroah-Hartman:
> > > On Mon, Nov 11, 2019 at 06:42:05AM +0100, Andreas F=E4rber wrote:
> > >> Hi Greg,
> > >>
> > >> Am 11.11.19 um 06:27 schrieb Greg Kroah-Hartman:
> > >>> On Mon, Nov 11, 2019 at 05:56:09AM +0100, Andreas F=E4rber wrote:
> > >>>> Use of soc_device_to_device() in driver modules causes a build fai=
lure.
> > >>>> Given that the helper is nicely documented in include/linux/sys_so=
c.h,
> > >>>> let's export it as GPL symbol.
> > >>>
> > >>> I thought we were fixing the soc drivers to not need this.  What
> > >>> happened to that effort?  I thought I had patches in my tree (or
> > >>> someone's tree) that did some of this work already, such that this
> > >>> symbol isn't needed anymore.
> > >>
> > >> I do still see this function used in next-20191108 in drivers/soc/.
> > >>
> > >> I'll be happy to adjust my RFC driver if someone points me to how!
> > > =

> > > Look at c31e73121f4c ("base: soc: Handle custom soc information sysfs
> > > entries") for how you can just use the default attributes for the soc=
 to
> > > create the needed sysfs files, instead of having to do it "by hand"
> > > which is racy and incorrect.
> > =

> > Unrelated.
> > =

> > >> Given the current struct layout, a type cast might work (but ugly).
> > >> Or if we stay with my current RFC driver design, we could use the
> > >> platform_device instead of the soc_device (which would clutter the
> > >> screen more than "soc soc0:") or resort to pr_info() w/o device.
> > > =

> > > Ick, no, don't cast blindly.  What do you need the pointer for?  Is t=
his
> > > for in-tree code?
> > =

> > No, an RFC patchset: https://patchwork.kernel.org/cover/11224261/
> > =

> > As I indicated above, I used it for a dev_info(), which I can easily
> > avoid by using pr_info() instead:
> > =

> > diff --git a/drivers/soc/realtek/chip.c b/drivers/soc/realtek/chip.c
> > index e5078c6731fd..f9380e831659 100644
> > --- a/drivers/soc/realtek/chip.c
> > +++ b/drivers/soc/realtek/chip.c
> > @@ -178,8 +178,7 @@ static int rtd_soc_probe(struct platform_device *pd=
ev)
> > =

> >         platform_set_drvdata(pdev, soc_dev);
> > =

> > -       dev_info(soc_device_to_device(soc_dev),
> > -               "%s %s (0x%08x) rev %s (0x%08x) detected\n",
> > +       pr_info("%s %s (0x%08x) rev %s (0x%08x) detected\n",
> >                 soc_dev_attr->family, soc_dev_attr->soc_id, chip_id,
> >                 soc_dev_attr->revision, chip_rev);
> =

> First off, the driver should not be spitting out noise for when all goes
> well like this :)

I didn't follow the discussion closely, but I think I want to object
here a bit. While I agree that each driver emitting some stuff to the
log buffer is hardly helpful, seeing the exact SoC details is indeed
useful at times. With my Debian kernel team member hat on, I'd say
keep this information. This way the SoC details make it into kernel bug
reports without effort on our side.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
