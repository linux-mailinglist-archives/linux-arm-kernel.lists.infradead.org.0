Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9071E41A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YSgz+rif3g1Qn4tN6Djok1CUNrNyVw2DrkKn3tBiAGo=; b=dgs9rK/3q1kOaM
	W51bXtCdh31nfIkKOk8vGrnbulhxfO57K0GiuuFKNl7Rk2Ks7pIhK1tmV6QQsq7pN3zm/QB5Vcjl+
	htJ/NxWB3G5tjxY5VCK3EMK81WR8tkPPMf28Ng/lHPpNRTw8/XSn5BnS6NM1kw0IVlkCAelafvKMK
	ZNfUW7JAu3i1kzqO4q2SGWsWUW98eDG1t6W9X4OOIxdRnu5F4E2kv/GwPDfltHCeHjZsVvlIARfNT
	BIigTlAe9S7lJ4FvmmmOkLt+eM8trYfHhgsO31/QyOyEYXLJpJHWdvKN+XOrLSMj4cjFwnwusVxeU
	Lf7nqkrwn7IFjpUndbFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduun-0005ar-8y; Wed, 27 May 2020 12:12:09 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdue7-0007D5-UI; Wed, 27 May 2020 11:54:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DD722AF39;
 Wed, 27 May 2020 11:54:56 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 42/50] staging: vchiq: Move definitions only used by core into
 core header
Date: Wed, 27 May 2020 13:53:47 +0200
Message-Id: <20200527115400.31391-43-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045456_279359_9BC09C2F 
X-CRM114-Status: GOOD (  13.66  )
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
 laurent.pinchart@ideasonboard.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vchiq_if.h is used by service consumers and only the exported API should
be present. Move the rest of definitions, which were not exported by the
way, to vchiq_core.h where they belong.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_core.h          | 22 +++++++++++++++++++
 .../interface/vchiq_arm/vchiq_if.h            | 16 --------------
 2 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index b97b661bea1c..ff91c04ba6b9 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -486,6 +486,18 @@ struct bulk_waiter {
 	int actual;
 };
 
+struct vchiq_config {
+	unsigned int max_msg_size;
+	unsigned int bulk_threshold; /* The message size above which it
+					is better to use a bulk transfer
+					(<= max_msg_size) */
+	unsigned int max_outstanding_bulks;
+	unsigned int max_services;
+	short version;      /* The version of VCHIQ */
+	short version_min;  /* The minimum compatible version of VCHIQ */
+};
+
+
 extern spinlock_t bulk_waiter_spinlock;
 
 extern int vchiq_core_log_level;
@@ -665,4 +677,14 @@ extern void
 vchiq_log_dump_mem(const char *label, uint32_t addr, const void *voidMem,
 	size_t numBytes);
 
+extern enum vchiq_status vchiq_remove_service(unsigned int service);
+
+extern int vchiq_get_client_id(unsigned int service);
+
+extern void vchiq_get_config(struct vchiq_config *config);
+
+extern enum vchiq_status
+vchiq_set_service_option(unsigned int service, enum vchiq_service_option option,
+			 int value);
+
 #endif
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index b852980447dc..931debcd6492 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -78,17 +78,6 @@ struct vchiq_service_params {
 	short version_min;   /* Update for incompatible changes */
 };
 
-struct vchiq_config {
-	unsigned int max_msg_size;
-	unsigned int bulk_threshold; /* The message size above which it
-					is better to use a bulk transfer
-					(<= max_msg_size) */
-	unsigned int max_outstanding_bulks;
-	unsigned int max_services;
-	short version;      /* The version of VCHIQ */
-	short version_min;  /* The minimum compatible version of VCHIQ */
-};
-
 struct vchiq_instance;
 
 extern enum vchiq_status vchiq_initialise(struct vchiq_instance **pinstance);
@@ -98,7 +87,6 @@ extern enum vchiq_status vchiq_open_service(struct vchiq_instance *instance,
 	const struct vchiq_service_params *params,
 	unsigned int *pservice);
 extern enum vchiq_status vchiq_close_service(unsigned int service);
-extern enum vchiq_status vchiq_remove_service(unsigned int service);
 extern enum vchiq_status vchiq_use_service(unsigned int service);
 extern enum vchiq_status vchiq_release_service(unsigned int service);
 extern enum vchiq_status vchiq_queue_kernel_message(unsigned int handle,
@@ -112,11 +100,7 @@ extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
 extern enum vchiq_status vchiq_bulk_receive(unsigned int service,
 	void *data, unsigned int size, void *userdata,
 	enum vchiq_bulk_mode mode);
-extern int   vchiq_get_client_id(unsigned int service);
 extern void *vchiq_get_service_userdata(unsigned int service);
-extern void vchiq_get_config(struct vchiq_config *config);
-extern enum vchiq_status vchiq_set_service_option(unsigned int service,
-	enum vchiq_service_option option, int value);
 extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
       short *peer_version);
 extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
