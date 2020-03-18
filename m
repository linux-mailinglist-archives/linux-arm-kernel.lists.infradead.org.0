Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F14718A974
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 00:49:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RlHx6iXW08qCzZcoFQZ4LxWXd/o2eF77eMPVUxSLjnY=; b=Fs8h95fR+kn84K
	1J0jfcpH0jQKGQJWoDoCuxeorGCYywr+DHFcrK87Nba5+qQh+F1bVguRkhU5Catr1vUo+aCos+ZBC
	EBcGVYaSmPsRePgGVggJlq7wCRSUfiJRQF8Dzp2Ycl3iR93WdTg0TMNhRJckAkzawFTwrf/0iqpNJ
	Tn589yTcgmAngpii3YW8jDi45SDiumBx+0QOVpsyUikbVKXVcWPO28P3Xqhfj5PZmU/VghTeomx1u
	wcmL6PyuNabtcg6PgCvIv9WSH4Dtnp9UNABfECnv8zXGFj/XjlyQLFmQQcu+n3dX0PftQXW05BU0r
	zoLFPvEFsjzBK9zlMRMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEiQk-0008NC-Jb; Wed, 18 Mar 2020 23:48:58 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEiQc-0008Mt-Uf
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 23:48:52 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 6DDF580B6;
 Wed, 18 Mar 2020 23:49:37 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] drop remaining cpsw and edma platform data for v5.7
Date: Wed, 18 Mar 2020 16:48:43 -0700
Message-Id: <pull-1584575307-189595@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_164851_022237_2C3B1D29 
X-CRM114-Status: UNSURE (   6.59  )
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

The following changes since commit 104d56b3e3766931ff1a1d786d2fcce908daaaf7:

  ARM: OMAP2+: Drop legacy platform data for dra7 edma (2020-03-06 07:20:04 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.7/ti-sysc-drop-pdata-ti81xx-signed

for you to fetch changes up to 0143b9fd06ed6da93fd8c6b3393f5d4de7a01ba9:

  ARM: OMAP2+: Drop legacy platform data for ti81xx edma (2020-03-17 09:48:54 -0700)

----------------------------------------------------------------
Drop remaining legacy platform data for cpsw and edma

With a non-critical clock fix for dm814x ethernet, we can update ti81xx
for cpsw ethernet and edma to probe them with ti-sysc interconnect
target module driver and device tree data. And we can drop the related
remaining platform data for cpsw and edma.

----------------------------------------------------------------
Tony Lindgren (11):
      clk: ti: Fix dm814x clkctrl for ethernet
      Merge tag 'omap-for-v5.7/ti-sysc-drop-pdata-signed' into ti81xx
      ARM: dts: Configure interconnect target module for dm814x cpsw
      ARM: OMAP2+: Drop legacy platform data for dm814x cpsw
      ARM: dts: Configure interconnect target module for dm814x tpcc
      ARM: dts: Configure interconnect target module for dm814x tptc0
      ARM: dts: Configure interconnect target module for dm814x tptc1
      ARM: dts: Configure interconnect target module for dm814x tptc2
      ARM: dts: Configure interconnect target module for dm814x tptc3
      ARM: dts: Configure interconnect target module for ti816x edma
      ARM: OMAP2+: Drop legacy platform data for ti81xx edma

 arch/arm/boot/dts/dm814x-clocks.dtsi       |  14 ++
 arch/arm/boot/dts/dm814x.dtsi              | 260 +++++++++++++++++++----------
 arch/arm/boot/dts/dm816x.dtsi              | 148 ++++++++++++++--
 arch/arm/boot/dts/dra62x.dtsi              |   6 +-
 arch/arm/mach-omap2/omap_hwmod_81xx_data.c | 231 -------------------------
 drivers/clk/ti/clk-814x.c                  |   7 +-
 include/dt-bindings/clock/dm814.h          |   5 +
 7 files changed, 332 insertions(+), 339 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
