Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F4B1E4113
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+YOljT3c3XWnGZKp28h+70Wy4WJS0L9ae9AbZbAtmY=; b=G5LaIp+XM/TiaL
	0QBLa4OyQvuApJU0Qx6QqvMFVreuLES8UKFjAwSG7039ZUrHQ+SsuRMCkd1UvQ22fwCR4QRm0quCq
	V2t392D+azm+makxxJMJ3im9mSp5+K+lwNY3H+oJ2/irH/pSNY3nAlWOcPSnMetqDZ3DrdWEjRNMz
	+3Z64obHWV5jzkjvyWitrhSs/JyKGMmY+7EtKxkHV9voKe2VX3M652CG3brFQfSwrbAPwbGUIGUv/
	uwCHkqK2MywWQ5rRH49xUUYaj0OPuXQsYWSNpzgkRHU0QiccDZeaZ1HxY0M6J2XzJU1j7PNNzcNhp
	GkhFNjnbHCHkybpVoAqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdujI-0005CK-13; Wed, 27 May 2020 12:00:16 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jduda-0006ew-VJ; Wed, 27 May 2020 11:54:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B8CE3ACB8;
 Wed, 27 May 2020 11:54:21 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 09/50] staging: vchiq: move vchiq_release_message() into vchiq
Date: Wed, 27 May 2020 13:53:14 +0200
Message-Id: <20200527115400.31391-10-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045423_209312_07A24019 
X-CRM114-Status: GOOD (  11.59  )
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

For messages with a reason different from VCHIQ_MESSAGE_AVAILABLE the
responsibility for releasing them is kept in vchi, in other words,
services don't need to worry about it. As we're trying to unify vchi and
vchiq, move the release code into vchiq.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.c    | 4 ++++
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c    | 4 +---
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 67b2090c91db..ef31e541c902 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -372,6 +372,10 @@ make_service_callback(struct vchiq_service *service, enum vchiq_reason reason,
 			service->state->id, service->handle);
 		status = VCHIQ_SUCCESS;
 	}
+
+	if (reason != VCHIQ_MESSAGE_AVAILABLE)
+		vchiq_release_message(service->handle, header);
+
 	return status;
 }
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 0fc5fa05c6c2..55f9e34ea50e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -444,7 +444,7 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 		service->callback(service->callback_param,
 				  VCHI_CALLBACK_MSG_AVAILABLE, NULL);
 
-		goto done;
+		break;
 
 	case VCHIQ_BULK_TRANSMIT_DONE:
 		service->callback(service->callback_param,
@@ -483,8 +483,6 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 	}
 
 release:
-	vchiq_release_message(service->handle, header);
-done:
 	return VCHIQ_SUCCESS;
 }
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
