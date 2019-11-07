Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA75F3B3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 23:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8f2hQ/LXDJlrTejjCgobuQuElrTKQjZCU9yeWTDqJI8=; b=HFTiuvWXymrGpJ
	YFOV4ddvRh9s5pMmWslcvGCUJ6s98ROQARjbW3uADio76SqgPwXg0bOyZBu9XRj9HRPeVZBc2TZP7
	RM65CcI9BNll7kdfA0TBKrNOR0EQKfZVRuVLRjN3vN160C+kry58LCu5OSoXV+WGLjIDizg0EPd6R
	SkB/qL/Vg+hHTOI5BMfViOQWPnKc90zE64v9PjRMIgdHcuHcq1HpEd4bjoT68F8xpMcbCxEWQJqTw
	f3s9G95iKu7EPZ9uWKI+x81QJbrp8C93kvN6gNBEAjqZifJ1Xgc8bGie8SCnNOqZCse620j6tcmq/
	U86vuA1FMcJ/nOa/zDVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSq5Z-0001uP-S2; Thu, 07 Nov 2019 22:17:13 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSq5T-0001tb-9U
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 22:17:09 +0000
X-Originating-IP: 92.184.100.203
Received: from localhost (unknown [92.184.100.203])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id D0629240005;
 Thu,  7 Nov 2019 22:16:59 +0000 (UTC)
Date: Thu, 7 Nov 2019 23:16:44 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: Drivers for 5.5
Message-ID: <20191107221644.GA201884@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_141707_465062_95AC3DC1 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

A single new driver and a bit of churn this cycle.

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.5-drivers

for you to fetch changes up to c3277f8ee8cdadf011b8390dfdb4c44ecfaa1a7a:

  soc: at91: Add Atmel SFR SN (Serial Number) support (2019-11-07 22:33:10 +0100)

----------------------------------------------------------------
AT91 drivers for 5.5

 - a new driver exposing the serial number registers through nvmem
 - a few documentation and definition changes

----------------------------------------------------------------
Kamel Bouhara (1):
      soc: at91: Add Atmel SFR SN (Serial Number) support

Nicolas Ferre (1):
      ARM: at91: Documentation: update the sama5d3 and armv7m datasheets

Tudor Ambarus (2):
      memory: atmel-ebi: move NUM_CS definition inside EBI driver
      memory: atmel-ebi: switch to SPDX license identifiers

 Documentation/arm/microchip.rst         |  4 +-
 drivers/memory/atmel-ebi.c              | 11 ++--
 drivers/soc/atmel/Kconfig               | 11 ++++
 drivers/soc/atmel/Makefile              |  1 +
 drivers/soc/atmel/sfr.c                 | 99 +++++++++++++++++++++++++++++++++
 include/linux/mfd/syscon/atmel-matrix.h |  1 -
 6 files changed, 118 insertions(+), 9 deletions(-)
 create mode 100644 drivers/soc/atmel/sfr.c

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
