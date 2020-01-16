Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FEA13D2B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 04:29:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yStSyH6FAZRFzrId1ww4ZnshAavv7+enOldbQnt9Qc0=; b=scp
	1CjL4F/QI2f5yn/4TWfkBbMv3JIbr5p3vYyU34CHKVowjH00bnHcR2CkLKfWvBTKgGSLy4vN+8vCV
	90eZ6LxR24qKMuJC8qQPVZemp8YrrWKJEg8OGQit8uHhXsdQpoZtMHl3vcCBuHNvZHplIPIxLc+9X
	gv6mYcq1mVApue/cDCKQFI65qWOUqWHhVW0qnpm3mQpUb5BkXodl8+9ZYJE46syMtM4oHchCbUnxJ
	gAvll7tAy4zgdKbreFA5p17BM3l6KOtX7FX5J4WmLnirxAqrt+ILEJyMJ/8sP71sInGCXXsdon/3Q
	OJ2S8VCiFU/j3WijbWXlf2YO//NOcew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irvqQ-0006p0-Py; Thu, 16 Jan 2020 03:29:18 +0000
Received: from out30-44.freemail.mail.aliyun.com ([115.124.30.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irvqC-0006oA-ED
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 03:29:05 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R121e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01f04452;
 MF=zhangliguang@linux.alibaba.com; NM=1; PH=DS; RN=3; SR=0;
 TI=SMTPD_---0TnrNuc._1579145331; 
Received: from localhost(mailfrom:zhangliguang@linux.alibaba.com
 fp:SMTPD_---0TnrNuc._1579145331) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 16 Jan 2020 11:29:00 +0800
From: luanshi <zhangliguang@linux.alibaba.com>
To: james.morse@arm.com
Subject: [V2 1/3] firmware: arm_sdei: fix possible deadlock
Date: Thu, 16 Jan 2020 11:28:49 +0800
Message-Id: <1579145331-78633-1-git-send-email-zhangliguang@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_192904_667309_519B81E0 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We call sdei_reregister_event() with sdei_list_lock held but
_sdei_event_register() and sdei_event_destroy() also acquires
sdei_list_lock thus creating A-A deadlock.

Fixes: da351827240e ("firmware: arm_sdei: Add support for CPU and system
power states")

Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
---
 drivers/firmware/arm_sdei.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index a479023..37e9bf0 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -45,8 +45,11 @@ static asmlinkage void (*sdei_firmware_call)(unsigned long function_id,
 static unsigned long sdei_entry_point;
 
 struct sdei_event {
-	/* These three are protected by the sdei_list_lock */
+	/* protected by the sdei_list_lock */
 	struct list_head	list;
+
+	spinlock_t		sdei_event_lock;
+	/* These two are protected by the sdei_event_lock */
 	bool			reregister;
 	bool			reenable;
 
@@ -214,6 +217,7 @@ static struct sdei_event *sdei_event_create(u32 event_num,
 		return ERR_PTR(-ENOMEM);
 
 	INIT_LIST_HEAD(&event->list);
+	spin_lock_init(&event->sdei_event_lock);
 	event->event_num = event_num;
 
 	err = sdei_api_event_get_info(event_num, SDEI_EVENT_INFO_EV_PRIORITY,
@@ -412,9 +416,9 @@ int sdei_event_enable(u32 event_num)
 		return -ENOENT;
 	}
 
-	spin_lock(&sdei_list_lock);
+	spin_lock(&event->sdei_event_lock);
 	event->reenable = true;
-	spin_unlock(&sdei_list_lock);
+	spin_unlock(&event->sdei_event_lock);
 
 	if (event->type == SDEI_EVENT_TYPE_SHARED)
 		err = sdei_api_event_enable(event->event_num);
@@ -491,10 +495,10 @@ static int _sdei_event_unregister(struct sdei_event *event)
 {
 	lockdep_assert_held(&sdei_events_lock);
 
-	spin_lock(&sdei_list_lock);
+	spin_lock(&event->sdei_event_lock);
 	event->reregister = false;
 	event->reenable = false;
-	spin_unlock(&sdei_list_lock);
+	spin_unlock(&event->sdei_event_lock);
 
 	if (event->type == SDEI_EVENT_TYPE_SHARED)
 		return sdei_api_event_unregister(event->event_num);
@@ -585,9 +589,9 @@ static int _sdei_event_register(struct sdei_event *event)
 
 	lockdep_assert_held(&sdei_events_lock);
 
-	spin_lock(&sdei_list_lock);
+	spin_lock(&event->sdei_event_lock);
 	event->reregister = true;
-	spin_unlock(&sdei_list_lock);
+	spin_unlock(&event->sdei_event_lock);
 
 	if (event->type == SDEI_EVENT_TYPE_SHARED)
 		return sdei_api_event_register(event->event_num,
@@ -598,10 +602,10 @@ static int _sdei_event_register(struct sdei_event *event)
 
 	err = sdei_do_cross_call(_local_event_register, event);
 	if (err) {
-		spin_lock(&sdei_list_lock);
+		spin_lock(&event->sdei_event_lock);
 		event->reregister = false;
 		event->reenable = false;
-		spin_unlock(&sdei_list_lock);
+		spin_unlock(&event->sdei_event_lock);
 
 		sdei_do_cross_call(_local_event_unregister, event);
 	}
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
