Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3309F3C5C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frVd9VRscjMl2igb+eKI5TIJRujq+CW8wgpwRfocwoI=; b=mzM9z8A3aXDh5h
	N3YgtkUED20hLQIKGakv+tY9Cy5SPyWv2IRv/peQXOhwcyU7p3zxWw1/aQXDXz/Fx4ubg/gmy1Kyz
	fzGtL2Kr4DEZoQ5nkf7GI6BujV4W5OmrBdDciK/iuXpSD4DRTdvhBnQe27PcULn/+EL9yvN52cG3R
	lki3QeMLK2zEXtU3imkSYS+gjGjgt4/BYz12Efckkk2puBcwfw11Qou0pIPYRnk3rGc77fbyQHq9b
	nbTTT/gd25hzJ5x+mJCI7nsbP39xY0/ZA6ngWaWaPZNXB/qpt6ON5xdVMZR6WBNoGPSmA25MyZNOq
	2Wqv+M9XKDWOXfWaUyzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habx8-0006Mj-0v; Tue, 11 Jun 2019 08:16:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habwt-0006Lw-Kh
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:16:09 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1habwb-0003K3-2W; Tue, 11 Jun 2019 10:15:49 +0200
Message-ID: <1560240943.13886.1.camel@pengutronix.de>
Subject: Re: [PATCH 5/8] drivers: media: coda: fix warning same module names
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Matt Redfearn <matt.redfearn@thinci.com>, Anders Roxell
 <anders.roxell@linaro.org>, Hans Verkuil <hverkuil@xs4all.nl>
Date: Tue, 11 Jun 2019 10:15:43 +0200
In-Reply-To: <c2ff2c77-5c14-4bc4-f59c-7012d272ec76@thinci.com>
References: <20190606094722.23816-1-anders.roxell@linaro.org>
 <d6b79ee0-07c6-ad81-16b0-8cf929cc214d@xs4all.nl>
 <CADYN=9KY5=FzrkC7MKj9QnG-eM1NVuL00w8Xv4yU2r05rhr7WQ@mail.gmail.com>
 <c2ff2c77-5c14-4bc4-f59c-7012d272ec76@thinci.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_011607_853941_06DBA56E 
X-CRM114-Status: GOOD (  15.97  )
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, "stefan@agner.ch" <stefan@agner.ch>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>, Lee Jones <lee.jones@linaro.org>,
 "marex@denx.de" <marex@denx.de>, "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "vivien.didelot@gmail.com" <vivien.didelot@gmail.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "b.zolnierkie@samsung.com" <b.zolnierkie@samsung.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Mark Brown <broonie@kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 David Miller <davem@davemloft.net>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, 2019-06-10 at 13:14 +0000, Matt Redfearn wrote:
> 
> On 10/06/2019 14:03, Anders Roxell wrote:
> > On Thu, 6 Jun 2019 at 12:13, Hans Verkuil <hverkuil@xs4all.nl> wrote:
> > > 
> > > On 6/6/19 11:47 AM, Anders Roxell wrote:
> > > > When building with CONFIG_VIDEO_CODA and CONFIG_CODA_FS enabled as
> > > > loadable modules, we see the following warning:
> > > > 
> > > > warning: same module names found:
> > > >    fs/coda/coda.ko
> > > >    drivers/media/platform/coda/coda.ko
> > > > 
> > > > Rework so media coda matches the config fragment. Leaving CODA_FS as is
> > > > since thats a well known module.
> > > > 
> > > > Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> > > > ---
> > > >   drivers/media/platform/coda/Makefile | 4 ++--
> > > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/media/platform/coda/Makefile b/drivers/media/platform/coda/Makefile
> > > > index 54e9a73a92ab..588e6bf7c190 100644
> > > > --- a/drivers/media/platform/coda/Makefile
> > > > +++ b/drivers/media/platform/coda/Makefile
> > > > @@ -1,6 +1,6 @@
> > > >   # SPDX-License-Identifier: GPL-2.0-only
> > > > 
> > > > -coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
> > > > +video-coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
> > > > 
> > > > -obj-$(CONFIG_VIDEO_CODA) += coda.o
> > > > +obj-$(CONFIG_VIDEO_CODA) += video-coda.o
> > > 
> > > How about imx-coda? video-coda suggests it is part of the video subsystem,
> > > which it isn't.
> > 
> > I'll resend a v2 shortly with imx-coda instead.

I'd be in favor of calling it "coda-vpu" instead.

> What about other vendor SoCs implementing the Coda IP block which are 
> not an imx? I'd prefer a more generic name - maybe media-coda.

Right, this driver can be used on other SoCs [1].

[1] https://www.mail-archive.com/linux-media@vger.kernel.org/msg146498.html

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
