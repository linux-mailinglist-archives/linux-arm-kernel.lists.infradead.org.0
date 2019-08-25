Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A89309C619
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 22:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fzmmS/HshtDColxCoxxXkzj4Iarj5wRjJh1MoGERdwQ=; b=bHtFXGXHdRxSkH
	snIpUo86o+qd4tg/38rH2/x+qTV0QrWJwi0R5gXbaT7odvWAGef05zMY2We9nkKIFDZ4yficGckzI
	BVupmOIBbugZZucLlmcrkk/0oj/fwI8qkHKZnMxRUpr4358PounGhVCUjatAKi2Cijk1SGDIDxtUs
	sxc+qCNFFnwRvBIDPxtPkJ/fbg/MSsSbISJeCQt3PniAYkD7kEZILWWm9yYw70WDMAYYZzDjeZXQG
	FHqhtUqWY5CnPMCms3YL/fA2y/BCR6IQWew3tianx5PHNXcj3iP1ag0+N0Ijo8NBgck3BC7LnRXAI
	L5bJBoVx2UoUd/cjM2Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1zBr-0002vR-1n; Sun, 25 Aug 2019 20:32:43 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1zBg-0002ua-9L
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 20:32:34 +0000
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id EA8E8200003;
 Sun, 25 Aug 2019 20:32:22 +0000 (UTC)
Date: Sun, 25 Aug 2019 22:32:22 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: SoC for 5.4
Message-ID: <20190825203222.GA22800@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_133232_482709_CCC269BF 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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

Hello,

A non urgent fix for the generated header in mach-at91 and mostly
MAINTAINERS updates.

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.4-soc

for you to fetch changes up to 2cb831e0f152e483ab797b44787a4ff426267fbc:

  mailmap: map old company name to new one @microchip.com (2019-08-23 21:53:40 +0200)

----------------------------------------------------------------
AT91 SoC for 5.4

 - MAINTAINERS updates
 - a generated headers parallel build fix

----------------------------------------------------------------
Masahiro Yamada (1):
      ARM: at91: move platform-specific asm-offset.h to arch/arm/mach-at91

Nicolas Ferre (3):
      MAINTAINERS: at91: Collect all pinctrl/gpio drivers in same entry
      MAINTAINERS: at91: remove the TC entry
      mailmap: map old company name to new one @microchip.com

 .mailmap                        |  1 +
 MAINTAINERS                     | 14 +-------------
 arch/arm/mach-at91/.gitignore   |  1 +
 arch/arm/mach-at91/Makefile     |  5 +++--
 arch/arm/mach-at91/pm_suspend.S |  2 +-
 5 files changed, 7 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm/mach-at91/.gitignore

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
