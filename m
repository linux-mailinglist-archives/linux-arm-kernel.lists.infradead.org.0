Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B22D19BE93
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MoI8czeQzrQiVRWcDa99BSAqB8A006SO0sVanBWC9AM=; b=b95j8loq0PytUe
	9HHKU2YVrZnvYcAumo2BbaSjAJKDLsOjV+nzy191pNy8Q6slm6M5bsYBJnWVJCuxOCIrAXmlRpnxw
	jdbHl4i4p8nRq8k8M9jFs4Qj5TQe8FQHdAIo8e6d1XQ0tkHIl+SY/iVN5G0xD4opl7zXmRUZMGytn
	DoVZq1WCzI2JRmXcU5AMmj0ry7b8KGWxo3bZuDKwgGA8N46mNWgMVrzqETQ/s8OjtYicWlQieAxQU
	eh2X4TnxlH5j6R8ngPi8yQXWUzW6upzyMCXmoDQipqPvMtEtlCCykI1PaKwfw2EHtItsEwJex7/Rz
	E5j4IVQZC6VGhWi7y3TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJw8t-0008TP-0k; Thu, 02 Apr 2020 09:28:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJw8m-0008Sv-Rh
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:28:02 +0000
Received: from coco.lan (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 549A4206D3;
 Thu,  2 Apr 2020 09:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585819679;
 bh=J7RWyOxaAGre4b4DdTI7i7aOZrxrkooqXFQyOQ4KOsY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=B1DZr68ChWCITpuRnRBqBRzDSD79fRF1eAmBOzvVfh1ZuzY/ux6jiR79aVLi2tOFe
 gjFMQy69GpienXO8q+G6gNoOoriqO9E3NxUHxiqwhL7cG2IRMyrQAJ/3qA81DSw5ur
 lxsFptASA8ewYAjY+LqZyk0fwAo2xOP5axd8ePV8=
Date: Thu, 2 Apr 2020 11:27:47 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 0/4] media Kconfig reorg - part 2
Message-ID: <20200402112747.57dd1cfe@coco.lan>
In-Reply-To: <20200401105949.GB2001@kadam>
References: <cover.1585151701.git.mchehab+huawei@kernel.org>
 <6fadc6ea-8512-03ba-da30-43c64d7562f6@collabora.com>
 <20200401105949.GB2001@kadam>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_022800_934665_2E856745 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Sylwester Nawrocki <s.nawrocki@samsung.com>, "Lad, 
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pavel Machek <pavel@ucw.cz>, devel@driverdev.osuosl.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>, Yong Zhi <yong.zhi@intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-kbuild@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Helen Koike <helen.koike@collabora.com>, Yong Deng <yong.deng@magewell.com>,
 Chen-Yu Tsai <wens@csie.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, Hyun Kwon <hyun.kwon@xilinx.com>,
 Heungjun Kim <riverful.kim@samsung.com>, linux-renesas-soc@vger.kernel.org,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Niklas =?UTF-8?B?U8O2ZGVybHVuZA==?= <niklas.soderlund@ragnatech.se>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, 1 Apr 2020 13:59:49 +0300
Dan Carpenter <dan.carpenter@oracle.com> escreveu:

> On Wed, Mar 25, 2020 at 04:36:31PM -0300, Helen Koike wrote:
> > Hello,
> > 
> > On 3/25/20 1:03 PM, Mauro Carvalho Chehab wrote:  
> > > That's the second part of media Kconfig changes. The entire series is
> > > at:
> > > 
> > > 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=media-kconfig  
> > 
> > I made a quick experiment (using this branch) with someone who works
> > with the kernel for his master degree, but doesn't have much experience in kernel development in general.
> > I asked him to enable Vimc (from default configs, where multimedia starts disabled).  
> 
> The whole config system is really outdated.

Agreed. 

Btw, when compiled against Qt 5.14, "make xconfig" is currently
broken. I'm sending in a few some fixup patches for it.

> It should be that this task was done with a command like "kconfig enable
> vimc".  It would ask necessary questions and pull in the dependencies
> automatically.

Yes. That's something that it is missing for a long time. There were
some efforts to add a SAT solver at the Kernel that could be used for
that, but I dunno what's current status.

> Twenty years ago it made sense to go through the menus and select things
> one by one.  Does anyone really start from defconfig any more?  Surely
> everyone starts with a known working config and just enables specific
> options.

Yeah, that's my feeling too.

> I started to hack together some code to create a kconfig program to
> enable and disable options.  The problem is that all library code
> assumes we want to display menus so it was a lot of work and I gave up.

:-(

Thanks,
Mauro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
