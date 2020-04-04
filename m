Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EBE19E40D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 11:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nJez+uGbsgUiIpixpO8PbkMVrXxpeBKwEHd9rsM+TcY=; b=S0gYZ1F7cPzMfx
	kbLYFlmtdkx5jcY/1zpJfV28gq/lDpxPOnOrhyeCj9m1o3T1cOqZ7qAUvWVTlectlZkONdJdGPzq+
	DqtOw0HftFGORKL57f1s1AYZfJQMZttWTf4vACIluPyMUBSecnzTVe3FMIPwMxzraVG6LOZvDyRMV
	/GIhzy81LDjZvFsWLCk42raTv0fy/4q6ul3VnmK81IiHjQbaKPnD4ZkJQfqY/eqHCcgaPnhBszzgo
	3WaKpM7pk3WwI/8pbPuajhg8IfeB9fG9nhDMQ/1DeVvDOplACIuEaNxGN4RTMVFbmyD8c5kQQjdkp
	luawCF2cTm0qPyWxD62A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKf02-0007oL-FT; Sat, 04 Apr 2020 09:21:58 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKezv-0007na-Q2; Sat, 04 Apr 2020 09:21:53 +0000
Received: by mail-pj1-x1044.google.com with SMTP id k3so4163196pjj.2;
 Sat, 04 Apr 2020 02:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=NGWjop58dXG4vxvIdRNaBQN9RGU+nV2F4sGHS4krjUo=;
 b=aoxYQ38PiYhTd+Dz1M1BjQDqvxcAfcndhj7HICuNEpV9z4uSvebaYJ5wAW/b/9YgAx
 49+GSxdhFfaR2oLyCt83fpzwsuZT1EPmUDLfC2LdAdAJsu0AfL/HAHH1LFdspdtJBgf6
 O9BT9reeHvTpZDIdPF7ba08EMb8Tu+M+Cy8ZoPavS/9ghMlxCR8bhTxRdiSpbaHlNit8
 ZUkbxO69Azcqf+y8PXIZ/SJ+u0ZgOJ0mShekcuf3hn/mb56ktAyXhZSn/uYj560rIlC8
 R1l1tblnVxeNfGd5nYY9fk3PQwbXJiB0j5ZB2frsIa65FyUnQRBqDZHTUXL7KixjqB8Z
 i6Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=NGWjop58dXG4vxvIdRNaBQN9RGU+nV2F4sGHS4krjUo=;
 b=svFIhN43S0p7gaKBu3lKWLKh3Ndz5OoCjkktRow3U3tKR5G511tqPgIWF06r1urn03
 pow0PMcP3EI3k92Ij1OU2OA7ulxT0RBaTovzsRnqr9ASakgE+KTjmZjw79lNF9fdpvuw
 XR0xOoUfTidmgo8hiRwBsHGITulTlQlGSDqAnzzjRyIscFxH1lwvgHX8255wbZtz1K8l
 oVzhzKp8V8ssi/U1UC0XjyB6cAJHnHGNhkTafv1OJ7CelEdXR/bltHdOBzrhoEiBezNi
 CT0sJ94SAeo9Y3k7rZG5paj3AfWBktV9R+7acNJTgUgCsdrnWAfN631zmjUNergYj/O6
 0BIg==
X-Gm-Message-State: AGi0Puaw/a6kmDWuwTKTmcmYb6Wd6BAvEGyZGtd9lVBO4NfkuJD8X3r4
 zTwAXB0mb9NQiY84am5VDkViVJvIqiM=
X-Google-Smtp-Source: APiQypIh6/tBvi/I+KrSy5FN/7eVkcMYHZrfKkGYY0tvSU7vJ/rf7VYnpdxdwhHlE47Fga+c5RJHsQ==
X-Received: by 2002:a17:902:c595:: with SMTP id
 p21mr11756123plx.17.1585992110608; 
 Sat, 04 Apr 2020 02:21:50 -0700 (PDT)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id a2sm7550506pja.44.2020.04.04.02.21.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 04 Apr 2020 02:21:50 -0700 (PDT)
Date: Sat, 4 Apr 2020 14:51:40 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>
Subject: [PATCH] USB: host: Use the correct style for SPDX License Identifier
Message-ID: <20200404092135.GA4522@nishad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_022151_847204_7395DF72 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nishadkamdar[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-usb@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style in
header files related to USB host controller drivers.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used).

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/usb/host/ehci-fsl.h      | 2 +-
 drivers/usb/host/ehci.h          | 2 +-
 drivers/usb/host/fhci.h          | 2 +-
 drivers/usb/host/imx21-hcd.h     | 2 +-
 drivers/usb/host/ohci.h          | 2 +-
 drivers/usb/host/r8a66597.h      | 2 +-
 drivers/usb/host/xhci-debugfs.h  | 2 +-
 drivers/usb/host/xhci-ext-caps.h | 2 +-
 drivers/usb/host/xhci-mtk.h      | 2 +-
 drivers/usb/host/xhci-mvebu.h    | 2 +-
 drivers/usb/host/xhci-plat.h     | 2 +-
 drivers/usb/host/xhci-rcar.h     | 2 +-
 drivers/usb/host/xhci-trace.h    | 2 +-
 drivers/usb/host/xhci.h          | 2 +-
 14 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/host/ehci-fsl.h b/drivers/usb/host/ehci-fsl.h
index 9d18c6e6ab27..c95341d472f4 100644
--- a/drivers/usb/host/ehci-fsl.h
+++ b/drivers/usb/host/ehci-fsl.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /* Copyright (C) 2005-2010,2012 Freescale Semiconductor, Inc.
  * Copyright (c) 2005 MontaVista Software
  */
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index 229b3de319e6..eabf22a78eae 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 2001-2002 by David Brownell
  */
diff --git a/drivers/usb/host/fhci.h b/drivers/usb/host/fhci.h
index 2ce5031d866d..81fbc019a9b3 100644
--- a/drivers/usb/host/fhci.h
+++ b/drivers/usb/host/fhci.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Freescale QUICC Engine USB Host Controller Driver
  *
diff --git a/drivers/usb/host/imx21-hcd.h b/drivers/usb/host/imx21-hcd.h
index 7b9cf0a38d6e..96d16752a73e 100644
--- a/drivers/usb/host/imx21-hcd.h
+++ b/drivers/usb/host/imx21-hcd.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Macros and prototypes for i.MX21
  *
diff --git a/drivers/usb/host/ohci.h b/drivers/usb/host/ohci.h
index 27c26ca10bfd..b85a39588f9d 100644
--- a/drivers/usb/host/ohci.h
+++ b/drivers/usb/host/ohci.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-1.0+
+/* SPDX-License-Identifier: GPL-1.0+ */
 /*
  * OHCI HCD (Host Controller Driver) for USB.
  *
diff --git a/drivers/usb/host/r8a66597.h b/drivers/usb/host/r8a66597.h
index 51973a923526..ab081475c113 100644
--- a/drivers/usb/host/r8a66597.h
+++ b/drivers/usb/host/r8a66597.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * R8A66597 HCD (Host Controller Driver)
  *
diff --git a/drivers/usb/host/xhci-debugfs.h b/drivers/usb/host/xhci-debugfs.h
index f7a4e2492b00..56db635fcd6e 100644
--- a/drivers/usb/host/xhci-debugfs.h
+++ b/drivers/usb/host/xhci-debugfs.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * xhci-debugfs.h - xHCI debugfs interface
  *
diff --git a/drivers/usb/host/xhci-ext-caps.h b/drivers/usb/host/xhci-ext-caps.h
index 268328c20681..fa59b242cd51 100644
--- a/drivers/usb/host/xhci-ext-caps.h
+++ b/drivers/usb/host/xhci-ext-caps.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * xHCI host controller driver
  *
diff --git a/drivers/usb/host/xhci-mtk.h b/drivers/usb/host/xhci-mtk.h
index acd56517215a..a93cfe817904 100644
--- a/drivers/usb/host/xhci-mtk.h
+++ b/drivers/usb/host/xhci-mtk.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2015 MediaTek Inc.
  * Author:
diff --git a/drivers/usb/host/xhci-mvebu.h b/drivers/usb/host/xhci-mvebu.h
index ca0a3a5721dd..3be021793cc8 100644
--- a/drivers/usb/host/xhci-mvebu.h
+++ b/drivers/usb/host/xhci-mvebu.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2014 Marvell
  *
diff --git a/drivers/usb/host/xhci-plat.h b/drivers/usb/host/xhci-plat.h
index 5681723fc9cd..b49f6447bd3a 100644
--- a/drivers/usb/host/xhci-plat.h
+++ b/drivers/usb/host/xhci-plat.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * xhci-plat.h - xHCI host controller driver platform Bus Glue.
  *
diff --git a/drivers/usb/host/xhci-rcar.h b/drivers/usb/host/xhci-rcar.h
index 012744a63a49..048ad3b8a6c7 100644
--- a/drivers/usb/host/xhci-rcar.h
+++ b/drivers/usb/host/xhci-rcar.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * drivers/usb/host/xhci-rcar.h
  *
diff --git a/drivers/usb/host/xhci-trace.h b/drivers/usb/host/xhci-trace.h
index b19582b2a72c..627abd236dbe 100644
--- a/drivers/usb/host/xhci-trace.h
+++ b/drivers/usb/host/xhci-trace.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * xHCI host controller driver
  *
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index 3289bb516201..fb50f0e82d08 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 
 /*
  * xHCI host controller driver
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
