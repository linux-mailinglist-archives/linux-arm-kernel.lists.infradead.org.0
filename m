Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0A21683A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:36:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BT8Gc5GeeY/akbZVJ7nRM0+YM4IDCBDVELRjXmpxrhM=; b=Z138thfOsecwhd
	oVORZKSmP3RANMMAcLaSl9OuKlKgtluSLCJp6o4rzMkRq6W9Cpd6Mk8h0mdojiFXLQu2Bgcfivjnd
	hohwbvYbxhbJNkXLHfPtdar0+5emKjFV5PlyRIsLI20bAGRouJssL2MKEknocML2Oo+J1TzrboMZi
	Pl6hnyv5wLEfjXIe+RflnxWH2OYvcX2SGc0RF3Z+r6/K6h+sS9C6NeA+oxCZ0NhPwkHmYa4mad5ti
	ejmQdVQIULS9V+Oc2SPQG99PK4gY56MVCTPMLosRmlok86pVtLY88gYm9nrsnVEBBKZsY40csbA71
	pKgRPbk1xdcy8e4ZHbuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BHo-0000dq-Gw; Fri, 21 Feb 2020 16:36:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BGy-0008RX-I5
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:35:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 19C6F101E;
 Fri, 21 Feb 2020 08:35:27 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50B523F68F;
 Fri, 21 Feb 2020 08:35:26 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] firmware: arm_sdei: Use cpus_read_lock() to avoid races
 with cpuhp
Date: Fri, 21 Feb 2020 16:35:08 +0000
Message-Id: <20200221163509.47254-4-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221163509.47254-1-james.morse@arm.com>
References: <20200221163509.47254-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_083528_668817_65DE407A 
X-CRM114-Status: GOOD (  11.75  )
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

SDEI has private events that need registering and enabling on each CPU.
CPUs can come and go while we are trying to do this. SDEI tries to avoid
these problems by setting the reregister flag before the register call,
so any CPUs that come online register the event too. Sticking plaster
like this doesn't work, as if the register call fails, a CPU that
subsequently comes online will register the event before reregister
is cleared.

Take cpus_read_lock() around the register and enable calls. We don't
want surprise CPUs to do the wrong thing if they race with these calls
failing.

Signed-off-by: James Morse <james.morse@arm.com>
---
 drivers/firmware/arm_sdei.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
index f15f459e9df0..45536408a8c1 100644
--- a/drivers/firmware/arm_sdei.c
+++ b/drivers/firmware/arm_sdei.c
@@ -418,14 +418,19 @@ int sdei_event_enable(u32 event_num)
 		return -ENOENT;
 	}
 
-	spin_lock(&sdei_list_lock);
-	event->reenable = true;
-	spin_unlock(&sdei_list_lock);
 
+	cpus_read_lock();
 	if (event->type == SDEI_EVENT_TYPE_SHARED)
 		err = sdei_api_event_enable(event->event_num);
 	else
 		err = sdei_do_cross_call(_local_event_enable, event);
+
+	if (!err) {
+		spin_lock(&sdei_list_lock);
+		event->reenable = true;
+		spin_unlock(&sdei_list_lock);
+	}
+	cpus_read_unlock();
 	mutex_unlock(&sdei_events_lock);
 
 	return err;
@@ -627,21 +632,18 @@ int sdei_event_register(u32 event_num, sdei_event_callback *cb, void *arg)
 			break;
 		}
 
-		spin_lock(&sdei_list_lock);
-		event->reregister = true;
-		spin_unlock(&sdei_list_lock);
-
+		cpus_read_lock();
 		err = _sdei_event_register(event);
 		if (err) {
-			spin_lock(&sdei_list_lock);
-			event->reregister = false;
-			event->reenable = false;
-			spin_unlock(&sdei_list_lock);
-
 			sdei_event_destroy(event);
 			pr_warn("Failed to register event %u: %d\n", event_num,
 				err);
+		} else {
+			spin_lock(&sdei_list_lock);
+			event->reregister = true;
+			spin_unlock(&sdei_list_lock);
 		}
+		cpus_read_unlock();
 	} while (0);
 	mutex_unlock(&sdei_events_lock);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
