Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940482D666
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tsvsaEaxYGvBfWen2S+y2rHxCEQb0fZ8RhYiHkM7Ciw=; b=f0izGMJeQJVoPk
	qwWMyx+5157+XnhYDglF4+EC3pG8pUqFcaWN15usiGReffYa/GAs6jl8H4DAfRmYQE8zR5hbyh7TJ
	KaEXmdMZ1EB2uFsvVihMl7OgY/mP1eHlhhL3XT/h4I2qb5vn7yJUR4R4a5HuQxKJrmx9XDqna8O4a
	21maOiMbNLOuUrJOlFxCr3TefBr71vFAQV9V3IjCzGAR+AC2HIOnZh6GJjKbpTdMOEj6IEj1ZIEkc
	9iKDej7Wt/o/o6gGZ8jg9ZqaNt00Fbwb0w9EQVlYAZ3N+ruoVsTOWJt/Zwb5a+jRgcn8z779XSVz2
	uUtENIt/NlV0Y6cj88oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVt4p-0001bn-FR; Wed, 29 May 2019 07:32:47 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVt4d-0001bP-7Y
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:32:41 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id E0DB18027;
 Wed, 29 May 2019 07:32:51 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: arm@kernel.org
Subject: [GIT PULL] mmc voltage and boot issue fixes for omaps for v5.2
Date: Wed, 29 May 2019 00:32:27 -0700
Message-Id: <pull-1559115102-965591@atomide.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_003239_681888_1268661A 
X-CRM114-Status: GOOD (  13.07  )
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.2/fixes-rc2

for you to fetch changes up to 4ee23cd76c0ce8622976b3da0e2bc89e6d94f6d4:

  Merge branch 'omap-for-v5.2/ti-sysc' into fixes (2019-05-20 08:33:03 -0700)

----------------------------------------------------------------
Fixes for omap variants for dra7 mmc voltage and boot issues

This series contains dra7 mmc voltage fixes, and fixes to the recent
changes to probe devices with device tree data insteas of legacy
platform data:

- Two fixes for dra7 mmc that needs 1.8V mode disabled as in case of a
  reset, the bootrom will try to access the mmc card at 3.3V potentially
  damaging the card

- Two regression fixes for am335x d_can. We must allow devices with no
  control registers for ti-sysc interconnect target module driver for
  at least d_can, and we remove the incorrect control registers for
  d_can. And we must configure the osc clock for d_can as otherwise
  register access may fail depending on the bootloader version

- Four regression fixes for dra7 variant dts files to tag rtc and usb4
  as disabled for dra71x and dra76x. These SoC variants do not have
  these devices, and got accidentally enabled when the L4 interconnect
  got defined in the dra7-l4.dtsi for the dra7 SoC family

----------------------------------------------------------------
Faiz Abbas (2):
      ARM: dts: am57xx-idk: Remove support for voltage switching for SD card
      ARM: dts: dra76x: Update MMC2_HS200_MANUAL1 iodelay values

Keerthy (4):
      ARM: dts: dra76x: Disable rtc target module
      ARM: dts: dra76x: Disable usb4_tm target module
      ARM: dts: dra71x: Disable rtc target module
      ARM: dts: dra71x: Disable usb4_tm target module

Tony Lindgren (5):
      ARM: dts: Configure osc clock for d_can on am335x
      bus: ti-sysc: Handle devices with no control registers
      Merge branch 'am5-sdio-fixes' into fixes
      Merge branch 'fixes-dra7' into fixes
      Merge branch 'omap-for-v5.2/ti-sysc' into fixes

 arch/arm/boot/dts/am33xx-l4.dtsi          | 14 +++++------
 arch/arm/boot/dts/am437x-l4.dtsi          |  4 ----
 arch/arm/boot/dts/am57xx-idk-common.dtsi  |  1 +
 arch/arm/boot/dts/dra7-l4.dtsi            |  2 +-
 arch/arm/boot/dts/dra71-evm.dts           |  2 +-
 arch/arm/boot/dts/dra71x.dtsi             | 17 +++++++++++++
 arch/arm/boot/dts/dra76x-mmc-iodelay.dtsi | 40 +++++++++++++++----------------
 arch/arm/boot/dts/dra76x.dtsi             |  8 +++++++
 drivers/bus/ti-sysc.c                     | 23 +++++++++---------
 9 files changed, 65 insertions(+), 46 deletions(-)
 create mode 100644 arch/arm/boot/dts/dra71x.dtsi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
