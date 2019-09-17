Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 743ACB4CDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 13:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=psiRqcyyzWB17y27EZX6SDQiZFUhDSRnqXPKsJRS1hY=; b=ku75w4iqzjMnIVkCyq7wZnCZIM
	iHjhLbtGINAmKLNKHB3DPkTJ7FutjpvbZF5OJQ3bgdUZ/tOAI3A+JRz5kyXXuUZwQ7m1z1Zu1N1L9
	+9D+/3Nb7XnylXzEJ3JTgjc2yt6fKb6duhFWyCBPzxzsuL+aCtmw9lBXq1Hw2w0oXfXRBg8xpDlhU
	huENMi0S6PApPyiH2rUKlxx+5XUWdjuP0sh4O9yEQjaeMi0HKhZxiMjAzW0V8bqsZwbswXewrLHua
	c6Ma51QS+zV8z5vtwIy2i8q5vLBkeEjDpUpGeKRdSQB37MaFU5qy8oEJYXwuqNHu+H7ibW9th4vZc
	DVzKYC/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iABcl-0007qb-Le; Tue, 17 Sep 2019 11:26:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iABba-0007Bj-LN
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 11:25:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 331E81570;
 Tue, 17 Sep 2019 04:25:10 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5CFDB3F59C;
 Tue, 17 Sep 2019 04:25:07 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, pbonzini@redhat.com,
 sean.j.christopherson@intel.com, maz@kernel.org, richardcochran@gmail.com,
 Mark.Rutland@arm.com, Will.Deacon@arm.com, suzuki.poulose@arm.com
Subject: [PATCH 3/6] Timer: expose monotonic clock and counter value
Date: Tue, 17 Sep 2019 07:24:27 -0400
Message-Id: <20190917112430.45680-4-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190917112430.45680-1-jianyong.wu@arm.com>
References: <20190917112430.45680-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_042510_902740_7F098631 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: justin.he@arm.com, Steve.Capper@arm.com, jianyong.wu@arm.com,
 linux-kernel@vger.kernel.org, Kaly.Xin@arm.com, nd@arm.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A number of PTP drivers (such as ptp-kvm) are assuming what the
current clock source is, which could lead to interesting effects on
systems where the clocksource can change depending on external events.

For this purpose, add a new API that retrives both the current
monotonic clock as well as its counter value.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 include/linux/timekeeping.h |  3 +++
 kernel/time/timekeeping.c   | 13 +++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/include/linux/timekeeping.h b/include/linux/timekeeping.h
index a8ab0f143ac4..a5389adaa8bc 100644
--- a/include/linux/timekeeping.h
+++ b/include/linux/timekeeping.h
@@ -247,6 +247,9 @@ extern int get_device_system_crosststamp(
 			struct system_time_snapshot *history,
 			struct system_device_crosststamp *xtstamp);
 
+/* Obtain current monotonic clock and its counter value  */
+extern void get_current_counterval(struct system_counterval_t *sc);
+
 /*
  * Simultaneously snapshot realtime and monotonic raw clocks
  */
diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
index 44b726bab4bd..07a0969625b1 100644
--- a/kernel/time/timekeeping.c
+++ b/kernel/time/timekeeping.c
@@ -1098,6 +1098,19 @@ static bool cycle_between(u64 before, u64 test, u64 after)
 	return false;
 }
 
+/**
+ * get_current_counterval - Snapshot the current clocksource and counter value
+ * @sc:	Pointer to a struct containing the current clocksource and its value
+ */
+void get_current_counterval(struct system_counterval_t *sc)
+{
+	struct timekeeper *tk = &tk_core.timekeeper;
+
+	sc->cs = READ_ONCE(tk->tkr_mono.clock);
+	sc->cycles = sc->cs->read(sc->cs);
+}
+EXPORT_SYMBOL_GPL(get_current_counterval);
+
 /**
  * get_device_system_crosststamp - Synchronously capture system/device timestamp
  * @get_time_fn:	Callback to get simultaneous device time and
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
