Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A3D1E410A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHjpULkvuYZ5uw3txh0IaCGB6uhddalqiyZiyHq9HiE=; b=bDcLT8VplewCBX
	9d5GV71Lk1qFpvr36ZfRfNFsUSjWloNLChrGjnS4nL7UBKLKYVB9m+KJEW0cQ+0BDc89f5QUYQ/7u
	J+WcFIg0m3dQAmV5n/P+t8kYJOu05pm7Q2lLosC64NdfplNfQX65wEcj6t0ky/QQ5oWSzj0rOve2V
	KOop7GpBcl9dTCAXFRnc93YMAGnjElhr2yQrI5rE2VOxvKEB1K3OWBbTgF0/+2rN708SF7deBXFVv
	6Nt95ZTWj6nb1rRtPvY9m0fy8Dju6Z4mZE4Wh8l0ysss1JCMRKHY3tLE1HNlnp8sewyWhBiBqbeRz
	z2ZYqrHg/ahQRQO82aCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduiA-0004Tw-Tx; Wed, 27 May 2020 11:59:06 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudb-0006ey-5F; Wed, 27 May 2020 11:54:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 37455AF38;
 Wed, 27 May 2020 11:54:23 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 11/50] staging: vchi: Get rid of all useless callback reasons
Date: Wed, 27 May 2020 13:53:16 +0200
Message-Id: <20200527115400.31391-12-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045423_435067_86A8E29D 
X-CRM114-Status: GOOD (  12.55  )
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

They are neither produced nor expected, so just delete them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchi/vchi_common.h              | 40 ++-----------------
 1 file changed, 3 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 7fc04e38936d..0f79bea4757d 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -31,8 +31,6 @@ enum vchi_crc_control {
 
 //callback reasons when an event occurs on a service
 enum vchi_callback_reason {
-	VCHI_CALLBACK_REASON_MIN,
-
 	/*
 	 * This indicates that there is data available handle is the msg id that
 	 * was transmitted with the data
@@ -41,44 +39,12 @@ enum vchi_callback_reason {
 	 * Tasks get kicked by the callback, reset their event and try and read
 	 * from the fifo until it fails
 	 */
+	VCHI_CALLBACK_SERVICE_CLOSED,
 	VCHI_CALLBACK_MSG_AVAILABLE,
-	VCHI_CALLBACK_MSG_SENT,
-	VCHI_CALLBACK_MSG_SPACE_AVAILABLE, // XXX not yet implemented
-
-	// This indicates that a transfer from the other side has completed
-	VCHI_CALLBACK_BULK_RECEIVED,
-	//This indicates that data queued up to be sent has now gone
-	//handle is the msg id that was used when sending the data
 	VCHI_CALLBACK_BULK_SENT,
-	VCHI_CALLBACK_BULK_RX_SPACE_AVAILABLE, // XXX not yet implemented
-	VCHI_CALLBACK_BULK_TX_SPACE_AVAILABLE, // XXX not yet implemented
-
-	VCHI_CALLBACK_SERVICE_CLOSED,
-
-	/*
-	 * this side has sent XOFF to peer due to lack of data consumption by
-	 * service (suggests the service may need to take some recovery action
-	 * if it has been deliberately holding off consuming data)
-	 */
-	VCHI_CALLBACK_SENT_XOFF,
-	VCHI_CALLBACK_SENT_XON,
-
-	// indicates that a bulk transfer has finished reading the source buffer
-	VCHI_CALLBACK_BULK_DATA_READ,
-
-	// power notification events (currently host side only)
-	VCHI_CALLBACK_PEER_OFF,
-	VCHI_CALLBACK_PEER_SUSPENDED,
-	VCHI_CALLBACK_PEER_ON,
-	VCHI_CALLBACK_PEER_RESUMED,
-	VCHI_CALLBACK_FORCED_POWER_OFF,
-
-	// some extra notifications provided by vchiq_arm
-	VCHI_CALLBACK_SERVICE_OPENED,
-	VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
+	VCHI_CALLBACK_BULK_RECEIVED,
 	VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
-
-	VCHI_CALLBACK_REASON_MAX
+	VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
 };
 
 // service control options
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
