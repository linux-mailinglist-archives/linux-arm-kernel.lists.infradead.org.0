Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F41E10B2F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 17:06:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8gbDblhj1m4ZSpTlz4/P3DHF1Nb+HlHmmowfyFakqi4=; b=Lu+ZlewqoADvHq
	7aCyEuvPFYc180YHiTj2uqkH04zULNlOy9Vhkj2D1OAPJ0tb+DGXxlgPPcXOyjCdJ+alImvTabAFo
	UEfMwqEEGwu3YEdaDyKFHG3XK1tmSZwIx2dntG/A3vYkydRsU2hXRpXxost65Tz7Lg9EcGb8Iym5X
	CoPgwkGkfnHKhKcdoKmgWs26CP4mtDoqU1o5niNoQljrhxupPcelLXJYhlxf4mrajS6USk+kVS3OB
	C7VRFLX6m7t6j+OikTiKKOUQWIWVorr8wBkRDLMwrTzAsXJ6qmB4IXXjvbJVmYE2EoMG1QoBo/Y57
	POZi0u3f9yCb4BBZZwVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZzq0-0004YJ-VW; Wed, 27 Nov 2019 16:06:44 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZzpr-0004Xi-RF
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 16:06:37 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 56AC38102;
 Wed, 27 Nov 2019 16:07:11 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] few omap dts fixes for v5.5 merge window
Date: Wed, 27 Nov 2019 08:06:27 -0800
Message-Id: <pull-1574870758-237468@atomide.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_080635_921250_A28DC17D 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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

The following changes since commit abb0e36b434d784864fe0e4d5dedd17f4d72f3e3:

  ARM: dts: logicpd-torpedo: Disable USB Host (2019-11-11 13:03:06 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/dt-fixes-merge-window-signed

for you to fetch changes up to 3e5c3c41ae925458150273e2f74ffbf999530c5f:

  ARM: dts: Fix sgx sysconfig register for omap4 (2019-11-25 07:40:01 -0800)

----------------------------------------------------------------
Device tree fixes for omap variants for for v5.5 merge window

This series of changes contains fixes for few SoC and board specific
issues that would be good to have merged for v5.5-rc1:

- Fix incorrect MMC card detection polarity for omap3-tao3530

- Fix wrong am57xx-beagle-x15 pinmux named states for eMMC

- Fix dra7 cpsw mdio clock that causes wrong speed

- Fix vcsi for droid4 so it won't get turned off after init

- Fix rev and sysconfig register offsets for omap4 sgx so it can idle

Then there are also two minor late changes to logicpd-torpedo-baseboard
to configure 1-wire HDQ for battery stats, and remove out of date
workaround comments no longer needed.

----------------------------------------------------------------
Adam Ford (2):
      ARM: dts: logicpd-torpedo-baseboard:  Enable HDQ
      ARM: dts: logicpd-torpedo: Remove unnecessary notes/comments

Faiz Abbas (1):
      ARM: dts: am57xx-beagle-x15: Update pinmux name to ddr_3_3v

Grygorii Strashko (1):
      ARM: dts: dra7: fix cpsw mdio fck clock

Jarkko Nikula (1):
      ARM: dts: omap3-tao3530: Fix incorrect MMC card detection GPIO polarity

Tony Lindgren (2):
      ARM: dts: Fix vcsi regulator to be always-on for droid4 to prevent hangs
      ARM: dts: Fix sgx sysconfig register for omap4

 arch/arm/boot/dts/am57xx-beagle-x15-revb1.dts        |  2 +-
 arch/arm/boot/dts/am57xx-beagle-x15-revc.dts         |  2 +-
 arch/arm/boot/dts/dra7-l4.dtsi                       |  2 +-
 arch/arm/boot/dts/logicpd-torpedo-37xx-devkit-28.dts |  1 -
 arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi     | 13 ++++++++++++-
 arch/arm/boot/dts/motorola-cpcap-mapphone.dtsi       |  4 ++--
 arch/arm/boot/dts/omap3-tao3530.dtsi                 |  2 +-
 arch/arm/boot/dts/omap4.dtsi                         |  4 ++--
 8 files changed, 20 insertions(+), 10 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
