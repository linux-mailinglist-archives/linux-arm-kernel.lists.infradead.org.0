Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61A111BA0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iMm0WiPPXxpfqX4MBP4celO3l1tHbHvB2wv1t6vjJ4k=; b=rpV17oLgxeOVHS
	Yy5EF5ns1Nh5/67MCrN6qJzG5cw/0c8OqfB4ZVdIdsUZx99Ad4/DA/rP+55XxBnKOkgXSiQpeRqAQ
	HnX2XOKsAdIHZ0QMFjQJG2nc+VwZuG7XWYfEV4xvNIM35x2V/AIJhj2g/ioQIoVQywPAvj6qe9wMx
	5DgO5YnfziBCCTcStYbaY2NdIwCtmpF29GGpVJPOG6mLtvuLF5/M6/Z8haPgVs6yn2FMBqqtDlqpR
	YJ85UPj0Vd+Iqt90D34qBJg4YPAYxC3lGcQ9PjGYBiY3pmjLwU+yCrHVYB9Y9Pm9dYpccg6VMD2zJ
	8KEZN+wikjRBnpuHStGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5fE-0006Ru-GG; Wed, 11 Dec 2019 17:20:40 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5f0-0006QS-Bb
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:20:27 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id AE21A80FA;
 Wed, 11 Dec 2019 17:20:58 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 00/16] Drop legacy platform data for various omap devices
Date: Wed, 11 Dec 2019 09:19:58 -0800
Message-Id: <20191211172014.35201-1-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_092026_441408_7F84FE22 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Vignesh R <vigneshr@ti.com>, Keerthy <j-keerthy@ti.com>,
 Jyri Sarha <jsarha@ti.com>, "Andrew F. Davis" <afd@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-arm-kernel@lists.infradead.org,
 Suman Anna <s-anna@ti.com>, Franklin S Cooper Jr <fcooper@ti.com>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

In order to get the l4 instances closer to being usable with genpd, we
continue dropping legacy platform data for various devices.

Please test, some patches may depend on the earlier patches to drop
platform data to apply as they touch the same files.

Regards,

Tony


Tony Lindgren (16):
  ARM: OMAP2+: Drop legacy platform data for am3 and am4 epwmss
  ARM: OMAP2+: Drop legacy platform data for dra7 epwmss
  ARM: OMAP2+: Drop legacy platform data for am3 and am4 spinlock
  ARM: OMAP2+: Drop legacy platform data for omap4 spinlock
  ARM: OMAP2+: Drop legacy platform data for omap5 spinlock
  ARM: OMAP2+: Drop legacy platform data for dra7 spinlock
  ARM: OMAP2+: Drop legacy platform data for am3 and am4 spi
  ARM: OMAP2+: Drop legacy platform data for am3 and am4 dcan
  ARM: OMAP2+: Drop legacy platform data for dra7 dcan
  ARM: OMAP2+: Drop legacy platform data for am3 adc_tsc
  ARM: OMAP2+: Drop legacy platform data for am4 adc_tsc
  ARM: OMAP2+: Drop legacy platform data for am3 and am4 rtc
  ARM: OMAP2+: Drop legacy platform data for am3 and am4 elm
  ARM: OMAP2+: Drop legacy platform data for omap4 elm
  ARM: OMAP2+: Drop legacy platform data for dra7 elm
  ARM: OMAP2+: Drop legacy platform data for am3 lcdc

 arch/arm/boot/dts/am33xx-l4.dtsi              |  12 -
 arch/arm/boot/dts/am437x-l4.dtsi              |  19 +-
 arch/arm/boot/dts/am43x-epos-evm.dts          |   4 +
 arch/arm/boot/dts/dra7-l4.dtsi                |   5 -
 arch/arm/boot/dts/omap4-l4.dtsi               |   2 -
 arch/arm/boot/dts/omap5-l4.dtsi               |   1 -
 .../omap_hwmod_33xx_43xx_common_data.h        |  21 --
 .../omap_hwmod_33xx_43xx_interconnect_data.c  |  76 ------
 .../omap_hwmod_33xx_43xx_ipblock_data.c       | 247 ------------------
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c    |  85 ------
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c    | 183 -------------
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c    |  85 ------
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c    |  43 ---
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c     | 236 -----------------
 14 files changed, 5 insertions(+), 1014 deletions(-)

-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
