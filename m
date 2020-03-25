Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0281932E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 22:38:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvysFgUeUxxa4TcxZb7klxX+K/q4LC5jbwd6/sqYd5Y=; b=YJO35sFTDW5D25
	6UrDuVhjjmFK43eQyprGFXzbVrSSZd/C7S25vIQ/IkGZEJX5XQKkWvkHZhJEt7RBHJVeA8/aXwaVW
	c67+cIKvLn1TdPQ4z7iY70rGutgWeD37tQ5r12CErwLDMJuF57z9TSO1N9VgJoSNvwUVF+HRZkwrO
	LKotucv2w33YpMZERkv9iriSjbsq4H0pp5A7aPD7KAkis2x2rFtYkkoWzmZSmD0wcpF8nrNuMSd91
	ATS7dY19iWZrVwb6k5Om4pQ+pz0FfYZ/ACSm93FHYSVYVulCX4q7NvK9gJvoKW0jAxrVCgr/B/V69
	iT+qrwXxGC5nIBARNuwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDjU-0008Fu-R7; Wed, 25 Mar 2020 21:38:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDjM-0008FQ-GE
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 21:38:34 +0000
Received: from coco.lan (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 763422070A;
 Wed, 25 Mar 2020 21:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585172311;
 bh=3+dpAoOv7A1uXPuzYk/E8xWPmf3tvl7RGk+7W4aJi9w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mDzXsP6JuUukx2jZSjZDL2ZsbuMKEDVqljIYtReZ2EeJEErznCWdmSUMf6s7qveF+
 M+xl4vT8LBDvqJE9SBPuEz1cPE0Xw65b6OH7KCycC9E9wYg63J9AhQSRlVLAPw733e
 +HqMmE+2KyPSMyNUiJN5X4I0TGoQBGn3CBZLSsAE=
Date: Wed, 25 Mar 2020 22:38:20 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 0/4] media Kconfig reorg - part 2
Message-ID: <20200325223820.1c74aed3@coco.lan>
In-Reply-To: <6fadc6ea-8512-03ba-da30-43c64d7562f6@collabora.com>
References: <cover.1585151701.git.mchehab+huawei@kernel.org>
 <6fadc6ea-8512-03ba-da30-43c64d7562f6@collabora.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_143832_583479_B9441733 
X-CRM114-Status: GOOD (  27.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Michal Simek <michal.simek@xilinx.com>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pavel Machek <pavel@ucw.cz>, Fabio Estevam <festevam@gmail.com>,
 devel@driverdev.osuosl.org, linux-renesas-soc@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>, Yong Zhi <yong.zhi@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Niklas =?UTF-8?B?U8O2ZGVybHVuZA==?= <niklas.soderlund@ragnatech.se>,
 Yong Deng <yong.deng@magewell.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel@lists.infradead.org, Hyun Kwon <hyun.kwon@xilinx.com>,
 Heungjun Kim <riverful.kim@samsung.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, 25 Mar 2020 16:36:31 -0300
Helen Koike <helen.koike@collabora.com> escreveu:

> Hello,
> 
> On 3/25/20 1:03 PM, Mauro Carvalho Chehab wrote:
> > That's the second part of media Kconfig changes. The entire series is
> > at:
> > 
> > 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=media-kconfig  
> 
> I made a quick experiment (using this branch) with someone who works with the kernel for his master degree, but doesn't have much experience in kernel development in general.
> I asked him to enable Vimc (from default configs, where multimedia starts disabled).
> He knows that Vimc is a virtual camera driver, and this is how he behaved:
> 
> === Start of experiment:
> 
> * He pressed '/' and searched for vimc to see the location path.
> * Then he enabled "Multimedia support" and went straight to "Media drivers" (which just shows USB and PCI).
> * He went back to "Multimedia support", entered "Media device types" and enabled "Test drivers".
> * He went back to "Media drivers" again and didn't find Vimc (nothing changed in this menu).
> * He seemed a bit lost, going back and forth in the menus a couple of times.
> * Then he pressed '/' again to search for vimc and see the location path, and he realized that there
> should be an option called "V4L test drivers" under "Media drivers" that is not showing up.
> * He went back to "Media device types" again and start re-reading the options.
> * He selected "Cameras and video grabbers" ant went back to "Media drivers".
> * He sees "V4L test drivers", selects it, and enter this menu.
> * He selects "Virtual Media Controller Driver".
> 
> I asked his impressions, and he mentioned that he thought that enabling just "Test drivers" would be enough, without need
> to combine "Test drivers" with "Cameras and video grabbers".
> He also asked me why virtual drivers should be hidden, and he mentioned that the word "Virtual" in front would be enough.
> 
> Then I showed him he could have disabled the option "Filter devices by their types" to see everything at one (which he didn't
> realized by himself until that moment, nor tried it out to see what would happen).
> 
> He mentioned that hiding is nice, because it shows less options, but not very nice to search for something.
> He also mentioned that if he had understood the filter mechanism from the start, he would have disabled "Filter devices by their types" sooner.

That's easy to solve: all it needs is to add something similar
to this at drivers/media/Kconfig:

	+	comment "Drivers are filtered by MEDIA_SUPPORT_FILTER"
	+		visible if MEDIA_SUPPORT_FILTER
	+
	+	comment "All available drivers are shown below"
	+		visible if !MEDIA_SUPPORT_FILTER
	+
	menu "Media drivers"

	source "drivers/media/usb/Kconfig"

> === End of experiment
> 
> This was just one experiment from one person, I'll see if I can get some other people from lkcamp.dev group to also check
> and send us their impressions. I think it would be nice to get more data about user experience, from people that are not used to
> kernel development (kernel dev newbies for instance).
> 
> Just another remark from me:
> 
> From the default config, "Media drivers" shows USB and PCI, 

Well, assuming that there are 2 billion computers, 1% with Linux
installed, and 10% of them have a media device (camera or TV),
we have about 2 millions of people running Linux. That excludes
Android and Embedded devices, where people usually don't touch.

During an entire year, there are about 4000 of Kernel developers 
that has at least one patch accepted upstream (this number
includes developers for Android and other SoCs). Also, the 
number of Kernel developers submitting patches upstream for the
media subsystem is around 20-40 people along an year.

So, about 99,9998% of the users using the media subsystems aren't
Kernel hackers. I bet that almost all of those will either need
to enable USB or a PCI driver.

Granted, 99,9998% seems too optimistic, but, assuming that this
would reduce to something like 80% (e. g. only 200 users
would ever try to build a media driver, with is a *very conservative*
number) this is still a lot more than the number of media Kernel
developers.

Also, a Kernel hacker will sooner or later find a way to enable it.
A normal user may find it a lot more trickier and will very likely
require more support, if the menus are too technical and the
default options are wrong.

-

Even with that, based on your small experiment (of someone from the
area), I suspect that, if you had asked him to enable, for example,
em28xx or dvbsky (with are some of the most popular drivers
those days), he would be able to enable it a lot faster.

> and selecting those doesn't do anything, and people can even think
> that, if they want to enable an USB device, just enabling the USB option there is enough (which is not), since no drivers
> shows up.

It is hard to comment on individual experiments. In the past, our
Kconfig system were like that: written for technical people with
background on computer engineering and some experience building the
Kernel.

E.g. people that knows that "/" activates a search mechanism at
the Kernel building system.

We usually had to spend *a lot of time* both on IRC and on e-mail
explaining people that just want to have their card supported,
how to do that. After the reorg (with added those more user-faced
interfaces), the number of people with problems reduced a lot.

Btw, if one tries to compile from media-build (with lots of users
do), this is even more relevant.

Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
