Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B56A1942F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:22:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3plgNc9LGltgMms4tqdPkPjiNKlqVO/yH8sy/gom9jA=; b=XuuHKGo9gD3Fte
	7aAGlVHVPMyCWkRFk53aGIR/v6zB/PV8tJ9a9+pvxNq2r0n5KQ7ie4dboVEVQD9wqkXNbbbnh9kPM
	RXezsSmUtE0WpIymvDCfJl/wFMHV0uoYuXv29shRZvEi1Ls8at3WWMJcdXfFG7a7zvZoekLWajHEr
	ndwXQpB6T0SZW/II8+9Sev7AznlRwtfnAmkft6/ysVd1dCt9eRlsRsL5424SUOEcGUZHShTHYDnof
	YP8vmDwhMaVfHkvdTOEBLkCpfitviuzwbby7qgXJR9QZoORAtktxZMh8QCWS/OSRZt0LxDsWVXzND
	w5YBDI0CwSKqdPX63bog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUKU-0002O0-4m; Thu, 26 Mar 2020 15:21:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUK7-0002EN-Vt
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:21:37 +0000
Received: from mail.kernel.org (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 696AE2073E;
 Thu, 26 Mar 2020 15:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585236095;
 bh=IrNjZ3rpXCLq0ROmJORSHoP5KphKizMWinfQJm/QS74=;
 h=From:To:Cc:Subject:Date:From;
 b=TsSIrKgUvl6/Im0yJnwtI4fCtipN2ZVFHVOx3XkozrGfmUb9RYzZw6UG34hL/bT/u
 InVz3yx+C5ewSa2xKjm5A6yvcOr2iOruA9Byey6fhWgaUcfOR0Ac5JRyoU2AK2BrsW
 lRPeCScCOG95BVrxP21qaqMJTBuNM4v1B1S24QDI=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jHUK5-003dib-K9; Thu, 26 Mar 2020 16:21:33 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 0/7] media Kconfig reorg - part 3
Date: Thu, 26 Mar 2020 16:21:25 +0100
Message-Id: <cover.1585235736.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_082136_067449_3854443A 
X-CRM114-Status: GOOD (  14.62  )
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

That's a third part of the patch series with improve the media Kconfig
settings.

The entire series is
at:

	https://git.linuxtv.org/mchehab/experimental.git/log/?h=media-kconfig

patch 1 addresses a report from Helen that an user might not notice
that drivers are filtered. So, it adds an explicit message warning
about that;

patch 2 marks PCI skeleton and dvb-dummy-fe as test drivers too;

patch 3-5 duplicates the dvb_dummy_fe driver into the ddbridge driver.
The ddbridge driver is unique: it has a PCI bridge with some slots for
frontends. When the slot is empty, it uses the dummy frontend. As we'll
be soon changing the dummy frontend to make it a virtual driver, and no
other real driver requires a dummy FE, place a simplified copy of it at
the ddbridge directory;

patch 6 fix several problems related to media test devices. Before
such patch, one would need to build a real driver in order to select
the needed cores for the test ones.

patch 7 adds some missing SPDX headers at the media build system.

Mauro Carvalho Chehab (7):
  media: Kconfig: warn if drivers are filtered
  media: Kconfig: mark other drivers as test drivers
  media: ddbridge: copy the dvb_dummy_fe driver to ddbridge
  media: ddbridge-dummy_fe: do some vars and function renames
  media: ddbridge: use the ddbridge's own dummy fe driver
  media: Kconfig: fix selection for test drivers
  media: add SPDX headers on Kconfig and Makefile files

 drivers/media/Kconfig                         |   7 +-
 drivers/media/dvb-frontends/Kconfig           |  15 +-
 drivers/media/mc/Kconfig                      |   2 +
 drivers/media/pci/Kconfig                     |   9 +-
 drivers/media/pci/ddbridge/Kconfig            |   1 -
 drivers/media/pci/ddbridge/Makefile           |   2 +-
 drivers/media/pci/ddbridge/ddbridge-core.c    |   4 +-
 .../media/pci/ddbridge/ddbridge-dummy-fe.c    | 153 ++++++++++++++++++
 .../media/pci/ddbridge/ddbridge-dummy-fe.h    |  16 ++
 drivers/media/platform/sunxi/Kconfig          |   2 +
 drivers/media/platform/sunxi/Makefile         |   2 +
 .../media/platform/sunxi/sun4i-csi/Kconfig    |   2 +
 .../media/platform/sunxi/sun4i-csi/Makefile   |   2 +
 drivers/media/test_drivers/Kconfig            |   2 +-
 drivers/staging/media/hantro/Makefile         |   2 +
 drivers/staging/media/rkisp1/Makefile         |   2 +
 16 files changed, 210 insertions(+), 13 deletions(-)
 create mode 100644 drivers/media/pci/ddbridge/ddbridge-dummy-fe.c
 create mode 100644 drivers/media/pci/ddbridge/ddbridge-dummy-fe.h

-- 
2.25.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
