Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5058132D0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 18:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5TfDeY9hryb6P1bGFezMiEL1smbZahYyjoblKHp3JSs=; b=s1AWTZc9XZfa6T
	9yP4/hmfhddeiCx2UQCRlXFDatxg+3ePu3fpQAt5jmIjutAP0FrtByYjv/wDxl2hRoiDHy1IrWlYt
	RbKsKy41BLTSDtrjNYNfDYqNBxn8qkcrZD2Jrz2zfPX8i+X04Kg8AQC8j2aQu+dtDuBN+MyWw0Ljd
	A0m0BjHwWO20eZtzps57FEClY0PdnY7MpsRZYKf3Fw0xNu9lUj82Hy/ZNmrHVIWiL3Ew01cIuVDk0
	D9HzitWdVBSmO+dIzBfZVYr+nkTMIs+kwxLfKzut38h0KH4Uw6V+fJsqER1E1sP/4MvdVmblipC8X
	dsdXYnTOXakF9Z64qGJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosgI-0006v2-I0; Tue, 07 Jan 2020 17:30:14 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosfw-0006uT-Un
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 17:29:54 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 0A9788022;
 Tue,  7 Jan 2020 17:30:28 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] few omap fixes for v5.5-rc cycle
Date: Tue,  7 Jan 2020 09:29:41 -0800
Message-Id: <pull-1578418121-413328@atomide.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_092953_031851_5036EA57 
X-CRM114-Status: UNSURE (   7.96  )
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit e709ed70d122e94cb426b1e1f905829eae19a009:

  bus: ti-sysc: Fix missing reset delay handling (2019-12-12 08:20:10 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/fixes-rc5

for you to fetch changes up to 03729cfa0d543bc996bf959e762ec999afc8f3d2:

  soc: ti: wkup_m3_ipc: Fix race condition with rproc_boot (2019-12-17 15:18:36 -0800)

----------------------------------------------------------------
Fixes for omaps for v5.5-rc cycle

Here are few fixes for v5.5-rc cycle:

- Two corner case fixes related to ti-sysc driver clock issues

- Fixes for am57xx dts for pcie gpios

- Beagle-x15 regulator dts fix

- Fix for wkup_m3_ipc driver race

----------------------------------------------------------------
Dave Gerlach (1):
      soc: ti: wkup_m3_ipc: Fix race condition with rproc_boot

Kishon Vijay Abraham I (3):
      ARM: dts: am57xx-beagle-x15/am57xx-idk: Remove "gpios" for  endpoint dt nodes
      ARM: dts: am571x-idk: Fix gpios property to have the correct  gpio number
      ARM: dts: beagle-x15-common: Model 5V0 regulator

Tony Lindgren (2):
      ARM: OMAP2+: Fix ti_sysc_find_one_clockdomain to check for to_clk_hw_omap
      bus: ti-sysc: Fix iterating over clocks

 arch/arm/boot/dts/am571x-idk.dts                |  6 +-----
 arch/arm/boot/dts/am572x-idk-common.dtsi        |  4 ----
 arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi | 25 +++++++++++++++++++++----
 arch/arm/mach-omap2/pdata-quirks.c              |  6 +++++-
 drivers/bus/ti-sysc.c                           | 10 ++++++++--
 drivers/soc/ti/wkup_m3_ipc.c                    |  4 ++--
 6 files changed, 37 insertions(+), 18 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
