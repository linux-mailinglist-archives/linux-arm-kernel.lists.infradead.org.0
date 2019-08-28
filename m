Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3A4A099E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wt8y3BE9Z1Dv20r0Y4p5PJIelVgaN4SOz2b9p08HHo=; b=RPZHUZD+pYdfb9
	HZbZZTbLrqu1pvFbhx8viSSKcmBJSFQ3qFYX2o7qfhYZy2gto38w9L+U7xlHp4EPRk1q6fyIdkysL
	mxQqniJin9VwsC/o4v7beqzY7ezbx6iOq21NLuV0yxEhaaI+x7/dopQVB5EsH3ZHpb1gGYfYSKCc6
	gOiPAEn9tmTmJRWUnUC7WF6XDglnK3Z2a5kwUYIF93Dmkm4eaB9uVWuVBXGvQqWTgWNdLK7pqG3QV
	H3dpOD2Vaw614ocNOnCGV4AiCC9phqqRaiWAOeRdIncfO1BinF3WVD+a1dxVWCTa//2r/IEGV8eNA
	oizwUlSOCBSuyevHC9SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32nG-0006Tt-Qo; Wed, 28 Aug 2019 18:35:42 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i32mZ-0004tD-EW
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:35:00 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 5A7F381FE;
 Wed, 28 Aug 2019 18:35:28 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 3/4] drop more legacy pdata for omaps for v5.4
Date: Wed, 28 Aug 2019 11:34:51 -0700
Message-Id: <pull-1567016893-318461@atomide.com-3>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <pull-1567016893-318461@atomide.com>
References: <pull-1567016893-318461@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113459_543070_34D9F811 
X-CRM114-Status: GOOD (  11.38  )
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

The following changes since commit 5b63fb90adb95a178ad403e1703f59bf1ff2c16b:

  ARM: dts: Fix incomplete dts data for am3 and am4 mmc (2019-08-13 04:03:30 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.4/ti-sysc-drop-pdata-take2-signed

for you to fetch changes up to 1170f235834bfb858f691670b127f8673af5923b:

  ARM: dts: Drop legacy custom hwmods property for dra7 gpio (2019-08-26 10:59:25 -0700)

----------------------------------------------------------------
Drop legacy platform data omap variants for v5.4

We can now drop more platform data in favor of dts data for most
devices like cpsw, gpio, i2c, mmc, uart and watchdog.

In general we can do this by dropping legacy "ti,hwmods" custom dts
property, and the platform data assuming the related dts data is correct.
This is best done as single patch as otherwise we'd have to revert two
patches in case of any unexpected issues, and we're just removing data.

Fro cpsw, before we can do this, we need to configure the cpsw mdio clocks
properly in dts though in the first patch. For omap4 i2c, we've already
dropped the platform data earlier, but have been still allocting it
dynamically based on the dts data based on the "ti,hwmods" property, but
that is no longer needed. For d2d, we are missing the dts data, so we
first add it and then drop the platform data.

For dra7, we drop platform data and "ti,hwmods" for mcasp and mcspi.
We've already dropped platform data earlier for gpio, i2c, mmc, and
uart so we just need to drop "ti,hwmods" property for those.

Note that this branch is based on earlier ti-sysc-fixes branch.

----------------------------------------------------------------
Tony Lindgren (13):
      ARM: dts: Add fck for cpsw mdio for omap variants
      ARM: OMAP2+: Drop legacy platform data for cpsw on am3 and am4
      ARM: OMAP2+: Drop legacy platform data for cpsw on dra7
      ARM: dts: Drop custom hwmod property for omap4 i2c
      ARM: OMAP2+: Drop legacy watchdog platform data for omap4
      ARM: dts: Configure d2d dts data for omap4
      ARM: OMAP2+: Drop legacy platform data for omap4 d2d
      ARM: OMAP2+: Drop legacy platform data for dra7 mcspi
      ARM: OMAP2+: Drop legacy platform data for dra7 mcasp
      ARM: dts: Drop legacy custom hwmods property for dra7 uart
      ARM: dts: Drop legacy custom hwmods property for dra7 i2c
      ARM: dts: Drop legacy custom hwmods property for dra7 mmc
      ARM: dts: Drop legacy custom hwmods property for dra7 gpio

 arch/arm/boot/dts/am33xx-l4.dtsi                   |   4 +-
 arch/arm/boot/dts/am437x-l4.dtsi                   |   6 +-
 arch/arm/boot/dts/dra7-l4.dtsi                     |  43 +-
 arch/arm/boot/dts/omap4-l4-abe.dtsi                |   1 -
 arch/arm/boot/dts/omap4-l4.dtsi                    |  39 +-
 .../mach-omap2/omap_hwmod_33xx_43xx_common_data.h  |   3 -
 .../omap_hwmod_33xx_43xx_interconnect_data.c       |   6 -
 .../mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c |  50 ---
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c         |   9 -
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c         |   9 -
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c         | 115 -----
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c          | 475 ---------------------
 12 files changed, 36 insertions(+), 724 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
