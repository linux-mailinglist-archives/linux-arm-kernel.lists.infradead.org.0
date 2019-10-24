Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411B0E2FE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 13:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n8yIFNrImXJLp90YCamGmhDMpgi1GvHqiz38gCvVw1Y=; b=k5XjLYj/Mc09LvUlOtz1aqDNnF
	4LIGTaEn6iqmkl/1LB1iBmY0F0A3dX3hXk0sCg0Q1eSfG1lw+TfDbuMu1I76vqMvSC4Unzsk87jhT
	1F3hdKHX9vFAFRn5BkU/mGZyoDRvkpKjjjhheajBuC9AhXJUlWjxcqynF/BESfySydIc2fnVgKYN5
	v640TaXkDK+3hp/ywvMCwDENs2DrTRLzwuzSYmiijVhhZ5eIDqQtW3+kzFn8lfdbjxO7xUjnBRI3t
	EzHKfdHxf/FTYxcyziPl5aWvriiHKKxnEEX8SA3fLQLt15GKSjjo5wWnrxrYQkiq5+ELMKi5d7AhG
	9HJnj1Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNau8-0007Tt-Oa; Thu, 24 Oct 2019 11:03:44 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNatG-0006f0-AA
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 11:02:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 59DDF7A7;
 Thu, 24 Oct 2019 04:02:45 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 644D13F71A;
 Thu, 24 Oct 2019 04:02:40 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com
Subject: [RFC PATCH v6 4/7] time: Add mechanism to recognize clocksource in
 time_get_snapshot
Date: Thu, 24 Oct 2019 19:02:06 +0800
Message-Id: <20191024110209.21328-5-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024110209.21328-1-jianyong.wu@arm.com>
References: <20191024110209.21328-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_040250_497589_A28D206D 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 jianyong.wu@arm.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 nd@arm.com, kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thomas Gleixner <tglx@linutronix.de>
In some scenario like return device time to ptp_kvm guest,
we need identify the current clocksource outside core time code.
This patch add a mechanism to recognize the current clocksource
by export clocksource id in time_get_snapshot.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
---
 include/linux/clocksource.h |  6 ++++++
 include/linux/timekeeping.h | 12 +++++++-----
 kernel/time/clocksource.c   |  3 +++
 kernel/time/timekeeping.c   |  1 +
 4 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/include/linux/clocksource.h b/include/linux/clocksource.h
index b21db536fd52..ac8016b22734 100644
--- a/include/linux/clocksource.h
+++ b/include/linux/clocksource.h
@@ -19,6 +19,7 @@
 #include <linux/of.h>
 #include <asm/div64.h>
 #include <asm/io.h>
+#include <linux/clocksource_ids.h>
 
 struct clocksource;
 struct module;
@@ -49,6 +50,10 @@ struct module;
  *			400-499: Perfect
  *				The ideal clocksource. A must-use where
  *				available.
+ * @id:			Defaults to CSID_GENERIC. The id value is captured
+ *			in certain snapshot functions to allow callers to
+ *			validate the clocksource from which the snapshot was
+ *			taken.
  * @read:		returns a cycle value, passes clocksource as argument
  * @enable:		optional function to enable the clocksource
  * @disable:		optional function to disable the clocksource
@@ -91,6 +96,7 @@ struct clocksource {
 	const char *name;
 	struct list_head list;
 	int rating;
+	enum clocksource_ids id;
 	int (*enable)(struct clocksource *cs);
 	void (*disable)(struct clocksource *cs);
 	unsigned long flags;
diff --git a/include/linux/timekeeping.h b/include/linux/timekeeping.h
index a8ab0f143ac4..ecce56269a7e 100644
--- a/include/linux/timekeeping.h
+++ b/include/linux/timekeeping.h
@@ -2,6 +2,7 @@
 #ifndef _LINUX_TIMEKEEPING_H
 #define _LINUX_TIMEKEEPING_H
 
+#include <linux/clocksource_ids.h>
 #include <linux/errno.h>
 
 /* Included from linux/ktime.h */
@@ -204,11 +205,12 @@ extern void timekeeping_inject_sleeptime64(const struct timespec64 *delta);
  * @cs_was_changed_seq:	The sequence number of clocksource change events
  */
 struct system_time_snapshot {
-	u64		cycles;
-	ktime_t		real;
-	ktime_t		raw;
-	unsigned int	clock_was_set_seq;
-	u8		cs_was_changed_seq;
+	u64			cycles;
+	ktime_t			real;
+	ktime_t			raw;
+	enum clocksource_ids	cs_id;
+	unsigned int		clock_was_set_seq;
+	u8			cs_was_changed_seq;
 };
 
 /*
diff --git a/kernel/time/clocksource.c b/kernel/time/clocksource.c
index 3bcc19ceb073..26a3add61771 100644
--- a/kernel/time/clocksource.c
+++ b/kernel/time/clocksource.c
@@ -921,6 +921,9 @@ int __clocksource_register_scale(struct clocksource *cs, u32 scale, u32 freq)
 
 	clocksource_arch_init(cs);
 
+	if (WARN_ON_ONCE((unsigned int)cs->id >= CSID_MAX))
+		cs->id = CSID_GENERIC;
+
 	/* Initialize mult/shift and max_idle_ns */
 	__clocksource_update_freq_scale(cs, scale, freq);
 
diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
index 44b726bab4bd..88078cff7fe2 100644
--- a/kernel/time/timekeeping.c
+++ b/kernel/time/timekeeping.c
@@ -974,6 +974,7 @@ void ktime_get_snapshot(struct system_time_snapshot *systime_snapshot)
 	do {
 		seq = read_seqcount_begin(&tk_core.seq);
 		now = tk_clock_read(&tk->tkr_mono);
+		systime_snapshot->cs_id = tk->tkr_mono.clock->id;
 		systime_snapshot->cs_was_changed_seq = tk->cs_was_changed_seq;
 		systime_snapshot->clock_was_set_seq = tk->clock_was_set_seq;
 		base_real = ktime_add(tk->tkr_mono.base,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
