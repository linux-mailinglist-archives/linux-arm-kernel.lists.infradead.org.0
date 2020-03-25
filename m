Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A958191F1E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 03:33:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=InelmatvmJx5vGpIOG9IcANIxkBEOupnscPQ8LfCBGQ=; b=jI4dv6wurRGAYD
	IEhoN6T/8JOW/xaVoz97f6xMmZIbHOGmu9XV1aSdviW7/9Z4RXhrvVZtK+TMZoSTCMlSLE2zjY+ZU
	xpwJPYlw0wqGjdoTNPaT3aAX0VvEM7YCX5MfHXjf4KIeBd3oniFI0blAlP7k25hChmOjFuVWbLSlC
	uH0tnKCOdTfYXuE6SQzDbH7GTF90XuVNyQJ+z+GsfEMDubM28dFfPN44vVCIwUImwGOK3Wh/JdgXS
	hFUBMzKQbUH3N7Xi0mMFKJCUvPWMkyHqMizuIvNk5a/gwcBNd1DUbcgwGtc3N76xLPmcpW760Yp1K
	mrpQV/P7bv47G4tFe9Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvrD-0003yE-QF; Wed, 25 Mar 2020 02:33:27 +0000
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvr6-0003wK-RE; Wed, 25 Mar 2020 02:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585103391; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=RoTb4kC5GgUMShP6k070ckUx+pQjKkreZ+DIkNKvl5E=;
 b=W/jVXBb3rU1ZixAei7Ey/PGfP3D3ZbRAMq0Kzen1ORcgwH16AkbkgMf9YShmMIt+
 8k712+8guc5+r6nQ5v6VZ5gikbL5izqhsmrdtQKH3jGDpVTxcKyQsZgykrnieTexuLl
 r9/0C/bSWCtLhZkcmR1DGdV0AQ35RmgTIvqejpCI=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1585103387861247.16580834429317;
 Wed, 25 Mar 2020 10:29:47 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200325022916.106641-1-jiaxun.yang@flygoat.com>
Subject: [PATCH v7 00/12] Modernize Loongson64 Machine v6
Date: Wed, 25 Mar 2020 10:28:16 +0800
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20190827085302.5197-1-jiaxun.yang@flygoat.com>
References: 
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_193321_352510_DA6CAD15 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [124.251.121.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-doc@vger.kernel.org,
 "H. Nikolaus Schaller" <hns@goldelico.com>, John Crispin <john@phrozen.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Paul Cercueil <paul@crapouillou.net>,
 linux-ide@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Huacai Chen <chenhc@lemote.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Andi Kleen <ak@linux.intel.com>, Paul Burton <paulburton@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <maz@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Yinglu Yang <yangyinglu@loongson.cn>,
 devicetree@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Manuel Lauss <manuel.lauss@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Loongson have a long history of contributing their code to mainline kernel.
However, it seems like recent years, they are focusing on maintain a kernel by themselves
rather than contribute there code to the community.

Kernel is progress rapidly too. Their code slept in mainline for a long peroid without proper
maintainance and became outdated.

This patchset brings modern DeviceTree and irqchip support to the Loongson64 machine, and leaves
Loongson 2e/f alone since they are too legacy to touch.

PCI and some legacy I/O device will be converted later, together with LS7A PCH support.

v1:
- dt-bindings fixup according to Rob's comments
- irqchip fixup according to Marc's comments
- ls3-iointc: Make Core&IP map per-IRQ
- Regenerate kconfigs
- Typo & style improvements

v2:
- dt-bindings: Fix IOINTC, collect Rob's review tag
- dtbs: Drop CPU Node, merge different ways according to Huacai and Paul's comments

v3:
- Split code have been merged
- Fix IOINTC binding to allow map any child IRQ to and parent
- Convert "HTINTC" into "HTPIC", which mixed HT vectors processing and i8259
- Naming style fix according to Huacai's suggestions

v4:
- More naming related fixes

v5:
- irqchip fixes thanks to maz (see per file changelog)
- Remove unnecessary details in dt-bindings
- Credit Huacai with Co-developed-by

v6:
- HTPIC minor fix
- device binding naming fix 

v7:
- Add Huacai's sign-off
- Fix all reasonable checkpatch warnings

Jiaxun Yang (12):
  irqchip: Add driver for Loongson I/O Local Interrupt Controller
  irqchip: loongson-liointc: Workaround LPC IRQ Errata
  dt-bindings: interrupt-controller: Add Loongson LIOINTC
  irqchip: Add driver for Loongson-3 HyperTransport PIC controller
  dt-bindings: interrupt-controller: Add Loongson-3 HTPIC
  irqchip: mips-cpu: Convert to simple domain
  MIPS: Loongson64: Drop legacy IRQ code
  dt-bindings: mips: Add loongson boards
  MIPS: Loongson64: Add generic dts
  MIPS: Loongson64: Load built-in dtbs
  MIPS: Loongson64: Move MIPS_CPU_IRQ_BASE
  MAINTAINERS: Update Loongson64 entry

 .../interrupt-controller/loongson,htpic.yaml  |  59 ++++
 .../loongson,liointc.yaml                     |  93 ++++++
 .../bindings/mips/loongson/devices.yaml       |  27 ++
 MAINTAINERS                                   |   1 +
 arch/mips/Kconfig                             |   6 +-
 arch/mips/boot/dts/Makefile                   |   1 +
 arch/mips/boot/dts/loongson/Makefile          |   4 +
 .../boot/dts/loongson/loongson3-package.dtsi  |  64 +++++
 .../dts/loongson/loongson3_4core_rs780e.dts   |  25 ++
 .../dts/loongson/loongson3_8core_rs780e.dts   |  25 ++
 arch/mips/boot/dts/loongson/rs780e-pch.dtsi   |  26 ++
 arch/mips/include/asm/i8259.h                 |   1 +
 .../include/asm/mach-loongson64/boot_param.h  |   2 +
 .../asm/mach-loongson64/builtin_dtbs.h        |  13 +
 arch/mips/include/asm/mach-loongson64/irq.h   |  32 +--
 .../include/asm/mach-loongson64/loongson.h    |   1 +
 arch/mips/loongson64/Makefile                 |   2 +-
 arch/mips/loongson64/env.c                    |  23 ++
 arch/mips/loongson64/init.c                   |   6 +
 arch/mips/loongson64/irq.c                    | 162 -----------
 arch/mips/loongson64/setup.c                  |  16 ++
 arch/mips/loongson64/smp.c                    |  28 +-
 drivers/irqchip/Kconfig                       |  19 ++
 drivers/irqchip/Makefile                      |   2 +
 drivers/irqchip/irq-loongson-htpic.c          | 149 ++++++++++
 drivers/irqchip/irq-loongson-liointc.c        | 270 ++++++++++++++++++
 drivers/irqchip/irq-mips-cpu.c                |   2 +-
 27 files changed, 846 insertions(+), 213 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/loongson,htpic.yaml
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/loongson,liointc.yaml
 create mode 100644 Documentation/devicetree/bindings/mips/loongson/devices.yaml
 create mode 100644 arch/mips/boot/dts/loongson/Makefile
 create mode 100644 arch/mips/boot/dts/loongson/loongson3-package.dtsi
 create mode 100644 arch/mips/boot/dts/loongson/loongson3_4core_rs780e.dts
 create mode 100644 arch/mips/boot/dts/loongson/loongson3_8core_rs780e.dts
 create mode 100644 arch/mips/boot/dts/loongson/rs780e-pch.dtsi
 create mode 100644 arch/mips/include/asm/mach-loongson64/builtin_dtbs.h
 delete mode 100644 arch/mips/loongson64/irq.c
 create mode 100644 drivers/irqchip/irq-loongson-htpic.c
 create mode 100644 drivers/irqchip/irq-loongson-liointc.c

-- 
2.26.0.rc2



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
