Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D187A1E411A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dqXg9nt+Do+4Dx7+LoqwwMjuXH8PE8wJdlXtIe9cLg=; b=eiAUN+K3EwFU+S
	VQhrVbGjcGhOtv0rw/0KY5xMJw/LRLJMnvNaHngvbp/Zd8RUv+H+ZeyM7aA9zBKKm/SLgNcuHVlmf
	Oiyv++sz/MXrb3NAOLApStPBQiBoSy8h4W19E5nQ4x8lyVQY7AH0rohIS3SLOmh0gJu4R+Y7VG+xw
	I9JyPGZHF3Nf5R1o4CWMQW1ilGfiGr53z+DZfNV+gJEW9oi4X1IT1OuZwla04DosL7tlHkYV6jytR
	WbUGdy+1LgkdcAojLxBe+pr+dCwZDczuGTx2pYwQvB+BGp4ROs2gvtxyZ9hyoMAwXUbzabhUH71s3
	adN0D1z1CGXFQ1qJaaIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdukk-00009g-10; Wed, 27 May 2020 12:01:46 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudg-0006jr-2u; Wed, 27 May 2020 11:54:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id ABBA3AC91;
 Wed, 27 May 2020 11:54:28 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC 15/50] staging: vc04_services: bcm2835-audio: Use vchi_msg_hold()
Date: Wed, 27 May 2020 13:53:20 +0200
Message-Id: <20200527115400.31391-16-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045428_284523_E849514A 
X-CRM114-Status: GOOD (  15.52  )
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

vchi_msg_dequeue() provides the same functionality as vchi_msg_hold()
except it copies the message data as opposed to the later which provides
the data in place.

The copying is done on a local variable, so there is no need to keep the
message out the function's bounds, so use vchi_msg_hold() instead.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             | 25 +++++++++++--------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 62eef233275f..5018b5baa009 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -94,31 +94,34 @@ static void audio_vchi_callback(void *param,
 				void *msg_handle)
 {
 	struct bcm2835_audio_instance *instance = param;
-	struct vc_audio_msg m;
-	int msg_len;
+	struct vchi_held_msg handle;
+	struct vc_audio_msg *m;
+	unsigned size;
 	int status;
 
 	if (reason != VCHI_CALLBACK_MSG_AVAILABLE)
 		return;
 
-	status = vchi_msg_dequeue(instance->service,
-				  &m, sizeof(m), &msg_len, VCHI_FLAGS_NONE);
+	status = vchi_msg_hold(instance->service, (void **)&m, &size,
+			       VCHI_FLAGS_NONE, &handle);
 	if (status)
 		return;
 
-	if (m.type == VC_AUDIO_MSG_TYPE_RESULT) {
-		instance->result = m.result.success;
+	if (m->type == VC_AUDIO_MSG_TYPE_RESULT) {
+		instance->result = m->result.success;
 		complete(&instance->msg_avail_comp);
-	} else if (m.type == VC_AUDIO_MSG_TYPE_COMPLETE) {
-		if (m.complete.cookie1 != VC_AUDIO_WRITE_COOKIE1 ||
-		    m.complete.cookie2 != VC_AUDIO_WRITE_COOKIE2)
+	} else if (m->type == VC_AUDIO_MSG_TYPE_COMPLETE) {
+		if (m->complete.cookie1 != VC_AUDIO_WRITE_COOKIE1 ||
+		    m->complete.cookie2 != VC_AUDIO_WRITE_COOKIE2)
 			dev_err(instance->dev, "invalid cookie\n");
 		else
 			bcm2835_playback_fifo(instance->alsa_stream,
-					      m.complete.count);
+					      m->complete.count);
 	} else {
-		dev_err(instance->dev, "unexpected callback type=%d\n", m.type);
+		dev_err(instance->dev, "unexpected callback type=%d\n", m->type);
 	}
+
+	vchi_held_msg_release(&handle);
 }
 
 static int
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
