Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281351B664A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 23:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4DnTeuXy/jX8jlaLzqw9e04JHSCAn4rBQZzq5I/LbEs=; b=hyS
	/fYUL6MMNuamhGAIugx9U+Q6pdFBO20Q602YN31ZDf4naPoRhF1jC/BV+XGP1SCEmkgXW86JhY1LE
	50TKeuQcT3oRU2zGNcKUzCMAB3qS4vWrhqHgCXgId3iFyg51/0VG001BlFFmFX3wwrZk4/Itn93JW
	boZNk/qq/Bs3fyLTIjqtp7sJY0q/IVyoHkkPu2ETtejxXLhtcCvYIjRwtXP94NrfJSNPlRsmtvIiP
	9CMRLx0XCqlaCdAnsCjSGQNj29mhwj3Tqw+7pTfG8JZpkTDiIGE9Pw1b60Y6kyEaVAqqeuXvbs/bQ
	4KCgbE1OxW2EylmPPL4wlJNNSndU0vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRjaw-0007YC-Qx; Thu, 23 Apr 2020 21:41:18 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRjan-0007XV-Jl
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 21:41:11 +0000
X-IronPort-AV: E=Sophos;i="5.73,309,1583161200"; d="scan'208";a="45339771"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie6.idc.renesas.com with ESMTP; 24 Apr 2020 06:41:07 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id ABF4F400C420;
 Fri, 24 Apr 2020 06:41:03 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>
Subject: [PATCH 00/10] Add RZ/G1H support.
Date: Thu, 23 Apr 2020 22:40:40 +0100
Message-Id: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_144109_777706_3B2B8B8E 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series aims to add support for Renesas RZ/G1H (r8a7742) SoC.

RZ/G1H SoC is similar to R-Car Gen2 H2 SoC.

This patch set is based on renesas-drivers/master-v5.7-rc1.

Lad Prabhakar (10):
  dt-bindings: power: rcar-sysc: Document r8a7742 SYSC binding
  dt-bindings: power: rcar-sysc: Add r8a7742 power domain index macros
  soc: renesas: rcar-sysc: add R8A7742 support
  dt-bindings: reset: rcar-rst: Document r8a7742 reset module
  soc: renesas: rcar-rst: Add support for RZ/G1H
  dt-bindings: clock: renesas: cpg-mssr: Document r8a7742 binding
  clk: renesas: Add r8a7742 CPG Core Clock Definitions
  clk: renesas: cpg-mssr: Add R8A7742 support
  ARM: shmobile: r8a7742: Basic SoC support
  cpufreq: dt: Add support for r8a7742

 .../bindings/clock/renesas,cpg-mssr.yaml           |   1 +
 .../bindings/power/renesas,rcar-sysc.yaml          |   1 +
 .../devicetree/bindings/reset/renesas,rst.yaml     |   1 +
 arch/arm/mach-shmobile/setup-rcar-gen2.c           |   2 +
 drivers/clk/renesas/Kconfig                        |   5 +
 drivers/clk/renesas/Makefile                       |   1 +
 drivers/clk/renesas/r8a7742-cpg-mssr.c             | 289 +++++++++++++++++++++
 drivers/clk/renesas/renesas-cpg-mssr.c             |   6 +
 drivers/clk/renesas/renesas-cpg-mssr.h             |   1 +
 drivers/cpufreq/cpufreq-dt-platdev.c               |   1 +
 drivers/soc/renesas/Kconfig                        |   4 +
 drivers/soc/renesas/Makefile                       |   1 +
 drivers/soc/renesas/r8a7742-sysc.c                 |  42 +++
 drivers/soc/renesas/rcar-rst.c                     |   1 +
 drivers/soc/renesas/rcar-sysc.c                    |   3 +
 drivers/soc/renesas/rcar-sysc.h                    |   1 +
 include/dt-bindings/clock/r8a7742-cpg-mssr.h       |  42 +++
 include/dt-bindings/power/r8a7742-sysc.h           |  29 +++
 18 files changed, 431 insertions(+)
 create mode 100644 drivers/clk/renesas/r8a7742-cpg-mssr.c
 create mode 100644 drivers/soc/renesas/r8a7742-sysc.c
 create mode 100644 include/dt-bindings/clock/r8a7742-cpg-mssr.h
 create mode 100644 include/dt-bindings/power/r8a7742-sysc.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
