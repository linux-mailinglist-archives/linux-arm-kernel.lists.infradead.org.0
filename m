Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D66E1A6F48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 00:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ascpGY+lDb6ttMvfRxNJ9JOCojYNH9touoPhCDSVwu0=; b=fbzxpE15WIUFDLYAn7q+hBRSCd
	+Ums2Dr/uyT86rQEENzpeJ3bIukSiR3uOB20dQSUYWmzmnueSkV98K5721waWkvJWmoPBEk4T1U3F
	5J32xJ6E+N0fak2zcCwKRrP7Vrw6ylBkP2Irl99hqLpvzJ+K6Jve1eOk9rxx+vbOYInEYG0LrYgcP
	/sCZp/WHBfPfdQlYodcr5AK1U5IE8HTdHJqVG7NZhQ0TMeb8guwA4XzoASjGP5+xGxa+VUo7ovsVb
	Iqmtj57I93qaERZrhKLeuRwaFEytwDMhwwmt2fbGInMi1/7nlxOk1QHfNZ4pboCbL/zNNLYmHA3YL
	xlrLPjKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO7bA-0006I3-Uf; Mon, 13 Apr 2020 22:30:37 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7aL-0003Wz-LT
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 22:29:49 +0000
IronPort-SDR: dFJqlcHy+QEAA4b2jdbbNWp4AHjCOohFsFkVinU9X31Iy/WIKXw+rn7cDzgNithI92/TFQYI4f
 qUXuJCaWgKxg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 15:29:44 -0700
IronPort-SDR: KCmAv8Z1tmylsYbcZTmJfa/3cOmVxMSNVlAhwx0VHEd8JwhsopBavXmRgYRi4DA0rb8MRdEQ25
 cg+aejtP27Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="399760685"
Received: from epcorona-mobl.amr.corp.intel.com (HELO
 epcorona-moblu.amr.corp.intel.com) ([10.254.189.204])
 by orsmga004.jf.intel.com with ESMTP; 13 Apr 2020 15:29:40 -0700
From: Ernesto Corona <ernesto.corona@intel.com>
To: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH v29 1/6] drivers: jtag: Add JTAG core driver
Date: Mon, 13 Apr 2020 15:29:15 -0700
Message-Id: <20200413222920.4722-2-ernesto.corona@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413222920.4722-1-ernesto.corona@intel.com>
References: <20200413222920.4722-1-ernesto.corona@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_152945_850785_6752DD07 
X-CRM114-Status: GOOD (  26.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Viresh Kumar <viresh.kumar@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Amithash Prasad <amithash@fb.com>, Rgrs <rgrs@protonmail.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Yiwei Zhang <zzyiwei@google.com>, Joel Stanley <joel@jms.id.au>,
 Steven Filary <steven.a.filary@intel.com>,
 Alessandro Rubini <rubini@gnudd.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Johan Hovold <johan@kernel.org>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Jiri Pirko <jiri@mellanox.com>, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Jens Axboe <axboe@kernel.dk>, Tony Luck <tony.luck@intel.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, Patrick Williams <patrickw3@fb.com>,
 Ernesto Corona <ernesto.corona@intel.com>,
 Federico Vaga <federico.vaga@cern.ch>,
 Oleksandr Shamray <oleksandrs@mellanox.com>,
 Vadim Pasternak <vadimp@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

JTAG class driver provide infrastructure to support hardware/software
JTAG platform drivers. It provide user layer API interface for flashing
and debugging external devices which equipped with JTAG interface
using standard transactions.

Driver exposes set of IOCTL to user space for:
- XFER:
  SIR (Scan Instruction Register, IEEE 1149.1 Data Register scan);
  SDR (Scan Data Register, IEEE 1149.1 Instruction Register scan);
- GIOCSTATUS read the current TAPC state of the JTAG controller
- SIOCSTATE Forces the JTAG TAPC to go into a particular state.
- SIOCFREQ/GIOCFREQ for setting and reading JTAG frequency.
- IOCBITBANG for low level control of JTAG signals.

Driver core provides set of internal APIs for allocation and
registration:
- jtag_register;
- jtag_unregister;
- jtag_alloc;
- jtag_free;

Platform driver on registration with jtag-core creates the next
entry in dev folder:
/dev/jtagX

Signed-off-by: Oleksandr Shamray <oleksandrs@mellanox.com>
Signed-off-by: Jiri Pirko <jiri@mellanox.com>
Signed-off-by: Ernesto Corona <ernesto.corona@intel.com>
Acked-by: Philippe Ombredanne <pombredanne@nexb.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Boris Brezillon <bbrezillon@kernel.org>
Cc: Randy Dunlap <rdunlap@infradead.org>
Cc: Johan Hovold <johan@kernel.org>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Joel Stanley <joel@jms.id.au>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: William Breathitt Gray <vilhelm.gray@gmail.com>
Cc: Federico Vaga <federico.vaga@cern.ch>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc: Tony Luck <tony.luck@intel.com>
Cc: Christian Gromm <christian.gromm@microchip.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Yiwei Zhang <zzyiwei@google.com>
Cc: Alessandro Rubini <rubini@gnudd.com>
Cc: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
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
  letting
  other HW to own the JTAG bus when it isn't in use.
- Include JTAG bit bang IOCTL for low level JTAG control usage
  (JTAG_IOCBITBANG).

v24->v25
Comments pointed by Greg KH <gregkh@linuxfoundation.org>
- set values to enums in jtag.h

v23->v24
Notifications from kbuild test robot <lkp@intel.com>
- Add include types.h header to jtag.h
- remove unecessary jtag_release

v22->v23
Comments pointed by Greg KH <gregkh@linuxfoundation.org>
- remove restriction of allocated JTAG devs-
- add validation fo idle values
- remove unnecessary blank line
- change retcode for xfer
- remove unecessary jtag_release callback
- remove unecessary  defined fron jtag.h
- align in one line define JTAG_IOCRUNTEST

v21->v22
Comments pointed by Andy Shevchenko <andy.shevchenko@gmail.com>
- Fix 0x0f -> 0x0F in ioctl-number.txt
- Add description to #define MAX_JTAG_NAME_LEN
- Remove unnecessary entry *dev from struct jtag
- Remove redundant parens
- Described mandatory callbacks and removed unnecessary
- Set JTAG_MAX_XFER_DATA_LEN to power of 2
- rework driver alloc/register to devm_ variant
- increasing line length up to 84 in order to improve readability.

Comments pointed by Randy Dunlap <rdunlap@infradead.org>
- fix spell in ABI doccumentation

v20->v21
    Comments pointed by Randy Dunlap <rdunlap@infradead.org>
    - Fix JTAG dirver help in Kconfig

v19->v20
Comments pointed by Randy Dunlap <rdunlap@infradead.org>
- Fix JTAG dirver help in Kconfig

Notifications from kbuild test robot <lkp@intel.com>
- fix incompatible type casts

v18->v19
Comments pointed by Julia Cartwright <juliac@eso.teric.us>
- Fix memory leak on jtag_alloc exit

v17->v18
Comments pointed by Julia Cartwright <juliac@eso.teric.us>
- Change to return -EOPNOTSUPP in case of error in JTAG_GIOCFREQ
- Add ops callbacks check to jtag_alloc
- Add err check for copy_to_user
- Move the kfree() above the if (err) in JTAG_IOCXFER
- remove unnecessary check for error after put_user
- add padding to struct jtag_xfer

v16->v17
Comments pointed by Julia Cartwright <juliac@eso.teric.us>
- Fix memory allocation on jtag alloc
- Move out unnecessary form lock on jtag open
- Rework jtag register behavior

v15->v16
Comments pointed by Florian Fainelli <f.fainelli@gmail.com>
- move check jtag->ops->* in ioctl before get_user()
- change error type -EINVAL --> -EBUSY on open already opened jtag
- remove unnecessary ARCH_DMA_MINALIGN flag from kzalloc
- remove define ARCH_DMA_MINALIGN

v14->v15
v13->v14
Comments pointed by Philippe Ombredanne <pombredanne@nexb.com>
- Change style of head block comment from /**/ to //

v12->v13
Comments pointed by Philippe Ombredanne <pombredanne@nexb.com>
- Change jtag.c licence type to
  SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note
  and reorder line with license in description

v11->v12
Comments pointed by Greg KH <gregkh@linuxfoundation.org>
- Change jtag.h licence type to
  SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note
  and reorder line with license in description

Comments pointed by Chip Bilbrey <chip@bilbrey.org>
- Remove Apeed reference from uapi jtag.h header
- Remove access mode from xfer and idle transactions
- Add new ioctl JTAG_SIOCMODE for set hw mode
- Add single open per device blocking

v10->v11
Notifications from kbuild test robot <lkp@intel.com>
- Add include types.h header to jtag.h
- fix incompatible type of xfer callback
- remove rdundant class defination
- Fix return order in case of xfer error

V9->v10
Comments pointed by Greg KH <gregkh@linuxfoundation.org>
- remove unnecessary alignment for pirv data
- move jtag_copy_to_user and jtag_copy_from_user code just to ioctl
- move int jtag_run_test_idle_op and jtag_xfer_op code
  just to ioctl
- change return error codes to more applicable
- add missing error checks
- fix error check order in ioctl
- remove unnecessary blank lines
- add param validation to ioctl
- remove compat_ioctl
- remove only one open per JTAG port blocking.
  User will care about this.
- Fix idr memory leak on jtag_exit
- change cdev device type to misc

V8->v9
Comments pointed by Arnd Bergmann <arnd@arndb.de>
- use get_user() instead of __get_user().
- change jtag->open type from int to atomic_t
- remove spinlock on jtg_open
- remove mutex on jtag_register
- add unregister_chrdev_region on jtag_init err
- add unregister_chrdev_region on jtag_exit
- remove unnecessary pointer casts
- add *data parameter to xfer function prototype

v7->v8
Comments pointed by Moritz Fischer <moritz.fischer@ettus.com>
- Fix misspelling s/friver/driver

v6->v7
Notifications from kbuild test robot <lkp@intel.com>
- Remove include asm/types.h from jtag.h
- Add include <linux/types.h> to jtag.c

v5->v6
v4->v5

v3->v4
Comments pointed by Arnd Bergmann <arnd@arndb.de>
- change transaction pointer tdio type  to __u64
- change internal status type from enum to __u32
- reorder jtag_xfer members to avoid the implied padding
- add __packed attribute to jtag_xfer and jtag_run_test_idle

v2->v3
Notifications from kbuild test robot <lkp@intel.com>
- Change include path to <linux/types.h> in jtag.h

v1->v2
Comments pointed by Greg KH <gregkh@linuxfoundation.org>
- Change license type from GPLv2/BSD to GPLv2
- Change type of variables which crossed user/kernel to __type
- Remove "default n" from Kconfig

Comments pointed by Andrew Lunn <andrew@lunn.ch>
- Change list_add_tail in jtag_unregister to list_del

Comments pointed by Neil Armstrong <narmstrong@baylibre.com>
- Add SPDX-License-Identifier instead of license text

Comments pointed by Arnd Bergmann <arnd@arndb.de>
- Change __copy_to_user to memdup_user
- Change __put_user to put_user
- Change type of variables to __type for compatible 32 and 64-bit systems
- Add check for maximum xfer data size
- Change lookup data mechanism to get jtag data from inode
- Add .compat_ioctl to file ops
- Add mem alignment for jtag priv data

Comments pointed by Tobias Klauser <tklauser@distanz.ch>
- Change function names to avoid match with variable types
- Fix description for jtag_ru_test_idle in uapi jtag.h
- Fix misprints IDEL/IDLE, trough/through
---
 drivers/Kconfig           |   2 +
 drivers/Makefile          |   1 +
 drivers/jtag/Kconfig      |  17 +++
 drivers/jtag/Makefile     |   1 +
 drivers/jtag/jtag.c       | 301 ++++++++++++++++++++++++++++++++++++++
 include/linux/jtag.h      |  44 ++++++
 include/uapi/linux/jtag.h | 194 ++++++++++++++++++++++++
 7 files changed, 560 insertions(+)
 create mode 100644 drivers/jtag/Kconfig
 create mode 100644 drivers/jtag/Makefile
 create mode 100644 drivers/jtag/jtag.c
 create mode 100644 include/linux/jtag.h
 create mode 100644 include/uapi/linux/jtag.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index dcecc9f6e33f..e35051059ad6 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -235,4 +235,6 @@ source "drivers/interconnect/Kconfig"
 source "drivers/counter/Kconfig"
 
 source "drivers/most/Kconfig"
+
+source "drivers/jtag/Kconfig"
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index c0cd1b9075e3..fda1dfac8da7 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -188,3 +188,4 @@ obj-$(CONFIG_GNSS)		+= gnss/
 obj-$(CONFIG_INTERCONNECT)	+= interconnect/
 obj-$(CONFIG_COUNTER)		+= counter/
 obj-$(CONFIG_MOST)		+= most/
+obj-$(CONFIG_JTAG)		+= jtag/
diff --git a/drivers/jtag/Kconfig b/drivers/jtag/Kconfig
new file mode 100644
index 000000000000..47771fcd3c5b
--- /dev/null
+++ b/drivers/jtag/Kconfig
@@ -0,0 +1,17 @@
+menuconfig JTAG
+	tristate "JTAG support"
+	help
+	  This provides basic core functionality support for JTAG class devices.
+	  Hardware that is equipped with a JTAG microcontroller can be
+	  supported by using this driver's interfaces.
+	  This driver exposes a set of IOCTLs to the user space for
+	  the following commands:
+	    SDR: Performs an IEEE 1149.1 Data Register scan
+	    SIR: Performs an IEEE 1149.1 Instruction Register scan.
+	    RUNTEST: Forces the IEEE 1149.1 bus to a run state for a specified
+	    number of clocks or a specified time period.
+
+	  If you want this support, you should say Y here.
+
+	  To compile this driver as a module, choose M here: the module will
+	  be called jtag.
diff --git a/drivers/jtag/Makefile b/drivers/jtag/Makefile
new file mode 100644
index 000000000000..af374939a9e6
--- /dev/null
+++ b/drivers/jtag/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_JTAG)		+= jtag.o
diff --git a/drivers/jtag/jtag.c b/drivers/jtag/jtag.c
new file mode 100644
index 000000000000..47503a102f64
--- /dev/null
+++ b/drivers/jtag/jtag.c
@@ -0,0 +1,301 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// drivers/jtag/jtag.c
+//
+// Copyright (c) 2018 Mellanox Technologies. All rights reserved.
+// Copyright (c) 2018 Oleksandr Shamray <oleksandrs@mellanox.com>
+
+#include <linux/cdev.h>
+#include <linux/device.h>
+#include <linux/jtag.h>
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/miscdevice.h>
+#include <linux/module.h>
+#include <linux/rtnetlink.h>
+#include <linux/spinlock.h>
+#include <linux/types.h>
+#include <uapi/linux/jtag.h>
+
+struct jtag {
+	struct miscdevice miscdev;
+	const struct jtag_ops *ops;
+	int id;
+	unsigned long priv[0];
+};
+
+static DEFINE_IDA(jtag_ida);
+
+void *jtag_priv(struct jtag *jtag)
+{
+	return jtag->priv;
+}
+EXPORT_SYMBOL_GPL(jtag_priv);
+
+static long jtag_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
+{
+	struct jtag *jtag = file->private_data;
+	struct jtag_end_tap_state endstate;
+	struct jtag_xfer xfer;
+	struct tck_bitbang bitbang;
+	struct jtag_mode mode;
+	u8 *xfer_data;
+	u32 data_size;
+	u32 value;
+	int err;
+
+	if (!arg)
+		return -EINVAL;
+
+	switch (cmd) {
+	case JTAG_GIOCFREQ:
+		if (!jtag->ops->freq_get)
+			return -EOPNOTSUPP;
+
+		err = jtag->ops->freq_get(jtag, &value);
+		if (err)
+			break;
+
+		if (put_user(value, (__u32 __user *)arg))
+			err = -EFAULT;
+		break;
+
+	case JTAG_SIOCFREQ:
+		if (!jtag->ops->freq_set)
+			return -EOPNOTSUPP;
+
+		if (get_user(value, (__u32 __user *)arg))
+			return -EFAULT;
+		if (value == 0)
+			return -EINVAL;
+
+		err = jtag->ops->freq_set(jtag, value);
+		break;
+
+	case JTAG_SIOCSTATE:
+		if (copy_from_user(&endstate, (const void __user *)arg,
+				   sizeof(struct jtag_end_tap_state)))
+			return -EFAULT;
+
+		if (endstate.endstate > JTAG_STATE_UPDATEIR)
+			return -EINVAL;
+
+		if (endstate.reset > JTAG_FORCE_RESET)
+			return -EINVAL;
+
+		err = jtag->ops->status_set(jtag, &endstate);
+		break;
+
+	case JTAG_IOCXFER:
+		if (copy_from_user(&xfer, (const void __user *)arg,
+				   sizeof(struct jtag_xfer)))
+			return -EFAULT;
+
+		if (xfer.length >= JTAG_MAX_XFER_DATA_LEN)
+			return -EINVAL;
+
+		if (xfer.type > JTAG_SDR_XFER)
+			return -EINVAL;
+
+		if (xfer.direction > JTAG_READ_WRITE_XFER)
+			return -EINVAL;
+
+		if (xfer.endstate > JTAG_STATE_UPDATEIR)
+			return -EINVAL;
+
+		data_size = DIV_ROUND_UP(xfer.length, BITS_PER_BYTE);
+		xfer_data = memdup_user(u64_to_user_ptr(xfer.tdio), data_size);
+		if (IS_ERR(xfer_data))
+			return -EFAULT;
+
+		err = jtag->ops->xfer(jtag, &xfer, xfer_data);
+		if (err) {
+			kfree(xfer_data);
+			return err;
+		}
+
+		err = copy_to_user(u64_to_user_ptr(xfer.tdio),
+				   (void *)xfer_data, data_size);
+		kfree(xfer_data);
+		if (err)
+			return -EFAULT;
+
+		if (copy_to_user((void __user *)arg, (void *)&xfer,
+				 sizeof(struct jtag_xfer)))
+			return -EFAULT;
+		break;
+
+	case JTAG_GIOCSTATUS:
+		err = jtag->ops->status_get(jtag, &value);
+		if (err)
+			break;
+
+		err = put_user(value, (__u32 __user *)arg);
+		break;
+	case JTAG_IOCBITBANG:
+		if (copy_from_user(&bitbang, (const void __user *)arg,
+				   sizeof(struct tck_bitbang)))
+			return -EFAULT;
+		err = jtag->ops->bitbang(jtag, &bitbang);
+		if (err)
+			break;
+
+		if (copy_to_user((void __user *)arg, (void *)&bitbang,
+				 sizeof(struct tck_bitbang)))
+			return -EFAULT;
+		break;
+	case JTAG_SIOCMODE:
+		if (!jtag->ops->mode_set)
+			return -EOPNOTSUPP;
+
+		if (copy_from_user(&mode, (const void __user *)arg,
+				   sizeof(struct jtag_mode)))
+			return -EFAULT;
+
+		err = jtag->ops->mode_set(jtag, &mode);
+		break;
+
+	default:
+		return -EINVAL;
+	}
+	return err;
+}
+
+static int jtag_open(struct inode *inode, struct file *file)
+{
+	struct jtag *jtag = container_of(file->private_data,
+					 struct jtag,
+					 miscdev);
+
+	file->private_data = jtag;
+	if (jtag->ops->enable(jtag))
+		return -EBUSY;
+	return nonseekable_open(inode, file);
+}
+
+static int jtag_release(struct inode *inode, struct file *file)
+{
+	struct jtag *jtag = file->private_data;
+
+	if (jtag->ops->disable(jtag))
+		return -EBUSY;
+	return 0;
+}
+
+static const struct file_operations jtag_fops = {
+	.owner		= THIS_MODULE,
+	.open		= jtag_open,
+	.llseek		= noop_llseek,
+	.unlocked_ioctl = jtag_ioctl,
+	.release	= jtag_release,
+};
+
+struct jtag *jtag_alloc(struct device *host, size_t priv_size,
+			const struct jtag_ops *ops)
+{
+	struct jtag *jtag;
+
+	if (!host)
+		return NULL;
+
+	if (!ops)
+		return NULL;
+
+	if (!ops->status_set || !ops->status_get || !ops->xfer)
+		return NULL;
+
+	jtag = kzalloc(sizeof(*jtag) + priv_size, GFP_KERNEL);
+	if (!jtag)
+		return NULL;
+
+	jtag->ops = ops;
+	jtag->miscdev.parent = host;
+
+	return jtag;
+}
+EXPORT_SYMBOL_GPL(jtag_alloc);
+
+void jtag_free(struct jtag *jtag)
+{
+	kfree(jtag);
+}
+EXPORT_SYMBOL_GPL(jtag_free);
+
+static int jtag_register(struct jtag *jtag)
+{
+	struct device *dev = jtag->miscdev.parent;
+	int err;
+	int id;
+
+	if (!dev)
+		return -ENODEV;
+
+	id = ida_simple_get(&jtag_ida, 0, 0, GFP_KERNEL);
+	if (id < 0)
+		return id;
+
+	jtag->id = id;
+
+	jtag->miscdev.fops =  &jtag_fops;
+	jtag->miscdev.minor = MISC_DYNAMIC_MINOR;
+	jtag->miscdev.name = kasprintf(GFP_KERNEL, "jtag%d", id);
+	if (!jtag->miscdev.name) {
+		err = -ENOMEM;
+		goto err_jtag_alloc;
+	}
+
+	err = misc_register(&jtag->miscdev);
+	if (err) {
+		dev_err(jtag->miscdev.parent, "Unable to register device\n");
+		goto err_jtag_name;
+	}
+	return 0;
+
+err_jtag_name:
+	kfree(jtag->miscdev.name);
+err_jtag_alloc:
+	ida_simple_remove(&jtag_ida, id);
+	return err;
+}
+
+static void jtag_unregister(struct jtag *jtag)
+{
+	misc_deregister(&jtag->miscdev);
+	kfree(jtag->miscdev.name);
+	ida_simple_remove(&jtag_ida, jtag->id);
+}
+
+static void devm_jtag_unregister(struct device *dev, void *res)
+{
+	jtag_unregister(*(struct jtag **)res);
+}
+
+int devm_jtag_register(struct device *dev, struct jtag *jtag)
+{
+	struct jtag **ptr;
+	int ret;
+
+	ptr = devres_alloc(devm_jtag_unregister, sizeof(*ptr), GFP_KERNEL);
+	if (!ptr)
+		return -ENOMEM;
+
+	ret = jtag_register(jtag);
+	if (!ret) {
+		*ptr = jtag;
+		devres_add(dev, ptr);
+	} else {
+		devres_free(ptr);
+	}
+	return ret;
+}
+EXPORT_SYMBOL_GPL(devm_jtag_register);
+
+static void __exit jtag_exit(void)
+{
+	ida_destroy(&jtag_ida);
+}
+
+module_exit(jtag_exit);
+
+MODULE_AUTHOR("Oleksandr Shamray <oleksandrs@mellanox.com>");
+MODULE_DESCRIPTION("Generic jtag support");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/jtag.h b/include/linux/jtag.h
new file mode 100644
index 000000000000..4153c905e550
--- /dev/null
+++ b/include/linux/jtag.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+// include/linux/jtag.h - JTAG class driver
+//
+// Copyright (c) 2018 Mellanox Technologies. All rights reserved.
+// Copyright (c) 2018 Oleksandr Shamray <oleksandrs@mellanox.com>
+
+#ifndef __JTAG_H
+#define __JTAG_H
+
+#include <linux/types.h>
+#include <uapi/linux/jtag.h>
+
+#define JTAG_MAX_XFER_DATA_LEN 65535
+
+struct jtag;
+/**
+ * struct jtag_ops - callbacks for JTAG control functions:
+ *
+ * @freq_get: get frequency function. Filled by dev driver
+ * @freq_set: set frequency function. Filled by dev driver
+ * @status_get: get JTAG TAPC state function. Mandatory, Filled by dev driver
+ * @status_set: set JTAG TAPC state function. Mandatory, Filled by dev driver
+ * @xfer: send JTAG xfer function. Mandatory func. Filled by dev driver
+ * @mode_set: set specific work mode for JTAG. Filled by dev driver
+ */
+struct jtag_ops {
+	int (*freq_get)(struct jtag *jtag, u32 *freq);
+	int (*freq_set)(struct jtag *jtag, u32 freq);
+	int (*status_get)(struct jtag *jtag, u32 *state);
+	int (*status_set)(struct jtag *jtag, struct jtag_end_tap_state *endst);
+	int (*xfer)(struct jtag *jtag, struct jtag_xfer *xfer, u8 *xfer_data);
+	int (*mode_set)(struct jtag *jtag, struct jtag_mode *jtag_mode);
+	int (*bitbang)(struct jtag *jtag, struct tck_bitbang *tck_bitbang);
+	int (*enable)(struct jtag *jtag);
+	int (*disable)(struct jtag *jtag);
+};
+
+void *jtag_priv(struct jtag *jtag);
+int devm_jtag_register(struct device *dev, struct jtag *jtag);
+struct jtag *jtag_alloc(struct device *host, size_t priv_size,
+			const struct jtag_ops *ops);
+void jtag_free(struct jtag *jtag);
+
+#endif /* __JTAG_H */
diff --git a/include/uapi/linux/jtag.h b/include/uapi/linux/jtag.h
new file mode 100644
index 000000000000..3f9e1953f5a4
--- /dev/null
+++ b/include/uapi/linux/jtag.h
@@ -0,0 +1,194 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+// include/uapi/linux/jtag.h - JTAG class driver uapi
+//
+// Copyright (c) 2018 Mellanox Technologies. All rights reserved.
+// Copyright (c) 2018 Oleksandr Shamray <oleksandrs@mellanox.com>
+
+#ifndef __UAPI_LINUX_JTAG_H
+#define __UAPI_LINUX_JTAG_H
+
+/*
+ * JTAG_XFER_MODE: JTAG transfer mode. Used to set JTAG controller transfer mode
+ * This is bitmask for feature param in jtag_mode for ioctl JTAG_SIOCMODE
+ */
+#define  JTAG_XFER_MODE 0
+/*
+ * JTAG_CONTROL_MODE: JTAG controller mode. Used to set JTAG controller mode
+ * This is bitmask for feature param in jtag_mode for ioctl JTAG_SIOCMODE
+ */
+#define  JTAG_CONTROL_MODE 1
+/*
+ * JTAG_SLAVE_MODE: JTAG slave mode. Used to set JTAG controller slave mode
+ * This is bitmask for mode param in jtag_mode for ioctl JTAG_SIOCMODE
+ */
+#define  JTAG_SLAVE_MODE 0
+/*
+ * JTAG_MASTER_MODE: JTAG master mode. Used to set JTAG controller master mode
+ * This is bitmask for mode param in jtag_mode for ioctl JTAG_SIOCMODE
+ */
+#define  JTAG_MASTER_MODE 1
+/*
+ * JTAG_XFER_HW_MODE: JTAG hardware mode. Used to set HW drived or bitbang
+ * mode. This is bitmask for mode param in jtag_mode for ioctl JTAG_SIOCMODE
+ */
+#define  JTAG_XFER_HW_MODE 1
+/*
+ * JTAG_XFER_SW_MODE: JTAG software mode. Used to set SW drived or bitbang
+ * mode. This is bitmask for mode param in jtag_mode for ioctl JTAG_SIOCMODE
+ */
+#define  JTAG_XFER_SW_MODE 0
+
+/**
+ * enum jtag_endstate:
+ *
+ * @JTAG_STATE_TLRESET: JTAG state machine Test Logic Reset state
+ * @JTAG_STATE_IDLE: JTAG state machine IDLE state
+ * @JTAG_STATE_SELECTDR: JTAG state machine SELECT_DR state
+ * @JTAG_STATE_CAPTUREDR: JTAG state machine CAPTURE_DR state
+ * @JTAG_STATE_SHIFTDR: JTAG state machine SHIFT_DR state
+ * @JTAG_STATE_EXIT1DR: JTAG state machine EXIT-1 DR state
+ * @JTAG_STATE_PAUSEDR: JTAG state machine PAUSE_DR state
+ * @JTAG_STATE_EXIT2DR: JTAG state machine EXIT-2 DR state
+ * @JTAG_STATE_UPDATEDR: JTAG state machine UPDATE DR state
+ * @JTAG_STATE_SELECTIR: JTAG state machine SELECT_IR state
+ * @JTAG_STATE_CAPTUREIR: JTAG state machine CAPTURE_IR state
+ * @JTAG_STATE_SHIFTIR: JTAG state machine SHIFT_IR state
+ * @JTAG_STATE_EXIT1IR: JTAG state machine EXIT-1 IR state
+ * @JTAG_STATE_PAUSEIR: JTAG state machine PAUSE_IR state
+ * @JTAG_STATE_EXIT2IR: JTAG state machine EXIT-2 IR state
+ * @JTAG_STATE_UPDATEIR: JTAG state machine UPDATE IR state
+ */
+enum jtag_endstate {
+	JTAG_STATE_TLRESET,
+	JTAG_STATE_IDLE,
+	JTAG_STATE_SELECTDR,
+	JTAG_STATE_CAPTUREDR,
+	JTAG_STATE_SHIFTDR,
+	JTAG_STATE_EXIT1DR,
+	JTAG_STATE_PAUSEDR,
+	JTAG_STATE_EXIT2DR,
+	JTAG_STATE_UPDATEDR,
+	JTAG_STATE_SELECTIR,
+	JTAG_STATE_CAPTUREIR,
+	JTAG_STATE_SHIFTIR,
+	JTAG_STATE_EXIT1IR,
+	JTAG_STATE_PAUSEIR,
+	JTAG_STATE_EXIT2IR,
+	JTAG_STATE_UPDATEIR
+};
+
+/**
+ * enum jtag_reset:
+ *
+ * @JTAG_NO_RESET: JTAG run TAP from current state
+ * @JTAG_FORCE_RESET: JTAG force TAP to reset state
+ */
+enum jtag_reset {
+	JTAG_NO_RESET = 0,
+	JTAG_FORCE_RESET = 1,
+};
+
+/**
+ * enum jtag_xfer_type:
+ *
+ * @JTAG_SIR_XFER: SIR transfer
+ * @JTAG_SDR_XFER: SDR transfer
+ */
+enum jtag_xfer_type {
+	JTAG_SIR_XFER = 0,
+	JTAG_SDR_XFER = 1,
+};
+
+/**
+ * enum jtag_xfer_direction:
+ *
+ * @JTAG_READ_XFER: read transfer
+ * @JTAG_WRITE_XFER: write transfer
+ * @JTAG_READ_WRITE_XFER: read & write transfer
+ */
+enum jtag_xfer_direction {
+	JTAG_READ_XFER = 1,
+	JTAG_WRITE_XFER = 2,
+	JTAG_READ_WRITE_XFER = 3,
+};
+
+/**
+ * struct jtag_end_tap_state - forces JTAG state machine to go into a TAPC
+ * state
+ *
+ * @reset: 0 - run IDLE/PAUSE from current state
+ *         1 - go through TEST_LOGIC/RESET state before  IDLE/PAUSE
+ * @end: completion flag
+ * @tck: clock counter
+ *
+ * Structure provide interface to JTAG device for JTAG set state execution.
+ */
+struct jtag_end_tap_state {
+	__u8	reset;
+	__u8	endstate;
+	__u8	tck;
+};
+
+/**
+ * struct jtag_xfer - jtag xfer:
+ *
+ * @type: transfer type
+ * @direction: xfer direction
+ * @length: xfer bits len
+ * @tdio : xfer data array
+ * @endir: xfer end state
+ *
+ * Structure provide interface to JTAG device for JTAG SDR/SIR xfer execution.
+ */
+struct jtag_xfer {
+	__u8	type;
+	__u8	direction;
+	__u8	endstate;
+	__u8	padding;
+	__u32	length;
+	__u64	tdio;
+};
+
+/**
+ * struct jtag_bitbang - jtag bitbang:
+ *
+ * @tms: JTAG TMS
+ * @tdi: JTAG TDI (input)
+ * @tdo: JTAG TDO (output)
+ *
+ * Structure provide interface to JTAG device for JTAG bitbang execution.
+ */
+struct tck_bitbang {
+	__u8	tms;
+	__u8	tdi;
+	__u8	tdo;
+} __attribute__((__packed__));
+
+/**
+ * struct jtag_mode - jtag mode:
+ *
+ * @feature: 0 - JTAG feature setting selector for JTAG controller HW/SW
+ *           1 - JTAG feature setting selector for controller
+ *               bus(master/slave) mode.
+ * @mode:    (0 - SW / 1 - HW) for JTAG_XFER_MODE feature(0)
+ *           (0 - Slave / 1 - Master) for JTAG_CONTROL_MODE feature(1)
+ *
+ * Structure provide configuration modes to JTAG device.
+ */
+struct jtag_mode {
+	__u32	feature;
+	__u32	mode;
+};
+
+/* ioctl interface */
+#define __JTAG_IOCTL_MAGIC	0xb2
+
+#define JTAG_SIOCSTATE	_IOW(__JTAG_IOCTL_MAGIC, 0, struct jtag_end_tap_state)
+#define JTAG_SIOCFREQ	_IOW(__JTAG_IOCTL_MAGIC, 1, unsigned int)
+#define JTAG_GIOCFREQ	_IOR(__JTAG_IOCTL_MAGIC, 2, unsigned int)
+#define JTAG_IOCXFER	_IOWR(__JTAG_IOCTL_MAGIC, 3, struct jtag_xfer)
+#define JTAG_GIOCSTATUS _IOWR(__JTAG_IOCTL_MAGIC, 4, enum jtag_endstate)
+#define JTAG_SIOCMODE	_IOW(__JTAG_IOCTL_MAGIC, 5, unsigned int)
+#define JTAG_IOCBITBANG	_IOW(__JTAG_IOCTL_MAGIC, 6, unsigned int)
+
+#endif /* __UAPI_LINUX_JTAG_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
