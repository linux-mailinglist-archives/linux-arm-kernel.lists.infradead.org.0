Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C05E18E7AE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 09:59:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rR/ZweCIN09qL04cDcMJdgtkQEOxfFKuQWJb9VELOHA=; b=l5EViHfgZlmBOE
	qAKKj5Cr3F81v/xoUVUdhYq1zHT/E5nerZ8z5JjGU2xSqgcf/QLDoQJs/P5upDejKCcaGscTzQJb0
	zWbIkaA++qHHsXh1FfSpAvSLQpkB8P92+sbLzWAbLboSLHiHqdmInS3pyYnMLHsV6asusWLh2auoB
	noijeYAYkytU95WSGgCiNGGPQPw2+1ufIpzu0OZjPrAKmDozBXSiylNo7MDlhoCUehpZgPMFDmh4Z
	lZOpp0mdGa+QhhCw6You6dIXbfhaEG9QXIDg/dZiTPKDQdOPPp3R/pZ/W2HXFm5VOWHzQ82NfpkW4
	5CnqBtynasw5BTto1PBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFwST-0000n7-PK; Sun, 22 Mar 2020 08:59:49 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFwSK-0000mj-VB
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 08:59:42 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 26DDB24000B;
 Sun, 22 Mar 2020 08:59:32 +0000 (UTC)
Date: Sun, 22 Mar 2020 09:59:31 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: DT for 5.7
Message-ID: <20200322085931.GA208770@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_015941_140855_A5053763 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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

Very few DT updates this cycle. I've filled in the google doc as you
requested.

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.7-dt

for you to fetch changes up to b8c2c052de210d23d83eb178fa030b541ca51842:

  ARM: dts: at91: sama5d27_wlsom1_ek: add USB device node (2020-03-20 23:58:14 +0100)

----------------------------------------------------------------
AT91 DT for 5.7

 - Enable watchdog on sam9x60
 - Correct sama5d4/2 RTC compatibles
 - Add i2c gpio pinctrl to allow i2c recovery

----------------------------------------------------------------
Alexandre Belloni (2):
      ARM: dts: at91: sama5d2: use correct rtc compatible
      ARM: dts: at91: sama5d4: use correct rtc compatible

Cristian Birsan (1):
      ARM: dts: at91: sama5d27_wlsom1_ek: add USB device node

Eugen Hristev (2):
      ARM: dts: at91: sam9x60: add watchdog node
      ARM: dts: at91: sam9x60ek: enable watchdog node

Kamel Bouhara (3):
      ARM: dts: at91: sama5d3: add i2c gpio pinctrl
      ARM: dts: at91: sama5d4: add i2c gpio pinctrl
      ARM: dts: at91: sama5d2: add i2c gpio pinctrl

Rob Herring (1):
      ARM: dts: at91: Kill off "simple-panel" compatibles

 arch/arm/boot/dts/at91-dvk_su60_somc_lcm.dtsi |  2 +-
 arch/arm/boot/dts/at91-sam9x60ek.dts          |  5 ++++
 arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts | 12 +++++++++
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts     | 33 ++++++++++++++++++++++---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts   | 33 ++++++++++++++++++++++---
 arch/arm/boot/dts/at91-sama5d4_ma5d4evk.dts   |  2 +-
 arch/arm/boot/dts/at91sam9n12ek.dts           |  2 +-
 arch/arm/boot/dts/at91sam9x5dm.dtsi           |  2 +-
 arch/arm/boot/dts/sam9x60.dtsi                |  8 ++++++
 arch/arm/boot/dts/sama5d2.dtsi                |  2 +-
 arch/arm/boot/dts/sama5d3.dtsi                | 33 ++++++++++++++++++++++---
 arch/arm/boot/dts/sama5d4.dtsi                | 35 ++++++++++++++++++++++++---
 12 files changed, 151 insertions(+), 18 deletions(-)

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
