Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2613E1C4057
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AL5CTkrCERjj8ZtoHNKrK3DpQaOVoxGk/0++t/Yw1Y0=; b=qQD2QWuEvXgjnk
	MvkPm5ZOBI2C1N0Tn7ziHiE8gJT8Un/Ma4Qvigjve9mCPp9wdQxGtuOmrW4IUx/4DgK/gUc0CsXhE
	sGsZHgfnh8y1vWUB0yGO+2NXMlUx1VZMJzqnkGi/oV1pAv9UmHYrax/A56gcfOXwLUHCd5xN8bVbI
	84axXYohod97D46pJk2yp57h3QHVcKBN041f7KWqjEsUw7WOd5dq8lDtBtzBmjAZCW/RQJhW8Srz9
	tER3484SH/vGra8BFRrx9Ildk46zRRltw3uPW6djn82HJRn/1swdGDAN7Y7QE4MrFRGEEpMX0Z9d9
	CT3B8Ok8nFlkjBENkPxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeCB-0006oo-Ny; Mon, 04 May 2020 16:43:55 +0000
Received: from [2001:4bb8:18c:10bd:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeAk-0005hh-1d; Mon, 04 May 2020 16:42:26 +0000
From: Christoph Hellwig <hch@lst.de>
To: james.morse@arm.com
Subject: [PATCH] firmware: arm_sdei: remove unused interfaces
Date: Mon,  4 May 2020 18:42:24 +0200
Message-Id: <20200504164224.2842960-1-hch@lst.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The export symbols to register/unregister and enable/disable events
aren't ever used outside of arm_sdei.c, so mark them static.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/firmware/arm_sdei.c | 13 +++++--------
 include/linux/arm_sdei.h    | 15 ---------------
 2 files changed, 5 insertions(+), 23 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index 334c8be0c11fb..bdd6461647d74 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -400,7 +400,7 @@ static void _local_event_enable(void *data)
 	sdei_cross_call_return(arg, err);
 }
 
-int sdei_event_enable(u32 event_num)
+static int sdei_event_enable(u32 event_num)
 {
 	int err = -EINVAL;
 	struct sdei_event *event;
@@ -429,7 +429,6 @@ int sdei_event_enable(u32 event_num)
 
 	return err;
 }
-EXPORT_SYMBOL(sdei_event_enable);
 
 static int sdei_api_event_disable(u32 event_num)
 {
@@ -447,7 +446,7 @@ static void _ipi_event_disable(void *data)
 	sdei_cross_call_return(arg, err);
 }
 
-int sdei_event_disable(u32 event_num)
+static int sdei_event_disable(u32 event_num)
 {
 	int err = -EINVAL;
 	struct sdei_event *event;
@@ -471,7 +470,6 @@ int sdei_event_disable(u32 event_num)
 
 	return err;
 }
-EXPORT_SYMBOL(sdei_event_disable);
 
 static int sdei_api_event_unregister(u32 event_num)
 {
@@ -502,7 +500,7 @@ static int _sdei_event_unregister(struct sdei_event *event)
 	return sdei_do_cross_call(_local_event_unregister, event);
 }
 
-int sdei_event_unregister(u32 event_num)
+static int sdei_event_unregister(u32 event_num)
 {
 	int err;
 	struct sdei_event *event;
@@ -533,7 +531,6 @@ int sdei_event_unregister(u32 event_num)
 
 	return err;
 }
-EXPORT_SYMBOL(sdei_event_unregister);
 
 /*
  * unregister events, but don't destroy them as they are re-registered by
@@ -603,7 +600,8 @@ static int _sdei_event_register(struct sdei_event *event)
 	return err;
 }
 
-int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg)
+static int sdei_event_register(u32 event_num, sdei_event_callback *cb,
+		void *arg)
 {
 	int err;
 	struct sdei_event *event;
@@ -643,7 +641,6 @@ int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg)
 
 	return err;
 }
-EXPORT_SYMBOL(sdei_event_register);
 
 static int sdei_reregister_event_llocked(struct sdei_event *event)
 {
diff --git a/include/linux/arm_sdei.h b/include/linux/arm_sdei.h
index 0a241c5c911d8..5f9fb1d95d515 100644
--- a/include/linux/arm_sdei.h
+++ b/include/linux/arm_sdei.h
@@ -22,21 +22,6 @@
  */
 typedef int (sdei_event_callback)(u32 event, struct pt_regs *regs, void *arg);
 
-/*
- * Register your callback to claim an event. The event must be described
- * by firmware.
- */
-int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg);
-
-/*
- * Calls to sdei_event_unregister() may return EINPROGRESS. Keep calling
- * it until it succeeds.
- */
-int sdei_event_unregister(u32 event_num);
-
-int sdei_event_enable(u32 event_num);
-int sdei_event_disable(u32 event_num);
-
 /* GHES register/unregister helpers */
 int sdei_register_ghes(struct ghes *ghes, sdei_event_callback *normal_cb,
 		       sdei_event_callback *critical_cb);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
