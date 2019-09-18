Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D9CB66C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=paXOOFj6uP80lO3wwJeWjjKFy5QxIYeXyUJcZNThjbk=; b=d61gxm3TUhQSr3
	H2KlIOwZSFKUlw8ZsYoFcXnEhoQr3ueCCv2iFbCBaxXiUzh37o51sRiej2Tka9vxibljzNmeIbHgX
	8vL+81lpLwuZ+Bv7fBYC1eUwOy9N29GHdg39+3jcuMIYldQ0meRVMLXrqcdo75Rni2WAQtfzdLUvq
	3NuaAKmdbhhe4Lbe7VG7chdG1RB3Bx8+70HILCA4mIFo21F6HbTjFLE7n2ZopmRK10rGhlK4NVr5e
	ApEfx0EsQFWw529I5SdWZ/llxCmvCXLxfe8Pf0D6IhAvHCFkpf3IG7s8G2QDy1IGCVyUQvIgg2/9A
	61slnTzcrTgL1Wq4guyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbbP-0003NO-Qz; Wed, 18 Sep 2019 15:10:43 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbbC-0003Mi-O9
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:10:32 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 44547806C;
 Wed, 18 Sep 2019 15:11:00 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] fixes for omaps for v5.4 merge window
Date: Wed, 18 Sep 2019 08:10:24 -0700
Message-Id: <pull-1568819401-72461@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_081030_830298_1C1BE85D 
X-CRM114-Status: UNSURE (   8.45  )
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

The following changes since commit 4a65bbb9109ed7edd4b6ed7168ced48abb8561a2:

  soc: ti: pm33xx: Make two symbols static (2019-08-13 05:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/fixes-5.4-merge-window

for you to fetch changes up to a4c8723a162e6244fb01944fbf446750575dba59:

  bus: ti-sysc: Remove unpaired sysc_clkdm_deny_idle() (2019-09-06 12:57:46 -0700)

----------------------------------------------------------------
Fixes for omap variants

Few fixes for ti-sysc interconnect target module driver for no-idle
quirks that caused nfsroot to fail on some dra7 boards.

And let's fixes to get LCD working again for logicpd board that got
broken a while back with removal of panel-dpi driver. We need to now
use generic CONFIG_DRM_PANEL_SIMPLE instead.

----------------------------------------------------------------
Adam Ford (4):
      ARM: omap2plus_defconfig: Fix missing video
      ARM: dts: logicpd-torpedo-baseboard: Fix missing video
      ARM: dts: am3517-evm: Fix missing video
      ARM: dts: logicpd-som-lv: Fix i2c2 and i2c3 Pin mux

Tony Lindgren (3):
      bus: ti-sysc: Fix clock handling for no-idle quirks
      bus: ti-sysc: Fix handling of invalid clocks
      bus: ti-sysc: Remove unpaired sysc_clkdm_deny_idle()

 arch/arm/boot/dts/am3517-evm.dts                 | 23 ++---------
 arch/arm/boot/dts/logicpd-som-lv.dtsi            | 26 ++++++------
 arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi | 37 +++--------------
 arch/arm/configs/omap2plus_defconfig             |  1 +
 arch/arm/mach-omap2/pdata-quirks.c               |  4 +-
 drivers/bus/ti-sysc.c                            | 52 +++++++++++++++++-------
 6 files changed, 64 insertions(+), 79 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
