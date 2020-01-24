Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F46148F25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 21:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVP9R1WrY+z+iLbbSvecflWuk2UnNaXVmpDcPh36Eqs=; b=hJhvxK6Ix2cXGz
	5+XLzOxcAnQRLueYVZgrNm2+j7EfMeGvDavcV1G+Jp9bICKP/mvQbHDJqCKC1p2nAZ45zAINnWV38
	4LDGqK8MmfHKMrRNXmpB09/FjN164Wbre+sgrxy5lEkXjdMH+fMZuK9SKliPFy+VlZ9W486I6Wme+
	NwpFitMs9mVUIvcBUsbpCKjYaR7qeGcp4s25bLepYHQhdJmyhtvq+B6hgkjY2BlL0k1Fr7iYmMewi
	CXtvjOFosO6oBt64RZ8XeqicW6XUxR3POK+R2rOh0KWvhi3hbl/TvsQIBjhjBrzBctc+rCalz8GSa
	9kuY/bl0cExENtjLiy3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv5JE-0007l5-F3; Fri, 24 Jan 2020 20:12:04 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv5If-0007Yl-0b
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 20:11:30 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 6ACBF8150;
 Fri, 24 Jan 2020 20:12:11 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 2/3] ti-sysc changes for omap4 & 5 crypto
Date: Fri, 24 Jan 2020 12:11:23 -0800
Message-Id: <pull-1579896427-50330@atomide.com-2>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <pull-1579896427-50330@atomide.com>
References: <pull-1579896427-50330@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_121129_096324_96997D2E 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

The following changes since commit 9fc85a7124b5ff9ec24ad391f9994f89ae611313:

  Merge branch 'omap-for-v5.6/sdma' into omap-for-v5.6/ti-sysc-drop-pdata (2019-12-30 10:17:51 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/ti-sysc-drop-pdata-crypto-signed

for you to fetch changes up to 885d21e4956dd70fcd84ed653a8368c9729cfb3e:

  Merge branch 'omap-for-v5.6/ti-sysc-omap45-rng' into omap-for-v5.6/ti-sysc-drop-pdata (2020-01-23 08:38:34 -0800)

----------------------------------------------------------------
Late changes for omap secure accelerators for v5.6 merge window

A series of changes to configure secure accelerators for omap4 & 5
to finally get hardware random number generator working.

Apologies on a late pull request on these changes, but this pull
request could not be sent out earlier because of a dependency to
recent clock changes. This is based on earlier changes to drop omap
legacy platform data with Tero Kristo's for-5.6-ti-clk branch merged
in.

----------------------------------------------------------------
Benoit Parrot (2):
      clk: ti: dra7: add cam clkctrl data
      clk: ti: dra7: add vpe clkctrl data

Colin Ian King (1):
      dmaengine: ti: omap-dma: don't allow a null od->plat pointer to be dereferenced

Grygorii Strashko (1):
      clk: ti: dra7: fix parent for gmac_clkctrl

Peter Ujfalusi (1):
      dt-bindings: clock: Move ti-dra7-atl.h to dt-bindings/clock

Tony Lindgren (15):
      Merge branch 'omap-for-v5.6/sdma' into omap-for-v5.6/ti-sysc-drop-pdata
      clk: ti: omap5: Add missing AESS clock
      clk: ti: add clkctrl data dra7 sgx
      clk: ti: clkctrl: Fix hidden dependency to node name
      ARM: dts: Add missing omap4 secure clocks
      ARM: dts: Add missing omap5 secure clocks
      ARM: dts: Configure omap4 rng to probe with ti-sysc
      ARM: dts: Configure omap5 rng to probe with ti-sysc
      ARM: dts: Configure interconnect target module for omap4 sham
      ARM: dts: Configure interconnect target module for omap4 aes
      ARM: dts: Configure interconnect target module for omap4 des
      ARM: OMAP2+: Drop legacy platform data for omap4 aes
      ARM: OMAP2+: Drop legacy platform data for omap4 sham
      ARM: OMAP2+: Drop legacy platform data for omap4 des
      Merge branch 'omap-for-v5.6/ti-sysc-omap45-rng' into omap-for-v5.6/ti-sysc-drop-pdata

 .../devicetree/bindings/clock/ti-clkctrl.txt       |  11 +-
 .../devicetree/bindings/clock/ti/dra7-atl.txt      |   4 +-
 arch/arm/boot/dts/dra7-evm-common.dtsi             |   2 +-
 arch/arm/boot/dts/dra72-evm-common.dtsi            |   2 +-
 arch/arm/boot/dts/dra7xx-clocks.dtsi               |  14 +++
 arch/arm/boot/dts/motorola-mapphone-common.dtsi    |   5 +
 arch/arm/boot/dts/omap4-l4.dtsi                    |  49 +++++++-
 arch/arm/boot/dts/omap4.dtsi                       | 110 ++++++++++++-----
 arch/arm/boot/dts/omap44xx-clocks.dtsi             |  11 +-
 arch/arm/boot/dts/omap5-l4.dtsi                    |  20 ++-
 arch/arm/boot/dts/omap54xx-clocks.dtsi             |  10 +-
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c         | 135 ---------------------
 drivers/clk/ti/clk-44xx.c                          |  13 ++
 drivers/clk/ti/clk-54xx.c                          |  28 +++++
 drivers/clk/ti/clk-7xx.c                           |  62 +++++++++-
 drivers/clk/ti/clk.c                               |   4 +-
 drivers/clk/ti/clkctrl.c                           |  96 +++++++++++++--
 drivers/dma/ti/omap-dma.c                          |   6 +-
 include/dt-bindings/clock/dra7.h                   |  23 ++++
 include/dt-bindings/clock/omap4.h                  |  11 ++
 include/dt-bindings/clock/omap5.h                  |  12 ++
 include/dt-bindings/{clk => clock}/ti-dra7-atl.h   |   0
 22 files changed, 430 insertions(+), 198 deletions(-)
 rename include/dt-bindings/{clk => clock}/ti-dra7-atl.h (100%)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
