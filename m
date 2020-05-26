Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0701A6F4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 00:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mS8sTcuCL4IdSpCODkVpP920GBTvzXGZJFKqocMYunk=; b=m8ilRVDrEXmokbWaNWdxpyc08U
	3SiM3KELM8d2pJuvqq5aP9v+95twx/n8K0lrFdmRxxhWfix2UPS+0UXT9YXKNdID/tUO/Ob87fZcg
	XmVMB2/C7FMJjCFEdRNrQ/uO4x0lJuRNxZHaPA6+ep5PWjuCCzW2KZ2gP+l8/+7s2vdLw1vTAPI6m
	/y1xdwSOs2j8ZD9j5hRbIlAIDh2ioMbq8cybMePjCCGYzO0LmZx4Vg3y2DVOsIZStC6VaZBc/oAj4
	nwAEEA406q7IalTyQP5S447EpeOEMxQkD7UfiA5vrq7OO+n97atqd4hjNv1l8PraFEPfIQSpObGsG
	SftYBrFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO7bo-0006uk-BW; Mon, 13 Apr 2020 22:31:16 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7aV-0003d6-4b
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 22:30:00 +0000
IronPort-SDR: ZTIpUkNHjbyo3nQqekIVd9AZ2YkYsGnp1Erah8+p+gZeYz8iFr0A0dB14SRXHRnxdUGLRtv/Tr
 jxj2QEm44kmA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 15:29:54 -0700
IronPort-SDR: zP9TCOsam5qQt0rLbhN1ABYVR4SMNPBkpPyU7OJPnb6mTTIrCcaB7K1U9yX4MEBZ8ZZMxVZnjm
 OWzQPUGsnYcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="399760714"
Received: from epcorona-mobl.amr.corp.intel.com (HELO
 epcorona-moblu.amr.corp.intel.com) ([10.254.189.204])
 by orsmga004.jf.intel.com with ESMTP; 13 Apr 2020 15:29:52 -0700
From: Ernesto Corona <ernesto.corona@intel.com>
To: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH v29 3/6] Add Aspeed SoC 24xx and 25xx families JTAG master
 driver
Date: Mon, 13 Apr 2020 15:29:17 -0700
Message-Id: <20200413222920.4722-4-ernesto.corona@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413222920.4722-1-ernesto.corona@intel.com>
References: <20200413222920.4722-1-ernesto.corona@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_152956_205595_F67CBECC 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vadim Pasternak <vadimp@mellanox.com>, Andrew Jeffery <andrew@aj.id.au>,
 Steven Filary <steven.a.filary@intel.com>, Amithash Prasad <amithash@fb.com>,
 Jiri Pirko <jiri@mellanox.com>, Rgrs <rgrs@protonmail.com>,
 Joel Stanley <joel@jms.id.au>, Philipp Zabel <p.zabel@pengutronix.de>,
 Ernesto Corona <ernesto.corona@intel.com>, Patrick Williams <patrickw3@fb.com>,
 Oleksandr Shamray <oleksandrs@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Driver adds support of Aspeed 2500/2400 series SOC JTAG master controller.

Driver implements the following jtag ops:
- freq_get;
- freq_set;
- status_get;
- status_set
- xfer;
- mode_set;
- bitbang;
- enable;
- disable;

It has been tested on Mellanox system with BMC equipped with
Aspeed 2520 SoC for programming CPLD devices.

It has also been tested on Intel system using Aspeed 25xx SoC
for JTAG communication.

Signed-off-by: Oleksandr Shamray <oleksandrs@mellanox.com>
Signed-off-by: Jiri Pirko <jiri@mellanox.com>
Signed-off-by: Ernesto Corona <ernesto.corona@intel.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Philippe Ombredanne <pombredanne@nexb.com>
Acked-by: Joel Stanley <joel@jms.id.au>
Cc: Joel Stanley <joel@jms.id.au>
Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Steven Filary <steven.a.filary@intel.com>
Cc: Vadim Pasternak <vadimp@mellanox.com>
Cc: Amithash Prasad <amithash@fb.com>
Cc: Patrick Williams <patrickw3@fb.com>
Cc: Rgrs <rgrs@protonmail.com>
---
v28->v29
v27->v28
Comments pointed by Steven Filary <steven.a.filary@intel.com>
- Replace JTAG_IOCRUNTEST with JTAG_SIOCSTATE adding support for all TAPC
  end states in SW mode using a lookup table to navigate across states.
- Add support for simultaneous READ/WRITE transfers(JTAG_READ_WRITE_XFER).
- Support for switching JTAG controller mode between slave and master
  mode.
- Setup JTAG controller mode to master only when the driver is opened,
  letting other HW to own the JTAG bus when it isn't in use.
- Include JTAG bit bang IOCTL for low level JTAG control usage
  (JTAG_IOCBITBANG).
- Add debug traces.
- Add support for register polling (default) due it is 3 times faster than
  interrupt mode. Define USE_INTERRUPTS macro to enable interrupt usage.
- Remove unnecessary delays for aspeed_jtag_status_set function. It makes
  SW mode 4 times faster.
- Clean data buffer on aspeed_jtag_xfer_sw before tdo writes to avoid data
  output corruption for read operations in SW mode.
- Correct register settings for HW mode transfer operations.
- Propagate ret codes all the way from low level functions up to
  JTAG_IOCXFER call.
- Support for partitioned transfers. Single JTAG transfer through
  multiples JTAG_IOCXFER calls. Now end transmission(scan_end) also
  evaluates transfer end state.

v26->v27
Changes made by Oleksandr Shamray <oleksandrs@mellamnox.com>
- change aspeed_jtag_sw_delay to udelay function in bit-bang operation

v25->v26
v24->v25
Comments pointed by Greg KH <gregkh@linuxfoundation.org>
- reduced debug printouts

v23->v24
v22->v23
v21->v22
Comments pointed by Andy Shevchenko <andy.shevchenko@gmail.com>
- rearrange ASPEED register defines
- simplified JTAG divider calculation formula
- change delay function in bit-bang operation
- add helper functions for TAP states switching
- remove unnecessary comments
- remove redundant debug messages
- make dines for repetative register bit sets
- fixed indentation
- change checks from negative to positive
- add error check for clk_prepare_enable
- rework driver alloc/register to devm_ variant
- Increasing line length up to 85 in order to improve readability

v20->v21
v19->v20
Notifications from kbuild test robot <lkp@intel.com>
- add static declaration to 'aspeed_jtag_init' and
  'aspeed_jtag_deinit' functions

v18->v19
v17->v18
v16->v17
v15->v16
Comments pointed by Joel Stanley <joel.stan@gmail.com>
- Add reset_control on Jtag init/deinit

v14->v15
Comments pointed by Joel Stanley <joel.stan@gmail.com>
- Add ARCH_ASPEED || COMPILE_TEST to Kconfig
- remove unused offset variable
- remove "aspeed_jtag" from dev_err and dev_dbg messages
- change clk_prepare_enable initialisation order

v13->v14
Comments pointed by Philippe Ombredanne <pombredanne@nexb.com>
- Change style of head block comment from /**/ to //

v12->v13
Comments pointed by Philippe Ombredanne <pombredanne@nexb.com>
- Change jtag-aspeed.c licence type to
  SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note
  and reorder line with license- add reset descriptions in bndings file
 in description
Comments pointed by Kun Yi <kunyi@google.com>
- Changed capability check for aspeed,ast2400-jtag/ast200-jtag

v11->v12
Comments pointed by Chip Bilbrey <chip@bilbrey.org>
- Remove access mode from xfer and idle transactions
- Add new ioctl JTAG_SIOCMODE for set hw mode

v10->v11
v9->v10
V8->v9
Comments pointed by Arnd Bergmann <arnd@arndb.de>
- add *data parameter to xfer function prototype

v7->v8
Comments pointed by Joel Stanley <joel.stan@gmail.com>
- aspeed_jtag_init replace goto to return;
- change input variables type from __u32 to u32
  in functios freq_get, freq_set, status_get
- change sm_ variables type from char to u8
- in jatg_init add disable clocks on error case
- remove release_mem_region on error case
- remove devm_free_irq on jtag_deinit
- Fix misspelling Disabe/Disable
- Change compatible string to ast2400 and ast2000

v6->v7
Notifications from kbuild test robot <lkp@intel.com>
- Add include <linux/types.h> to jtag-asapeed.c

v5->v6
v4->v5
Comments pointed by Arnd Bergmann <arnd@arndb.de>
- Added HAS_IOMEM dependence in Kconfig to avoid
  "undefined reference to `devm_ioremap_resource'" error,
  because in some arch this not supported

v3->v4
Comments pointed by Arnd Bergmann <arnd@arndb.de>
- change transaction pointer tdio type  to __u64
- change internal status type from enum to __u32

v2->v3

v1->v2
Comments pointed by Greg KH <gregkh@linuxfoundation.org>
- change license type from GPLv2/BSD to GPLv2
---
 drivers/jtag/Kconfig       |   14 +
 drivers/jtag/Makefile      |    1 +
 drivers/jtag/jtag-aspeed.c | 1027 ++++++++++++++++++++++++++++++++++++
 3 files changed, 1042 insertions(+)
 create mode 100644 drivers/jtag/jtag-aspeed.c

diff --git a/drivers/jtag/Kconfig b/drivers/jtag/Kconfig
index 47771fcd3c5b..0cc163f9ad44 100644
--- a/drivers/jtag/Kconfig
+++ b/drivers/jtag/Kconfig
@@ -15,3 +15,17 @@ menuconfig JTAG
 
 	  To compile this driver as a module, choose M here: the module will
 	  be called jtag.
+
+menuconfig JTAG_ASPEED
+	tristate "Aspeed SoC JTAG controller support"
+	depends on JTAG && HAS_IOMEM
+	depends on ARCH_ASPEED || COMPILE_TEST
+	help
+	  This provides a support for Aspeed JTAG device, equipped on
+	  Aspeed SoC 24xx and 25xx families. Drivers allows programming
+	  of hardware devices, connected to SoC through the JTAG interface.
+
+	  If you want this support, you should say Y here.
+
+	  To compile this driver as a module, choose M here: the module will
+	  be called jtag-aspeed.
diff --git a/drivers/jtag/Makefile b/drivers/jtag/Makefile
index af374939a9e6..04a855e2df28 100644
--- a/drivers/jtag/Makefile
+++ b/drivers/jtag/Makefile
@@ -1 +1,2 @@
 obj-$(CONFIG_JTAG)		+= jtag.o
+obj-$(CONFIG_JTAG_ASPEED)	+= jtag-aspeed.o
diff --git a/drivers/jtag/jtag-aspeed.c b/drivers/jtag/jtag-aspeed.c
new file mode 100644
index 000000000000..254548762dc5
--- /dev/null
+++ b/drivers/jtag/jtag-aspeed.c
@@ -0,0 +1,1027 @@
+// SPDX-License-Identifier: GPL-2.0
+// drivers/jtag/aspeed-jtag.c
+//
+// Copyright (c) 2018 Mellanox Technologies. All rights reserved.
+// Copyright (c) 2018 Oleksandr Shamray <oleksandrs@mellanox.com>
+
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/interrupt.h>
+#include <linux/jtag.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+#include <linux/slab.h>
+#include <linux/types.h>
+#include <linux/delay.h>
+#include <uapi/linux/jtag.h>
+
+#define ASPEED_SCU_RESET_JTAG		BIT(22)
+
+#define ASPEED_JTAG_DATA		0x00
+#define ASPEED_JTAG_INST		0x04
+#define ASPEED_JTAG_CTRL		0x08
+#define ASPEED_JTAG_ISR			0x0C
+#define ASPEED_JTAG_SW			0x10
+#define ASPEED_JTAG_TCK			0x14
+#define ASPEED_JTAG_EC			0x18
+
+#define ASPEED_JTAG_DATA_MSB		0x01
+#define ASPEED_JTAG_DATA_CHUNK_SIZE	0x20
+
+/* ASPEED_JTAG_CTRL: Engine Control */
+#define ASPEED_JTAG_CTL_ENG_EN		BIT(31)
+#define ASPEED_JTAG_CTL_ENG_OUT_EN	BIT(30)
+#define ASPEED_JTAG_CTL_FORCE_TMS	BIT(29)
+#define ASPEED_JTAG_CTL_IR_UPDATE	BIT(26)
+#define ASPEED_JTAG_CTL_INST_LEN(x)	((x) << 20)
+#define ASPEED_JTAG_CTL_LASPEED_INST	BIT(17)
+#define ASPEED_JTAG_CTL_INST_EN		BIT(16)
+#define ASPEED_JTAG_CTL_DR_UPDATE	BIT(10)
+#define ASPEED_JTAG_CTL_DATA_LEN(x)	((x) << 4)
+#define ASPEED_JTAG_CTL_LASPEED_DATA	BIT(1)
+#define ASPEED_JTAG_CTL_DATA_EN		BIT(0)
+
+/* ASPEED_JTAG_ISR : Interrupt status and enable */
+#define ASPEED_JTAG_ISR_INST_PAUSE	BIT(19)
+#define ASPEED_JTAG_ISR_INST_COMPLETE	BIT(18)
+#define ASPEED_JTAG_ISR_DATA_PAUSE	BIT(17)
+#define ASPEED_JTAG_ISR_DATA_COMPLETE	BIT(16)
+#define ASPEED_JTAG_ISR_INST_PAUSE_EN	BIT(3)
+#define ASPEED_JTAG_ISR_INST_COMPLETE_EN BIT(2)
+#define ASPEED_JTAG_ISR_DATA_PAUSE_EN	BIT(1)
+#define ASPEED_JTAG_ISR_DATA_COMPLETE_EN BIT(0)
+#define ASPEED_JTAG_ISR_INT_EN_MASK	GENMASK(3, 0)
+#define ASPEED_JTAG_ISR_INT_MASK	GENMASK(19, 16)
+
+/* ASPEED_JTAG_SW : Software Mode and Status */
+#define ASPEED_JTAG_SW_MODE_EN		BIT(19)
+#define ASPEED_JTAG_SW_MODE_TCK		BIT(18)
+#define ASPEED_JTAG_SW_MODE_TMS		BIT(17)
+#define ASPEED_JTAG_SW_MODE_TDIO	BIT(16)
+
+/* ASPEED_JTAG_TCK : TCK Control */
+#define ASPEED_JTAG_TCK_DIVISOR_MASK	GENMASK(10, 0)
+#define ASPEED_JTAG_TCK_GET_DIV(x)	((x) & ASPEED_JTAG_TCK_DIVISOR_MASK)
+
+/* ASPEED_JTAG_EC : Controller set for go to IDLE */
+#define ASPEED_JTAG_EC_GO_IDLE		BIT(0)
+
+#define ASPEED_JTAG_IOUT_LEN(len) \
+	(ASPEED_JTAG_CTL_ENG_EN | \
+	 ASPEED_JTAG_CTL_ENG_OUT_EN | \
+	 ASPEED_JTAG_CTL_INST_LEN(len))
+
+#define ASPEED_JTAG_DOUT_LEN(len) \
+	(ASPEED_JTAG_CTL_ENG_EN | \
+	 ASPEED_JTAG_CTL_ENG_OUT_EN | \
+	 ASPEED_JTAG_CTL_DATA_LEN(len))
+
+#define ASPEED_JTAG_SW_TDIO (ASPEED_JTAG_SW_MODE_EN | ASPEED_JTAG_SW_MODE_TDIO)
+
+#define ASPEED_JTAG_GET_TDI(direction, byte) \
+	(((direction) & JTAG_WRITE_XFER) ? byte : UINT_MAX)
+
+#define ASPEED_JTAG_TCK_WAIT		10
+#define ASPEED_JTAG_RESET_CNTR		10
+#define WAIT_ITERATIONS		75
+
+/*#define USE_INTERRUPTS*/
+
+static const char * const regnames[] = {
+	[ASPEED_JTAG_DATA] = "ASPEED_JTAG_DATA",
+	[ASPEED_JTAG_INST] = "ASPEED_JTAG_INST",
+	[ASPEED_JTAG_CTRL] = "ASPEED_JTAG_CTRL",
+	[ASPEED_JTAG_ISR]  = "ASPEED_JTAG_ISR",
+	[ASPEED_JTAG_SW]   = "ASPEED_JTAG_SW",
+	[ASPEED_JTAG_TCK]  = "ASPEED_JTAG_TCK",
+	[ASPEED_JTAG_EC]   = "ASPEED_JTAG_EC",
+};
+
+#define ASPEED_JTAG_NAME		"jtag-aspeed"
+
+struct aspeed_jtag {
+	void __iomem			*reg_base;
+	void __iomem			*scu_base;
+	struct device			*dev;
+	struct clk			*pclk;
+	enum jtag_endstate		status;
+	int				irq;
+	struct reset_control		*rst;
+	u32				flag;
+	wait_queue_head_t		jtag_wq;
+	u32				mode;
+};
+
+/*
+ * This structure represents a TMS cycle, as expressed in a set of bits and a
+ * count of bits (note: there are no start->end state transitions that require
+ * more than 1 byte of TMS cycles)
+ */
+struct tms_cycle {
+	unsigned char		tmsbits;
+	unsigned char		count;
+};
+
+/*
+ * This is the complete set TMS cycles for going from any TAP state to any
+ * other TAP state, following a "shortest path" rule.
+ */
+static const struct tms_cycle _tms_cycle_lookup[][16] = {
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* TLR  */{{0x00, 0}, {0x00, 1}, {0x02, 2}, {0x02, 3}, {0x02, 4}, {0x0a, 4},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x0a, 5}, {0x2a, 6}, {0x1a, 5}, {0x06, 3}, {0x06, 4}, {0x06, 5},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x16, 5}, {0x16, 6}, {0x56, 7}, {0x36, 6} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* RTI  */{{0x07, 3}, {0x00, 0}, {0x01, 1}, {0x01, 2}, {0x01, 3}, {0x05, 3},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x05, 4}, {0x15, 5}, {0x0d, 4}, {0x03, 2}, {0x03, 3}, {0x03, 4},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x0b, 4}, {0x0b, 5}, {0x2b, 6}, {0x1b, 5} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* SelDR*/{{0x03, 2}, {0x03, 3}, {0x00, 0}, {0x00, 1}, {0x00, 2}, {0x02, 2},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x02, 3}, {0x0a, 4}, {0x06, 3}, {0x01, 1}, {0x01, 2}, {0x01, 3},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x05, 3}, {0x05, 4}, {0x15, 5}, {0x0d, 4} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* CapDR*/{{0x1f, 5}, {0x03, 3}, {0x07, 3}, {0x00, 0}, {0x00, 1}, {0x01, 1},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x01, 2}, {0x05, 3}, {0x03, 2}, {0x0f, 4}, {0x0f, 5}, {0x0f, 6},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x2f, 6}, {0x2f, 7}, {0xaf, 8}, {0x6f, 7} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* SDR  */{{0x1f, 5}, {0x03, 3}, {0x07, 3}, {0x07, 4}, {0x00, 0}, {0x01, 1},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x01, 2}, {0x05, 3}, {0x03, 2}, {0x0f, 4}, {0x0f, 5}, {0x0f, 6},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x2f, 6}, {0x2f, 7}, {0xaf, 8}, {0x6f, 7} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* Ex1DR*/{{0x0f, 4}, {0x01, 2}, {0x03, 2}, {0x03, 3}, {0x02, 3}, {0x00, 0},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x00, 1}, {0x02, 2}, {0x01, 1}, {0x07, 3}, {0x07, 4}, {0x07, 5},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x17, 5}, {0x17, 6}, {0x57, 7}, {0x37, 6} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* PDR  */{{0x1f, 5}, {0x03, 3}, {0x07, 3}, {0x07, 4}, {0x01, 2}, {0x05, 3},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x00, 0}, {0x01, 1}, {0x03, 2}, {0x0f, 4}, {0x0f, 5}, {0x0f, 6},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x2f, 6}, {0x2f, 7}, {0xaf, 8}, {0x6f, 7} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* Ex2DR*/{{0x0f, 4}, {0x01, 2}, {0x03, 2}, {0x03, 3}, {0x00, 1}, {0x02, 2},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x02, 3}, {0x00, 0}, {0x01, 1}, {0x07, 3}, {0x07, 4}, {0x07, 5},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x17, 5}, {0x17, 6}, {0x57, 7}, {0x37, 6} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* UpdDR*/{{0x07, 3}, {0x00, 1}, {0x01, 1}, {0x01, 2}, {0x01, 3}, {0x05, 3},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x05, 4}, {0x15, 5}, {0x00, 0}, {0x03, 2}, {0x03, 3}, {0x03, 4},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x0b, 4}, {0x0b, 5}, {0x2b, 6}, {0x1b, 5} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* SelIR*/{{0x01, 1}, {0x01, 2}, {0x05, 3}, {0x05, 4}, {0x05, 5}, {0x15, 5},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x15, 6}, {0x55, 7}, {0x35, 6}, {0x00, 0}, {0x00, 1}, {0x00, 2},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x02, 2}, {0x02, 3}, {0x0a, 4}, {0x06, 3} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* CapIR*/{{0x1f, 5}, {0x03, 3}, {0x07, 3}, {0x07, 4}, {0x07, 5}, {0x17, 5},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x17, 6}, {0x57, 7}, {0x37, 6}, {0x0f, 4}, {0x00, 0}, {0x00, 1},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x01, 1}, {0x01, 2}, {0x05, 3}, {0x03, 2} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* SIR  */{{0x1f, 5}, {0x03, 3}, {0x07, 3}, {0x07, 4}, {0x07, 5}, {0x17, 5},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x17, 6}, {0x57, 7}, {0x37, 6}, {0x0f, 4}, {0x0f, 5}, {0x00, 0},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x01, 1}, {0x01, 2}, {0x05, 3}, {0x03, 2} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* Ex1IR*/{{0x0f, 4}, {0x01, 2}, {0x03, 2}, {0x03, 3}, {0x03, 4}, {0x0b, 4},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x0b, 5}, {0x2b, 6}, {0x1b, 5}, {0x07, 3}, {0x07, 4}, {0x02, 3},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x00, 0}, {0x00, 1}, {0x02, 2}, {0x01, 1} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* PIR  */{{0x1f, 5}, {0x03, 3}, {0x07, 3}, {0x07, 4}, {0x07, 5}, {0x17, 5},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x17, 6}, {0x57, 7}, {0x37, 6}, {0x0f, 4}, {0x0f, 5}, {0x01, 2},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x05, 3}, {0x00, 0}, {0x01, 1}, {0x03, 2} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* Ex2IR*/{{0x0f, 4}, {0x01, 2}, {0x03, 2}, {0x03, 3}, {0x03, 4}, {0x0b, 4},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x0b, 5}, {0x2b, 6}, {0x1b, 5}, {0x07, 3}, {0x07, 4}, {0x00, 1},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x02, 2}, {0x02, 3}, {0x00, 0}, {0x01, 1} },
+
+/*	    TLR        RTI        SelDR      CapDR      SDR        Ex1DR*/
+/* UpdIR*/{{0x07, 3}, {0x00, 1}, {0x01, 1}, {0x01, 2}, {0x01, 3}, {0x05, 3},
+/*	    PDR        Ex2DR      UpdDR      SelIR      CapIR      SIR*/
+	    {0x05, 4}, {0x15, 5}, {0x0d, 4}, {0x03, 2}, {0x03, 3}, {0x03, 4},
+/*	    Ex1IR      PIR        Ex2IR      UpdIR*/
+	    {0x0b, 4}, {0x0b, 5}, {0x2b, 6}, {0x00, 0} },
+};
+
+static char *end_status_str[] = {
+	"tlr", "idle", "selDR", "capDR", "sDR", "ex1DR", "pDR", "ex2DR",
+	 "updDR", "selIR", "capIR", "sIR", "ex1IR", "pIR", "ex2IR", "updIR"
+};
+
+static u32 aspeed_jtag_read(struct aspeed_jtag *aspeed_jtag, u32 reg)
+{
+	u32 val = readl(aspeed_jtag->reg_base + reg);
+
+	dev_dbg(aspeed_jtag->dev, "read:%s val = 0x%08x\n", regnames[reg], val);
+	return val;
+}
+
+static void
+aspeed_jtag_write(struct aspeed_jtag *aspeed_jtag, u32 val, u32 reg)
+{
+	dev_dbg(aspeed_jtag->dev, "write:%s val = 0x%08x\n",
+		regnames[reg], val);
+	writel(val, aspeed_jtag->reg_base + reg);
+}
+
+static int aspeed_jtag_freq_set(struct jtag *jtag, u32 freq)
+{
+	struct aspeed_jtag *aspeed_jtag = jtag_priv(jtag);
+	unsigned long apb_frq;
+	u32 tck_val;
+	u16 div;
+
+	apb_frq = clk_get_rate(aspeed_jtag->pclk);
+	if (!apb_frq)
+		return -ENOTSUPP;
+
+	div = (apb_frq - 1) / freq;
+	tck_val = aspeed_jtag_read(aspeed_jtag, ASPEED_JTAG_TCK);
+	aspeed_jtag_write(aspeed_jtag,
+			  (tck_val & ~ASPEED_JTAG_TCK_DIVISOR_MASK) | div,
+			  ASPEED_JTAG_TCK);
+	return 0;
+}
+
+static int aspeed_jtag_freq_get(struct jtag *jtag, u32 *frq)
+{
+	struct aspeed_jtag *aspeed_jtag = jtag_priv(jtag);
+	u32 pclk;
+	u32 tck;
+
+	pclk = clk_get_rate(aspeed_jtag->pclk);
+	tck = aspeed_jtag_read(aspeed_jtag, ASPEED_JTAG_TCK);
+	*frq = pclk / (ASPEED_JTAG_TCK_GET_DIV(tck) + 1);
+
+	return 0;
+}
+
+static inline void aspeed_jtag_slave(struct aspeed_jtag *aspeed_jtag)
+{
+	u32 scu_reg = readl(aspeed_jtag->scu_base);
+
+	writel(scu_reg | ASPEED_SCU_RESET_JTAG, aspeed_jtag->scu_base);
+}
+
+static inline void aspeed_jtag_master(struct aspeed_jtag *aspeed_jtag)
+{
+	u32 scu_reg = readl(aspeed_jtag->scu_base);
+
+	writel(scu_reg & ~ASPEED_SCU_RESET_JTAG, aspeed_jtag->scu_base);
+
+	aspeed_jtag_write(aspeed_jtag, (ASPEED_JTAG_CTL_ENG_EN |
+					ASPEED_JTAG_CTL_ENG_OUT_EN),
+					ASPEED_JTAG_CTRL);
+
+	aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_SW_MODE_EN |
+			ASPEED_JTAG_SW_MODE_TDIO,
+			ASPEED_JTAG_SW);
+	aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_ISR_INST_PAUSE |
+			ASPEED_JTAG_ISR_INST_COMPLETE |
+			ASPEED_JTAG_ISR_DATA_PAUSE |
+			ASPEED_JTAG_ISR_DATA_COMPLETE |
+			ASPEED_JTAG_ISR_INST_PAUSE_EN |
+			ASPEED_JTAG_ISR_INST_COMPLETE_EN |
+			ASPEED_JTAG_ISR_DATA_PAUSE_EN |
+			ASPEED_JTAG_ISR_DATA_COMPLETE_EN,
+			ASPEED_JTAG_ISR);  /* Enable Interrupt */
+}
+
+static int aspeed_jtag_mode_set(struct jtag *jtag, struct jtag_mode *jtag_mode)
+{
+	struct aspeed_jtag *aspeed_jtag = jtag_priv(jtag);
+
+	switch (jtag_mode->feature) {
+	case JTAG_XFER_MODE:
+		aspeed_jtag->mode = jtag_mode->mode;
+		break;
+	case JTAG_CONTROL_MODE:
+		if (jtag_mode->mode == JTAG_SLAVE_MODE)
+			aspeed_jtag_slave(aspeed_jtag);
+		else if (jtag_mode->mode == JTAG_MASTER_MODE)
+			aspeed_jtag_master(aspeed_jtag);
+		break;
+	default:
+		return -EINVAL;
+	}
+	return 0;
+}
+
+static char aspeed_jtag_tck_cycle(struct aspeed_jtag *aspeed_jtag,
+				  u8 tms, u8 tdi)
+{
+	char tdo = 0;
+
+	/* TCK = 0 */
+	aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_SW_MODE_EN |
+			  (tms * ASPEED_JTAG_SW_MODE_TMS) |
+			  (tdi * ASPEED_JTAG_SW_MODE_TDIO), ASPEED_JTAG_SW);
+
+	aspeed_jtag_read(aspeed_jtag, ASPEED_JTAG_SW);
+
+	/* TCK = 1 */
+	aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_SW_MODE_EN |
+			  ASPEED_JTAG_SW_MODE_TCK |
+			  (tms * ASPEED_JTAG_SW_MODE_TMS) |
+			  (tdi * ASPEED_JTAG_SW_MODE_TDIO), ASPEED_JTAG_SW);
+
+	if (aspeed_jtag_read(aspeed_jtag, ASPEED_JTAG_SW) &
+	    ASPEED_JTAG_SW_MODE_TDIO)
+		tdo = 1;
+
+	return tdo;
+}
+
+static int aspeed_jtag_bitbang(struct jtag *jtag,
+			       struct tck_bitbang *tck_bitbang)
+{
+	struct aspeed_jtag *aspeed_jtag = jtag_priv(jtag);
+
+	tck_bitbang->tdo = aspeed_jtag_tck_cycle(aspeed_jtag,
+						 tck_bitbang->tms,
+						 tck_bitbang->tdi);
+	return 0;
+}
+
+static int aspeed_jtag_wait_instruction_pause(struct aspeed_jtag *aspeed_jtag)
+{
+	int res = 0;
+#ifdef USE_INTERRUPTS
+	res = wait_event_interruptible(aspeed_jtag->jtag_wq,
+				       aspeed_jtag->flag &
+				       ASPEED_JTAG_ISR_INST_PAUSE);
+	aspeed_jtag->flag &= ~ASPEED_JTAG_ISR_INST_PAUSE;
+#else
+	u32 status = 0;
+	u32 iterations = 0;
+
+	while ((status & ASPEED_JTAG_ISR_INST_PAUSE) == 0) {
+		status = aspeed_jtag_read(aspeed_jtag, ASPEED_JTAG_ISR);
+		dev_dbg(aspeed_jtag->dev, "%s  = 0x%08x\n", __func__, status);
+		iterations++;
+		if (iterations > WAIT_ITERATIONS) {
+			dev_err(aspeed_jtag->dev,
+				"aspeed_jtag driver timed out waiting for instruction pause complete\n");
+			res = -EFAULT;
+			break;
+		}
+		if ((status & ASPEED_JTAG_ISR_DATA_COMPLETE) == 0) {
+			if (iterations % 25 == 0)
+				usleep_range(1, 5);
+			else
+				udelay(1);
+		}
+	}
+	aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_ISR_INST_PAUSE |
+			  (status & 0xf),
+			  ASPEED_JTAG_ISR);
+#endif
+	return res;
+}
+
+static int
+aspeed_jtag_wait_instruction_complete(struct aspeed_jtag *aspeed_jtag)
+{
+	int res = 0;
+#ifdef USE_INTERRUPTS
+	res = wait_event_interruptible(aspeed_jtag->jtag_wq,
+				       aspeed_jtag->flag &
+				       ASPEED_JTAG_ISR_INST_COMPLETE);
+	aspeed_jtag->flag &= ~ASPEED_JTAG_ISR_INST_COMPLETE;
+#else
+	u32 status = 0;
+	u32 iterations = 0;
+
+	while ((status & ASPEED_JTAG_ISR_INST_COMPLETE) == 0) {
+		status = aspeed_jtag_read(aspeed_jtag, ASPEED_JTAG_ISR);
+		dev_dbg(aspeed_jtag->dev, "%s  = 0x%08x\n", __func__, status);
+		iterations++;
+		if (iterations > WAIT_ITERATIONS) {
+			dev_err(aspeed_jtag->dev,
+				"aspeed_jtag driver timed out waiting for instruction complete\n");
+			res = -EFAULT;
+			break;
+		}
+		if ((status & ASPEED_JTAG_ISR_DATA_COMPLETE) == 0) {
+			if (iterations % 25 == 0)
+				usleep_range(1, 5);
+			else
+				udelay(1);
+		}
+	}
+	aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_ISR_INST_COMPLETE |
+			  (status & 0xf),
+			  ASPEED_JTAG_ISR);
+#endif
+	return res;
+}
+
+static int
+aspeed_jtag_wait_data_pause_complete(struct aspeed_jtag *aspeed_jtag)
+{
+	int res = 0;
+#ifdef USE_INTERRUPTS
+	res = wait_event_interruptible(aspeed_jtag->jtag_wq,
+				       aspeed_jtag->flag &
+				       ASPEED_JTAG_ISR_DATA_PAUSE);
+	aspeed_jtag->flag &= ~ASPEED_JTAG_ISR_DATA_PAUSE;
+#else
+	u32 status = 0;
+	u32 iterations = 0;
+
+	while ((status & ASPEED_JTAG_ISR_DATA_PAUSE) == 0) {
+		status = aspeed_jtag_read(aspeed_jtag, ASPEED_JTAG_ISR);
+		dev_dbg(aspeed_jtag->dev, "%s  = 0x%08x\n", __func__, status);
+		iterations++;
+		if (iterations > WAIT_ITERATIONS) {
+			dev_err(aspeed_jtag->dev,
+				"aspeed_jtag driver timed out waiting for data pause complete\n");
+			res = -EFAULT;
+			break;
+		}
+		if ((status & ASPEED_JTAG_ISR_DATA_COMPLETE) == 0) {
+			if (iterations % 25 == 0)
+				usleep_range(1, 5);
+			else
+				udelay(1);
+		}
+	}
+	aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_ISR_DATA_PAUSE |
+			  (status & 0xf), ASPEED_JTAG_ISR);
+#endif
+	return res;
+}
+
+static int aspeed_jtag_wait_data_complete(struct aspeed_jtag *aspeed_jtag)
+{
+	int res = 0;
+#ifdef USE_INTERRUPTS
+	res = wait_event_interruptible(aspeed_jtag->jtag_wq,
+				       aspeed_jtag->flag &
+				       ASPEED_JTAG_ISR_DATA_COMPLETE);
+	aspeed_jtag->flag &= ~ASPEED_JTAG_ISR_DATA_COMPLETE;
+#else
+	u32 status = 0;
+	u32 iterations = 0;
+
+	while ((status & ASPEED_JTAG_ISR_DATA_COMPLETE) == 0) {
+		status = aspeed_jtag_read(aspeed_jtag, ASPEED_JTAG_ISR);
+		dev_dbg(aspeed_jtag->dev, "%s  = 0x%08x\n", __func__, status);
+		iterations++;
+		if (iterations > WAIT_ITERATIONS) {
+			dev_err(aspeed_jtag->dev,
+				"ast_jtag driver timed out waiting for data complete\n");
+			res = -EFAULT;
+			break;
+		}
+		if ((status & ASPEED_JTAG_ISR_DATA_COMPLETE) == 0) {
+			if (iterations % 25 == 0)
+				usleep_range(1, 5);
+			else
+				udelay(1);
+		}
+	}
+	aspeed_jtag_write(aspeed_jtag,
+			  ASPEED_JTAG_ISR_DATA_COMPLETE | (status & 0xf),
+			  ASPEED_JTAG_ISR);
+#endif
+	return res;
+}
+
+static void aspeed_jtag_set_tap_state(struct aspeed_jtag *aspeed_jtag,
+				      enum jtag_endstate endstate)
+{
+	int i = 0;
+	enum jtag_endstate from, to;
+
+	from = aspeed_jtag->status;
+	to = endstate;
+	for (i = 0; i < _tms_cycle_lookup[from][to].count; i++)
+		aspeed_jtag_tck_cycle(aspeed_jtag,
+			((_tms_cycle_lookup[from][to].tmsbits >> i) & 0x1), 0);
+	aspeed_jtag->status = endstate;
+}
+
+static void aspeed_jtag_end_tap_state_sw(struct aspeed_jtag *aspeed_jtag,
+					 struct jtag_end_tap_state *endstate)
+{
+	/* SW mode from curent tap state -> to end_state */
+	if (endstate->reset) {
+		int i = 0;
+
+		for (i = 0; i < ASPEED_JTAG_RESET_CNTR; i++)
+			aspeed_jtag_tck_cycle(aspeed_jtag, 1, 0);
+		aspeed_jtag->status = JTAG_STATE_TLRESET;
+	}
+
+	aspeed_jtag_set_tap_state(aspeed_jtag, endstate->endstate);
+}
+
+static int aspeed_jtag_status_set(struct jtag *jtag,
+				  struct jtag_end_tap_state *endstate)
+{
+	struct aspeed_jtag *aspeed_jtag = jtag_priv(jtag);
+
+	dev_dbg(aspeed_jtag->dev, "Set TAP state: %s\n",
+		end_status_str[endstate->endstate]);
+
+	if (!(aspeed_jtag->mode & JTAG_XFER_HW_MODE)) {
+		aspeed_jtag_end_tap_state_sw(aspeed_jtag, endstate);
+		return 0;
+	}
+
+	/* x TMS high + 1 TMS low */
+	if (endstate->reset) {
+		/* Disable sw mode */
+		aspeed_jtag_write(aspeed_jtag, 0, ASPEED_JTAG_SW);
+		mdelay(1);
+		aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_CTL_ENG_EN |
+				  ASPEED_JTAG_CTL_ENG_OUT_EN |
+				  ASPEED_JTAG_CTL_FORCE_TMS, ASPEED_JTAG_CTRL);
+		mdelay(1);
+		aspeed_jtag_write(aspeed_jtag,
+				  ASPEED_JTAG_SW_TDIO, ASPEED_JTAG_SW);
+		aspeed_jtag->status = JTAG_STATE_TLRESET;
+	}
+
+	return 0;
+}
+
+static void aspeed_jtag_xfer_sw(struct aspeed_jtag *aspeed_jtag,
+				struct jtag_xfer *xfer, u32 *data)
+{
+	unsigned long remain_xfer = xfer->length;
+	unsigned long shift_bits = 0;
+	unsigned long index = 0;
+	unsigned long tdi;
+	char tdo;
+
+	dev_dbg(aspeed_jtag->dev, "SW JTAG SHIFT %s, length = %d\n",
+		(xfer->type == JTAG_SIR_XFER) ? "IR" : "DR", xfer->length);
+
+	if (xfer->type == JTAG_SIR_XFER)
+		aspeed_jtag_set_tap_state(aspeed_jtag, JTAG_STATE_SHIFTIR);
+	else
+		aspeed_jtag_set_tap_state(aspeed_jtag, JTAG_STATE_SHIFTDR);
+
+	tdi = ASPEED_JTAG_GET_TDI(xfer->direction, data[index]);
+	data[index] = 0;
+	while (remain_xfer > 1) {
+		tdo = aspeed_jtag_tck_cycle(aspeed_jtag, 0,
+					    tdi & ASPEED_JTAG_DATA_MSB);
+		data[index] |= tdo << (shift_bits %
+					    ASPEED_JTAG_DATA_CHUNK_SIZE);
+		tdi >>= 1;
+		shift_bits++;
+		remain_xfer--;
+
+		if (shift_bits % ASPEED_JTAG_DATA_CHUNK_SIZE == 0) {
+			tdo = 0;
+			index++;
+			tdi = ASPEED_JTAG_GET_TDI(xfer->direction, data[index]);
+			data[index] = 0;
+		}
+	}
+
+	if ((xfer->endstate == (xfer->type == JTAG_SIR_XFER ?
+				JTAG_STATE_SHIFTIR : JTAG_STATE_SHIFTDR))) {
+		/* Stay in Shift IR/DR*/
+		tdo = aspeed_jtag_tck_cycle(aspeed_jtag, 0,
+					    tdi & ASPEED_JTAG_DATA_MSB);
+		data[index] |= tdo << (shift_bits %
+					ASPEED_JTAG_DATA_CHUNK_SIZE);
+	} else  {
+		/* Goto end state */
+		tdo = aspeed_jtag_tck_cycle(aspeed_jtag, 1,
+					    tdi & ASPEED_JTAG_DATA_MSB);
+		data[index] |= tdo << (shift_bits %
+				       ASPEED_JTAG_DATA_CHUNK_SIZE);
+		aspeed_jtag->status = (xfer->type == JTAG_SIR_XFER) ?
+				       JTAG_STATE_EXIT1IR : JTAG_STATE_EXIT1DR;
+		aspeed_jtag_set_tap_state(aspeed_jtag, xfer->endstate);
+	}
+}
+
+static int aspeed_jtag_xfer_push_data(struct aspeed_jtag *aspeed_jtag,
+				      enum jtag_xfer_type type, u32 bits_len)
+{
+	int res = 0;
+
+	if (type == JTAG_SIR_XFER) {
+		aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_IOUT_LEN(bits_len),
+				  ASPEED_JTAG_CTRL);
+		aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_IOUT_LEN(bits_len) |
+				  ASPEED_JTAG_CTL_INST_EN, ASPEED_JTAG_CTRL);
+		res = aspeed_jtag_wait_instruction_pause(aspeed_jtag);
+	} else {
+		aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_DOUT_LEN(bits_len),
+				  ASPEED_JTAG_CTRL);
+		aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_DOUT_LEN(bits_len) |
+				  ASPEED_JTAG_CTL_DATA_EN, ASPEED_JTAG_CTRL);
+		res = aspeed_jtag_wait_data_pause_complete(aspeed_jtag);
+	}
+	return res;
+}
+
+static int aspeed_jtag_xfer_push_data_last(struct aspeed_jtag *aspeed_jtag,
+					   enum jtag_xfer_type type,
+					   u32 shift_bits,
+					   enum jtag_endstate endstate)
+{
+	int res = 0;
+
+	if (type == JTAG_SIR_XFER) {
+		aspeed_jtag_write(aspeed_jtag,
+				  ASPEED_JTAG_IOUT_LEN(shift_bits) |
+				  ASPEED_JTAG_CTL_LASPEED_INST,
+				  ASPEED_JTAG_CTRL);
+		aspeed_jtag_write(aspeed_jtag,
+				  ASPEED_JTAG_IOUT_LEN(shift_bits) |
+				  ASPEED_JTAG_CTL_LASPEED_INST |
+				  ASPEED_JTAG_CTL_INST_EN,
+				  ASPEED_JTAG_CTRL);
+		res = aspeed_jtag_wait_instruction_complete(aspeed_jtag);
+	} else {
+		aspeed_jtag_write(aspeed_jtag,
+				  ASPEED_JTAG_DOUT_LEN(shift_bits) |
+				  ASPEED_JTAG_CTL_LASPEED_DATA,
+				  ASPEED_JTAG_CTRL);
+		aspeed_jtag_write(aspeed_jtag,
+				  ASPEED_JTAG_DOUT_LEN(shift_bits) |
+				  ASPEED_JTAG_CTL_LASPEED_DATA |
+				  ASPEED_JTAG_CTL_DATA_EN,
+				  ASPEED_JTAG_CTRL);
+		res = aspeed_jtag_wait_data_complete(aspeed_jtag);
+	}
+	return res;
+}
+
+static int aspeed_jtag_xfer_hw(struct aspeed_jtag *aspeed_jtag,
+			       struct jtag_xfer *xfer, u32 *data)
+{
+	unsigned long remain_xfer = xfer->length;
+	unsigned long index = 0;
+	char shift_bits;
+	u32 data_reg;
+	u32 scan_end;
+
+	dev_dbg(aspeed_jtag->dev, "HW JTAG SHIFT %s, length = %d\n",
+		(xfer->type == JTAG_SIR_XFER) ? "IR" : "DR", xfer->length);
+	data_reg = xfer->type == JTAG_SIR_XFER ?
+		   ASPEED_JTAG_INST : ASPEED_JTAG_DATA;
+	if (xfer->endstate == JTAG_STATE_SHIFTIR ||
+	    xfer->endstate == JTAG_STATE_SHIFTDR ||
+	    xfer->endstate == JTAG_STATE_PAUSEIR ||
+	    xfer->endstate == JTAG_STATE_PAUSEDR) {
+		scan_end = 0;
+	} else {
+		scan_end = 1;
+	}
+
+	while (remain_xfer) {
+		if (xfer->direction & JTAG_WRITE_XFER)
+			aspeed_jtag_write(aspeed_jtag, data[index], data_reg);
+		else
+			aspeed_jtag_write(aspeed_jtag, 0, data_reg);
+
+		if (remain_xfer > ASPEED_JTAG_DATA_CHUNK_SIZE) {
+			dev_dbg(aspeed_jtag->dev,
+				"Chunk len=%d chunk_size=%d remain_xfer=%lu\n",
+				xfer->length, ASPEED_JTAG_DATA_CHUNK_SIZE,
+				remain_xfer);
+			shift_bits = ASPEED_JTAG_DATA_CHUNK_SIZE;
+
+			/*
+			 * Read bytes were not equals to column length
+			 * and continue in Shift IR/DR
+			 */
+			if (aspeed_jtag_xfer_push_data(aspeed_jtag, xfer->type,
+						       shift_bits) != 0) {
+				return -EFAULT;
+			}
+		} else {
+			/*
+			 * Read bytes equals to column length
+			 */
+			shift_bits = remain_xfer;
+			if (scan_end) {
+				/*
+				 * If this data is the end of the transmission
+				 * send remaining bits and go to endstate
+				 */
+				dev_dbg(aspeed_jtag->dev,
+				"Last len=%d chunk_size=%d remain_xfer=%lu\n",
+					xfer->length,
+					ASPEED_JTAG_DATA_CHUNK_SIZE,
+					remain_xfer);
+				if (aspeed_jtag_xfer_push_data_last(
+							aspeed_jtag,
+							xfer->type,
+							shift_bits,
+							xfer->endstate) != 0) {
+					return -EFAULT;
+				}
+			} else {
+				/*
+				 * If transmission is waiting for additional
+				 * data send remaining bits and stay in
+				 * SHIFT IR/DR
+				 */
+				dev_dbg(aspeed_jtag->dev,
+				"Tail len=%d chunk_size=%d remain_xfer=%lu\n",
+					xfer->length,
+					ASPEED_JTAG_DATA_CHUNK_SIZE,
+					remain_xfer);
+				if (aspeed_jtag_xfer_push_data(aspeed_jtag,
+							       xfer->type,
+							       shift_bits)
+							       != 0) {
+					return -EFAULT;
+				}
+			}
+		}
+
+		if (xfer->direction & JTAG_READ_XFER) {
+			if (shift_bits < ASPEED_JTAG_DATA_CHUNK_SIZE) {
+				data[index] = aspeed_jtag_read(aspeed_jtag,
+							       data_reg);
+
+				data[index] >>= ASPEED_JTAG_DATA_CHUNK_SIZE -
+								shift_bits;
+			} else {
+				data[index] = aspeed_jtag_read(aspeed_jtag,
+							       data_reg);
+			}
+		}
+
+		remain_xfer = remain_xfer - shift_bits;
+		index++;
+	}
+	return 0;
+}
+
+static int aspeed_jtag_xfer(struct jtag *jtag, struct jtag_xfer *xfer,
+			    u8 *xfer_data)
+{
+	struct aspeed_jtag *aspeed_jtag = jtag_priv(jtag);
+
+	if (!(aspeed_jtag->mode & JTAG_XFER_HW_MODE)) {
+		/* SW mode */
+		aspeed_jtag_write(aspeed_jtag, ASPEED_JTAG_SW_TDIO,
+				  ASPEED_JTAG_SW);
+
+		aspeed_jtag_xfer_sw(aspeed_jtag, xfer, (u32 *)xfer_data);
+	} else {
+		/* HW mode */
+		aspeed_jtag_write(aspeed_jtag, 0, ASPEED_JTAG_SW);
+		if (aspeed_jtag_xfer_hw(aspeed_jtag, xfer,
+					(u32 *)xfer_data) != 0)
+			return -EFAULT;
+	}
+
+	aspeed_jtag->status = xfer->endstate;
+	return 0;
+}
+
+static int aspeed_jtag_status_get(struct jtag *jtag, u32 *status)
+{
+	struct aspeed_jtag *aspeed_jtag = jtag_priv(jtag);
+
+	*status = aspeed_jtag->status;
+	return 0;
+}
+
+#ifdef USE_INTERRUPTS
+static irqreturn_t aspeed_jtag_interrupt(s32 this_irq, void *dev_id)
+{
+	struct aspeed_jtag *aspeed_jtag = dev_id;
+	irqreturn_t ret = IRQ_HANDLED;
+	u32 status;
+
+	status = aspeed_jtag_read(aspeed_jtag, ASPEED_JTAG_ISR);
+
+	if (status & ASPEED_JTAG_ISR_INT_MASK) {
+		aspeed_jtag_write(aspeed_jtag,
+				  (status & ASPEED_JTAG_ISR_INT_MASK)
+				  | (status & ASPEED_JTAG_ISR_INT_EN_MASK),
+				  ASPEED_JTAG_ISR);
+		aspeed_jtag->flag |= status & ASPEED_JTAG_ISR_INT_MASK;
+	}
+
+	if (aspeed_jtag->flag) {
+		wake_up_interruptible(&aspeed_jtag->jtag_wq);
+		ret = IRQ_HANDLED;
+	} else {
+		dev_err(aspeed_jtag->dev, "irq status:%x\n",
+			status);
+		ret = IRQ_NONE;
+	}
+	return ret;
+}
+#endif
+
+static int aspeed_jtag_enable(struct jtag *jtag)
+{
+	struct aspeed_jtag *aspeed_jtag = jtag_priv(jtag);
+
+	aspeed_jtag_master(aspeed_jtag);
+	return 0;
+}
+
+static int aspeed_jtag_disable(struct jtag *jtag)
+{
+	struct aspeed_jtag *aspeed_jtag = jtag_priv(jtag);
+
+	aspeed_jtag_slave(aspeed_jtag);
+	return 0;
+}
+
+static int aspeed_jtag_init(struct platform_device *pdev,
+			    struct aspeed_jtag *aspeed_jtag)
+{
+	struct resource *res;
+	struct resource *scu_res;
+#ifdef USE_INTERRUPTS
+	int err;
+#endif
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	aspeed_jtag->reg_base = devm_ioremap_resource(aspeed_jtag->dev, res);
+	if (IS_ERR(aspeed_jtag->reg_base))
+		return -ENOMEM;
+
+	scu_res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	aspeed_jtag->scu_base = devm_ioremap_resource(aspeed_jtag->dev,
+						      scu_res);
+	if (IS_ERR(aspeed_jtag->scu_base))
+		return -ENOMEM;
+
+	aspeed_jtag->pclk = devm_clk_get(aspeed_jtag->dev, NULL);
+	if (IS_ERR(aspeed_jtag->pclk)) {
+		dev_err(aspeed_jtag->dev, "devm_clk_get failed\n");
+		return PTR_ERR(aspeed_jtag->pclk);
+	}
+
+#ifdef USE_INTERRUPTS
+	aspeed_jtag->irq = platform_get_irq(pdev, 0);
+	if (aspeed_jtag->irq < 0) {
+		dev_err(aspeed_jtag->dev, "no irq specified\n");
+		return -ENOENT;
+	}
+#endif
+
+	if (clk_prepare_enable(aspeed_jtag->pclk)) {
+		dev_err(aspeed_jtag->dev, "no irq specified\n");
+		return -ENOENT;
+	}
+
+	aspeed_jtag->rst = devm_reset_control_get_shared(&pdev->dev, NULL);
+	if (IS_ERR(aspeed_jtag->rst)) {
+		dev_err(aspeed_jtag->dev,
+			"missing or invalid reset controller device tree entry");
+		return PTR_ERR(aspeed_jtag->rst);
+	}
+	reset_control_deassert(aspeed_jtag->rst);
+
+#ifdef USE_INTERRUPTS
+	err = devm_request_irq(aspeed_jtag->dev, aspeed_jtag->irq,
+			       aspeed_jtag_interrupt, 0,
+			       "aspeed-jtag", aspeed_jtag);
+	if (err) {
+		dev_err(aspeed_jtag->dev, "unable to get IRQ");
+		clk_disable_unprepare(aspeed_jtag->pclk);
+		return err;
+	}
+#endif
+
+	aspeed_jtag_slave(aspeed_jtag);
+
+	aspeed_jtag->flag = 0;
+	aspeed_jtag->mode = 0;
+	init_waitqueue_head(&aspeed_jtag->jtag_wq);
+	return 0;
+}
+
+static int aspeed_jtag_deinit(struct platform_device *pdev,
+			      struct aspeed_jtag *aspeed_jtag)
+{
+	aspeed_jtag_write(aspeed_jtag, 0, ASPEED_JTAG_ISR);
+	/* Disable clock */
+	aspeed_jtag_write(aspeed_jtag, 0, ASPEED_JTAG_CTRL);
+	reset_control_assert(aspeed_jtag->rst);
+	clk_disable_unprepare(aspeed_jtag->pclk);
+	return 0;
+}
+
+static const struct jtag_ops aspeed_jtag_ops = {
+	.freq_get = aspeed_jtag_freq_get,
+	.freq_set = aspeed_jtag_freq_set,
+	.status_get = aspeed_jtag_status_get,
+	.status_set = aspeed_jtag_status_set,
+	.xfer = aspeed_jtag_xfer,
+	.mode_set = aspeed_jtag_mode_set,
+	.bitbang = aspeed_jtag_bitbang,
+	.enable = aspeed_jtag_enable,
+	.disable = aspeed_jtag_disable
+};
+
+static int aspeed_jtag_probe(struct platform_device *pdev)
+{
+	struct aspeed_jtag *aspeed_jtag;
+	struct jtag *jtag;
+	int err;
+
+	jtag = jtag_alloc(&pdev->dev, sizeof(*aspeed_jtag), &aspeed_jtag_ops);
+	if (!jtag)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, jtag);
+	aspeed_jtag = jtag_priv(jtag);
+	aspeed_jtag->dev = &pdev->dev;
+
+	/* Initialize device*/
+	err = aspeed_jtag_init(pdev, aspeed_jtag);
+	if (err)
+		goto err_jtag_init;
+
+	/* Initialize JTAG core structure*/
+	err = devm_jtag_register(aspeed_jtag->dev, jtag);
+	if (err)
+		goto err_jtag_register;
+
+	return 0;
+
+err_jtag_register:
+	aspeed_jtag_deinit(pdev, aspeed_jtag);
+err_jtag_init:
+	jtag_free(jtag);
+	return err;
+}
+
+static int aspeed_jtag_remove(struct platform_device *pdev)
+{
+	struct jtag *jtag = platform_get_drvdata(pdev);
+
+	aspeed_jtag_deinit(pdev, jtag_priv(jtag));
+	return 0;
+}
+
+static const struct of_device_id aspeed_jtag_of_match[] = {
+	{ .compatible = "aspeed,ast2400-jtag", },
+	{ .compatible = "aspeed,ast2500-jtag", },
+	{}
+};
+
+static struct platform_driver aspeed_jtag_driver = {
+	.probe = aspeed_jtag_probe,
+	.remove = aspeed_jtag_remove,
+	.driver = {
+		.name = ASPEED_JTAG_NAME,
+		.of_match_table = aspeed_jtag_of_match,
+	},
+};
+module_platform_driver(aspeed_jtag_driver);
+
+MODULE_AUTHOR("Oleksandr Shamray <oleksandrs@mellanox.com>");
+MODULE_DESCRIPTION("ASPEED JTAG driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
