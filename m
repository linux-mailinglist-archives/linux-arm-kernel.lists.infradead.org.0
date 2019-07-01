Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39107525A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bfZ3JmwGgFXRVNhMqJIn6zdhG5XjbL9vsWdvVqt2MXc=; b=PLclwjS+YIKvMa
	T+pF323CGDnOTMujNv6+n9ZNCQVPwKE3ryLOGL9ZqSD48OWbYYbG+Zpjk0q3ttI3beuVl0nHwTWWx
	NZRpwZJpusicDCUpyRL3wb6/X3hVnRtOdSfJGL0avqRqKvATHdkaddz048ElqZQb5Pc3Mvuurzyeo
	IS2RCVNYaxpi0vB+YSmu3drJZ2H0h1Gw6vcA1N4iG11G4/3MBj+Kk8S5QAfzlibEsFXsnEL8DVr5G
	BnYUpzkzTpeWUpDpnwUqZOkwixx9yDlrk+m1HGDq3EojekU2L+y3mf9Z26WM2gmI2q5rmbYVSTFBE
	xil13mO0UUBRp9kwjZCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgL1-0002fs-T3; Tue, 25 Jun 2019 07:57:59 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgKk-0002eo-Gy; Tue, 25 Jun 2019 07:57:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5P7vavA024342;
 Tue, 25 Jun 2019 02:57:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561449456;
 bh=Zqe/xzwynZqz0llmH9YDfghZsEJytMmd21yMBjUKFhQ=;
 h=From:To:CC:Subject:Date;
 b=tTJiWeeSmcHGYSLnLhywOVDW836rvDPrMcQ0I33ffGlQ+cZdg3IfmVXKEIjjIgVCZ
 9XhqpyZGne9IfeWE8m27ZYoI++LAxxhk1x/3oLSEAecgJz2kHpMR0nW3KHB1IP3OHU
 7ZJWtx0mbylQA/b7ktA0mJJ2ET1yS2DwSvu3cOWg=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5P7vaHE079013
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Jun 2019 02:57:36 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 25
 Jun 2019 02:57:36 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 25 Jun 2019 02:57:36 -0500
Received: from a0132425.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5P7vWTg105511;
 Tue, 25 Jun 2019 02:57:32 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Boris Brezillon
 <bbrezillon@kernel.org>, Marek Vasut <marek.vasut@gmail.com>, Richard
 Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v8 0/5] MTD: Add Initial Hyperbus support
Date: Tue, 25 Jun 2019 13:27:41 +0530
Message-ID: <20190625075746.10439-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005742_664763_63984CA8 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Tokunori Ikegami <ikegami.t@gmail.com>, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change log:
Since v7:
Fix up status register polling to support banked flashes in patch 1/5.
Fix up comments by Sergei on documentation and style

Since v6:
Fix up DT bindings for TI HBMC driver to move hyperbus node out of
syscon

Since v5:
Fix up DT bindings comments for TI HBMC driver
Move calibration sequence out of core into TI HBMC driver

Since v4:
Fix Rob's comments on dt-bindings of TI HBMC driver

Since v3:
* Drop reading QRY string twice in hyperbus_calibrate()
* Fix doc/misc comments on v3.

Since RFC v2:
* use map_word_xxx() for handling status register to support interleaved
  flashes as suggested by Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
* Report error status/messages on erase/program failure by looking at
  status register bits.
* Add "cfi-flash" as fallback compatible for cypress,hyperflash
* Add support to select between HyperBus and OSPI using mmio mux

Since RFC v1:
* Re-work Hyperbus core to provide separate struct representation for
  controller and slave devices
* Rename all files and func names to have hyperbus_ prefix
* Provide default calibration routine for use by controller drivers
* Fix up errors with patch spliting
* Address comments by Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cypress HyperBus is Low Signal Count, High Performance Double Data Rate Bus
interface between a host system master and one or more slave interfaces.
HyperBus is used to connect microprocessor, microcontroller, or ASIC
devices with random access NOR flash memory(called HyperFlash) or
self refresh DRAM(called HyperRAM).

Its a 8-bit data bus (DQ[7:0]) with  Read-Write Data Strobe (RWDS)
signal and either Single-ended clock(3.0V parts) or Differential clock
(1.8V parts). It uses ChipSelect lines to select b/w multiple slaves.
At bus level, it follows a separate protocol described in HyperBus
specification[1].

HyperFlash follows CFI AMD/Fujitsu Extended Command Set (0x0002) similar
to that of existing parallel NORs. Since Hyperbus is x8 DDR bus,
its equivalent to x16 parallel NOR flash wrt bits per clk. But Hyperbus
operates at >166MHz frequencies.
HyperRAM provides direct random read/write access to flash memory
array.
Framework is modelled along the lines of spi-nor framework. HyperBus
memory controller(HBMC) drivers call hyperbus_register_device() to register a
single HyperFlash device. HyperFlash core parses MMIO access
information from DT, sets up the map_info struct, probes CFI flash and
registers it with MTD framework.

This is an early RFC, to know if its okay to use maps framework and existing
CFI compliant flash support code to support Hyperflash
Also would like input on different types of HBMC master IPs out there
and their programming sequences.
Would appreciate any testing/review.

Tested on modified TI AM654 EVM with Cypress Hyperflash S26KS512 by
creating a UBIFS partition and writing and reading files to it.
Stress tested by writing/reading 16MB flash repeatedly at different
offsets using dd commmand.

HyperBus specification can be found at[1]
HyperFlash datasheet can be found at[2]
TI's HBMC controller details at[3]

[1] https://www.cypress.com/file/213356/download
[2] https://www.cypress.com/file/213346/download
[3] http://www.ti.com/lit/ug/spruid7b/spruid7b.pdf
    Table 12-5741. HyperFlash Access Sequence


Vignesh Raghavendra (5):
  mtd: cfi_cmdset_0002: Add support for polling status register
  dt-bindings: mtd: Add binding documentation for HyperFlash
  mtd: Add support for HyperBus memory devices
  dt-bindings: mtd: Add bindings for TI's AM654 HyperBus memory
    controller
  mtd: hyperbus: Add driver for TI's HyperBus memory controller

 .../bindings/mtd/cypress,hyperflash.txt       |  13 ++
 .../devicetree/bindings/mtd/ti,am654-hbmc.txt |  51 ++++++
 MAINTAINERS                                   |   8 +
 drivers/mtd/Kconfig                           |   2 +
 drivers/mtd/Makefile                          |   1 +
 drivers/mtd/chips/cfi_cmdset_0002.c           | 130 +++++++++++++--
 drivers/mtd/hyperbus/Kconfig                  |  23 +++
 drivers/mtd/hyperbus/Makefile                 |   4 +
 drivers/mtd/hyperbus/hbmc-am654.c             | 141 ++++++++++++++++
 drivers/mtd/hyperbus/hyperbus-core.c          | 154 ++++++++++++++++++
 include/linux/mtd/cfi.h                       |   7 +
 include/linux/mtd/hyperbus.h                  |  86 ++++++++++
 12 files changed, 603 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mtd/cypress,hyperflash.txt
 create mode 100644 Documentation/devicetree/bindings/mtd/ti,am654-hbmc.txt
 create mode 100644 drivers/mtd/hyperbus/Kconfig
 create mode 100644 drivers/mtd/hyperbus/Makefile
 create mode 100644 drivers/mtd/hyperbus/hbmc-am654.c
 create mode 100644 drivers/mtd/hyperbus/hyperbus-core.c
 create mode 100644 include/linux/mtd/hyperbus.h

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
