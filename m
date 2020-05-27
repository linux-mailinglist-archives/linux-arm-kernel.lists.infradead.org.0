Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0244B1E41B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4XpxQIOFuIyv+WvcxGtkrVzBpIVCo40OiELU9LQ7Kc=; b=GSQcvGhNi1HIqE
	zGyooQm2LNhtpqdyWbyrAr5Ch/RbBSkOkTy+zUwON69Cym5VMTrYg9S88CFEhPrnhjvInXQ2Edil+
	JrwvAqabUcZkXYvajjFsxDHyKPFuppP0eHbw2DZTJpiiu0U0jkRNX72FgiSXXqc6hIe98cIf8iS/p
	U2E2IBCOlOCSCDIwt4D+7rk1RrDbmOayywjBC9V4tDMLZPGAycvtTBRI0CbaNp4rcaEUlTZa1TG3D
	Qq+QVpwuuXs60Eb4ag9rN74QUMsIPMbck2CxrOXwkXNJwtJM9S39jTw5EIqvHa3exhlDXaSqhRkCl
	aC/YjNP3MOqnljx6wOXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduwM-00073m-Ck; Wed, 27 May 2020 12:13:46 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdueH-0007Km-3k; Wed, 27 May 2020 11:55:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 568A3AE44;
 Wed, 27 May 2020 11:55:04 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC 48/50] staging: vchiq: Use vchiq.h as the main header file for
 services
Date: Wed, 27 May 2020 13:53:53 +0200
Message-Id: <20200527115400.31391-49-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045505_487642_3E12B6B8 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 laurent.pinchart@ideasonboard.com, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This used to be vchiq_if.h but vchiq.h is more concise for an include
file that will hopefully be in the future in the includes directory.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/bcm2835-audio/bcm2835.h     |   2 +-
 .../vc04_services/interface/vchiq_arm/vchiq.h | 107 ++++++++++++++++-
 .../interface/vchiq_arm/vchiq_if.h            | 109 ------------------
 .../interface/vchiq_arm/vchiq_ioctl.h         |   2 +-
 .../staging/vc04_services/vc-sm-cma/vc_sm.c   |   2 +-
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  |   2 +-
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     |   2 +-
 7 files changed, 108 insertions(+), 118 deletions(-)
 delete mode 100644 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
index a15f251033ac..ca220f5230ec 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
@@ -9,7 +9,7 @@
 #include <sound/core.h>
 #include <sound/pcm.h>
 #include <sound/pcm-indirect.h>
-#include "interface/vchiq_arm/vchiq_if.h"
+#include "interface/vchiq_arm/vchiq.h"
 
 #define MAX_SUBSTREAMS   (8)
 #define AVAIL_SUBSTREAMS_MASK  (0xff)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
index 57fe7d5e9a85..04b7ff41a025 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
@@ -1,9 +1,108 @@
 /* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
 /* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
 
-#ifndef VCHIQ_VCHIQ_H
-#define VCHIQ_VCHIQ_H
+#ifndef VCHIQ_H
+#define VCHIQ_H
 
-#include "vchiq_if.h"
+#define VCHIQ_SERVICE_HANDLE_INVALID 0
 
-#endif
+#define VCHIQ_SLOT_SIZE     4096
+#define VCHIQ_MAX_MSG_SIZE  (VCHIQ_SLOT_SIZE - sizeof(struct vchiq_header))
+
+#define VCHIQ_MAKE_FOURCC(x0, x1, x2, x3) \
+			(((x0) << 24) | ((x1) << 16) | ((x2) << 8) | (x3))
+
+enum vchiq_reason {
+	VCHIQ_SERVICE_OPENED,         /* service, -, -             */
+	VCHIQ_SERVICE_CLOSED,         /* service, -, -             */
+	VCHIQ_MESSAGE_AVAILABLE,      /* service, header, -        */
+	VCHIQ_BULK_TRANSMIT_DONE,     /* service, -, bulk_userdata */
+	VCHIQ_BULK_RECEIVE_DONE,      /* service, -, bulk_userdata */
+	VCHIQ_BULK_TRANSMIT_ABORTED,  /* service, -, bulk_userdata */
+	VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
+};
+
+enum vchiq_status {
+	VCHIQ_ERROR   = -1,
+	VCHIQ_SUCCESS = 0,
+	VCHIQ_RETRY   = 1
+};
+
+enum vchiq_bulk_mode {
+	VCHIQ_BULK_MODE_CALLBACK,
+	VCHIQ_BULK_MODE_BLOCKING,
+	VCHIQ_BULK_MODE_NOCALLBACK,
+	VCHIQ_BULK_MODE_WAITING		/* Reserved for internal use */
+};
+
+enum vchiq_service_option {
+	VCHIQ_SERVICE_OPTION_AUTOCLOSE,
+	VCHIQ_SERVICE_OPTION_SLOT_QUOTA,
+	VCHIQ_SERVICE_OPTION_MESSAGE_QUOTA,
+	VCHIQ_SERVICE_OPTION_SYNCHRONOUS,
+	VCHIQ_SERVICE_OPTION_TRACE
+};
+
+struct vchiq_header {
+	/* The message identifier - opaque to applications. */
+	int msgid;
+
+	/* Size of message data. */
+	unsigned int size;
+
+	char data[0];           /* message */
+};
+
+struct vchiq_element {
+	const void __user *data;
+	unsigned int size;
+};
+
+struct vchiq_service_base {
+	int fourcc;
+	enum vchiq_status (*callback)(enum vchiq_reason reason,
+				      struct vchiq_header *header,
+				      unsigned int handle,
+				      void *bulk_userdata);
+	void *userdata;
+};
+
+struct vchiq_service_params {
+	int fourcc;
+	enum vchiq_status (*callback)(enum vchiq_reason reason,
+				      struct vchiq_header *header,
+				      unsigned int handle,
+				      void *bulk_userdata);
+	void *userdata;
+	short version;       /* Increment for non-trivial changes */
+	short version_min;   /* Update for incompatible changes */
+};
+
+struct vchiq_instance;
+
+extern enum vchiq_status vchiq_initialise(struct vchiq_instance **pinstance);
+extern enum vchiq_status vchiq_shutdown(struct vchiq_instance *instance);
+extern enum vchiq_status vchiq_connect(struct vchiq_instance *instance);
+extern enum vchiq_status vchiq_open_service(struct vchiq_instance *instance,
+	const struct vchiq_service_params *params,
+	unsigned int *pservice);
+extern enum vchiq_status vchiq_close_service(unsigned int service);
+extern enum vchiq_status vchiq_use_service(unsigned int service);
+extern enum vchiq_status vchiq_release_service(unsigned int service);
+extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
+extern void           vchiq_release_message(unsigned int service,
+	struct vchiq_header *header);
+extern int vchiq_queue_kernel_message(unsigned handle, void *data,
+				      unsigned size);
+extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
+	const void *data, unsigned int size, void *userdata,
+	enum vchiq_bulk_mode mode);
+extern enum vchiq_status vchiq_bulk_receive(unsigned int service,
+	void *data, unsigned int size, void *userdata,
+	enum vchiq_bulk_mode mode);
+extern void *vchiq_get_service_userdata(unsigned int service);
+extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
+      short *peer_version);
+extern struct vchiq_header *vchiq_msg_hold(unsigned handle);
+
+#endif /* VCHIQ_H */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
deleted file mode 100644
index 6374eda4ea0c..000000000000
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ /dev/null
@@ -1,109 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
-/* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
-
-#ifndef VCHIQ_IF_H
-#define VCHIQ_IF_H
-
-#define VCHIQ_SERVICE_HANDLE_INVALID 0
-
-#define VCHIQ_SLOT_SIZE     4096
-#define VCHIQ_MAX_MSG_SIZE  (VCHIQ_SLOT_SIZE - sizeof(struct vchiq_header))
-
-#define VCHIQ_MAKE_FOURCC(x0, x1, x2, x3) \
-			(((x0) << 24) | ((x1) << 16) | ((x2) << 8) | (x3))
-
-enum vchiq_reason {
-	VCHIQ_SERVICE_OPENED,         /* service, -, -             */
-	VCHIQ_SERVICE_CLOSED,         /* service, -, -             */
-	VCHIQ_MESSAGE_AVAILABLE,      /* service, header, -        */
-	VCHIQ_BULK_TRANSMIT_DONE,     /* service, -, bulk_userdata */
-	VCHIQ_BULK_RECEIVE_DONE,      /* service, -, bulk_userdata */
-	VCHIQ_BULK_TRANSMIT_ABORTED,  /* service, -, bulk_userdata */
-	VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
-};
-
-enum vchiq_status {
-	VCHIQ_ERROR   = -1,
-	VCHIQ_SUCCESS = 0,
-	VCHIQ_RETRY   = 1
-};
-
-enum vchiq_bulk_mode {
-	VCHIQ_BULK_MODE_CALLBACK,
-	VCHIQ_BULK_MODE_BLOCKING,
-	VCHIQ_BULK_MODE_NOCALLBACK,
-	VCHIQ_BULK_MODE_WAITING		/* Reserved for internal use */
-};
-
-enum vchiq_service_option {
-	VCHIQ_SERVICE_OPTION_AUTOCLOSE,
-	VCHIQ_SERVICE_OPTION_SLOT_QUOTA,
-	VCHIQ_SERVICE_OPTION_MESSAGE_QUOTA,
-	VCHIQ_SERVICE_OPTION_SYNCHRONOUS,
-	VCHIQ_SERVICE_OPTION_TRACE
-};
-
-struct vchiq_header {
-	/* The message identifier - opaque to applications. */
-	int msgid;
-
-	/* Size of message data. */
-	unsigned int size;
-
-	char data[0];           /* message */
-};
-
-struct vchiq_element {
-	const void __user *data;
-	unsigned int size;
-};
-
-struct vchiq_service_base {
-	int fourcc;
-	enum vchiq_status (*callback)(enum vchiq_reason reason,
-				      struct vchiq_header *header,
-				      unsigned int handle,
-				      void *bulk_userdata);
-	void *userdata;
-};
-
-struct vchiq_service_params {
-	int fourcc;
-	enum vchiq_status (*callback)(enum vchiq_reason reason,
-				      struct vchiq_header *header,
-				      unsigned int handle,
-				      void *bulk_userdata);
-	void *userdata;
-	short version;       /* Increment for non-trivial changes */
-	short version_min;   /* Update for incompatible changes */
-};
-
-struct vchiq_instance;
-
-extern enum vchiq_status vchiq_initialise(struct vchiq_instance **pinstance);
-extern enum vchiq_status vchiq_shutdown(struct vchiq_instance *instance);
-extern enum vchiq_status vchiq_connect(struct vchiq_instance *instance);
-extern enum vchiq_status vchiq_open_service(struct vchiq_instance *instance,
-	const struct vchiq_service_params *params,
-	unsigned int *pservice);
-extern enum vchiq_status vchiq_close_service(unsigned int service);
-extern enum vchiq_status vchiq_use_service(unsigned int service);
-extern enum vchiq_status vchiq_release_service(unsigned int service);
-extern int vchiq_queue_kernel_message(unsigned handle, void *data,
-				      unsigned size);
-extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
-extern void           vchiq_release_message(unsigned int service,
-	struct vchiq_header *header);
-extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
-	const void *data, unsigned int size, void *userdata,
-	enum vchiq_bulk_mode mode);
-extern enum vchiq_status vchiq_bulk_receive(unsigned int service,
-	void *data, unsigned int size, void *userdata,
-	enum vchiq_bulk_mode mode);
-extern void *vchiq_get_service_userdata(unsigned int service);
-extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
-      short *peer_version);
-extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
-extern struct vchiq_header *vchiq_msg_hold(unsigned handle);
-
-#endif /* VCHIQ_IF_H */
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index 202889b3774f..f285d754ad28 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -5,7 +5,7 @@
 #define VCHIQ_IOCTLS_H
 
 #include <linux/ioctl.h>
-#include "vchiq_if.h"
+#include "vchiq.h"
 
 #define VCHIQ_IOC_MAGIC 0xc4
 #define VCHIQ_INVALID_HANDLE (~0)
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
index 572068538a4c..e4f7bdeef66d 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
@@ -48,7 +48,7 @@
 #include <linux/types.h>
 #include <asm/cacheflush.h>
 
-#include "vchiq_if.h"
+#include "vchiq.h"
 #include "vchiq_connected.h"
 #include "vc_sm_cma_vchi.h"
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index 1ff165c05706..2c65416cd331 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -19,7 +19,7 @@
 #include <linux/slab.h>
 #include <linux/types.h>
 
-#include "interface/vchiq_arm/vchiq_if.h"
+#include "vchiq.h"
 #include "vc_sm_cma_vchi.h"
 
 #define VC_SM_VER  1
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index c5f59d71badf..2101b79780eb 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -32,7 +32,7 @@
 
 #include "vc-sm-cma/vc_sm_knl.h"
 
-#include "interface/vchiq_arm/vchiq_if.h"
+#include "interface/vchiq_arm/vchiq.h"
 
 /*
  * maximum number of components supported.
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
