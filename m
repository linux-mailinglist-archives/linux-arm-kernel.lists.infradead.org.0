Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80791A3F3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 05:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gs8+oCz7pCsWfJuvb2/ggbtNt97V0UuIvHsQ2Oe/vSk=; b=Kxh7hXTAeHamqV
	zGMZ1HXJIsMECLE3EYAr+lhxNjYD6Dfg9fl+NPT5CzqOj5BZ0Jqo4uIJ9Yc4OIA12AQcpAmHG59rY
	GJxeP8x2hJ9eg5Gpee/DLtbfqruqhFgS7nI9LTsBG9lzle7oe8kAvMQFnJRI4jwbGwc7gv7yXHI4O
	eNBOdvoxsEo8HUXMV7tnnEVHpqMp8aWaKeVITpfz7EPMCeS/5Bz2m+LQZBuBeHLBMhsnRdJXjFDj2
	0iNI/Oi/Wn5CdgO5JrIRPyq9pL5ejg/jwS3KLJ3XCWTrGg5EDajYgx/V00miS0fHzOUE4ua2WoX1v
	rj1pX+CTBk4fOSRpfxqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMkjG-0002QD-FW; Fri, 10 Apr 2020 03:53:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMkfM-0004e5-Gy
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 03:49:19 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9ADF8214DB;
 Fri, 10 Apr 2020 03:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586490555;
 bh=uq4hJNtqFZPJMrmWI/E4aG4wnFS/dFvqaSP8vydg5S0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ayq10PwTTa3BHpR1+TGt2gKx+OVxbBbc66qBToEHXuqQg5cS52IHkWJWIPa9c6itn
 HKLlmkVR4GIX3lGurdxaGyfO4WlQLfM1MkVCfNFqDT79aILFpofsVVO/z5MJjIGFmx
 2epRvwhpGE/UaPIywuYIWcUYl53g8zWtle5FR2Zk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 04/46] firmware: arm_sdei: fix double-lock on
 hibernate with shared events
Date: Thu,  9 Apr 2020 23:48:27 -0400
Message-Id: <20200410034909.8922-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410034909.8922-1-sashal@kernel.org>
References: <20200410034909.8922-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_204916_811846_01B00ACB 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Liguang Zhang <zhangliguang@linux.alibaba.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

[ Upstream commit 6ded0b61cf638bf9f8efe60ab8ba23db60ea9763 ]

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
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/firmware/arm_sdei.c | 32 +++++++++++++++-----------------
 1 file changed, 15 insertions(+), 17 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index 9cd70d1a56221..eb2df89d4924f 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
