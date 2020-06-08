Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDEE1F1E65
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 19:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w0al6kswU6ocrJsEq+cBI54J9V1pCtpk/MEnj5/NmvE=; b=Pzaoh+dPJ2iZT7
	QTuejca8n6+/phM41Ft7DBLBFYnX1I2VZ5sKrjTSFbtqO5RQuW4Bm1S3+sGbZ5qJ+L0hEzt/npgoY
	7piCyBSbE4SUQ/B2l1cl25WBGJdR8tD/wwNzP4uVAIdKqKe3GKeXXatgnVS53LB/BISzjf/g/jowW
	eaO84JXwfGLP6zZS9ZezZ9qJD3Cc3i2L5CNOuZM7fBSfFcjyFDNkVPVOdS0EAzqDVt6QrZTkuBXQy
	Ygj0BzGlB4NHPQlGmwl5+sh6GF8vXULqdd6UlytN5e+cK53amuVyF+mqwjupamOa0JsvWMm/wUE8C
	60fUdAb36kICAya/FYfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiLdx-0001CY-Av; Mon, 08 Jun 2020 17:33:05 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiLdr-0001BV-JF
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 17:33:00 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 193BB80E7;
 Mon,  8 Jun 2020 17:33:42 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] Missed am3/am4 sdhci update dts patch for v5.8
Date: Mon,  8 Jun 2020 10:32:46 -0700
Message-Id: <pull-1591637467-607254@atomide.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_103259_673579_F7127BE2 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 arm@kernel.org, linux-arm-kernel@lists.infradead.org,
 Faiz Abbas <faiz_abbas@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit e88ba436e5615f5bb94deecbbb924227b15bbebb:

  ARM: OMAP5: Make L4SEC clock domain SWSUP only (2020-05-05 11:16:06 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.8/dt-missed-signed

for you to fetch changes up to 0b4edf111870b83ea77b1d7e16b8ceac29f9f388:

  ARM: dts: Move am33xx and am43xx mmc nodes to sdhci-omap driver (2020-05-19 08:54:42 -0700)

----------------------------------------------------------------
Missed sdhci patch for am3 and am4

I forgot to send a pull request earlier for converting am3 and am4 to
use sdhci-omap driver instead of the old omap_hsmmc driver.

There was a display subsystem related suspend and resume regression found
recently and looks like I forgot to send a pull request for this patch
while debugging the regression. This patch has been tested without the
display subsystem, and has been in Linux next for several weeks now, so
would be good to have merged for v5.8.

----------------------------------------------------------------
Faiz Abbas (1):
      ARM: dts: Move am33xx and am43xx mmc nodes to sdhci-omap driver

 arch/arm/boot/dts/am335x-baltos.dtsi              | 2 +-
 arch/arm/boot/dts/am335x-boneblack-common.dtsi    | 1 +
 arch/arm/boot/dts/am335x-boneblack-wireless.dts   | 1 -
 arch/arm/boot/dts/am335x-boneblue.dts             | 1 -
 arch/arm/boot/dts/am335x-bonegreen-wireless.dts   | 1 -
 arch/arm/boot/dts/am335x-evm.dts                  | 3 +--
 arch/arm/boot/dts/am335x-evmsk.dts                | 2 +-
 arch/arm/boot/dts/am335x-lxm.dts                  | 2 +-
 arch/arm/boot/dts/am335x-moxa-uc-2100-common.dtsi | 2 +-
 arch/arm/boot/dts/am335x-moxa-uc-8100-me-t.dts    | 2 +-
 arch/arm/boot/dts/am335x-pepper.dts               | 4 ++--
 arch/arm/boot/dts/am335x-phycore-som.dtsi         | 2 +-
 arch/arm/boot/dts/am33xx-l4.dtsi                  | 6 ++----
 arch/arm/boot/dts/am33xx.dtsi                     | 3 ++-
 arch/arm/boot/dts/am4372.dtsi                     | 3 ++-
 arch/arm/boot/dts/am437x-cm-t43.dts               | 2 +-
 arch/arm/boot/dts/am437x-gp-evm.dts               | 4 ++--
 arch/arm/boot/dts/am437x-l4.dtsi                  | 5 ++---
 arch/arm/boot/dts/am437x-sk-evm.dts               | 2 +-
 19 files changed, 22 insertions(+), 26 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
