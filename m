Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEBE1E413D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25zJbCOzgsPGo2eXF17/SB+Ytemum5KQMpiG7pv+4l8=; b=EkryFcOxAMKzaA
	I8hpRC/whvnjGwykIYE69ChcYlL0j8B95j9UeCU6JuRAhjYC8O+qFzaK5XeRel584LvxxGO7gdrs7
	8jHUYRbw7br+4Ab4JAdsoP2torEBRzGh4c99TSn+uX/w9AGBJn5MfNxkI63kZ5CyvJlLm71723EBB
	knJGnbAhNH/TtPUvJsK2+LfOwn0H6kBZrDwlx+rPCYRx2l8wotxREocw2mYrbowFgsg3Wn1vime3n
	9Xk/qAxmCcFUp3WubiflHm8Vm3E2EVI9PEFJTeoK3SCuLWpWBWVqsY8dS6DEhcb9WsL+oAf5zx+cL
	W5pQWe4pG9kwkgL3gpUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduom-0005mD-4v; Wed, 27 May 2020 12:05:56 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduds-0006yu-BB; Wed, 27 May 2020 11:54:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 54E6DAC5B;
 Wed, 27 May 2020 11:54:41 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 28/50] staging: vchi: Expose struct vchi_service
Date: Wed, 27 May 2020 13:53:33 +0200
Message-Id: <20200527115400.31391-29-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045440_554321_1E97134D 
X-CRM114-Status: GOOD (  10.19  )
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

This will make further changes easier. The struct will ultimately
disappear.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h    | 10 +++++++---
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c     |  7 -------
 2 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 9a74ca4e1062..789acb7999d1 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -29,6 +29,13 @@ struct vchi_held_msg {
 	void *message;
 };
 
+struct vchi_service {
+	unsigned int handle;
+
+	vchi_callback callback;
+	void *callback_param;
+};
+
 // structure used to provide the information needed to open a server or a client
 struct service_creation {
 	struct vchi_version version;
@@ -40,9 +47,6 @@ struct service_creation {
 // Opaque handle for a VCHIQ instance
 struct vchiq_instance;
 
-// Opaque handle for a server or client
-struct vchi_service;
-
 /******************************************************************************
  * Global funcs - implementation is specific to which side you are on
  * (local / remote)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 9728667adbd9..843ee978928f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -10,13 +10,6 @@
 #include "vchiq.h"
 #include "vchiq_core.h"
 
-struct vchi_service {
-	unsigned int handle;
-
-	vchi_callback callback;
-	void *callback_param;
-};
-
 int vchi_queue_kernel_message(struct vchi_service *service, void *data,
 			      unsigned int size)
 {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
