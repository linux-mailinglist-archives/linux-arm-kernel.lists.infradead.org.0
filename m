Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9010E1BEB24
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AGNPesAVhDfP5uph/dcRrRuYb4oEg6zk3Hft0nefiwE=; b=S5t
	pzx3mp8xj4zZwy4G3gvwaLm036J7UfjNkjkhvmKRquyGB31H0GKAORkfqv6oS7oS0fPAnmNml4Kkc
	vuIY8MM1t5Ekfw1KBuz7nzdEbRIvTQXaDlQ0j9iVf0m2gqQ7ez7IBoHI7UzwIAKP5Z8oDdq9tUIU3
	PWZI7t81KlzH7yzP7fz/hpn0hw1TT/lJRXgxTD2yj6PH1rI47HBmMZ44arAznkNe4zJO1q98AlitQ
	OWwT2ry/aW4RNUtuzGLch4c2STfTBmMtxG2YpYurA+SyiykHM3k2BCpn7yWoZzwh7+Jv7pyT7yz+b
	0Lryuj/nDTVJUof7WqB0fCakundGByA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuli-0003kA-A7; Wed, 29 Apr 2020 22:01:26 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuha-0006ji-1c
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:57:12 +0000
X-IronPort-AV: E=Sophos;i="5.73,333,1583161200"; d="scan'208";a="46009187"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 30 Apr 2020 06:57:05 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id D547F40ECBAC;
 Thu, 30 Apr 2020 06:57:00 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>
Subject: [PATCH 00/18]  Add R8A7742/RZG1H board support
Date: Wed, 29 Apr 2020 22:56:37 +0100
Message-Id: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145710_230097_BAFAE86C 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, linux-serial@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

This patch set adds initial board support for R8A7742 SoC,
enabling R8A7742 arch in defconfigs with initial dtsi.

Cheers,
--Prabhakar

Lad Prabhakar (18):
  soc: renesas: Add Renesas R8A7742 config option
  ARM: shmobile: defconfig: Enable r8a7742 SoC
  ARM: multi_v7_defconfig: Enable r8a7742 SoC
  ARM: debug-ll: Add support for r8a7742
  dt-bindings: pinctrl: sh-pfc: Document r8a7742 PFC support
  pinctrl: sh-pfc: r8a7790: Add r8a7742 PFC support
  ARM: dts: r8a7742: Initial SoC device tree
  dt-bindings: irqchip: renesas-irqc: Document r8a7742 bindings
  ARM: dts: r8a7742: Add IRQC support
  dt-bindings: rcar-dmac: Document r8a7742 support
  ARM: dts: r8a7742: Add SYS-DMAC support
  dt-bindings: serial: renesas,scif: Document r8a7742 bindings
  dt-bindings: serial: renesas,scifa: Document r8a7742 bindings
  dt-bindings: serial: renesas,scifb: Document r8a7742 bindings
  dt-bindings: serial: renesas,hscif: Document r8a7742 bindings
  ARM: dts: r8a7742: Add [H]SCIF{A|B} support
  dt-bindings: gpio: rcar: Add r8a7742 (RZ/G1H) support
  ARM: dts: r8a7742: Add GPIO support

 .../devicetree/bindings/dma/renesas,rcar-dmac.txt  |   1 +
 .../devicetree/bindings/gpio/renesas,gpio-rcar.txt |   1 +
 .../interrupt-controller/renesas,irqc.yaml         |   1 +
 .../bindings/pinctrl/renesas,pfc-pinctrl.txt       |   1 +
 .../devicetree/bindings/serial/renesas,hscif.yaml  |   1 +
 .../devicetree/bindings/serial/renesas,scif.yaml   |   1 +
 .../devicetree/bindings/serial/renesas,scifa.yaml  |   1 +
 .../devicetree/bindings/serial/renesas,scifb.yaml  |   1 +
 arch/arm/Kconfig.debug                             |  10 +
 arch/arm/boot/dts/r8a7742.dtsi                     | 939 +++++++++++++++++++++
 arch/arm/configs/multi_v7_defconfig                |   1 +
 arch/arm/configs/shmobile_defconfig                |   1 +
 drivers/pinctrl/sh-pfc/Kconfig                     |   4 +
 drivers/pinctrl/sh-pfc/Makefile                    |   1 +
 drivers/pinctrl/sh-pfc/core.c                      |   6 +
 drivers/pinctrl/sh-pfc/pfc-r8a7790.c               |  24 +
 drivers/pinctrl/sh-pfc/sh_pfc.h                    |   1 +
 drivers/soc/renesas/Kconfig                        |   7 +
 18 files changed, 1002 insertions(+)
 create mode 100644 arch/arm/boot/dts/r8a7742.dtsi

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
