Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E79AEC649
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:00:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BoXV+pObiP6+PPeHcRkJb225RtEJ3Er73oY+Dx7TiQM=; b=qujZc1HzXZJFsthg7kE4xGnURR
	OJLqzhFK9U3r7eo2BAPjtic+2FrH3Y2+30nwNSjQ1iYHl+p7h6zNI6AGb5p7TUE6t01EvZ9dhYVXD
	oLknGGXI/cYDZhWlpK6+EMmlWE7+JXFj+WgVWRz9baoIzHVHY56ASvYnhD8Tuysdz3e396dOuMDU6
	mtmcKpYGR/Pd6U0Zt25ziwMLsbIeafIyFbJnsy3TI5KMqFZPSSUR58FL21f4JyE8j6Unar7uuEaCl
	c/47aF6kE8secy9/Z2l+p+NAWzA1Z3aNRBjStGHyXERUO6YPnPzGGaeZ16YmLxliOK76k3KPg3SVy
	WklUohGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZLF-0002hR-8R; Fri, 01 Nov 2019 16:00:01 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZKI-0001pe-4V
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:59:05 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id Lfyu210105USYZQ01fyuaM; Fri, 01 Nov 2019 16:58:56 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iQZKA-0002rc-A0; Fri, 01 Nov 2019 16:58:54 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iQZKA-0008Cc-9C; Fri, 01 Nov 2019 16:58:54 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 4/6] Renesas ARM64 DT updates for v5.5 (take two)
Date: Fri,  1 Nov 2019 16:58:40 +0100
Message-Id: <20191101155842.31467-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101155842.31467-1-geert+renesas@glider.be>
References: <20191101155842.31467-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_085902_341754_F46B6AC4 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 3fa08cbb0662acc6cbd1a481956570a52dba8875:

  arm64: dts: renesas: r8a774b1: Add CAN and CAN FD support (2019-10-14 12:04:59 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm64-dt-for-v5.5-tag2

for you to fetch changes up to 92980759c1699a3c10beb00f411270197ac89544:

  arm64: dts: renesas: Add support for Salvator-XS with R-Car M3-W+ (2019-11-01 14:03:41 +0100)

----------------------------------------------------------------
Renesas ARM64 DT updates for v5.5 (take two)

  - Video-Input and Serial-ATA support on RZ/G2N,
  - Color Management Module support on various R-Car Gen3 SoCs,
  - Initial support for the R-Car M3-W+ (r8a77961) SoC on the
    Salvator-XS board.

----------------------------------------------------------------
Biju Das (1):
      arm64: dts: renesas: r8a774b1: Add VIN and CSI-2 support

Fabrizio Castro (1):
      arm64: dts: renesas: r8a774b1: Add SATA controller node

Geert Uytterhoeven (6):
      dt-bindings: power: Add r8a77961 SYSC power domain definitions
      dt-bindings: clock: Add r8a77961 CPG Core Clock Definitions
      Merge tag 'renesas-r8a77961-dt-binding-defs-tag' into renesas-arm64-dt-for-v5.5
      arm64: dts: renesas: Prepare for rename of ARCH_R8A7796 to ARCH_R8A77960
      arm64: dts: renesas: Add Renesas R8A77961 SoC support
      arm64: dts: renesas: Add support for Salvator-XS with R-Car M3-W+

Jacopo Mondi (1):
      arm64: dts: renesas: rcar-gen3: Add CMM units

 arch/arm64/boot/dts/renesas/Makefile               |   4 +
 arch/arm64/boot/dts/renesas/r8a774b1.dtsi          | 377 +++++++++++
 arch/arm64/boot/dts/renesas/r8a7795.dtsi           |  39 ++
 arch/arm64/boot/dts/renesas/r8a7796.dtsi           |  31 +-
 .../boot/dts/renesas/r8a77961-salvator-xs.dts      |  31 +
 arch/arm64/boot/dts/renesas/r8a77961.dtsi          | 723 +++++++++++++++++++++
 arch/arm64/boot/dts/renesas/r8a77965.dtsi          |  31 +-
 arch/arm64/boot/dts/renesas/r8a77990.dtsi          |  21 +
 arch/arm64/boot/dts/renesas/r8a77995.dtsi          |  21 +
 include/dt-bindings/clock/r8a77961-cpg-mssr.h      |  65 ++
 include/dt-bindings/power/r8a77961-sysc.h          |  32 +
 11 files changed, 1373 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts
 create mode 100644 arch/arm64/boot/dts/renesas/r8a77961.dtsi
 create mode 100644 include/dt-bindings/clock/r8a77961-cpg-mssr.h
 create mode 100644 include/dt-bindings/power/r8a77961-sysc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
