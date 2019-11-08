Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B11AF4CC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:10:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5k7wEepaCE+MN0xf6I/PTx/YU3y2D4eicnzlfYc4tOU=; b=cg2NWnke2yrMfO
	0h+X6ZdvCxhEQ6YiRVINiLjwD5AVbaiGAJLCreS56tSbCdBiDgkCztSfrqzQq/iVicpfpYfKgkWGK
	abF63eJEl/HDVhK8z0A9nNWujHb/27/MfZoOboHI2sju+lCGCoYTSdWMUnB+tu1PUtdPo4C7QJCj4
	/4oEn8ewvRo+1Bu6ZZ7Bj22NrFxF8nrFh+Sy5nY4lD+wW2MplZMcN7YFpZ/NdUpCunXNot9DIPoDR
	TcGgR5BUveOBo4iAxqlV5nVlGwOyP6HlJB5kmsnOFXB+V6oC5b/J3P80BO9kJef4JBVj9vwM3byM1
	cxcjeg+oE8ca1ilM1TZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT420-00057d-R4; Fri, 08 Nov 2019 13:10:28 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3tr-0004d5-6S
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:06 +0000
Received: by mail-lj1-x242.google.com with SMTP id l20so6126896lje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:02:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kflmqvkrnbAdjtigGqKs8mrz9iivtun3aqewA1JiMFE=;
 b=TGHGF61osdTEgPuFhw4TYWMZ9pw0ZW8qNZZOCisVRZq0yBDV2RV4eLjDBBTQm6mF+p
 2oZtlcxJGEhp3x8xeuLtPvsevFAbInwTWTvcwEer+qGiNi5WUP2xog/vL0SOeIVy2EDD
 Pkvp3MGEGrWDxNH1QFB6iE8D4YYPdhvtDumq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kflmqvkrnbAdjtigGqKs8mrz9iivtun3aqewA1JiMFE=;
 b=K7eReju8dRoOqVsOPM3ADp2njPxDJhjbRizA0S4ZjtFWDJm2NU8gmAZ4SKwSC59j1M
 Cghwch20BGUcnGTOA0QBmggiZJEJeHhVcUAm4i7JhMXBoXJPxjzPxRIITxywLXCioC69
 BU5h0hdO6Gk+j1uYXFGuEZXFwkFyzDCVtEjgCAd1F92My/H8zWT3ZcnneumiwFqi6lf7
 DpZsOVGLKR1FqqIo+brIpS/0DixMJzYOTIQZfSk8HEeFCGVoZAvZHnudUBF14WjR5LFe
 ebqvUSoCE1Mw/LOWaCvo/PAfuBEES9wKZQ+i66lG54temhlaZ+4xyySIbd8Bz/b1ofZU
 +DgA==
X-Gm-Message-State: APjAAAX+//icv2DsvhVBkshwWJesnOejHOuVlZOpNes2iUDwq+y/VojO
 qCmEyfsYb+nu1KeCO/WMP9L89Q==
X-Google-Smtp-Source: APXvYqzoqn2vsRSI/gMtkT/kP4DeMqWqmdEeC2ghYpxbCPgNC+MaTwz5gZnyRHVXbYk2acqJ08XP+Q==
X-Received: by 2002:a2e:7c12:: with SMTP id x18mr6891744ljc.130.1573218120935; 
 Fri, 08 Nov 2019 05:02:00 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d28sm2454725lfn.33.2019.11.08.05.01.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 05:02:00 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v4 26/47] soc: fsl: move cpm.h from powerpc/include/asm to
 include/soc/fsl
Date: Fri,  8 Nov 2019 14:01:02 +0100
Message-Id: <20191108130123.6839-27-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050203_424642_567A40F7 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some drivers, e.g. ucc_uart, need definitions from cpm.h. In order to
allow building those drivers for non-ppc based SOCs, move the header
to include/soc/fsl. For now, leave a trivial wrapper at the old
location so drivers can be updated one by one.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 arch/powerpc/include/asm/cpm.h | 172 +--------------------------------
 include/soc/fsl/cpm.h          | 171 ++++++++++++++++++++++++++++++++
 2 files changed, 172 insertions(+), 171 deletions(-)
 create mode 100644 include/soc/fsl/cpm.h

diff --git a/arch/powerpc/include/asm/cpm.h b/arch/powerpc/include/asm/cpm.h
index 4c24ea8209bb..ce483b0f8a4d 100644
--- a/arch/powerpc/include/asm/cpm.h
+++ b/arch/powerpc/include/asm/cpm.h
@@ -1,171 +1 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef __CPM_H
-#define __CPM_H
-
-#include <linux/compiler.h>
-#include <linux/types.h>
-#include <linux/errno.h>
-#include <linux/of.h>
-#include <soc/fsl/qe/qe.h>
-
-/*
- * SPI Parameter RAM common to QE and CPM.
- */
-struct spi_pram {
-	__be16	rbase;	/* Rx Buffer descriptor base address */
-	__be16	tbase;	/* Tx Buffer descriptor base address */
-	u8	rfcr;	/* Rx function code */
-	u8	tfcr;	/* Tx function code */
-	__be16	mrblr;	/* Max receive buffer length */
-	__be32	rstate;	/* Internal */
-	__be32	rdp;	/* Internal */
-	__be16	rbptr;	/* Internal */
-	__be16	rbc;	/* Internal */
-	__be32	rxtmp;	/* Internal */
-	__be32	tstate;	/* Internal */
-	__be32	tdp;	/* Internal */
-	__be16	tbptr;	/* Internal */
-	__be16	tbc;	/* Internal */
-	__be32	txtmp;	/* Internal */
-	__be32	res;	/* Tx temp. */
-	__be16  rpbase;	/* Relocation pointer (CPM1 only) */
-	__be16	res1;	/* Reserved */
-};
-
-/*
- * USB Controller pram common to QE and CPM.
- */
-struct usb_ctlr {
-	u8	usb_usmod;
-	u8	usb_usadr;
-	u8	usb_uscom;
-	u8	res1[1];
-	__be16	usb_usep[4];
-	u8	res2[4];
-	__be16	usb_usber;
-	u8	res3[2];
-	__be16	usb_usbmr;
-	u8	res4[1];
-	u8	usb_usbs;
-	/* Fields down below are QE-only */
-	__be16	usb_ussft;
-	u8	res5[2];
-	__be16	usb_usfrn;
-	u8	res6[0x22];
-} __attribute__ ((packed));
-
-/*
- * Function code bits, usually generic to devices.
- */
-#ifdef CONFIG_CPM1
-#define CPMFCR_GBL	((u_char)0x00)	/* Flag doesn't exist in CPM1 */
-#define CPMFCR_TC2	((u_char)0x00)	/* Flag doesn't exist in CPM1 */
-#define CPMFCR_DTB	((u_char)0x00)	/* Flag doesn't exist in CPM1 */
-#define CPMFCR_BDB	((u_char)0x00)	/* Flag doesn't exist in CPM1 */
-#else
-#define CPMFCR_GBL	((u_char)0x20)	/* Set memory snooping */
-#define CPMFCR_TC2	((u_char)0x04)	/* Transfer code 2 value */
-#define CPMFCR_DTB	((u_char)0x02)	/* Use local bus for data when set */
-#define CPMFCR_BDB	((u_char)0x01)	/* Use local bus for BD when set */
-#endif
-#define CPMFCR_EB	((u_char)0x10)	/* Set big endian byte order */
-
-/* Opcodes common to CPM1 and CPM2
-*/
-#define CPM_CR_INIT_TRX		((ushort)0x0000)
-#define CPM_CR_INIT_RX		((ushort)0x0001)
-#define CPM_CR_INIT_TX		((ushort)0x0002)
-#define CPM_CR_HUNT_MODE	((ushort)0x0003)
-#define CPM_CR_STOP_TX		((ushort)0x0004)
-#define CPM_CR_GRA_STOP_TX	((ushort)0x0005)
-#define CPM_CR_RESTART_TX	((ushort)0x0006)
-#define CPM_CR_CLOSE_RX_BD	((ushort)0x0007)
-#define CPM_CR_SET_GADDR	((ushort)0x0008)
-#define CPM_CR_SET_TIMER	((ushort)0x0008)
-#define CPM_CR_STOP_IDMA	((ushort)0x000b)
-
-/* Buffer descriptors used by many of the CPM protocols. */
-typedef struct cpm_buf_desc {
-	ushort	cbd_sc;		/* Status and Control */
-	ushort	cbd_datlen;	/* Data length in buffer */
-	uint	cbd_bufaddr;	/* Buffer address in host memory */
-} cbd_t;
-
-/* Buffer descriptor control/status used by serial
- */
-
-#define BD_SC_EMPTY	(0x8000)	/* Receive is empty */
-#define BD_SC_READY	(0x8000)	/* Transmit is ready */
-#define BD_SC_WRAP	(0x2000)	/* Last buffer descriptor */
-#define BD_SC_INTRPT	(0x1000)	/* Interrupt on change */
-#define BD_SC_LAST	(0x0800)	/* Last buffer in frame */
-#define BD_SC_TC	(0x0400)	/* Transmit CRC */
-#define BD_SC_CM	(0x0200)	/* Continuous mode */
-#define BD_SC_ID	(0x0100)	/* Rec'd too many idles */
-#define BD_SC_P		(0x0100)	/* xmt preamble */
-#define BD_SC_BR	(0x0020)	/* Break received */
-#define BD_SC_FR	(0x0010)	/* Framing error */
-#define BD_SC_PR	(0x0008)	/* Parity error */
-#define BD_SC_NAK	(0x0004)	/* NAK - did not respond */
-#define BD_SC_OV	(0x0002)	/* Overrun */
-#define BD_SC_UN	(0x0002)	/* Underrun */
-#define BD_SC_CD	(0x0001)	/* */
-#define BD_SC_CL	(0x0001)	/* Collision */
-
-/* Buffer descriptor control/status used by Ethernet receive.
- * Common to SCC and FCC.
- */
-#define BD_ENET_RX_EMPTY	(0x8000)
-#define BD_ENET_RX_WRAP		(0x2000)
-#define BD_ENET_RX_INTR		(0x1000)
-#define BD_ENET_RX_LAST		(0x0800)
-#define BD_ENET_RX_FIRST	(0x0400)
-#define BD_ENET_RX_MISS		(0x0100)
-#define BD_ENET_RX_BC		(0x0080)	/* FCC Only */
-#define BD_ENET_RX_MC		(0x0040)	/* FCC Only */
-#define BD_ENET_RX_LG		(0x0020)
-#define BD_ENET_RX_NO		(0x0010)
-#define BD_ENET_RX_SH		(0x0008)
-#define BD_ENET_RX_CR		(0x0004)
-#define BD_ENET_RX_OV		(0x0002)
-#define BD_ENET_RX_CL		(0x0001)
-#define BD_ENET_RX_STATS	(0x01ff)	/* All status bits */
-
-/* Buffer descriptor control/status used by Ethernet transmit.
- * Common to SCC and FCC.
- */
-#define BD_ENET_TX_READY	(0x8000)
-#define BD_ENET_TX_PAD		(0x4000)
-#define BD_ENET_TX_WRAP		(0x2000)
-#define BD_ENET_TX_INTR		(0x1000)
-#define BD_ENET_TX_LAST		(0x0800)
-#define BD_ENET_TX_TC		(0x0400)
-#define BD_ENET_TX_DEF		(0x0200)
-#define BD_ENET_TX_HB		(0x0100)
-#define BD_ENET_TX_LC		(0x0080)
-#define BD_ENET_TX_RL		(0x0040)
-#define BD_ENET_TX_RCMASK	(0x003c)
-#define BD_ENET_TX_UN		(0x0002)
-#define BD_ENET_TX_CSL		(0x0001)
-#define BD_ENET_TX_STATS	(0x03ff)	/* All status bits */
-
-/* Buffer descriptor control/status used by Transparent mode SCC.
- */
-#define BD_SCC_TX_LAST		(0x0800)
-
-/* Buffer descriptor control/status used by I2C.
- */
-#define BD_I2C_START		(0x0400)
-
-#ifdef CONFIG_CPM
-int cpm_command(u32 command, u8 opcode);
-#else
-static inline int cpm_command(u32 command, u8 opcode)
-{
-	return -ENOSYS;
-}
-#endif /* CONFIG_CPM */
-
-int cpm2_gpiochip_add32(struct device *dev);
-
-#endif
+#include <soc/fsl/cpm.h>
diff --git a/include/soc/fsl/cpm.h b/include/soc/fsl/cpm.h
new file mode 100644
index 000000000000..4c24ea8209bb
--- /dev/null
+++ b/include/soc/fsl/cpm.h
@@ -0,0 +1,171 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __CPM_H
+#define __CPM_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+#include <linux/errno.h>
+#include <linux/of.h>
+#include <soc/fsl/qe/qe.h>
+
+/*
+ * SPI Parameter RAM common to QE and CPM.
+ */
+struct spi_pram {
+	__be16	rbase;	/* Rx Buffer descriptor base address */
+	__be16	tbase;	/* Tx Buffer descriptor base address */
+	u8	rfcr;	/* Rx function code */
+	u8	tfcr;	/* Tx function code */
+	__be16	mrblr;	/* Max receive buffer length */
+	__be32	rstate;	/* Internal */
+	__be32	rdp;	/* Internal */
+	__be16	rbptr;	/* Internal */
+	__be16	rbc;	/* Internal */
+	__be32	rxtmp;	/* Internal */
+	__be32	tstate;	/* Internal */
+	__be32	tdp;	/* Internal */
+	__be16	tbptr;	/* Internal */
+	__be16	tbc;	/* Internal */
+	__be32	txtmp;	/* Internal */
+	__be32	res;	/* Tx temp. */
+	__be16  rpbase;	/* Relocation pointer (CPM1 only) */
+	__be16	res1;	/* Reserved */
+};
+
+/*
+ * USB Controller pram common to QE and CPM.
+ */
+struct usb_ctlr {
+	u8	usb_usmod;
+	u8	usb_usadr;
+	u8	usb_uscom;
+	u8	res1[1];
+	__be16	usb_usep[4];
+	u8	res2[4];
+	__be16	usb_usber;
+	u8	res3[2];
+	__be16	usb_usbmr;
+	u8	res4[1];
+	u8	usb_usbs;
+	/* Fields down below are QE-only */
+	__be16	usb_ussft;
+	u8	res5[2];
+	__be16	usb_usfrn;
+	u8	res6[0x22];
+} __attribute__ ((packed));
+
+/*
+ * Function code bits, usually generic to devices.
+ */
+#ifdef CONFIG_CPM1
+#define CPMFCR_GBL	((u_char)0x00)	/* Flag doesn't exist in CPM1 */
+#define CPMFCR_TC2	((u_char)0x00)	/* Flag doesn't exist in CPM1 */
+#define CPMFCR_DTB	((u_char)0x00)	/* Flag doesn't exist in CPM1 */
+#define CPMFCR_BDB	((u_char)0x00)	/* Flag doesn't exist in CPM1 */
+#else
+#define CPMFCR_GBL	((u_char)0x20)	/* Set memory snooping */
+#define CPMFCR_TC2	((u_char)0x04)	/* Transfer code 2 value */
+#define CPMFCR_DTB	((u_char)0x02)	/* Use local bus for data when set */
+#define CPMFCR_BDB	((u_char)0x01)	/* Use local bus for BD when set */
+#endif
+#define CPMFCR_EB	((u_char)0x10)	/* Set big endian byte order */
+
+/* Opcodes common to CPM1 and CPM2
+*/
+#define CPM_CR_INIT_TRX		((ushort)0x0000)
+#define CPM_CR_INIT_RX		((ushort)0x0001)
+#define CPM_CR_INIT_TX		((ushort)0x0002)
+#define CPM_CR_HUNT_MODE	((ushort)0x0003)
+#define CPM_CR_STOP_TX		((ushort)0x0004)
+#define CPM_CR_GRA_STOP_TX	((ushort)0x0005)
+#define CPM_CR_RESTART_TX	((ushort)0x0006)
+#define CPM_CR_CLOSE_RX_BD	((ushort)0x0007)
+#define CPM_CR_SET_GADDR	((ushort)0x0008)
+#define CPM_CR_SET_TIMER	((ushort)0x0008)
+#define CPM_CR_STOP_IDMA	((ushort)0x000b)
+
+/* Buffer descriptors used by many of the CPM protocols. */
+typedef struct cpm_buf_desc {
+	ushort	cbd_sc;		/* Status and Control */
+	ushort	cbd_datlen;	/* Data length in buffer */
+	uint	cbd_bufaddr;	/* Buffer address in host memory */
+} cbd_t;
+
+/* Buffer descriptor control/status used by serial
+ */
+
+#define BD_SC_EMPTY	(0x8000)	/* Receive is empty */
+#define BD_SC_READY	(0x8000)	/* Transmit is ready */
+#define BD_SC_WRAP	(0x2000)	/* Last buffer descriptor */
+#define BD_SC_INTRPT	(0x1000)	/* Interrupt on change */
+#define BD_SC_LAST	(0x0800)	/* Last buffer in frame */
+#define BD_SC_TC	(0x0400)	/* Transmit CRC */
+#define BD_SC_CM	(0x0200)	/* Continuous mode */
+#define BD_SC_ID	(0x0100)	/* Rec'd too many idles */
+#define BD_SC_P		(0x0100)	/* xmt preamble */
+#define BD_SC_BR	(0x0020)	/* Break received */
+#define BD_SC_FR	(0x0010)	/* Framing error */
+#define BD_SC_PR	(0x0008)	/* Parity error */
+#define BD_SC_NAK	(0x0004)	/* NAK - did not respond */
+#define BD_SC_OV	(0x0002)	/* Overrun */
+#define BD_SC_UN	(0x0002)	/* Underrun */
+#define BD_SC_CD	(0x0001)	/* */
+#define BD_SC_CL	(0x0001)	/* Collision */
+
+/* Buffer descriptor control/status used by Ethernet receive.
+ * Common to SCC and FCC.
+ */
+#define BD_ENET_RX_EMPTY	(0x8000)
+#define BD_ENET_RX_WRAP		(0x2000)
+#define BD_ENET_RX_INTR		(0x1000)
+#define BD_ENET_RX_LAST		(0x0800)
+#define BD_ENET_RX_FIRST	(0x0400)
+#define BD_ENET_RX_MISS		(0x0100)
+#define BD_ENET_RX_BC		(0x0080)	/* FCC Only */
+#define BD_ENET_RX_MC		(0x0040)	/* FCC Only */
+#define BD_ENET_RX_LG		(0x0020)
+#define BD_ENET_RX_NO		(0x0010)
+#define BD_ENET_RX_SH		(0x0008)
+#define BD_ENET_RX_CR		(0x0004)
+#define BD_ENET_RX_OV		(0x0002)
+#define BD_ENET_RX_CL		(0x0001)
+#define BD_ENET_RX_STATS	(0x01ff)	/* All status bits */
+
+/* Buffer descriptor control/status used by Ethernet transmit.
+ * Common to SCC and FCC.
+ */
+#define BD_ENET_TX_READY	(0x8000)
+#define BD_ENET_TX_PAD		(0x4000)
+#define BD_ENET_TX_WRAP		(0x2000)
+#define BD_ENET_TX_INTR		(0x1000)
+#define BD_ENET_TX_LAST		(0x0800)
+#define BD_ENET_TX_TC		(0x0400)
+#define BD_ENET_TX_DEF		(0x0200)
+#define BD_ENET_TX_HB		(0x0100)
+#define BD_ENET_TX_LC		(0x0080)
+#define BD_ENET_TX_RL		(0x0040)
+#define BD_ENET_TX_RCMASK	(0x003c)
+#define BD_ENET_TX_UN		(0x0002)
+#define BD_ENET_TX_CSL		(0x0001)
+#define BD_ENET_TX_STATS	(0x03ff)	/* All status bits */
+
+/* Buffer descriptor control/status used by Transparent mode SCC.
+ */
+#define BD_SCC_TX_LAST		(0x0800)
+
+/* Buffer descriptor control/status used by I2C.
+ */
+#define BD_I2C_START		(0x0400)
+
+#ifdef CONFIG_CPM
+int cpm_command(u32 command, u8 opcode);
+#else
+static inline int cpm_command(u32 command, u8 opcode)
+{
+	return -ENOSYS;
+}
+#endif /* CONFIG_CPM */
+
+int cpm2_gpiochip_add32(struct device *dev);
+
+#endif
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
