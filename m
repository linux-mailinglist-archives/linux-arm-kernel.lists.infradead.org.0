Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 304E711AC7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:53:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vQf2Mbnr/05wBNiZUbCKfbl+mSWd5rhQS1/swMHaw+8=; b=EIj
	6waRA6Bm2NicLTWu60+Tb25fWRPHy4A2ewI8vAYT/QbNcrX2jX58lcZgUSTq28rKQo8ccjd/lj2va
	CPpZ6oJkHH4e/EyuDJnjAkt73xg6kLuxdfy3lANVM7vwvl3o7+DTb8SKEIzQ1+udkQWdXG1Sbu9q/
	Sc/DnV4HOmnWDRGc2gkth7CP8mEWNsZybCxMX/LE+S5MchmskMDZhT9/IfoF4Dl+qlUEsSTAcxKHE
	PvINntHjlbLlCdKVsw55JbVB/dFA5boapcP4zgpMwgV+9vq1XgwWxJc73TEwgpuPRxi/FLfGkdT9Q
	ZZEF31hqe1Kvrfr3ykPyg4u9e/TWo0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2Qc-0002dD-Vz; Wed, 11 Dec 2019 13:53:22 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2Pn-0001qx-80
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:52:33 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id cdsP2100W5USYZQ06dsPMJ; Wed, 11 Dec 2019 14:52:24 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1if2Pf-00014D-MF; Wed, 11 Dec 2019 14:52:23 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1if2Pf-0006yZ-KE; Wed, 11 Dec 2019 14:52:23 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 0/4] ARM: shmobile: Enable ARM_GLOBAL_TIMER on Cortex-A9
 MPCore
Date: Wed, 11 Dec 2019 14:52:18 +0100
Message-Id: <20191211135222.26770-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_055231_435759_123B88A0 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 SUBJ_OBFU_PUNCT_FEW    Possible punctuation-obfuscated Subject:
 header
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

        Hi all,

SH-Mobile AG5 and R-Car H1 SoCs are based on the Cortex-A9 MPCore, which
includes an ARM global timer.

Enable use of the global timer on these SoCs for scheduling and delay
loops, with the following impact:
  - Scheduler accuracy is increased from 10 ms to a few ns,
  - Calls to shmobile_init_delay() to preset loops-per-jiffies can be
    removed.
    Note that when using an old DTB lacking the global timer, the kernel
    will still work, but the delay loop will need to be calibrated
    during boot.

Note that we still need shmobile_init_delay() to setup loops-per-jiffies
for other SoCs lacking an architectured or global timer:
  - emev2: Dual-core Cortex-A9 r1p3,
  - r7s72100: single-core Cortex-A9 MPCore r3p0, global timer IRQ not
    wired?
  - r7s9210: single-core Cortex-A9 MPCore r4p1, global timer IRQ not
    wired?
  - r8a7740: single-core Cortex-A9 r2p4,
  - r8a7778: single-core Cortex-A9 r2p2-00rel0.

Changes compared to v1:
  - Rebased.

I have been using this on KZM-A9-GT (SH-Mobile AG5) and Marzen (R-Car
H1) for the last 18 months or so.
Hence I plan to queue the first 3 patches in renesas-devel for v5.6,
and postpone the 4th to v5.7.

Thanks!

Geert Uytterhoeven (4):
  ARM: dts: sh73a0: Rename twd clock to periph clock
  ARM: dts: sh73a0: Add device node for ARM global timer
  ARM: dts: r8a7779: Add device node for ARM global timer
  ARM: shmobile: Enable ARM_GLOBAL_TIMER on Cortex-A9 MPCore SoCs

 arch/arm/boot/dts/r8a7779.dtsi         |  8 ++++++++
 arch/arm/boot/dts/sh73a0.dtsi          | 11 +++++++++--
 arch/arm/mach-shmobile/setup-r8a7779.c |  1 -
 arch/arm/mach-shmobile/setup-sh73a0.c  |  1 -
 drivers/soc/renesas/Kconfig            |  2 ++
 5 files changed, 19 insertions(+), 4 deletions(-)

-- 
2.17.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
