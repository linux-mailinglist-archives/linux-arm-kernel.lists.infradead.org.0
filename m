Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B257218D09
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 17:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zrumxc1R8QZwQiLHqvE1BudCVSsN7ZM3uyuuk2qRJIM=; b=gw97F0GDjWXUss
	uweR/ezxH9Ri5h/vbEhlQFbnh0HjR8Lr8esPyaJRRzVhIVZhfRGG3HAcs1GnmdmPKSqfGuavY4g7D
	QJiMFQMYcdsKSFGpYyiFwc0xka1/ZEyiLyvfMBx3E/fOJOzdraFoHy5JNPWOUQNh9c1ocMQsNNi2Y
	2iEDXlVGf+Yeqza7A+IGI+pbFmqb62SJz5DUuXhvVSj4FS/vQNVW4EMfWWnGZa5cFeE9NAF5LUjTL
	ma2bWZVOtaPbTPOLxCrEK3WlPEND5kGLuJssDxy7cqq6eAvLWUZanWPqQZOSUsmx+nSPKLrfYOfh4
	sB8yFcprZ2O6r99sgzzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOl2o-0006Tc-A9; Thu, 09 May 2019 15:33:14 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOl23-0005cz-8h
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 15:32:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D130F374;
 Thu,  9 May 2019 08:32:26 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 401E73F6C4;
 Thu,  9 May 2019 08:32:25 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Christoffer Dall <christoffer.dall@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v6 4/5] arm64: perf: extract chain helper into header
Date: Thu,  9 May 2019 16:32:11 +0100
Message-Id: <20190509153212.24187-5-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509153212.24187-1-andrew.murray@arm.com>
References: <20190509153212.24187-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_083227_566719_7BA9CB28 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Julien Thierry <julien.thierry@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ARMv8 Performance Monitors Extension includes an architectural
event type named CHAIN which allows for chaining counters together.

Let's extract the test for this event into a header file such that
other users, such as KVM (for PMU emulation) can make use of.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/include/asm/perf_event.h | 5 +++++
 arch/arm64/kernel/perf_event.c      | 2 +-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
index c593761ba61c..cd13f3fd1055 100644
--- a/arch/arm64/include/asm/perf_event.h
+++ b/arch/arm64/include/asm/perf_event.h
@@ -219,6 +219,11 @@
 #define ARMV8_PMU_USERENR_CR	(1 << 2) /* Cycle counter can be read at EL0 */
 #define ARMV8_PMU_USERENR_ER	(1 << 3) /* Event counter can be read at EL0 */
 
+static inline bool armv8pmu_evtype_is_chain(u64 evtype)
+{
+	return (evtype == ARMV8_PMUV3_PERFCTR_CHAIN);
+}
+
 #ifdef CONFIG_PERF_EVENTS
 struct pt_regs;
 extern unsigned long perf_instruction_pointer(struct pt_regs *regs);
diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 314b1adedf06..265bd835a724 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -879,7 +879,7 @@ static int armv8pmu_set_event_filter(struct hw_perf_event *event,
 static int armv8pmu_filter_match(struct perf_event *event)
 {
 	unsigned long evtype = event->hw.config_base & ARMV8_PMU_EVTYPE_EVENT;
-	return evtype != ARMV8_PMUV3_PERFCTR_CHAIN;
+	return !armv8pmu_evtype_is_chain(evtype);
 }
 
 static void armv8pmu_reset(void *info)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
