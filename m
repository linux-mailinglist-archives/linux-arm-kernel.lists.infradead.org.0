Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5DA1683A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QLFeHnNG46ETfSBCLmjwfyl6dEwBa0kpjSs47x0nEY=; b=rNUJjaU25ta9K1
	cbxtCo7OOfQOQU/Lx5bKUM/HcfknidaXa/In65I62i3QSjODpCGU4KQ2D1UW6Ab9lOeOq0B0VaXdV
	e8u6Wr5O2py+D+Hnaiq4px47HwdsCrJJPZOI3+7H0CKriSYrReD4OcWxPwJa9CF1IYagNrgLRGH7b
	NpfNrt7paUNzWNu6dR58gRxoYjaHbgqU9lQE4dg3GAugMTHS919gyvyfFhlq2KXPANGpFXCQnOtFI
	zrXUrvzdMYuYhQT5VdxfGJZ8fKmNNZW8L3aGjIWEyR2kkKsxKrjqvXoQROtSUSCV1KVs/87h1RSn/
	McwuMI47VndY9lfY6eQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BHO-0000Cc-Co; Fri, 21 Feb 2020 16:35:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BGv-0008Na-2V
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:35:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71FF531B;
 Fri, 21 Feb 2020 08:35:24 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A88273F68F;
 Fri, 21 Feb 2020 08:35:23 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] firmware: arm_sdei: fix double-lock on hibernate with
 shared events
Date: Fri, 21 Feb 2020 16:35:06 +0000
Message-Id: <20200221163509.47254-2-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221163509.47254-1-james.morse@arm.com>
References: <20200221163509.47254-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_083525_250750_B643A544 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Liguang Zhang <zhangliguang@linux.alibaba.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SDEI has private events that must be registered on each CPU. When
CPUs come and go they must re-register and re-enable their private
events. Each event has flags to indicate whether this should happen
to protect against an event being registered on a CPU coming online,
while all the others are unregistering the event.

These flags are protected by the sdei_list_lock spinlock, because
the cpuhp callbacks can't take the mutex.

Hibernate needs to unregister all events, but keep the in-memory
re-register and re-enable as they are. sdei_unregister_shared()
takes the spinlock to walk the list, then calls _sdei_event_unregister()
on each shared event. _sdei_event_unregister() tries to take the
same spinlock to update re-register and re-enable. This doesn't go
so well.

Push the re-register and re-enable updates out to their callers.
sdei_unregister_shared() doesn't want these values updated, so
doesn't need to do anything.

This also fixes shared events getting lost over hibernate as this
path made them look unregistered.

Fixes: da351827240e ("firmware: arm_sdei: Add support for CPU and system power states")
Reported-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
Signed-off-by: James Morse <james.morse@arm.com>
---
 drivers/firmware/arm_sdei.c | 32 +++++++++++++++-----------------
 1 file changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index a479023fa036..77eaa9a2fd15 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -491,11 +491,6 @@ static int _sdei_event_unregister(struct sdei_event *event)
 {
 	lockdep_assert_held(&sdei_events_lock);
 
-	spin_lock(&sdei_list_lock);
-	event->reregister = false;
-	event->reenable = false;
-	spin_unlock(&sdei_list_lock);
-
 	if (event->type == SDEI_EVENT_TYPE_SHARED)
 		return sdei_api_event_unregister(event->event_num);
 
@@ -518,6 +513,11 @@ int sdei_event_unregister(u32 event_num)
 			break;
 		}
 
+		spin_lock(&sdei_list_lock);
+		event->reregister = false;
+		event->reenable = false;
+		spin_unlock(&sdei_list_lock);
+
 		err = _sdei_event_unregister(event);
 		if (err)
 			break;
@@ -585,26 +585,15 @@ static int _sdei_event_register(struct sdei_event *event)
 
 	lockdep_assert_held(&sdei_events_lock);
 
-	spin_lock(&sdei_list_lock);
-	event->reregister = true;
-	spin_unlock(&sdei_list_lock);
-
 	if (event->type == SDEI_EVENT_TYPE_SHARED)
 		return sdei_api_event_register(event->event_num,
 					       sdei_entry_point,
 					       event->registered,
 					       SDEI_EVENT_REGISTER_RM_ANY, 0);
 
-
 	err = sdei_do_cross_call(_local_event_register, event);
-	if (err) {
-		spin_lock(&sdei_list_lock);
-		event->reregister = false;
-		event->reenable = false;
-		spin_unlock(&sdei_list_lock);
-
+	if (err)
 		sdei_do_cross_call(_local_event_unregister, event);
-	}
 
 	return err;
 }
@@ -632,8 +621,17 @@ int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg)
 			break;
 		}
 
+		spin_lock(&sdei_list_lock);
+		event->reregister = true;
+		spin_unlock(&sdei_list_lock);
+
 		err = _sdei_event_register(event);
 		if (err) {
+			spin_lock(&sdei_list_lock);
+			event->reregister = false;
+			event->reenable = false;
+			spin_unlock(&sdei_list_lock);
+
 			sdei_event_destroy(event);
 			pr_warn("Failed to register event %u: %d\n", event_num,
 				err);
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
