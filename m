Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D390C173B61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:26:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4yXZvSDx0XI4Ce85sBI5nm1e8FfDNoIFmwo6Dl1+Grs=; b=PW/jtm1n5cq8I9
	9kOx6tsdGUxjkFi38fNDffA94hFCjkWUe8ofjWacl6W55CQE95/gRYuMDLxxIkI/DWsi+tB9ie1DH
	50cLZ9XdAl3L04O81/u6juz2MNTQIyeHSNBDSAx8K620WVrcd5AnQhM9np9XKWumopkoMNOBoFXg+
	vkD668TAQxAemRmNPBboNPv+o+d7GnPqHXSPBJlBe2JooLE9kVKPLzsO0h1gBbnmI7t1UYDAZtE1U
	lQEhq4OwPIrxT+8K1pM+k+3IzN0f7vl5E7ke38TMnF8exVlcmFXtkDiMyIxmXus5QpAJRHRp938fp
	xgCEDsIFo2ajtivQcTEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hXE-0007Ph-8p; Fri, 28 Feb 2020 15:26:40 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hX3-0007P9-40
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 15:26:30 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id ED6A4806C;
 Fri, 28 Feb 2020 15:27:08 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] Fixes for omaps for v5.6-rc cycle
Date: Fri, 28 Feb 2020 07:26:20 -0800
Message-Id: <pull-1582903541-589933@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_072629_201811_F9FBB67A 
X-CRM114-Status: GOOD (  12.54  )
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

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/fixes-rc3-signed

for you to fetch changes up to 51c22d7b40dca8b39a33b2c3b03f13122a2a1af3:

  ARM: OMAP2+: Fix compile if CONFIG_HAVE_ARM_SMCCC is not set (2020-02-26 10:49:25 -0800)

----------------------------------------------------------------
Few fixes for omaps for v5.6-rc cycle

This series of changes contains few code fixes for issues
recently discovered:

- A build fix for ARMv6 only configs when CONFIG_HAVE_ARM_SMCCC is
  not set

- A fix for ti-sysc quirk handling for 1-wire hdq reset

And a handful of dts fixes that I had queued up and should
have already sent earlier instead of waiting for the code
fixes to get sorted out:

- Fix naming of vsys_3v3 regulator for dra7-evm

- Fix incorrect OPP node names for am437x-idk-evm

- Fix IPU1 mux clock parent source for dra7

- Add missing PWM property for dra7 timers 13 to 16

- Add missing dma-ranges for dra7 PCIe nodes

- Fix mmc3 max-frequency for dra76x

----------------------------------------------------------------
Faiz Abbas (1):
      arm: dts: dra76x: Fix mmc3 max-frequency

Grygorii Strashko (1):
      ARM: dts: dra7-l4: mark timer13-16 as pwm capable

Kishon Vijay Abraham I (1):
      ARM: dts: dra7: Add "dma-ranges" property to PCIe RC DT nodes

Peter Ujfalusi (1):
      ARM: dts: dra7-evm: Rename evm_3v3 regulator to vsys_3v3

Suman Anna (2):
      ARM: dts: am437x-idk-evm: Fix incorrect OPP node names
      ARM: dts: dra7xx-clocks: Fixup IPU1 mux clock parent source

Tony Lindgren (3):
      bus: ti-sysc: Fix 1-wire reset quirk
      Merge tag 'hdq-fix' into omap-for-v5.6/fixes-rc2
      ARM: OMAP2+: Fix compile if CONFIG_HAVE_ARM_SMCCC is not set

 arch/arm/boot/dts/am437x-idk-evm.dts |  4 ++--
 arch/arm/boot/dts/dra7-evm.dts       |  4 ++--
 arch/arm/boot/dts/dra7-l4.dtsi       |  4 ++++
 arch/arm/boot/dts/dra7.dtsi          |  2 ++
 arch/arm/boot/dts/dra76x.dtsi        |  5 +++++
 arch/arm/boot/dts/dra7xx-clocks.dtsi | 12 ++----------
 arch/arm/mach-omap2/Makefile         |  2 +-
 arch/arm/mach-omap2/io.c             |  2 --
 drivers/bus/ti-sysc.c                |  4 ++--
 9 files changed, 20 insertions(+), 19 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
