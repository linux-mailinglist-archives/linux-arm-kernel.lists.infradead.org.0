Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C18F6FDE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 12:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlsaau08Pg8g+j83sWJGjMuKoXH0KDBP6rqRiSNtP+c=; b=O1/EXR5EpYp7g0
	iJ0OImUuqwfq0weJOS6CrkBO7ucgercjH1WESFmfGMcNCXgZ5oO4AvmfgwTsE88B+LMZ9iHVHhkf9
	xuvYyqk+8m47YfeXE8ddyeH7lWPbtAG6DO7yNXbun9P0W9bWl7GXDiiemGhSsogGVc6EzyJfvCd0p
	8m0ZA4MgIti9ECxW1ont5yeMkBCATfjMbPoujpOe8nLlfcLzOKJqzOCbRzukmhrSa4X8jrVoBswmi
	137OrPVSbv/SYfin2t5VG8UfnuPWl3dmueH7Lgen5LNjhKULsB+aGE4wrLYfFwr/YRvqck4KAQsT2
	EPguHU63Cg2kxMBebHWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVdt-0003Jo-Mz; Mon, 22 Jul 2019 10:34:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVdX-000380-8w
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 10:33:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E68D1509;
 Mon, 22 Jul 2019 03:33:42 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C32B53F71A;
 Mon, 22 Jul 2019 03:33:40 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will.deacon@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/3] printk: Allow architecture-specific timestamping function
Date: Mon, 22 Jul 2019 11:33:28 +0100
Message-Id: <20190722103330.255312-2-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190722103330.255312-1-marc.zyngier@arm.com>
References: <20190722103330.255312-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_033343_355668_0B5895BA 
X-CRM114-Status: GOOD (  12.26  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

printk currently relies on local_clock to time-stamp the kernel
messages. In order to allow the timestamping (and only that)
to be overridden by architecture-specific code, let's declare
a new timestamp_clock() function, which gets used by the printk
code. Architectures willing to make use of this facility will
have to define CONFIG_ARCH_HAS_TIMESTAMP_CLOCK.

The default is of course to return local_clock(), so that the
existing behaviour stays unchanged.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 include/linux/sched/clock.h | 13 +++++++++++++
 kernel/printk/printk.c      |  4 ++--
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/include/linux/sched/clock.h b/include/linux/sched/clock.h
index 867d588314e0..3cf4b2a8ce18 100644
--- a/include/linux/sched/clock.h
+++ b/include/linux/sched/clock.h
@@ -98,4 +98,17 @@ static inline void enable_sched_clock_irqtime(void) {}
 static inline void disable_sched_clock_irqtime(void) {}
 #endif
 
+#ifdef CONFIG_ARCH_HAS_TIMESTAMP_CLOCK
+/* Special need architectures can provide their timestamping function */
+extern u64 timestamp_clock(void);
+
+#else
+
+static inline u64 timestamp_clock(void)
+{
+	return local_clock();
+}
+
+#endif
+
 #endif /* _LINUX_SCHED_CLOCK_H */
diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index 1888f6a3b694..166702316714 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -638,7 +638,7 @@ static int log_store(u32 caller_id, int facility, int level,
 	if (ts_nsec > 0)
 		msg->ts_nsec = ts_nsec;
 	else
-		msg->ts_nsec = local_clock();
+		msg->ts_nsec = timestamp_clock();
 #ifdef CONFIG_PRINTK_CALLER
 	msg->caller_id = caller_id;
 #endif
@@ -1841,7 +1841,7 @@ static bool cont_add(u32 caller_id, int facility, int level,
 		cont.facility = facility;
 		cont.level = level;
 		cont.caller_id = caller_id;
-		cont.ts_nsec = local_clock();
+		cont.ts_nsec = timestamp_clock();
 		cont.flags = flags;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
