Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F4717C2CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jl/s1CaxRrEWJZckOekQI5T0FzQEYOwPJXX+mOwtAPY=; b=dli0fT86710bYd
	1cWIskJauZ0Cl8yzyyyEn/RzSYv8cVNknLv2Ae+HySd9QpnuF7IaZslYVG8AaxvVO90PfT2P1Q5p+
	bCkPV2rMhUwKnOOyoEe55f6NDnl7kr7n9Ux7lhuRc1QtpZ0pVAjjnSf5h41hFarWZueJZZGRESomD
	o5i6gTsWGAMQdar7bGQInrE+U9BzCsLNwlHp1quxoBMrIH3Vy/3oxonR7JFPB7OPeEhL6c7dk5yqa
	pEdlA53Hra9Nqs99f6tasQOz3/oPBVG38iiRD5JeTpn9/kH/3cKeByUxhlVsD0HgMOjml+j82u4Yl
	VK4L1yQdOrVU2qOjugzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFii-0002pk-2G; Fri, 06 Mar 2020 16:21:04 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFhi-0000uD-Cu
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 16:20:04 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id C86538161;
 Fri,  6 Mar 2020 16:20:43 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 3/4] ti-sysc driver changes for v5.7
Date: Fri,  6 Mar 2020 08:19:49 -0800
Message-Id: <pull-1583511417-919838@atomide.com-3>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <pull-1583511417-919838@atomide.com>
References: <pull-1583511417-919838@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_082002_503596_02297419 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

The following changes since commit aec551c7a00fb7eae049c0c4cc3208ca53e26355:

  bus: ti-sysc: Fix 1-wire reset quirk (2020-02-26 10:03:35 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.7/ti-sysc-signed

for you to fetch changes up to b2745d92bb015cc4454d4195c4ce6e2852db397e:

  bus: ti-sysc: Add support for PRUSS SYSC type (2020-03-04 07:54:57 -0800)

----------------------------------------------------------------
Driver changes for ti-sysc for v5.7 merge window

Driver changes for ti-sysc interconnect target module driver mostly
to be able to probe display subsystem (DSS) without platform data:

- Rename clk_enable/disable quirks to less confusing pre and post
  reset quirks

- Enable module reset to work with modules with no sysconfig register

- Also consider non-existing module register when matching quirks

- Don't warn with nested ti-sysc devices

- Implement basic SoC revision handling

- Detect DSS related devices

- Implement DSS reset quirks

Note that there is also a DSS driver specific probe fix to allow
probing devices configured for interconnect target module data that
was agreed to be merged along with the ti-sysc driver changes.

And then there also changes to handle RTC, EDMA and PRUSS:

- Add module unlock quirk for RTC

- Detect EDMA modules

- Add support for handling PRUSS

----------------------------------------------------------------
Roger Quadros (1):
      dt-bindings: bus: ti-sysc: Add support for PRUSS SYSC type

Suman Anna (1):
      bus: ti-sysc: Add support for PRUSS SYSC type

Tony Lindgren (12):
      drm/omap: Prepare DSS for probing without legacy platform data
      bus: ti-sysc: Rename clk related quirks to pre_reset and post_reset quirks
      bus: ti-sysc: Improve reset to work with modules with no sysconfig
      bus: ti-sysc: Consider non-existing registers too when matching quirks
      bus: ti-sysc: Don't warn about legacy property for nested ti-sysc devices
      bus: ti-sysc: Implement SoC revision handling
      bus: ti-sysc: Handle module unlock quirk needed for some RTC
      bus: ti-sysc: Detect display subsystem related devices
      bus: ti-sysc: Implement display subsystem reset quirk
      Merge branch 'omap-for-v5.7/dss-probe' into omap-for-v5.7/ti-sysc
      bus: ti-sysc: Fix wrong offset for display subsystem reset quirk
      bus: ti-sysc: Detect EDMA and set quirk flags for tptc

 Documentation/devicetree/bindings/bus/ti-sysc.txt |   1 +
 arch/arm/mach-omap2/pdata-quirks.c                |   6 +
 drivers/bus/ti-sysc.c                             | 604 ++++++++++++++++++----
 drivers/gpu/drm/omapdrm/dss/dss.c                 |  25 +-
 drivers/gpu/drm/omapdrm/dss/omapdss-boot-init.c   |  25 +-
 include/dt-bindings/bus/ti-sysc.h                 |   4 +
 include/linux/platform_data/ti-sysc.h             |   5 +
 7 files changed, 570 insertions(+), 100 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
