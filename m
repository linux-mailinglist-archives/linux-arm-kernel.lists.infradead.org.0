Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE90C11CD15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 13:24:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qliqtZATns4ovYXzJ36EGnHyn84yyG2K+aE6WI8DhBQ=; b=fhwb1VP3MEutHS
	VIhiN31t5nUv9B8wFbQwsCsnM5MXKG5NUwrHxjXRP+TtpTbD9WXyz5DtacW8+LUo6DPVukmWkmrsu
	b4BI0dKu/6cbqCcn7opLx0zx2LoYRVN7AL/d/NytMisjTBiue7lL5lMmv154RsOYEj6i673cuxftb
	N7rlqRWDaAZ4MhWrGGKgFCS0BPXaElIa4TNllE18xO8J0Do7ZIABekjzCkLzMKyiY9+f3YPAlFoe/
	L4bxFvdi5BlSgZ58r/teX1VRMkWa0m2BhOerwL1i0aUjbuIWZ5mYB+dcw4Nkzu1T28UC2PSfPtVvH
	f2gkRmJL/GgEWtHAQrMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifNWa-0000Sd-G4; Thu, 12 Dec 2019 12:24:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifNWP-0000Ry-So
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 12:24:47 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDAB92073D;
 Thu, 12 Dec 2019 12:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576153485;
 bh=1UJMcxaQY0J4yVFLDK0ZzDGXxaz3aKR4hZZ4WOefTdg=;
 h=Date:From:To:Cc:Subject:From;
 b=ME1xMH8sXdZoM0BXtjtGUEeqBT5Qj3NJHFYqSXCe1Ej7hCMd7IMK6Q409OQ8CUIDn
 Y5UP2ZWGKh25n4O0gK6GXAZ11g1TRVBBNGcYiaWvyVuAQXY3wECWBo8tmBB7HrfBYF
 gAYenHCFooHRwiCwTrYNp/jjhWnqFIVEpEP0ROyI=
Date: Thu, 12 Dec 2019 20:24:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.5
Message-ID: <20191212122427.GK15858@dragon>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_042445_959034_EC93D69E 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.5

for you to fetch changes up to 7947e3238b64c00c396e6f5738f94c4d653bc6a2:

  ARM: imx: Fix boot crash if ocotp is not found (2019-12-12 10:44:28 +0800)

----------------------------------------------------------------
i.MX fixes for 5.5:
 - Add missing jedec,spi-nor compatible for imx6ul-14x14-evk board,
   so that SPI NOR device can be probed.
 - Fix power button of E60K02 board by removing LDORTC2 regulator.
 - A couple of fixes on serial number support of i.MX6ULL/ULZ SoCs to
   remove the boot regression caused by 8267ff89b713 ("ARM: imx: Add
   serial number support for i.MX6/7 SoCs").
 - A couple of fixes on LS1028A SoC TMU regarding to calibration data
   and reboot register configuration.
 - Fix a regression seen on imx6ul-evk board by marking always-on for
   the regulator that is shared by many peripherals.
 - Explicitly restore CONFIG_DEBUG_FS in imx_v6_v7_defconfig.

----------------------------------------------------------------
Andreas Kemnade (1):
      ARM: dts: e60k02: fix power button

Christoph Niedermaier (1):
      ARM: imx: Correct ocotp id for serial number support of i.MX6ULL/ULZ SoCs

Leonard Crestez (3):
      ARM: dts: imx6ul-evk: Fix peripheral regulator
      ARM: imx_v6_v7_defconfig: Explicitly restore CONFIG_DEBUG_FS
      ARM: imx: Fix boot crash if ocotp is not found

Michael Walle (2):
      arm64: dts: ls1028a: fix typo in TMU calibration data
      arm64: dts: ls1028a: fix reboot node

Stefan Roese (1):
      ARM: dts: imx6ul: imx6ul-14x14-evk.dtsi: Fix SPI NOR probing

 arch/arm/boot/dts/e60k02.dtsi                  |  5 -----
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi        | 28 +++++++++++++++++++-------
 arch/arm/configs/imx_v6_v7_defconfig           |  1 +
 arch/arm/mach-imx/cpu.c                        |  8 +++++---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 10 +++++++--
 5 files changed, 35 insertions(+), 17 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
