Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFAB1E419E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9UWQpOPUXxE572G3uo7azYxkU5t8Cy8+A2hvDjspJ4Q=; b=tOrDCKOvx/NdZw
	7t7A+TmFXe5h6Is4KvAVHKd79HitvxzVI28jwR+djoQ/NOilZ7TxkAIxVRWELebkPJPt+nYrlPFDk
	fK1dtJDwIObMf8rrfghgzuNgost62bA/f5MxMHT3wU2V9XI7f6prrl5tki6/XYIfnEI61BFcljs/O
	Re9JCHnWxogcxxg573tj8KyaJ1jCbbNdWMEkIvIimgYS/o5ayemjnUCoGtLczu8jI6cSPtvfP0pfy
	407F8AJkHQEdumZ9EJV26YPu5/vA3dVvV5iMrGgaq8yZvas1rEiT+etLLxqeYkDsOUG1mP4bbbRMC
	nQ3qIRjLBj+naGO0f/LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdutU-0004Jj-7h; Wed, 27 May 2020 12:10:48 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdue4-00079L-J9; Wed, 27 May 2020 11:54:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 21A15AB7D;
 Wed, 27 May 2020 11:54:53 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [RFC 37/50] staging: vchiq: Unify fourcc definition mechanisms
Date: Wed, 27 May 2020 13:53:42 +0200
Message-Id: <20200527115400.31391-38-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045452_934582_FC08FD16 
X-CRM114-Status: GOOD (  13.86  )
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

There is already enough duplication with regard to fourcc generation in
the kernel. Let's at least use the same macro all over the vchiq
ecosystem.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c  | 2 +-
 .../vc04_services/bcm2835-audio/vc_vchi_audioserv_defs.h     | 5 ++---
 drivers/staging/vc04_services/interface/vchi/vchi.h          | 3 ---
 drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c     | 2 +-
 drivers/staging/vc04_services/vc-sm-cma/vc_sm_defs.h         | 3 ---
 drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h          | 1 -
 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c        | 2 +-
 7 files changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 18309578e9a2..55f1e684eef1 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -125,7 +125,7 @@ vc_vchi_audio_init(struct vchiq_instance *vchiq_instance,
 	struct vchiq_service_params params = {
 		.version		= VC_AUDIOSERV_VER,
 		.version_min		= VC_AUDIOSERV_MIN_VER,
-		.fourcc			= VC_AUDIO_SERVER_NAME,
+		.fourcc			= VCHIQ_MAKE_FOURCC('A', 'U', 'D', 'S'),
 		.callback		= audio_vchi_callback,
 		.userdata		= instance,
 	};
diff --git a/drivers/staging/vc04_services/bcm2835-audio/vc_vchi_audioserv_defs.h b/drivers/staging/vc04_services/bcm2835-audio/vc_vchi_audioserv_defs.h
index d6401e914ac9..b4fa239c5ebe 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/vc_vchi_audioserv_defs.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/vc_vchi_audioserv_defs.h
@@ -8,9 +8,8 @@
 #define VC_AUDIOSERV_VER 2
 
 /* FourCC codes used for VCHI communication */
-#define VC_AUDIO_SERVER_NAME  MAKE_FOURCC("AUDS")
-#define VC_AUDIO_WRITE_COOKIE1 MAKE_FOURCC("BCMA")
-#define VC_AUDIO_WRITE_COOKIE2 MAKE_FOURCC("DATA")
+#define VC_AUDIO_WRITE_COOKIE1 VCHIQ_MAKE_FOURCC('B', 'C', 'M', 'A')
+#define VC_AUDIO_WRITE_COOKIE2 VCHIQ_MAKE_FOURCC('D', 'A', 'T', 'A')
 
 /*
  *  List of screens that are currently supported
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 59559d4cd5f1..7108c254a38a 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -8,9 +8,6 @@
  * Global defs
  *****************************************************************************/
 
-// Macros to manipulate 'FOURCC' values
-#define MAKE_FOURCC(x) ((int32_t)((x[0] << 24) | (x[1] << 16) | (x[2] << 8) | x[3]))
-
 // Opaque handle for a VCHIQ instance
 struct vchiq_instance;
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index 2de67ce18be2..0b1a510d6bab 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -294,7 +294,7 @@ struct sm_instance *vc_sm_cma_vchi_init(struct vchiq_instance *vchiq_instance,
 	struct vchiq_service_params params = {
 		.version = VC_SM_VER,
 		.version_min = VC_SM_MIN_VER,
-		.fourcc = VC_SM_SERVER_NAME,
+		.fourcc = VCHIQ_MAKE_FOURCC('S', 'M', 'E', 'M'),
 		.callback = vc_sm_cma_vchi_callback,
 		.userdata = NULL,
 	};
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_defs.h b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_defs.h
index 8a0d1f6dbfe8..4e6354000dfd 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_defs.h
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_defs.h
@@ -15,9 +15,6 @@
 #ifndef __VC_SM_DEFS_H__INCLUDED__
 #define __VC_SM_DEFS_H__INCLUDED__
 
-/* FourCC code used for VCHI connection */
-#define VC_SM_SERVER_NAME MAKE_FOURCC("SMEM")
-
 /* Maximum message length */
 #define VC_SM_MAX_MSG_LEN (sizeof(union vc_sm_msg_union_t) + \
 	sizeof(struct vc_sm_msg_hdr_t))
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h b/drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h
index bd83159403e5..ab63835ce01c 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-msg.h
@@ -28,7 +28,6 @@
 
 #define VC_MMAL_VER 15
 #define VC_MMAL_MIN_VER 10
-#define VC_MMAL_SERVER_NAME  MAKE_FOURCC("mmal")
 
 /* max total message size is 512 bytes */
 #define MMAL_MSG_MAX_SIZE 512
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 3707212d8e7e..d35d2b50991b 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -2097,7 +2097,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	struct vchiq_service_params params = {
 		.version		= VC_MMAL_VER,
 		.version_min		= VC_MMAL_MIN_VER,
-		.fourcc			= VC_MMAL_SERVER_NAME,
+		.fourcc			= VCHIQ_MAKE_FOURCC('m', 'm', 'a', 'l'),
 		.callback		= service_callback,
 		.userdata		= NULL,
 	};
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
