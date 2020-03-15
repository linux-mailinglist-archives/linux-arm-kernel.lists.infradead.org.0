Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BE4185BB8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 10:53:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5eMXyeTRfhXP21IwYUAbp5gNE/16/T9cocaAKqNl0+Q=; b=DzmwIu/o+CuA4X
	hSXhEyUPT/7P89haA8oMHCODcCcTkjbhJ1iX6DgtZlPB+YV304F4BDNyoqH7EOFqYI5gGq63fvjNO
	VgIZtqZXavYSd6AHBBTCtQlSMeTm1ohNXz5KD4pqPYaaAWwq84ZesCjBdNyphGOEuDj+2Q6rkunqY
	jq4OpFLAgbBapDzmqRESHHkzTdFEIOZzzLKUS+buzIW4AxVo8rHyQ4oi+7NnfPIhIPikUvqchdEdz
	onhaM/T6/pvgXat2GLvsg7gOOSMd+9T4rBOhKvDczSFpoj+gssifzXEYddK9l5zvj5+wHhDsp6EFk
	IZYJv59z2CoKhHNFAe2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDPxe-0004nb-Aj; Sun, 15 Mar 2020 09:53:34 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDPxV-0004nI-Cr
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 09:53:27 +0000
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 3290B200009;
 Sun, 15 Mar 2020 09:53:06 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] ARM: mvebu: arm for v5.7 (#1)
Date: Sun, 15 Mar 2020 10:53:05 +0100
Message-ID: <87eetux7um.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_025325_573111_E2B435B0 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here is the first pull request for arm for mvebu for v5.7.

Gregory

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.infradead.org/linux-mvebu.git tags/mvebu-arm-5.7-1

for you to fetch changes up to afb80cf1e6f612d3f2736d74bcd8ade096f2c9bb:

  arm: mach-dove: Mark dove_io_desc as __maybe_unused (2020-03-13 21:44:50 +0100)

----------------------------------------------------------------
mvebu arm for 5.6 (part 1)

Various cleanup:

On Orion5x:
- Drop unneeded select of PCI_DOMAINS_GENERIC
- Remove unneeded variable ret
- Replace setup_irq() by request_irq()

On Dove: Mark dove_io_desc as __maybe_unused

----------------------------------------------------------------
Geert Uytterhoeven (1):
      ARM: orion5x: Drop unneeded select of PCI_DOMAINS_GENERIC

Vincenzo Frascino (1):
      arm: mach-dove: Mark dove_io_desc as __maybe_unused

Xu Wang (1):
      ARM: orion5x: ts78xx: Remove unneeded variable ret

afzal mohammed (1):
      ARM: orion: replace setup_irq() by request_irq()

 arch/arm/mach-dove/common.c          |  2 +-
 arch/arm/mach-orion5x/Kconfig        |  2 --
 arch/arm/mach-orion5x/ts78xx-setup.c |  3 +--
 arch/arm/plat-orion/time.c           | 10 +++-------
 4 files changed, 5 insertions(+), 12 deletions(-)

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
