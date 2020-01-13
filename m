Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E16F139590
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 17:16:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KhoaPKvmtAbLjy9pNIUptsib36WE/Ynpsk+G1Wy08Jw=; b=j4VpFMV2ktgzuA
	8DUNZmAJUvgwwFN+yE+KH6x8/50wsYAXPzy9HZo4HsRst0LDUQMbXo7OXeygflnOOl/niELYfQoMs
	/Qh+WJPnBRGBO6qGPQdJejV19wCP+lMef97CD74Gb6Vx8z/vNAnnf+rerErAyCYw7e9QBksymfpic
	0dfT+oLK2Kf5WLj4mpKXODik2oglQjVK+Lfx8QbNoeO4Ls8a/DkTaxiiu9RKFg62uX+UE+2UOurxR
	O5nvz+9zHR1oXy4m7wi1ekerUJMxdIbHsfNWfTJtsgv+Pj64TOh/3o53o4pm5aZrKDs1+mzyffIW5
	hgTwnHcd/6iMRi3CO3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir2OH-000506-MF; Mon, 13 Jan 2020 16:16:33 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir2O8-0004z8-41
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 16:16:29 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 362C7C0010;
 Mon, 13 Jan 2020 16:16:12 +0000 (UTC)
Date: Mon, 13 Jan 2020 17:16:12 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: SoC for 5.6
Message-ID: <20200113161612.GA1358903@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_081627_298117_EAD38A33 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


The Kconfig option for sam9x60 is being separated from the other
at91sam9.

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.6-soc

for you to fetch changes up to d9b8e21eae5d032a217c382520a72e5a51a08440:

  ARM: at91: Documentation: add sam9x60 product and datasheet (2020-01-10 23:40:31 +0100)

----------------------------------------------------------------
AT91 SoC for 5.5

 - Document new SoC: sam9x60
 - rework sam9x60 Kconfig option

----------------------------------------------------------------
Claudiu Beznea (9):
      ARM: at91: Kconfig: add sam9x60 pll config flag
      ARM: at91: Kconfig: add config flag for SAM9X60 SoC
      ARM: at91: pm: move SAM9X60's PM under its own SoC config flag
      drivers: soc: atmel: move sam9x60 under its own config flag
      power: reset: Kconfig: select POWER_RESET_AT91_RESET for sam9x60
      drivers: soc: atmel: select POWER_RESET_AT91_SAMA5D2_SHDWC for sam9x60
      ARM: debug-ll: select DEBUG_AT91_RM9200_DBGU for sam9x60
      ARM: at91: pm: use SAM9X60 PMC's compatible
      ARM: at91: pm: use of_device_id array to find the proper shdwc node

Nicolas Ferre (1):
      ARM: at91: Documentation: add sam9x60 product and datasheet

 Documentation/arm/microchip.rst |  6 ++++++
 arch/arm/Kconfig.debug          |  6 +++---
 arch/arm/mach-at91/Kconfig      | 24 ++++++++++++++++++++++--
 arch/arm/mach-at91/Makefile     |  1 +
 arch/arm/mach-at91/at91sam9.c   | 18 ------------------
 arch/arm/mach-at91/pm.c         | 11 +++++++++--
 arch/arm/mach-at91/sam9x60.c    | 34 ++++++++++++++++++++++++++++++++++
 drivers/power/reset/Kconfig     |  4 ++--
 drivers/soc/atmel/soc.c         |  5 +++--
 9 files changed, 80 insertions(+), 29 deletions(-)
 create mode 100644 arch/arm/mach-at91/sam9x60.c

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
