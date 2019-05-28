Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 609F82BF40
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CEl2l2I1agKPpDz9ePA9P3qmJmT9hluCyo1wcjhlkf8=; b=l+i5r3u0c4CjJP
	6ZvIbKFWk7HDgN3PfpIG9b32W3zDDGsVH/Nk9ic2JnXCuuxRTOHJnEIhWeEZl3ZuP0HsjvzEzCRs3
	h7961ZtgdihSLCFTtoNRTPAxJKQ+MrVmLwOY4Fo3MPMRJdCCN03uxW3EfHWHR0ZLoU1vF7cM4GIw0
	+0QE64PmGqGz4MrSZW5N8ZUFp6+ihJXQLBRsrjIkjtsxWCJMJWJJPDkeQstJcmMoZY1UbRMPPwg0P
	wNhXeCuEqBRq0B0p3nQK44uJWXmY8mRwW25FfipTJi7OxP3xe2CpoUXImJ9WsyNIuJ8ZuIroiVH5S
	c0cZa2anEpxrnKQM2wKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVXR-00060x-R1; Tue, 28 May 2019 06:24:45 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVX1-0005iK-B6
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:24:20 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 1E2DD80F3;
 Tue, 28 May 2019 06:24:38 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCHv2 00/13] ti-sysc driver changes to drop custom hwmods property
Date: Mon, 27 May 2019 23:24:01 -0700
Message-Id: <20190528062414.27192-1-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_232419_424486_8418FF22 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, devicetree@vger.kernel.org,
 Faiz Abbas <faiz_abbas@ti.com>, Keerthy <j-keerthy@ti.com>,
 Suman Anna <s-anna@ti.com>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here are changes to improve ti-sysc driver to the point where we can
finally drop the custom hwmods property for most cases. This series
drops hwmods property only for omap4 UART and MMC as those can be
tested with core retention idle.

I'll be posting more patches for dropping hwmods properties as they
get tested.

Regards,

Tony

Changes since v1:

- Repost the series against v5.2-rc1 as the first patch in the series
  got accidentally left out for patch "bus: ti-sysc: Add support for
  missing clockdomain handling"


Tony Lindgren (13):
  bus: ti-sysc: Add support for missing clockdomain handling
  bus: ti-sysc: Support 16-bit writes too
  bus: ti-sysc: Make OCP reset work for sysstatus and sysconfig reset
    bits
  bus: ti-sysc: Allow QUIRK_LEGACY_IDLE even if legacy_mode is not set
  bus: ti-sysc: Enable interconnect target module autoidle bit on enable
  bus: ti-sysc: Handle clockactivity for enable and disable
  bus: ti-sysc: Handle swsup idle mode quirks
  bus: ti-sysc: Set ENAWAKEUP if available
  bus: ti-sysc: Add support for disabling module without legacy mode
  bus: ti-sysc: Do rstctrl reset handling in two phases
  bus: ti-sysc: Detect uarts also on omap34xx
  ARM: dts: Drop legacy custom hwmods property for omap4 uart
  ARM: dts: Drop legacy custom hwmods property for omap4 mmc

 arch/arm/boot/dts/omap4-l4.dtsi       |   9 -
 arch/arm/mach-omap2/omap_hwmod.c      |  39 +---
 arch/arm/mach-omap2/pdata-quirks.c    |  60 +++++
 drivers/bus/ti-sysc.c                 | 309 ++++++++++++++++++++------
 include/linux/platform_data/ti-sysc.h |   9 +
 5 files changed, 314 insertions(+), 112 deletions(-)

-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
