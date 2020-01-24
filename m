Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F76B148ECF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 20:45:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dBJZbWVruMBzNTieQaP7HUB8DCtEHaUY9UtI2j9gDh4=; b=cnXoXTZxeGXjio
	i2Qn2eGsBVWa8T8C6iSZ4Fg00ZwFdfbcLacNxNsjM+PvBimtYp1Md1aPjq21wImvgx//Tx9K0ybBy
	90/Z13I/RGpByQrCWwsqriTd4FJG99N722opiMypzYDbt4mnMIGAvNmNMppT1YcmIOylV0vbFPzqG
	/Ze3cNA2FEg6/Ch1ybPjwBHg7ABmImpbqzyYH64G8kYUvGlhRQBU3V7OyERlP1MkUi1RW9Yc+zgDa
	b/rz7b4Y+D/dEvE8TKzma58yRHiJu79MP5EKc7AOaxZN+FsMuo9GgX1LnI59RwbYCprc9IIePkLrL
	HbtEsseZlMq90J19Berw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv4tk-0006BO-MP; Fri, 24 Jan 2020 19:45:44 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv4ta-00067P-Oy
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 19:45:37 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 5883780FA;
 Fri, 24 Jan 2020 19:46:12 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL] few minor fixes for omaps
Date: Fri, 24 Jan 2020 11:45:26 -0800
Message-Id: <pull-1579895109-287828@atomide.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_114534_850965_D637D72C 
X-CRM114-Status: UNSURE (   6.88  )
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

The following changes since commit 03729cfa0d543bc996bf959e762ec999afc8f3d2:

  soc: ti: wkup_m3_ipc: Fix race condition with rproc_boot (2019-12-17 15:18:36 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-fixes-whenever-signed

for you to fetch changes up to b0b03951544534d6d9ad4aa2787eefec988fff20:

  ARM: dts: am43x-epos-evm: set data pin directions for spi0 and spi1 (2020-01-23 08:12:04 -0800)

----------------------------------------------------------------
Few minor fixes for omaps

Looks like we have wrong default memory size for beaglebone black,
it has at least 512 MB of RAM and not 256 MB. This causes an issue
when booted with GRUB2 that does not seem to pass memory info to
the kernel.

And for am43x-epos-evm the SPI pin directions need to be configured
for SPI to work.

----------------------------------------------------------------
Matwey V. Kornilov (1):
      ARM: dts: am335x-boneblack-common: fix memory size

Raag Jadav (1):
      ARM: dts: am43x-epos-evm: set data pin directions for spi0 and spi1

 arch/arm/boot/dts/am335x-boneblack-common.dtsi | 5 +++++
 arch/arm/boot/dts/am43x-epos-evm.dts           | 2 ++
 2 files changed, 7 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
