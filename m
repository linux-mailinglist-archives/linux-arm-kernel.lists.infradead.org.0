Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 518221CF4BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Subject:To:From
	:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=WKj7xIlbzvFlUZXtMSKYw8TjoOwZGNMPGLjNh1WEGAo=; b=mitasZ/RBMhmdz
	tB4CRGgYeIP6x5A+dkEkHjU6xKa+wq17GSdq2jaqmt7hoaia+b54xU6kBSdkjOXYSt74z5Zl1dl7Y
	DNrzvr3w/E7+v3jxnU/w2rYwhyWFDj4qIT3gZ5J/CZdP2h/om6BnlsAtT69bM7dH3nTsMHKJESjNo
	cuY7en/dDpkF3NGSP7jjXELseCAtK1gDTBqBiif/XJ7mq6r3zZJNKanyrx/Dhs/4ZerC++v4G79VK
	/+5DUaZH1eQv66Q9v34/060YMnAWe2o8d1sKs+zl/plaW9wNaiuqBiHzKDZCCVhjzVQ/xiJMtKPql
	MH8mZTDDo5hoHelAzeZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUKP-00087G-Bx; Tue, 12 May 2020 12:48:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUJK-0007ER-3w
 for linux-arm-kernel@bombadil.infradead.org; Tue, 12 May 2020 12:47:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To;
 bh=CYYpiqrbBLgooKXOpvi8wy4NrFYsaxk2WuAfbe/cgCE=; b=W6os7/RwiqUdE+aykxc8eGzgyH
 fS7bISumtHbFPFrf4M7xtKFo5FeqDVH6JQa4Xq6qSDNjl2frm/JUmDi97d1mL3x0l8u4NpOaFnKW3
 gx9+Pii5OQt83bS5JqZXK567UF1kC1lE2NVZudxzeS5r41/T5dV77e3KLsEfImeS0gkKs9a735SpY
 C5xF7Yk/YgDkA2IxcKBxDOqSYS3XQjmAAWLYr5X7OWnoNvggJxTIy+E/eZdz38Yofpf0WjbWT5Qdj
 SNwkmL2X79pGemtlg7hfMaUy6cW4S8JZDXl9TNeckLoQ/C+9sS1wyvLcOgzSYu85nlycGfTJPkA1j
 dVv7v0uQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUJF-0003Ga-Hf; Tue, 12 May 2020 12:46:57 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 476FC3062BA;
 Tue, 12 May 2020 14:46:53 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 3408D20962E57; Tue, 12 May 2020 14:46:53 +0200 (CEST)
Message-ID: <20200512124450.981890259@infradead.org>
User-Agent: quilt/0.66
Date: Tue, 12 May 2020 14:41:02 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Leo Yan <leo.yan@linaro.org>
Subject: [PATCH 4/5] perf: Add perf_event_mmap_page::cap_user_time_short ABI
References: <20200512124058.833263033@infradead.org>
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
Cc: alexander.shishkin@linux.intel.com, daniel.lezcano@linaro.org,
 sboyd@codeaurora.org, linux-kernel@vger.kernel.org, acme@kernel.org,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>, mingo@redhat.com,
 john.stultz@linaro.org, tglx@linutronix.de, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to support short clock counters, provide an ABI extention.

As a whole:

    u64 time, delta, cyc = read_cycle_counter();

+   if (cap_user_time_short)
+	cyc = time_cycle + ((cyc - time_cycle) & time_mask);

    delta = mul_u64_u32_shr(cyc, time_mult, time_shift);

    if (cap_user_time_zero)
	time = time_zero + delta;

    delta += time_offset;

Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 include/uapi/linux/perf_event.h |   23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

--- a/include/uapi/linux/perf_event.h
+++ b/include/uapi/linux/perf_event.h
@@ -532,9 +532,10 @@ struct perf_event_mmap_page {
 				cap_bit0_is_deprecated	: 1, /* Always 1, signals that bit 0 is zero */
 
 				cap_user_rdpmc		: 1, /* The RDPMC instruction can be used to read counts */
-				cap_user_time		: 1, /* The time_* fields are used */
+				cap_user_time		: 1, /* The time_{shift,mult,offset} fields are used */
 				cap_user_time_zero	: 1, /* The time_zero field is used */
-				cap_____res		: 59;
+				cap_user_time_short	: 1, /* the time_{cycle,mask} fields are used */
+				cap_____res		: 58;
 		};
 	};
 
@@ -593,13 +594,29 @@ struct perf_event_mmap_page {
 	 *               ((rem * time_mult) >> time_shift);
 	 */
 	__u64	time_zero;
+
 	__u32	size;			/* Header size up to __reserved[] fields. */
+	__u32	__reserved_1;
+
+	/*
+	 * If cap_usr_time_short, the hardware clock is less than 64bit wide
+	 * and we must compute the 'cyc' value, as used by cap_usr_time, as:
+	 *
+	 *   cyc = time_cycles + ((cyc - time_cycles) & time_mask)
+	 *
+	 * NOTE: this form is explicitly chosen such that cap_usr_time_short
+	 *       is a correction on top of cap_usr_time, and code that doesn't
+	 *       know about cap_usr_time_short still works under the assumption
+	 *       the counter doesn't wrap.
+	 */
+	__u64	time_cycles;
+	__u64	time_mask;
 
 		/*
 		 * Hole for extension of the self monitor capabilities
 		 */
 
-	__u8	__reserved[118*8+4];	/* align to 1k. */
+	__u8	__reserved[116*8];	/* align to 1k. */
 
 	/*
 	 * Control data for the mmap() data buffer.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
