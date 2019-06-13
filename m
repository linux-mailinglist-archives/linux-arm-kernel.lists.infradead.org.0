Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CDD4333B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 09:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/D1BT5di7x7y/OtzLxGnDpydazD02YQB0UxHE4Khl9E=; b=lLJ3leNXHQ9WSm
	LP/trq/gAAZl8ndqVs2U86rnYIyzYEwDf2r4Ao9vYZFWOx3Eotl2eDvtu9iIry78ySNoIE/5YihEm
	ctvLJzy1oFnKxLGxUv1KBNwWD2mFro+XY4wW3qwC/z8rkXDfzbOKFa4VH4pvUCEVxnESCVrwrosyi
	r3fceSsCirKJzVI+N5NoqtapTwgX3jzloGxSm5cj1T21162INPApcAVq+OcbmpYfulbd7JrdhWbqp
	FFKbeKEQ8sfsRKqmKVnnn9m7dhV7dORxFTJHoTV374mxm4gp6OMU0tG2Ow8Pn/tthsIQf6dT9fxR1
	b/mTyjH93A3iGVX+7MFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJza-0004gY-F0; Thu, 13 Jun 2019 07:17:50 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJt0-0006S9-IK
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 07:11:04 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 4ACDF81B1;
 Thu, 13 Jun 2019 07:11:23 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: arm@kernel.org
Subject: [GIT PULL 3/4] ti-sysc driver changes for v5.3
Date: Thu, 13 Jun 2019 00:10:52 -0700
Message-Id: <pull-1560399818-512977@atomide.com-3>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <pull-1560399818-512977@atomide.com>
References: <pull-1560399818-512977@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_001102_816872_6E7E908A 
X-CRM114-Status: UNSURE (   9.22  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit 4ee23cd76c0ce8622976b3da0e2bc89e6d94f6d4:

  Merge branch 'omap-for-v5.2/ti-sysc' into fixes (2019-05-20 08:33:03 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.3/ti-sysc-signed

for you to fetch changes up to 4e23be473e3063a9d3bc06bb0aee89885fffab0e:

  bus: ti-sysc: Add support for module specific reset quirks (2019-06-10 04:52:22 -0700)

----------------------------------------------------------------
ti-sysc interconnect target module driver changes for v5.3

This series of changes improves probing devices with ti-sysc to the
point where we can now probe most devices without the custom dts
property "ti,hwmods" and no legacy platform data :)

We add support for platform data callbacks for idling and unidling the
clockdomain the module belongs to. The rest of the series mostly adds
handling for the various quirks needed by old legacy modules such as
i2c and watchdog. Some quirk handling is still missing for few modules,
but those will be added as they get tested.

The related platform data and dts changes will be sent separately.

----------------------------------------------------------------
Tony Lindgren (12):
      bus: ti-sysc: Add support for missing clockdomain handling
      bus: ti-sysc: Support 16-bit writes too
      bus: ti-sysc: Make OCP reset work for sysstatus and sysconfig reset bits
      bus: ti-sysc: Allow QUIRK_LEGACY_IDLE even if legacy_mode is not set
      bus: ti-sysc: Enable interconnect target module autoidle bit on enable
      bus: ti-sysc: Handle clockactivity for enable and disable
      bus: ti-sysc: Handle swsup idle mode quirks
      bus: ti-sysc: Set ENAWAKEUP if available
      bus: ti-sysc: Add support for disabling module without legacy mode
      bus: ti-sysc: Do rstctrl reset handling in two phases
      bus: ti-sysc: Detect uarts also on omap34xx
      bus: ti-sysc: Add support for module specific reset quirks

 arch/arm/mach-omap2/omap_hwmod.c      |  39 +--
 arch/arm/mach-omap2/pdata-quirks.c    |  60 +++++
 drivers/bus/ti-sysc.c                 | 454 ++++++++++++++++++++++++++++------
 include/linux/platform_data/ti-sysc.h |  12 +
 4 files changed, 456 insertions(+), 109 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
