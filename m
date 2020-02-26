Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CB516FCE5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:04:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KFesX0iMhhqrdCVti5s7CoEdxAJ3PDrsUXRneJFVS30=; b=fveWD1EhwlbuYukXZPyC1Ns8fo
	Qq9OkvifCYBJVGsTmQXUqDmcljdB3P46lmyCkJlYKAQBMB0bKyfoNdtaucxjJgpWgxeNyTUa8Iz2V
	qk/SMTh/O7tSypWiFM/zCxPtTIsj2lIeruQrvEg0sF958cs4jtZhh1NZ7SONvfzo0P21mRlc7kfUL
	cTY1X6tmLSpOqFZ+MGQwap7dwT8enqpUljYl8C6wSL+b8O0bvqI634oVfdErAS/rVMK/JQ3ukBDqp
	+XbMxIjxdE2GALQaXFBC+g8KFOv4WVfnEpIonv+QGSBQX2zSwTko8TtzBdp2G8oCxMGZBO64VovVm
	+GkrDS+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uTr-0007W2-4f; Wed, 26 Feb 2020 11:03:55 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uSZ-0006QZ-2t
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 11:02:38 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id 7P2V2200Q5USYZQ06P2V8s; Wed, 26 Feb 2020 12:02:29 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uST-0002Ty-7l; Wed, 26 Feb 2020 12:02:29 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uST-000520-6d; Wed, 26 Feb 2020 12:02:29 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 1/5] Renesas ARM DT updates for v5.7
Date: Wed, 26 Feb 2020 12:02:17 +0100
Message-Id: <20200226110221.19288-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226110221.19288-1-geert+renesas@glider.be>
References: <20200226110221.19288-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_030235_322438_FC4510B4 
X-CRM114-Status: UNSURE (   8.64  )
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

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-dt-for-v5.7-tag1

for you to fetch changes up to 9e1232631d4e8e30096fa758a0e1fb9e08f219f9:

  ARM: dts: rzg1: Add reset control properties for display (2020-02-24 14:03:33 +0100)

----------------------------------------------------------------
Renesas ARM DT updates for v5.7

  - Miscellaneous fixes and improvements.

----------------------------------------------------------------
Chris Brandt (1):
      ARM: dts: r7s72100: Add SPIBSC clocks

Geert Uytterhoeven (4):
      ARM: dts: renesas: Group tuples in operating-points properties
      ARM: dts: r8a7745: Convert to new DU DT bindings
      ARM: dts: rcar-gen2: Add reset control properties for display
      ARM: dts: rzg1: Add reset control properties for display

Marek Vasut (1):
      ARM: dts: renesas: Add missing ethernet PHY reset GPIO on Gen2 reference boards

 arch/arm/boot/dts/r7s72100-gr-peach.dts | 3 +++
 arch/arm/boot/dts/r7s72100.dtsi         | 5 +++--
 arch/arm/boot/dts/r8a73a4-ape6evm.dts   | 7 ++-----
 arch/arm/boot/dts/r8a7743.dtsi          | 5 +++--
 arch/arm/boot/dts/r8a7744.dtsi          | 5 +++--
 arch/arm/boot/dts/r8a7745.dtsi          | 3 ++-
 arch/arm/boot/dts/r8a77470.dtsi         | 5 +++--
 arch/arm/boot/dts/r8a7790-lager.dts     | 1 +
 arch/arm/boot/dts/r8a7790-stout.dts     | 1 +
 arch/arm/boot/dts/r8a7790.dtsi          | 2 ++
 arch/arm/boot/dts/r8a7791-koelsch.dts   | 1 +
 arch/arm/boot/dts/r8a7791-porter.dts    | 1 +
 arch/arm/boot/dts/r8a7791.dtsi          | 5 +++--
 arch/arm/boot/dts/r8a7792.dtsi          | 5 +++--
 arch/arm/boot/dts/r8a7793-gose.dts      | 1 +
 arch/arm/boot/dts/r8a7793.dtsi          | 5 +++--
 arch/arm/boot/dts/r8a7794-alt.dts       | 1 +
 arch/arm/boot/dts/r8a7794-silk.dts      | 1 +
 arch/arm/boot/dts/r8a7794.dtsi          | 2 ++
 arch/arm/boot/dts/sh73a0-kzm9g.dts      | 9 +++------
 20 files changed, 42 insertions(+), 26 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
