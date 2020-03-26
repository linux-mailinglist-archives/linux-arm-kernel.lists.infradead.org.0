Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33890193AD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 09:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoGdCptgydE3TWdoo9W0vB+aKsQEwKVZVhJwhkaRLW8=; b=gQ4riKhSgGLfea
	hnsWS3QDGhBVFn2lkYtACD8J+WiZ/g7OOdm5uP3pBK7E/ypp/eFoc7fSgiRYnDdge9b/4fgDm9kRd
	lX8cwO5KpmQxu149usC2X53QSGPN4+2X0MAifpgBJE1Yr3JXhcKX+AnxpnM6d/k68Ns28t6XwU8NE
	jtIXJzSsiAbgf/tj8/axX5wyx5eoEFEQ44B4ltMNSdYySceTIcknF2QoOA/mEyhx5Gl/kuM3bbwZ8
	homg5mocMlrWEnaExe6DFrH1Uu7enGmOcem2dw2D1EnL6e9deBv2dscIYaonqhoA0p5Qp7X5553Gv
	eB2UyOObd+RhD+p0Jvlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHNsl-0006JP-JX; Thu, 26 Mar 2020 08:28:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHNsb-0006Iv-OI
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 08:28:47 +0000
Received: from coco.lan (x2f7f9e9.dyn.telefonica.de [2.247.249.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B6C32070A;
 Thu, 26 Mar 2020 08:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585211324;
 bh=ReDk69Qo37KGy5ASDUUx4h0c+v4mtaJXcZof+Spm6f8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cEKU4NWO3blZyQDp6TDlbUH4YgHggIHDgjZhGXM9W+34CNHB6B+UmI9Ie5EYGBW2p
 bMBWfeoXZXL7xAQDrudpzEMD9rHD73/y5qEoyuMq6xsXcoC0aL/Zkj83aHRFE9lwO/
 1ARof01IFCY54Qj2o3g1kW5vPx6rPRmAbqxCmQBo=
Date: Thu, 26 Mar 2020 09:28:32 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 0/4] media Kconfig reorg - part 2
Message-ID: <20200326092832.069a4d17@coco.lan>
In-Reply-To: <20200325221343.GW19171@pendragon.ideasonboard.com>
References: <cover.1585151701.git.mchehab+huawei@kernel.org>
 <6fadc6ea-8512-03ba-da30-43c64d7562f6@collabora.com>
 <20200325223820.1c74aed3@coco.lan>
 <20200325221343.GW19171@pendragon.ideasonboard.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_012845_835841_445C9BA5 
X-CRM114-Status: GOOD (  44.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Prabhakar" <prabhakar.csengg@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Fabio Estevam <festevam@gmail.com>, devel@driverdev.osuosl.org,
 linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>, Yong Zhi <yong.zhi@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Niklas =?UTF-8?B?U8O2ZGVybHVuZA==?= <niklas.soderlund@ragnatech.se>,
 Helen Koike <helen.koike@collabora.com>, Yong Deng <yong.deng@magewell.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Hyun Kwon <hyun.kwon@xilinx.com>, Heungjun Kim <riverful.kim@samsung.com>,
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

Em Thu, 26 Mar 2020 00:13:43 +0200
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> Hi Mauro,
> 
> On Wed, Mar 25, 2020 at 10:38:20PM +0100, Mauro Carvalho Chehab wrote:
> > Em Wed, 25 Mar 2020 16:36:31 -0300 Helen Koike escreveu:  
> > > On 3/25/20 1:03 PM, Mauro Carvalho Chehab wrote:  
> > > > That's the second part of media Kconfig changes. The entire series is
> > > > at:
> > > > 
> > > > 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=media-kconfig    
> > > 
> > > I made a quick experiment (using this branch) with someone who works with the kernel for his master degree, but doesn't have much experience in kernel development in general.
> > > I asked him to enable Vimc (from default configs, where multimedia starts disabled).
> > > He knows that Vimc is a virtual camera driver, and this is how he behaved:
> > > 
> > > === Start of experiment:
> > > 
> > > * He pressed '/' and searched for vimc to see the location path.
> > > * Then he enabled "Multimedia support" and went straight to "Media drivers" (which just shows USB and PCI).
> > > * He went back to "Multimedia support", entered "Media device types" and enabled "Test drivers".
> > > * He went back to "Media drivers" again and didn't find Vimc (nothing changed in this menu).
> > > * He seemed a bit lost, going back and forth in the menus a couple of times.
> > > * Then he pressed '/' again to search for vimc and see the location path, and he realized that there
> > > should be an option called "V4L test drivers" under "Media drivers" that is not showing up.
> > > * He went back to "Media device types" again and start re-reading the options.
> > > * He selected "Cameras and video grabbers" ant went back to "Media drivers".
> > > * He sees "V4L test drivers", selects it, and enter this menu.
> > > * He selects "Virtual Media Controller Driver".
> > > 
> > > I asked his impressions, and he mentioned that he thought that enabling just "Test drivers" would be enough, without need
> > > to combine "Test drivers" with "Cameras and video grabbers".
> > > He also asked me why virtual drivers should be hidden, and he mentioned that the word "Virtual" in front would be enough.
> > > 
> > > Then I showed him he could have disabled the option "Filter devices by their types" to see everything at one (which he didn't
> > > realized by himself until that moment, nor tried it out to see what would happen).
> > > 
> > > He mentioned that hiding is nice, because it shows less options, but not very nice to search for something.
> > > He also mentioned that if he had understood the filter mechanism from the start, he would have disabled "Filter devices by their types" sooner.  
> > 
> > That's easy to solve: all it needs is to add something similar
> > to this at drivers/media/Kconfig:
> > 
> > 	+	comment "Drivers are filtered by MEDIA_SUPPORT_FILTER"
> > 	+		visible if MEDIA_SUPPORT_FILTER
> > 	+
> > 	+	comment "All available drivers are shown below"
> > 	+		visible if !MEDIA_SUPPORT_FILTER
> > 	+
> > 	menu "Media drivers"
> > 
> > 	source "drivers/media/usb/Kconfig"
> >   
> > > === End of experiment
> > > 
> > > This was just one experiment from one person, I'll see if I can get some other people from lkcamp.dev group to also check
> > > and send us their impressions. I think it would be nice to get more data about user experience, from people that are not used to
> > > kernel development (kernel dev newbies for instance).
> > > 
> > > Just another remark from me:
> > > 
> > > From the default config, "Media drivers" shows USB and PCI,   
> > 
> > Well, assuming that there are 2 billion computers, 1% with Linux
> > installed, and 10% of them have a media device (camera or TV),
> > we have about 2 millions of people running Linux. That excludes
> > Android and Embedded devices, where people usually don't touch.
> > 
> > During an entire year, there are about 4000 of Kernel developers 
> > that has at least one patch accepted upstream (this number
> > includes developers for Android and other SoCs). Also, the 
> > number of Kernel developers submitting patches upstream for the
> > media subsystem is around 20-40 people along an year.  
> 
> $ git log --since 2019-01-01 --until 2020-01-01 --no-merges -- drivers/media/ | grep '^Author: ' | sort | uniq -c | wc -l   
> 215
> 
> There's some duplication of e-mail addresses, but it's still roughly an
> order or magnitude bigger (and it's not counting staging, headers or
> documentation).
> 
> > So, about 99,9998% of the users using the media subsystems aren't
> > Kernel hackers. I bet that almost all of those will either need
> > to enable USB or a PCI driver.  
> 
> And the extremely vast majority of these will never enable a kernel
> option because they will never compile a kernel. They don't even know
> what a kernel is :-)
> 
> > Granted, 99,9998% seems too optimistic, but, assuming that this
> > would reduce to something like 80% (e. g. only 200 users
> > would ever try to build a media driver, with is a *very conservative*
> > number) this is still a lot more than the number of media Kernel
> > developers.
> > 
> > Also, a Kernel hacker will sooner or later find a way to enable it.
> > A normal user may find it a lot more trickier and will very likely
> > require more support, if the menus are too technical and the
> > default options are wrong.  
> 
> I'm not sure to follow you. Are you implying that this patch series,
> which Helen has tested against a real user, not an experienced kernel
> hacker, may make the configuration options more difficult for kernel
> hackers, but improves the situation for users ?

Come on, it is not harder for Kernel hackers. It is just different than
what it used to be before the changes. At the above experience, at the
very first time this Kernel hacker looked on it, it was able to figure
out how to enable the driver. I bet that, if you now repeat the experiment
with the same guy, he would be able to enable another driver a lot quicker.

My view is that, with the option of either enable or disable the
filtering mechanism, it will be easier for everybody:

- Distro maintainers for PCs can just disable platform and
  test drivers, and keep the other drivers enabled;

- An experienced Kernel hacker will disable the filter and select
  the needed drivers directly.

- An user wanting to test a driver with new patches (or a new driver)
  use the filters to select the USB driver he needs (probably using the
  media_tree.git, in order to see only the media options).


> > -
> > 
> > Even with that, based on your small experiment (of someone from the
> > area), I suspect that, if you had asked him to enable, for example,
> > em28xx or dvbsky (with are some of the most popular drivers
> > those days), he would be able to enable it a lot faster.  
> 
> This is the *only* real piece of evidence we have, let's not assume we
> know better.
> 
> > > and selecting those doesn't do anything, and people can even think
> > > that, if they want to enable an USB device, just enabling the USB option there is enough (which is not), since no drivers
> > > shows up.  
> > 
> > It is hard to comment on individual experiments. In the past, our
> > Kconfig system were like that: written for technical people with
> > background on computer engineering and some experience building the
> > Kernel.
> > 
> > E.g. people that knows that "/" activates a search mechanism at
> > the Kernel building system.
> > 
> > We usually had to spend *a lot of time* both on IRC and on e-mail
> > explaining people that just want to have their card supported,
> > how to do that. After the reorg (with added those more user-faced
> > interfaces), the number of people with problems reduced a lot.  
> 
> Don't you think that could come mainly from better support for media
> devices in distributions ?
> 
> > Btw, if one tries to compile from media-build (with lots of users
> > do), this is even more relevant.  
> 
> Can you quantify "lots of users" ?

Enough to make us to decide that re-working the Kconfig menus and 
add the MEDIA_SUPPORT_* and MEDIA_SUBDRV_AUTOSELECT would worth the
efforts.

Guess what? The efforts were fully paid, as it reduced a lot the
amount of time we had to weekly spend helping people to build their
Kernels in order to test support for their new hardware.

It also helped a lot to set the right Kconfig options on distros.
I did my contributions on that time by improving Fedora and on RHEL,
making their build rely on MEDIA_SUPPORT_* and MEDIA_SUBDRV_AUTOSELECT.

See, for some random distro maintainer, new Kconfig symbols pops up
every time. Enabling all of them is usually a very bad idea. So, a
filtering mechanism that would, for example, hide test and skeleton
drivers to be built is a very nice feat, as it means a lot less
symbols for them to study and decide whether such new options should
be enabled or not

Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
