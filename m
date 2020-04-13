Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858181A6F4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 00:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5bdjHo7VfkiGjD+li9pDgmhFaHg6MjjzQUCxCafEaSM=; b=rBVUfZ9dB2d8F/bCLY74P6uKFY
	AgCGIbu6uM2PrNckhHcyMGxj/uBb6HVmS943NlyjxRPfJ0Fn54YYq/aNtjjCbnHkZUka3xkiZI1bR
	+LGt2VZFhi8dwGFZfRKGjP25/5eeNTpO0vWCXpF6GfBnUrWAEZ8lBQFlut4CeS0iNyJXbyNNyURMK
	eOkpApGWLUOC6/m/LKnL4azjZqzEkHgWvje7hLF1c96tJqapcBG0nnx1Q4db8oiWHbXuqClo5sLp6
	rhcZSh3nEz8E61fZUPDTo3MFpSUkpH2o+932uDzd0f1ZLTtx3/lk9gd9f0JVh0b1mDb3E53cFeAEa
	1Yzkmf/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO7cB-0007F9-DA; Mon, 13 Apr 2020 22:31:39 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7as-0006DJ-9K
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 22:30:21 +0000
IronPort-SDR: U5kTAGX648BtWrR77d+9NRv0+9SbHonB36MyPKewVf8IOhqgA5nYfFpq0zHwF6rKeR11aifX33
 dDDjjNLewNZA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 15:30:17 -0700
IronPort-SDR: GDgTMLvYwrvFkVvny5H/asv9DzMaA/Vrmj66VgQ+hwnGTKGXXQlPFlFfxiof67Zu12pQG+exdt
 FvxA0h+VMUQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="399760850"
Received: from epcorona-mobl.amr.corp.intel.com (HELO
 epcorona-moblu.amr.corp.intel.com) ([10.254.189.204])
 by orsmga004.jf.intel.com with ESMTP; 13 Apr 2020 15:29:59 -0700
From: Ernesto Corona <ernesto.corona@intel.com>
To: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH v29 4/6] Documentation: jtag: Add ABI documentation
Date: Mon, 13 Apr 2020 15:29:18 -0700
Message-Id: <20200413222920.4722-5-ernesto.corona@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200413222920.4722-1-ernesto.corona@intel.com>
References: <20200413222920.4722-1-ernesto.corona@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_153018_342338_E525632E 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Jonathan Corbet <corbet@lwn.net>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Steven Filary <steven.a.filary@intel.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Vadim Pasternak <vadimp@mellanox.com>, Amithash Prasad <amithash@fb.com>,
 Jiri Pirko <jiri@mellanox.com>, Rgrs <rgrs@protonmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Ernesto Corona <ernesto.corona@intel.com>, Patrick Williams <patrickw3@fb.com>,
 Oleksandr Shamray <oleksandrs@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Added document that describe the ABI for JTAG class driver

Signed-off-by: Oleksandr Shamray <oleksandrs@mellanox.com>
Signed-off-by: Ernesto Corona <ernesto.corona@intel.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Jeffrey Hugo <jhugo@codeaurora.org>
Cc: Steven Filary <steven.a.filary@intel.com>
Cc: Jiri Pirko <jiri@mellanox.com>
Cc: Vadim Pasternak <vadimp@mellanox.com>
Cc: Amithash Prasad <amithash@fb.com>
Cc: Patrick Williams <patrickw3@fb.com>
Cc: Rgrs <rgrs@protonmail.com>
---
v28->v29
- Change ABI documentation to reStructuredText (rst) format.

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

v26->v27
v25->v26
Comments pointed by Randy Dunlap <rdunlap@infradead.org>
- fix spell in ABI documentation

v24->v25
Comments pointed by Greg KH <gregkh@linuxfoundation.org>
- Fixed documentation according to new open() behavior

v23->v24
v22->v23
Comments pointed by Randy Dunlap <rdunlap@infradead.org>
- fix spell in ABI doccumentation

v21->v22
Comments pointed by Randy Dunlap <rdunlap@infradead.org>
- fix spell in ABI doccumentation

v20->v21
Comments pointed by Randy Dunlap <rdunlap@infradead.org>
- Fix JTAG dirver help in Kconfig

v19->v20
Comments pointed by Randy Dunlap <rdunlap@infradead.org>
- Fix JTAG doccumentation

v18->v19
Pavel Machek <pavel@ucw.cz>
- Added JTAG doccumentation to Documentation/jtag

v17->v18
v16->v17
v15->v16
v14->v15
v13->v14
v12->v13
v11->v12 Tobias Klauser <tklauser@distanz.ch>
Comments pointed by
- rename /Documentation/ABI/testing/jatg-dev -> jtag-dev
- Typo: s/interfase/interface
v10->v11
v9->v10
Fixes added by Oleksandr:
- change jtag-cdev to jtag-dev in documentation
- update KernelVersion and Date in jtag-dev documentation;
v8->v9
v7->v8
v6->v7
Comments pointed by Pavel Machek <pavel@ucw.cz>
- Added jtag-cdev documentation to Documentation/ABI/testing folder
---
 Documentation/ABI/testing/jtag-dev  |  23 ++++
 Documentation/index.rst             |   1 +
 Documentation/jtag/index.rst        |  18 +++
 Documentation/jtag/jtag-summary.rst |  47 +++++++
 Documentation/jtag/jtagdev.rst      | 194 ++++++++++++++++++++++++++++
 5 files changed, 283 insertions(+)
 create mode 100644 Documentation/ABI/testing/jtag-dev
 create mode 100644 Documentation/jtag/index.rst
 create mode 100644 Documentation/jtag/jtag-summary.rst
 create mode 100644 Documentation/jtag/jtagdev.rst

diff --git a/Documentation/ABI/testing/jtag-dev b/Documentation/ABI/testing/jtag-dev
new file mode 100644
index 000000000000..423baab18761
--- /dev/null
+++ b/Documentation/ABI/testing/jtag-dev
@@ -0,0 +1,23 @@
+What:		/dev/jtag[0-9]+
+Date:		July 2018
+KernelVersion:	4.20
+Contact:	oleksandrs@mellanox.com
+Description:
+		The misc device files /dev/jtag* are the interface
+		between JTAG master interface and userspace.
+
+		The ioctl(2)-based ABI is defined and documented in
+		[include/uapi]<linux/jtag.h>.
+
+		The following file operations are supported:
+
+		open(2)
+		Opens and allocates file descriptor.
+
+		ioctl(2)
+		Initiate various actions.
+		See the inline documentation in [include/uapi]<linux/jtag.h>
+		for descriptions of all ioctls.
+
+Users:
+		userspace tools which wants to access to JTAG bus
diff --git a/Documentation/index.rst b/Documentation/index.rst
index 9599c0f3eea8..f75e8fa17d0e 100644
--- a/Documentation/index.rst
+++ b/Documentation/index.rst
@@ -108,6 +108,7 @@ needed).
    iio/index
    isdn/index
    infiniband/index
+   jtag/index
    leds/index
    media/index
    netlabel/index
diff --git a/Documentation/jtag/index.rst b/Documentation/jtag/index.rst
new file mode 100644
index 000000000000..8a2761d1c17e
--- /dev/null
+++ b/Documentation/jtag/index.rst
@@ -0,0 +1,18 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+==============================
+Joint Test Action Group (JTAG)
+==============================
+
+.. toctree::
+   :maxdepth: 1
+
+   jtag-summary
+   jtagdev
+
+.. only::  subproject and html
+
+   Indices
+   =======
+
+   * :ref:`genindex`
diff --git a/Documentation/jtag/jtag-summary.rst b/Documentation/jtag/jtag-summary.rst
new file mode 100644
index 000000000000..7d3211be9096
--- /dev/null
+++ b/Documentation/jtag/jtag-summary.rst
@@ -0,0 +1,47 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+====================================
+Linux kernel JTAG support
+====================================
+
+Introduction to JTAG
+====================
+
+JTAG is an industry standard for verifying hardware. JTAG provides access to
+many logic signals of a complex integrated circuit, including the device pins.
+
+A JTAG interface is a special interface added to a chip.
+Depending on the version of JTAG, two, four, or five pins are added.
+
+The connector pins are:
+ * TDI (Test Data In)
+ * TDO (Test Data Out)
+ * TCK (Test Clock)
+ * TMS (Test Mode Select)
+ * TRST (Test Reset) optional
+
+JTAG interface is designed to have two parts - basic core driver and
+hardware specific driver. The basic driver introduces a general interface
+which is not dependent of specific hardware. It provides communication
+between user space and hardware specific driver.
+Each JTAG device is represented as a char device from (jtag0, jtag1, ...).
+Access to a JTAG device is performed through IOCTL calls.
+
+Call flow example:
+::
+
+	User: open  -> /dev/jatgX -> JTAG core driver -> JTAG hardware specific driver
+	User: ioctl -> /dev/jtagX -> JTAG core driver -> JTAG hardware specific driver
+	User: close -> /dev/jatgX -> JTAG core driver -> JTAG hardware specific driver
+
+
+THANKS TO
+---------
+Contributors to Linux-JTAG discussions include (in alphabetical order,
+by last name):
+
+- Ernesto Corona
+- Jiri Pirko
+- Oleksandr Shamray
+- Steven Filary
+- Vadim Pasternak
diff --git a/Documentation/jtag/jtagdev.rst b/Documentation/jtag/jtagdev.rst
new file mode 100644
index 000000000000..445f0b9c5b4d
--- /dev/null
+++ b/Documentation/jtag/jtagdev.rst
@@ -0,0 +1,194 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+==================
+JTAG userspace API
+==================
+JTAG master devices can be accessed through a character misc-device.
+
+Each JTAG master interface can be accessed by using /dev/jtagN.
+
+JTAG system calls set:
+ * SIR (Scan Instruction Register, IEEE 1149.1 Instruction Register scan);
+ * SDR (Scan Data Register, IEEE 1149.1 Data Register scan);
+ * RUNTEST (Forces the IEEE 1149.1 bus to a run state for a specified number of clocks.
+
+open(), close()
+---------------
+Open/Close  device:
+::
+
+	jtag_fd = open("/dev/jtag0", O_RDWR);
+	close(jtag_fd);
+
+ioctl()
+-------
+All access operations to JTAG devices are performed through ioctl interface.
+The IOCTL interface supports these requests:
+::
+
+	JTAG_SIOCSTATE - Force JTAG state machine to go into a TAPC state
+	JTAG_SIOCFREQ - Set JTAG TCK frequency
+	JTAG_GIOCFREQ - Get JTAG TCK frequency
+	JTAG_IOCXFER - send/receive JTAG data Xfer
+	JTAG_GIOCSTATUS - get current JTAG TAP state
+	JTAG_SIOCMODE - set JTAG mode flags.
+	JTAG_IOCBITBANG - JTAG bitbang low level control.
+
+JTAG_SIOCFREQ
+~~~~~~~~~~~~~
+Set JTAG clock speed:
+::
+
+	unsigned int jtag_fd;
+	ioctl(jtag_fd, JTAG_SIOCFREQ, &frq);
+
+JTAG_GIOCFREQ
+~~~~~~~~~~~~~
+Get JTAG clock speed:
+::
+
+	unsigned int jtag_fd;
+	ioctl(jtag_fd, JTAG_GIOCFREQ, &frq);
+
+JTAG_SIOCSTATE
+~~~~~~~~~~~~~~
+Force JTAG state machine to go into a TAPC state
+::
+
+	struct jtag_end_tap_state {
+		__u8	reset;
+		__u8	endstate;
+		__u8	tck;
+	};
+
+reset: one of below options
+::
+
+	JTAG_NO_RESET - go through selected endstate from current state
+	JTAG_FORCE_RESET - go through TEST_LOGIC/RESET state before selected endstate
+
+endstate: any state listed in jtag_endstate enum
+::
+
+	enum jtag_endstate {
+		JTAG_STATE_TLRESET,
+		JTAG_STATE_IDLE,
+		JTAG_STATE_SELECTDR,
+		JTAG_STATE_CAPTUREDR,
+		JTAG_STATE_SHIFTDR,
+		JTAG_STATE_EXIT1DR,
+		JTAG_STATE_PAUSEDR,
+		JTAG_STATE_EXIT2DR,
+		JTAG_STATE_UPDATEDR,
+		JTAG_STATE_SELECTIR,
+		JTAG_STATE_CAPTUREIR,
+		JTAG_STATE_SHIFTIR,
+		JTAG_STATE_EXIT1IR,
+		JTAG_STATE_PAUSEIR,
+		JTAG_STATE_EXIT2IR,
+		JTAG_STATE_UPDATEIR
+	};
+
+tck: clock counter
+
+Example:
+::
+
+	struct jtag_end_tap_state end_state;
+
+	end_state.endstate = JTAG_STATE_IDLE;
+	end_state.reset = 0;
+	end_state.tck = data_p->tck;
+	usleep(25 * 1000);
+	ioctl(jtag_fd, JTAG_SIOCSTATE, &end_state);
+
+JTAG_GIOCSTATUS
+~~~~~~~~~~~~~~~
+Get JTAG TAPC current machine state
+::
+
+	unsigned int jtag_fd;
+	jtag_endstate endstate;
+	ioctl(jtag_fd, JTAG_GIOCSTATUS, &endstate);
+
+JTAG_IOCXFER
+~~~~~~~~~~~~
+Send SDR/SIR transaction
+::
+
+	struct jtag_xfer {
+		__u8	type;
+		__u8	direction;
+		__u8	endstate;
+		__u8	padding;
+		__u32	length;
+		__u64	tdio;
+	};
+
+type: transfer type - JTAG_SIR_XFER/JTAG_SDR_XFER
+
+direction: xfer direction - JTAG_READ_XFER/JTAG_WRITE_XFER/JTAG_READ_WRITE_XFER
+
+length: xfer data length in bits
+
+tdio : xfer data array
+
+endstate: end state after transaction finish any of jtag_endstate enum
+
+Example:
+::
+
+	struct jtag_xfer xfer;
+	static char buf[64];
+	static unsigned int buf_len = 0;
+	[...]
+	xfer.type = JTAG_SDR_XFER;
+	xfer.tdio = (__u64)buf;
+	xfer.length = buf_len;
+	xfer.endstate = JTAG_STATE_IDLE;
+
+	if (is_read)
+		xfer.direction = JTAG_READ_XFER;
+	else if (is_write)
+		xfer.direction = JTAG_WRITE_XFER;
+	else
+		xfer.direction = JTAG_READ_WRITE_XFER;
+
+	ioctl(jtag_fd, JTAG_IOCXFER, &xfer);
+
+JTAG_SIOCMODE
+~~~~~~~~~~~~~
+If hardware driver can support different running modes you can change it.
+
+Example:
+::
+
+	struct jtag_mode mode;
+	mode.feature = JTAG_XFER_MODE;
+	mode.mode = JTAG_XFER_HW_MODE;
+	ioctl(jtag_fd, JTAG_SIOCMODE, &mode);
+
+JTAG_IOCBITBANG
+~~~~~~~~~~~~~~~
+JTAG Bitbang low level operation.
+
+Example:
+::
+
+	struct tck_bitbang bitbang
+	bitbang.tms = 1;
+	bitbang.tdi = 0;
+	ioctl(jtag_fd, JTAG_IOCBITBANG, &bitbang);
+	tdo = bitbang.tdo;
+
+
+THANKS TO
+---------
+Contributors to Linux-JTAG discussions include (in alphabetical order,
+by last name):
+
+- Ernesto Corona
+- Jiri Pirko
+- Oleksandr Shamray
+- Steven Filary
+- Vadim Pasternak
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
