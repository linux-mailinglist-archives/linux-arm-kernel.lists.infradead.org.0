Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 964821E4132
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zz3zM9ez/aOcmsZosIOlInhkkyqI0zjBQsSL3o3FjCo=; b=Bk9ZuIvuWZ/7GF
	h7VLTcM797T7FzlsJS+nvNgha/XdhgJzqHGe8RRQA0pnqKKqIdFB7V1ECMiK3moPiOmS2ln6UzmtI
	dpkFdtzGoZv5qpCmgBdDO5JnzP9SRgIWjanVdknRnzeYlHSXvvIqMI/GIW5FWlOXTat19bKJ6XZpI
	VH3CjcujYjwMDXEL1Bu0qy89LB0YMSrdCSmGXkbo0KeL0dGIk32hfGnQqCYA6/CaPLpXVvdFyxRaw
	SWR86GQlZYIfaDf+BrrFw3G/RcsyHhdV/VQ/idWlDUR24DZg/sH45AQZOneeaEc4qgOp8iWZc7AXd
	cil0RLdnPnvZeRdPNsrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdunS-0002LX-8a; Wed, 27 May 2020 12:04:34 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudp-0006vG-HJ; Wed, 27 May 2020 11:54:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 29337AE2D;
 Wed, 27 May 2020 11:54:38 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 25/50] staging: vchiq: Introduce vchiq_validate_params()
Date: Wed, 27 May 2020 13:53:30 +0200
Message-Id: <20200527115400.31391-26-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045437_730718_DD673197 
X-CRM114-Status: GOOD (  12.75  )
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

When adding a new service validate the configuration parameters
provided, and remove unnecessary checks in vchi, now that we have
validated service's config.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_core.c              | 15 +++++++++++++++
 .../interface/vchiq_arm/vchiq_shim.c              |  4 ----
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index ae9183db44ee..46b09b7154f8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2265,6 +2265,16 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 	return VCHIQ_ERROR;
 }
 
+static int vchiq_validate_params(const struct vchiq_service_params *params)
+{
+	if (!params->callback || !params->fourcc) {
+		vchiq_loud_error("Can't add service, invalid params\n");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /* Called from application thread when a client or server service is created. */
 struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
@@ -2275,8 +2285,13 @@ vchiq_add_service_internal(struct vchiq_state *state,
 	struct vchiq_service *service;
 	struct vchiq_service __rcu **pservice = NULL;
 	struct vchiq_service_quota *service_quota;
+	int ret;
 	int i;
 
+	ret = vchiq_validate_params(params);
+	if (ret)
+		return NULL;
+
 	service = kmalloc(sizeof(*service), GFP_KERNEL);
 	if (!service)
 		return service;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index e09c595d6f9d..dcf8776834b1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -271,15 +271,11 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 	struct vchi_service *service =
 		(struct vchi_service *)VCHIQ_GET_SERVICE_USERDATA(handle);
 
-	if (!service->callback)
-		goto release;
-
 	if (reason == VCHIQ_MESSAGE_AVAILABLE)
 		vchiu_queue_push(&service->queue, header);
 
 	service->callback(service->callback_param, reason, bulk_user);
 
-release:
 	return VCHIQ_SUCCESS;
 }
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
