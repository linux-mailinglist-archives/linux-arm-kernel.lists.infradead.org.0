Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A1F1683A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:36:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrC+3+Aa8w5fJiMyNiABmrl1YMfCyZLcQiR3M7dO840=; b=AAAlqkPXkduo13
	A0GYh7r5BW/pJ2Vz55pVC0f0R5agdD0R4CXU2PcVLH/+oVsG3yo2a9to3L7uWBDozcoh5NvfM7RrX
	SbFfcO+lEJgWnpQvdRGVC9+ofXqP8ciSzegBkq9NpiOMhGzGxdQ0vm1eofLN8DpdoKwJgzqAjsj+h
	YTrbAuWGwHZUcOzUJXUzEu4rlaqY7VWZ8NDNxV3J/w1Dv9vxZbKFGPQkPoachnl4hWsTh+J6bTZMs
	r+zBsi59KRcZs6pC9Lcwhc1RtQc1azdfMujSj6+L8ob2xupTq3aBF8gyEqHtdpWq1Hij8A7YtPKXG
	SXqZ+oUxwJ1kwzEXy9ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BHc-0000On-JE; Fri, 21 Feb 2020 16:36:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BGw-0008P6-5H
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:35:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2183FEC;
 Fri, 21 Feb 2020 08:35:25 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0481C3F68F;
 Fri, 21 Feb 2020 08:35:24 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] firmware: arm_sdei: fix possible double-lock on hibernate
 error path
Date: Fri, 21 Feb 2020 16:35:07 +0000
Message-Id: <20200221163509.47254-3-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221163509.47254-1-james.morse@arm.com>
References: <20200221163509.47254-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_083526_278262_0A2180EE 
X-CRM114-Status: GOOD (  12.82  )
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

From: Liguang Zhang <zhangliguang@linux.alibaba.com>

We call sdei_reregister_event() with sdei_list_lock held, if the register
fails we call sdei_event_destroy() which also acquires sdei_list_lock
thus creating A-A deadlock.

Add '_llocked' to sdei_reregister_event(), to indicate the list lock
is held, and add a _llocked variant of sdei_event_destroy().

Fixes: da351827240e ("firmware: arm_sdei: Add support for CPU and system power states")
Signed-off-by: Liguang Zhang <zhangliguang@linux.alibaba.com>
[expanded subject, added wrappers instead of duplicating contents]
Signed-off-by: James Morse <james.morse@arm.com>
---
 drivers/firmware/arm_sdei.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index 77eaa9a2fd15..f15f459e9df0 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -280,13 +280,12 @@ static struct sdei_event *sdei_event_create(u32 event_num,
 	return event;
 }
 
-static void sdei_event_destroy(struct sdei_event *event)
+static void sdei_event_destroy_llocked(struct sdei_event *event)
 {
 	lockdep_assert_held(&sdei_events_lock);
+	lockdep_assert_held(&sdei_list_lock);
 
-	spin_lock(&sdei_list_lock);
 	list_del(&event->list);
-	spin_unlock(&sdei_list_lock);
 
 	if (event->type == SDEI_EVENT_TYPE_SHARED)
 		kfree(event->registered);
@@ -296,6 +295,13 @@ static void sdei_event_destroy(struct sdei_event *event)
 	kfree(event);
 }
 
+static void sdei_event_destroy(struct sdei_event *event)
+{
+	spin_lock(&sdei_list_lock);
+	sdei_event_destroy_llocked(event);
+	spin_unlock(&sdei_list_lock);
+}
+
 static int sdei_api_get_version(u64 *version)
 {
 	return invoke_sdei_fn(SDEI_1_0_FN_SDEI_VERSION, 0, 0, 0, 0, 0, version);
@@ -643,16 +649,17 @@ int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg)
 }
 EXPORT_SYMBOL(sdei_event_register);
 
-static int sdei_reregister_event(struct sdei_event *event)
+static int sdei_reregister_event_llocked(struct sdei_event *event)
 {
 	int err;
 
 	lockdep_assert_held(&sdei_events_lock);
+	lockdep_assert_held(&sdei_list_lock);
 
 	err = _sdei_event_register(event);
 	if (err) {
 		pr_err("Failed to re-register event %u\n", event->event_num);
-		sdei_event_destroy(event);
+		sdei_event_destroy_llocked(event);
 		return err;
 	}
 
@@ -681,7 +688,7 @@ static int sdei_reregister_shared(void)
 			continue;
 
 		if (event->reregister) {
-			err = sdei_reregister_event(event);
+			err = sdei_reregister_event_llocked(event);
 			if (err)
 				break;
 		}
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
