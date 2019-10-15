Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219C3D73DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 12:50:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=la0mvFvErc15sQZo2+bMBJn74+vwSkU9owXnPgkt71g=; b=N7xOlfBW30LH7Z236LBBOul1d9
	ZGPqWSeWgx2Ci6P5XSbXE3mugtJZmK1y3ssZvKyKVCNQ7YNCFDXbCb2Qwwn2tPM52WtyxgRwgL2Ty
	LBrHUknDrMZRiIJbpqUlzo59AhKHqHIeIjG1jgpMuJHCEj3TGwd/p4GWd7uPnOy7JOBZW05k+3urE
	3jz2l9WpcUOFoFFzOetb835dM5xprz8sQdOnZMjdTA8F9UAJCN7hweenqly9y731gsM60A2r9AbnD
	7j/MVbLyahK3MmBfvyvyZtMli2hQOY1acCam+4cZspQQrB6kOmRjP7HsVpXPSlrQ9ewHe4d3MkZif
	+w9l+5JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKOv-0005ko-80; Tue, 15 Oct 2019 10:50:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKO6-00057h-9w
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 10:49:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13C541000;
 Tue, 15 Oct 2019 03:49:09 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4B0163F68E;
 Tue, 15 Oct 2019 03:49:04 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com
Subject: [PATCH v5 3/6] timekeeping: Add clocksource to system_time_snapshot
Date: Tue, 15 Oct 2019 18:48:19 +0800
Message-Id: <20191015104822.13890-4-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015104822.13890-1-jianyong.wu@arm.com>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_034910_513686_49DD14AE 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 jianyong.wu@arm.com, linux-kernel@vger.kernel.org, Kaly.Xin@arm.com,
 nd@arm.com, kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sometimes, we need check current clocksource outside of
timekeeping area. Add clocksource to system_time_snapshot then
we can get clocksource as well as system time.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
Suggested-by: Paolo Bonzini <pbonzini@redhat.com>
---
 include/linux/timekeeping.h | 35 ++++++++++++++++++-----------------
 kernel/time/timekeeping.c   |  7 ++++---
 2 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/include/linux/timekeeping.h b/include/linux/timekeeping.h
index a8ab0f143ac4..964c14fbbf69 100644
--- a/include/linux/timekeeping.h
+++ b/include/linux/timekeeping.h
@@ -194,23 +194,6 @@ extern bool timekeeping_rtc_skipresume(void);
 
 extern void timekeeping_inject_sleeptime64(const struct timespec64 *delta);
 
-/*
- * struct system_time_snapshot - simultaneous raw/real time capture with
- *	counter value
- * @cycles:	Clocksource counter value to produce the system times
- * @real:	Realtime system time
- * @raw:	Monotonic raw system time
- * @clock_was_set_seq:	The sequence number of clock was set events
- * @cs_was_changed_seq:	The sequence number of clocksource change events
- */
-struct system_time_snapshot {
-	u64		cycles;
-	ktime_t		real;
-	ktime_t		raw;
-	unsigned int	clock_was_set_seq;
-	u8		cs_was_changed_seq;
-};
-
 /*
  * struct system_device_crosststamp - system/device cross-timestamp
  *	(syncronized capture)
@@ -236,6 +219,24 @@ struct system_counterval_t {
 	struct clocksource	*cs;
 };
 
+/*
+ * struct system_time_snapshot - simultaneous raw/real time capture with
+ *	counter value
+ * @sc:		Contains clocksource and clocksource counter value to produce
+ * 	the system times
+ * @real:	Realtime system time
+ * @raw:	Monotonic raw system time
+ * @clock_was_set_seq:	The sequence number of clock was set events
+ * @cs_was_changed_seq:	The sequence number of clocksource change events
+ */
+struct system_time_snapshot {
+	struct system_counterval_t sc;
+	ktime_t		real;
+	ktime_t		raw;
+	unsigned int	clock_was_set_seq;
+	u8		cs_was_changed_seq;
+};
+
 /*
  * Get cross timestamp between system clock and device clock
  */
diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
index 44b726bab4bd..66ff089605b3 100644
--- a/kernel/time/timekeeping.c
+++ b/kernel/time/timekeeping.c
@@ -983,7 +983,8 @@ void ktime_get_snapshot(struct system_time_snapshot *systime_snapshot)
 		nsec_raw  = timekeeping_cycles_to_ns(&tk->tkr_raw, now);
 	} while (read_seqcount_retry(&tk_core.seq, seq));
 
-	systime_snapshot->cycles = now;
+	systime_snapshot->sc.cycles = now;
+	systime_snapshot->sc.cs = tk->tkr_mono.clock;
 	systime_snapshot->real = ktime_add_ns(base_real, nsec_real);
 	systime_snapshot->raw = ktime_add_ns(base_raw, nsec_raw);
 }
@@ -1189,12 +1190,12 @@ int get_device_system_crosststamp(int (*get_time_fn)
 		 * clocksource change
 		 */
 		if (!history_begin ||
-		    !cycle_between(history_begin->cycles,
+		    !cycle_between(history_begin->sc.cycles,
 				   system_counterval.cycles, cycles) ||
 		    history_begin->cs_was_changed_seq != cs_was_changed_seq)
 			return -EINVAL;
 		partial_history_cycles = cycles - system_counterval.cycles;
-		total_history_cycles = cycles - history_begin->cycles;
+		total_history_cycles = cycles - history_begin->sc.cycles;
 		discontinuity =
 			history_begin->clock_was_set_seq != clock_was_set_seq;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
