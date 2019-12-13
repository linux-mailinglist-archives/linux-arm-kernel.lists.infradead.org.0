Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7178D11E86F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:36:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=okgiYvISW4v/9CCILN4pyGY2kTX66N4PWQBP0gXSfyM=; b=AevKkqRh2AhimZ
	Z7ckxLIor1HtHCZZP+K9287wXnqxaVynCIEbpLIp4bWxscue7wwkA8XX0VbeGLmJ3ZTU3x+75vc3I
	DIabyOj/61s+wYZN4xAGh12JjEcZE1b4NWduBvWoDlGIi5Vz1DcvGMtwC0uzb2O12mUkRpYIwyKx1
	0pua7+t1jowxXHmOusAdUzFyqp5w7YJEtVw3ecndXJNImrkzta30WOwwkFcbuTB+p2M1F8aWvy47X
	b5V6Ml7nCwFiLOJLOkHfJgI/qHtJxg5hpM2OchF/O/bvVvv90n7uxw4sk7794TWIdItLXDa4wTXMg
	ScIP2d0ZjULGqxzRiQiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnv6-00034C-T2; Fri, 13 Dec 2019 16:36:00 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnuz-00033g-LS
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:35:54 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 615408186;
 Fri, 13 Dec 2019 16:36:29 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] omap fixes for v5.5-rc cycle
Date: Fri, 13 Dec 2019 08:35:40 -0800
Message-Id: <pull-1576254925-709310@atomide.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_083553_746669_32441AEA 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/fixes-rc1-signed

for you to fetch changes up to e709ed70d122e94cb426b1e1f905829eae19a009:

  bus: ti-sysc: Fix missing reset delay handling (2019-12-12 08:20:10 -0800)

----------------------------------------------------------------
Fixes for omap variants for v5.5-rc1 cycle

This series of changes contains fixes for issues recently noticed:

- The ti-sysc interconnect target module driver needs fixes for
  mstandby quirk handling and reset delay

- We need to configure am335x-sancloud-bbe to use rgmii-id mode because of
  the phy changes done earlier

- NET_SWITCHDEV is no longer selected in Kconfig but a dependency and we
  must enable CONFIG_NET_SWITCHDEV to have TI_CPSW_SWITCHDEV

- We are still relying on DEBUG_FS at least for PM configuration, let's
  add it back

- We need to update compatible for am437x-gp/epos-evm because of the
  recent changes to use generic panels

----------------------------------------------------------------
Grygorii Strashko (1):
      ARM: omap2plus_defconfig: enable NET_SWITCHDEV

Mans Rullgard (1):
      ARM: dts: am335x-sancloud-bbe: fix phy mode

Tomi Valkeinen (1):
      ARM: dts: am437x-gp/epos-evm: fix panel compatible

Tony Lindgren (3):
      bus: ti-sysc: Fix missing force mstandby quirk handling
      ARM: omap2plus_defconfig: Add back DEBUG_FS
      bus: ti-sysc: Fix missing reset delay handling

 arch/arm/boot/dts/am335x-sancloud-bbe.dts | 2 +-
 arch/arm/boot/dts/am437x-gp-evm.dts       | 2 +-
 arch/arm/boot/dts/am43x-epos-evm.dts      | 2 +-
 arch/arm/configs/omap2plus_defconfig      | 4 +++-
 drivers/bus/ti-sysc.c                     | 7 ++++++-
 include/linux/platform_data/ti-sysc.h     | 1 +
 6 files changed, 13 insertions(+), 5 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
