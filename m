Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DEE18E7B2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 10:01:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zwnrC4c/6P2ugcu3QmA1AAA+3aXO+z5xr0joHKQKLQk=; b=uXEpLcNbYmaLOC
	tUiug2/H7peRDt+9vywXlA4Ls1+2bHHF5b9/iSFejkfI99wbCeAFwjWkgwtzYaft8TwetN4oRLsnM
	RUl0tWgWn7GwhSXRUY7fiPQDHlHyySdI+ODHt3Xi+FmZE1SjmcidROH7dGF+vDCZ8X3R781muDOUR
	nU/1U8By+UCwl4GlIa7fLMp4tfelPrGjq3ShH87PPy2rK4SVEv/ic/o9eZLSgJktwi7AO8j7hGVGq
	r0s5aItxFZK0WJlqObKFsjv2cye9tDqkw7cA263gXcUXxtJfiv2m1V1fMT1wgUAOL5cpSJTMFjCC+
	+17We2TsGX2XLdwXuCnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFwUD-0002IK-Ec; Sun, 22 Mar 2020 09:01:37 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFwU2-0002Ho-LR
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 09:01:28 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 70DCAC0005;
 Sun, 22 Mar 2020 09:01:16 +0000 (UTC)
Date: Sun, 22 Mar 2020 10:01:16 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: SoC for 5.7
Message-ID: <20200322090116.GA208895@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_020126_840336_D0C7BBCD 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

A bigger update than usual, reworking the PM code to support sam9x60.
I've filled in the google doc as you requested.

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.7-soc

for you to fetch changes up to bb1a0e87e1c54cd884e9b92b1cec06b186edc7a0:

  ARM: at91: pm: add quirk for sam9x60's ulp1 (2020-02-18 21:47:54 +0100)

----------------------------------------------------------------
AT91 SoC for 5.7

 - Rework PM to support sam9x60

----------------------------------------------------------------
Claudiu Beznea (8):
      ARM: at91: pm: use proper master clock register offset
      ARM: at91: pm: revert do not disable/enable PLLA for ULP modes
      ARM: at91: pm: add macros for plla disable/enable
      ARM: at91: pm: add pmc_version member to at91_pm_data
      ARM: at91: pm: s/sfr/sfrbu in pm_suspend.S
      clk: at91: move sam9x60's PLL register offsets to PMC header
      ARM: at91: pm: add plla disable/enable support for sam9x60
      ARM: at91: pm: add quirk for sam9x60's ulp1

Geert Uytterhoeven (1):
      ARM: at91: Drop unneeded select of COMMON_CLK

 arch/arm/mach-at91/Kconfig           |   1 -
 arch/arm/mach-at91/pm.c              |  35 ++++++-
 arch/arm/mach-at91/pm.h              |   2 +
 arch/arm/mach-at91/pm_data-offsets.c |   4 +
 arch/arm/mach-at91/pm_suspend.S      | 189 ++++++++++++++++++++++++++++++++---
 drivers/clk/at91/clk-sam9x60-pll.c   |  91 +++++++----------
 include/linux/clk/at91_pmc.h         |  23 +++++
 7 files changed, 270 insertions(+), 75 deletions(-)

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
