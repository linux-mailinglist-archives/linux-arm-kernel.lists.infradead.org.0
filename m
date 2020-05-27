Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD92A1E40F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgAyB2PUv9+p3Mu5Rb1VBxWum/VpyM3BOwIDnh9fSE4=; b=TBFyTdyGDbNWlV
	xzVB8Llw/rmegBtXln4Hlq+O4U79rzKnUa6Hi3ZRxwwt4GdcM/uf3ffKQo5+o/L+W4GviFK7jjd6h
	l9a+9Uj0PRkxb9I9RQJQzIQUoIvsXvXCpAt0v/lvOd9Au9U7aDQzToxl3++zOaiQ9xlCSRZvpeXRT
	toNUkeaoDHuA4GwhLEsFc8G87R89HPz7Zm6fZ/gC5B9YYJGp1gnkNPZKyOUHuFudCONuQFQddGsuO
	xc/6k931/hHzE0w5sVyZWKSG2lE/069sWA4tME1NRylq5+ZYjR9pH8+jrjJMuDqDXf783ZFWlMH83
	/OIkwqEzXaXMjFJiK0Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdugh-000378-DP; Wed, 27 May 2020 11:57:35 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudY-0006ci-T6; Wed, 27 May 2020 11:54:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id A26A8ACF2;
 Wed, 27 May 2020 11:54:18 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 05/50] staging: vchi: Get rid of vchi_service_set_option()
Date: Wed, 27 May 2020 13:53:10 +0200
Message-Id: <20200527115400.31391-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045421_212529_FC094E3B 
X-CRM114-Status: GOOD (  10.45  )
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

There are no users for that function.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       |  5 ---
 .../interface/vchiq_arm/vchiq_shim.c          | 31 -------------------
 2 files changed, 36 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 62d9d3efa755..1e8d17531e9d 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -100,11 +100,6 @@ extern int32_t vchi_service_use(const struct vchi_service_handle *handle);
 // Routine to decrement ref count on a named service
 extern int32_t vchi_service_release(const struct vchi_service_handle *handle);
 
-// Routine to set a control option for a named service
-extern int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
-				       enum vchi_service_option option,
-				       int value);
-
 /* Routine to send a message from kernel memory across a service */
 extern int
 vchi_queue_kernel_message(struct vchi_service_handle *handle,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 081ab67ad6fd..429b0c71e455 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -567,37 +567,6 @@ int32_t vchi_service_close(const struct vchi_service_handle *handle)
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_service_set_option(const struct vchi_service_handle *handle,
-				enum vchi_service_option option,
-				int value)
-{
-	int32_t ret = -1;
-	struct shim_service *service = (struct shim_service *)handle;
-	enum vchiq_service_option vchiq_option;
-
-	switch (option) {
-	case VCHI_SERVICE_OPTION_TRACE:
-		vchiq_option = VCHIQ_SERVICE_OPTION_TRACE;
-		break;
-	case VCHI_SERVICE_OPTION_SYNCHRONOUS:
-		vchiq_option = VCHIQ_SERVICE_OPTION_SYNCHRONOUS;
-		break;
-	default:
-		service = NULL;
-		break;
-	}
-	if (service) {
-		enum vchiq_status status =
-			vchiq_set_service_option(service->handle,
-						vchiq_option,
-						value);
-
-		ret = vchiq_status_to_vchi(status);
-	}
-	return ret;
-}
-EXPORT_SYMBOL(vchi_service_set_option);
-
 int32_t vchi_get_peer_version(const struct vchi_service_handle *handle, short *peer_version)
 {
 	int32_t ret = -1;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
