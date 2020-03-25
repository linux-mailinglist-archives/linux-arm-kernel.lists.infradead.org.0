Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15434192DC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 17:04:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FWyKE0LSXzxAzETrA8ETMarPvAg6cKyjrIh4j1LYLpI=; b=UHH8BFPAkZyj5n
	jsP4o7PAx5fR/hR8wBzxpppD35hqqbU/kEbAtKUQAP6Nytp3u+vtidvuuNymscMz2uY742BZEK4Hd
	7QhmTJ0cYhso3MLWn8PNkNy3KLUwZrIseZBX4TqnkZXZfr+bHPbws61FIgo9ionIKQjh7jESRJ29X
	rI1btN1nBI3835vhTXII0RaJuNr7qHkX0GrPgpV5pnxxnh1N9BZmgUx/wOhcJqguRARctXIWOiIzz
	1w1HrKgJwfw0TB5O/TAkXtvKSvvhODh5RE7PJbiV1V5kxNuN+zdc9Eo/tG349EtlvomAnCzRISLr2
	M9dOznVHZRsjSJhM6fjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH8Vm-00034m-Qt; Wed, 25 Mar 2020 16:04:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH8Vd-000342-Ny
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 16:04:03 +0000
Received: from mail.kernel.org (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECC0D2077D;
 Wed, 25 Mar 2020 16:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585152241;
 bh=/YZy1j5dX52QBA68q9SViv2y+oiaFKA4xv2QbEhOZA4=;
 h=From:To:Cc:Subject:Date:From;
 b=ClsJ9UYWBbp4Uz4XmfRkQk92n+yf7yV4SxCYgHSBdz2Gh7Th6OlxpUqO2W7f8mo7V
 CPGOZ727NTJiTNbIckIlIOuODwoyzR/WuJelJpvDnv2xK5QMhbfh2GkmVrv1W5SpT5
 3V8zz02wGsvYVpYQuFHE8jvZpGviVt2iGFpo0qH4=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jH8Va-003MJ8-K9; Wed, 25 Mar 2020 17:03:58 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 0/4]  media Kconfig reorg - part 2
Date: Wed, 25 Mar 2020 17:03:53 +0100
Message-Id: <cover.1585151701.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_090401_825256_25022B99 
X-CRM114-Status: GOOD (  15.84  )
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>, Yong Zhi <yong.zhi@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Helen Koike <helen.koike@collabora.com>, Yong Deng <yong.deng@magewell.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Hyun Kwon <hyun.kwon@xilinx.com>, Heungjun Kim <riverful.kim@samsung.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

That's the second part of media Kconfig changes. The entire series is
at:

	https://git.linuxtv.org/mchehab/experimental.git/log/?h=media-kconfig

It addresses some issues I noticed when reviewing the series, and do
some changes on how things will be displayed.

It also simplify dependencencies on media-controller-dependent drivers,
by auto-selecting the needed deps.

It should be noticed that the media controller may also optionally
selected for several other drivers, so there is still a prompt to allow
manually enabling it, in the case it was not auto-selected.

PS.: While not needed anymore, because all dependent drivers auto
select, at least for now, I opted to keep the prompt for:

- VIDEO_V4L2_SUBDEV_API

  The rationale is that there are a few drivers that can optionally depend
  on it (like tvp5150). So, better to keep the dependency, in order to be
  able to test those drivers with and without the option.

- MEDIA_CONTROLLER_REQUEST_API

  The rationale is that there are some warnings at the Request API, and
  it would be good to keep it, at least while drivers are on staging.

Mauro Carvalho Chehab (4):
  media: dvb-core: Kconfig: default to use dynamic minors
  media: Kconfig files: use select for V4L2 subdevs and MC
  media: i2c/Kconfig: reorganize items there
  media: Kconfig: don't use visible for device type select

 drivers/media/Kconfig                         |  25 +-
 drivers/media/dvb-core/Kconfig                |   1 +
 drivers/media/i2c/Kconfig                     | 406 +++++++++++-------
 drivers/media/i2c/et8ek8/Kconfig              |   4 +-
 drivers/media/i2c/m5mols/Kconfig              |   5 +-
 drivers/media/i2c/smiapp/Kconfig              |   5 +-
 drivers/media/pci/cobalt/Kconfig              |   4 +-
 drivers/media/pci/intel/ipu3/Kconfig          |   4 +-
 drivers/media/pci/sta2x11/Kconfig             |   6 +-
 drivers/media/platform/Kconfig                |  28 +-
 drivers/media/platform/am437x/Kconfig         |   4 +-
 drivers/media/platform/atmel/Kconfig          |   4 +-
 drivers/media/platform/cadence/Kconfig        |   8 +-
 drivers/media/platform/exynos4-is/Kconfig     |   5 +-
 drivers/media/platform/rcar-vin/Kconfig       |   8 +-
 .../media/platform/sunxi/sun4i-csi/Kconfig    |   4 +-
 .../media/platform/sunxi/sun6i-csi/Kconfig    |   4 +-
 drivers/media/platform/xilinx/Kconfig         |   4 +-
 drivers/media/spi/Kconfig                     |   4 +-
 drivers/media/test_drivers/vimc/Kconfig       |   4 +-
 drivers/staging/media/hantro/Kconfig          |   5 +-
 drivers/staging/media/imx/Kconfig             |   5 +-
 drivers/staging/media/ipu3/Kconfig            |   3 +-
 drivers/staging/media/omap4iss/Kconfig        |   4 +-
 drivers/staging/media/rkisp1/Kconfig          |   4 +-
 drivers/staging/media/sunxi/cedrus/Kconfig    |   5 +-
 26 files changed, 349 insertions(+), 214 deletions(-)

-- 
2.25.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
