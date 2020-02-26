Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F0C16FCE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:03:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/oHIoSThs9649xonPTAx/pNk1DHLObouVmfuMhQhFl4=; b=sjmr0n5Tek0SOLl8kxEo8FBWBt
	jlF33sMoVgDoxwP72DBbx+ZvKLgKx8nGUtCzGFMZUYa+6hAaSSIT2HoYT/7YlAKc1wcEDTaO4qG4F
	PVfPZnUDOQX6vcWA9I1HC41wzuTZp+i7H8Cfj3gpkRsca4hztV0KM+/slH88QaC8na5mXGSOqvY+a
	RTrF+Hx6pSVucWdjnSQmC8U+pr0OCb6SqemyhnK9ZhHnKtglrA8M6WSWhv8QyH2veZV8NWPF7u5Jz
	sIctxI9xUceV0p0oCARtH9hMBNnydZKAgje1+Ybk70xOf4v2No3dJhbvnp4IIEySRYcVdSlRrc7nP
	tQcmbbpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uTF-0006oj-Q5; Wed, 26 Feb 2020 11:03:17 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uSZ-0006Qa-2x
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 11:02:37 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id 7P2V2200R5USYZQ06P2V8t; Wed, 26 Feb 2020 12:02:29 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uST-0002Tz-8K; Wed, 26 Feb 2020 12:02:29 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uST-000522-7P; Wed, 26 Feb 2020 12:02:29 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 2/5] Renesas ARM SoC updates for v5.7
Date: Wed, 26 Feb 2020 12:02:18 +0100
Message-Id: <20200226110221.19288-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226110221.19288-1-geert+renesas@glider.be>
References: <20200226110221.19288-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_030235_334167_08A40C18 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-soc-for-v5.7-tag1

for you to fetch changes up to 92d8495ce9b79185e5fc512fe28768564eb81722:

  ARM: shmobile: Replace <linux/clk-provider.h> by <linux/of_clk.h> (2020-02-17 11:39:44 +0100)

----------------------------------------------------------------
Renesas ARM SoC updates for v5.7

  - Enable ARM global timer on Cortex-A9 MPCore SoCs,
  - A minor cleanup.

----------------------------------------------------------------
Geert Uytterhoeven (2):
      ARM: shmobile: Enable ARM_GLOBAL_TIMER on Cortex-A9 MPCore SoCs
      ARM: shmobile: Replace <linux/clk-provider.h> by <linux/of_clk.h>

 arch/arm/mach-shmobile/setup-r8a7779.c   | 1 -
 arch/arm/mach-shmobile/setup-rcar-gen2.c | 2 +-
 arch/arm/mach-shmobile/setup-sh73a0.c    | 1 -
 drivers/soc/renesas/Kconfig              | 2 ++
 4 files changed, 3 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
