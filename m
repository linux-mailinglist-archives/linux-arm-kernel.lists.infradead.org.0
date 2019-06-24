Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B605150107
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 07:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kwim7rtxLlDpE2yyd77appo2KN3OueerUHFMltkiLKU=; b=GSMGT+sY4VV7E2
	h6+4m4tZnJG3rJrzN8yDxE5lG2MdO7Em8MvvUvVqfFDk+Bs+PP5GmDFDuUwGCrtNzZRpMiVy+ND6y
	yrcbo6Gk5/sxim7ntuB9GYG2Jqp17aBF5jYovfP1RQKEytS00Y+8b5vQYNr3GmYkEMWoiQFX2pE96
	Y2XXd6ix5J7hkvXSPObjNW2BZBafgCVKK4lEn9Ys1ggcEh7vcQ0G9BwXO9LWTLr8nghS5VtG6pVdO
	TO/uL/kisOfkPPpAAAyATTMUhGwZHsmDDm6099ik4xUAE5t5JaUjYTfMd/x0e3AO7qkiKrc3M1cwZ
	Se5j+xRDSTRsafFgR71A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfHcT-0002j1-Pf; Mon, 24 Jun 2019 05:34:21 +0000
Received: from smtp02.smtpout.orange.fr ([80.12.242.124]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfHcG-0002i0-Om
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 05:34:10 +0000
Received: from localhost.localdomain ([86.243.180.47]) by mwinf5d04 with ME
 id UVZv2000C11lVym03VZwBJ; Mon, 24 Jun 2019 07:34:03 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 24 Jun 2019 07:34:03 +0200
X-ME-IP: 86.243.180.47
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: eric@anholt.net, stefan.wahren@i2se.com, gregkh@linuxfoundation.org,
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, tuomas.tynkkynen@iki.fi,
 inf.braun@fau.de, tobias.buettner@fau.de, hofrat@osadl.org
Subject: [PATCH] staging: bcm2835-camera: Avoid apotential sleep while holding
 a spin_lock
Date: Mon, 24 Jun 2019 07:33:51 +0200
Message-Id: <20190624053351.5217-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_223409_101777_D91715FF 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.124 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Do not allocate memory with GFP_KERNEL when holding a spin_lock, it may
sleep. Use GFP_NOWAIT instead.

Fixes: 950fd867c635 ("staging: bcm2835-camera: Replace open-coded idr with a struct idr.")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
index 16af735af5c3..438d548c6e24 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
@@ -186,7 +186,7 @@ get_msg_context(struct vchiq_mmal_instance *instance)
 	 */
 	spin_lock(&instance->context_map_lock);
 	handle = idr_alloc(&instance->context_map, msg_context,
-			   0, 0, GFP_KERNEL);
+			   0, 0, GFP_NOWAIT);
 	spin_unlock(&instance->context_map_lock);
 
 	if (handle < 0) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
