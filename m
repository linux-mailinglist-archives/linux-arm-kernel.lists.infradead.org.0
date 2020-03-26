Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35368193F44
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 13:51:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VbXBoXLA0g+zcMHw2iA6XGzut2dMWoHkYsCrYK06TjM=; b=M45IuHIJ1J0zPt
	/KU5zT4Jj/ItBpCBKNbfA5qC9KU+1q42YqxtP2M8VXCIy4vSIZIYswcwOVT3obYETuStoB05THoZf
	5mVZZoRh9rn+xgvs05TBcGUT09zesHbNob6qShf+CrAcPa7cuvamCh/XADcIy5ZNMrV15nml282ok
	7SdDOzuGr99vav1EEdFYo5nOy8eZCykqvJzt099sdiskPfimJEDfHeKrtuHOK6r1+YVmBgXQzrBl7
	ohLZreglataKnx4MZHEMeBIgMiIo4C2qlbBfQn8dDzNSVNkpKdDuTIz5w7qsYkWDGB06xf5YviBQH
	7rPVH+xFKG+bwr7d2OBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHRyz-00023e-1M; Thu, 26 Mar 2020 12:51:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHRyo-00023L-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 12:51:27 +0000
Received: from coco.lan (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6461B2073E;
 Thu, 26 Mar 2020 12:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585227085;
 bh=zIulOGTEwdI3hssRscSNydLZe2G+oeZ2jtg11vXXxa0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WpMbSseODo1E92lj7T40pAB2Wh74HRlkBa1JdDpsvagBvVQHLFLhCwDBinmDbKLLi
 i1Ta5Atlrk9FKaPsD49ihgxy3OqThb8sItMvY4phyKyO/8Zd0NGMZTqn73rwFxHAgo
 u2EV2sNSSV/qsPGJEVtONh5Uv2/xemv6KIEaDi7k=
Date: Thu, 26 Mar 2020 13:51:13 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 0/4] media Kconfig reorg - part 2
Message-ID: <20200326135113.73c257ba@coco.lan>
In-Reply-To: <20200326101333.GH20581@pendragon.ideasonboard.com>
References: <cover.1585151701.git.mchehab+huawei@kernel.org>
 <6fadc6ea-8512-03ba-da30-43c64d7562f6@collabora.com>
 <20200325223820.1c74aed3@coco.lan>
 <20200325221343.GW19171@pendragon.ideasonboard.com>
 <20200326092832.069a4d17@coco.lan>
 <20200326101333.GH20581@pendragon.ideasonboard.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_055126_274704_BFDAF413 
X-CRM114-Status: GOOD (  29.43  )
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

Em Thu, 26 Mar 2020 12:13:33 +0200
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> > > I'm not sure to follow you. Are you implying that this patch series,
> > > which Helen has tested against a real user, not an experienced kernel
> > > hacker, may make the configuration options more difficult for kernel
> > > hackers, but improves the situation for users ?  
> > 
> > Come on, it is not harder for Kernel hackers. It is just different than
> > what it used to be before the changes.  
> 
> Sorry, I didn't meant to say it would be more complex for me (I mostly
> don't use menuconfig anyway, I edit the .config file manually :-)), but
> I was reading your e-mail as implying that, and was wondering if it was
> me misreading it.

So, the new design will be less complex for you, as some dependencies were
changed to be automatically set when a driver is selected (media controller
and V4L2 subdev APIs) ;-)

> 
> > At the above experience, at the
> > very first time this Kernel hacker looked on it, it was able to figure
> > out how to enable the driver. I bet that, if you now repeat the experiment
> > with the same guy, he would be able to enable another driver a lot quicker.
> > 
> > My view is that, with the option of either enable or disable the
> > filtering mechanism, it will be easier for everybody:
> > 
> > - Distro maintainers for PCs can just disable platform and
> >   test drivers, and keep the other drivers enabled;
> > 
> > - An experienced Kernel hacker will disable the filter and select
> >   the needed drivers directly.
> > 
> > - An user wanting to test a driver with new patches (or a new driver)
> >   use the filters to select the USB driver he needs (probably using the
> >   media_tree.git, in order to see only the media options).  
> 
> My personal view is that this makes things more complex, and more
> complexity usually means less clarity. If we want to be serious about
> the usability of our Kconfig menu, we should get real users involved in
> the design, at least by testing it on them, and getting feedback.
> Otherwise we'll just be a bunch of kernel developers sitting in our
> ivory tower thinking we know better than our users what is good for
> them.

The entire thing started by a proposal to change, in a way that it
would be make things easier for m2m developers but harder for
normal users.

My proposal is to keep both behaviors, with a menu that would
allow switching between those two different behaviors. 

So, it should make both groups happy :-)

Not much complexity added. It is the other way around: I took the
time to do several Kconfig cleanups, in order to make the Kconfig 
files cleaner and better organized (both internally and visually).

-

I don't object getting feedback from real users, but if we're
willing to use such feedback in a consistent way, we need to have
a group of people that could statistically represent the diversity
that we have with the people which builds their own kernels.

> > See, for some random distro maintainer, new Kconfig symbols pops up
> > every time. Enabling all of them is usually a very bad idea. So, a
> > filtering mechanism that would, for example, hide test and skeleton
> > drivers to be built is a very nice feat, as it means a lot less
> > symbols for them to study and decide whether such new options should
> > be enabled or not  
> 
> The fact that test drivers are not shipped by some distros is annoying
> for developers ;-) But that's a very small minority, and out of topic.

Yes, agreed. Things could be easier for us if we could ask people
to use a test driver when reporting certain bugs.

On the other hand, having a test driver shipped by default together
with a production Kernel don't make any sense for most usages. It
would just make the Kernel package bigger and would never be used
by the vast majority of users. It would also mean more work for
security people that would be trying to do OS hardening.

Well, Fedora has a kernel-debug Kernel, meant to be used
when someone finds an issue on production and may require extra stuff
to debug the Kernel. IMHO, it makes a lot of sense to have those test 
drivers shipped there (perhaps packaged in separate, like on a 
kernel-debug-media-test rpm).



Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
