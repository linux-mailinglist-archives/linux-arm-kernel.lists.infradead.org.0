Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7124E5AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fs4eHtj9A8AcfCSVABL7/OvyygA3RZMlq9bIOP/ll7s=; b=nrpaQ0uTBvJanf
	gPJF5d324NYpyTDNJypQ9d/m54SzKMB6AXXEafYpO7rEAhy79DQHMCYpEprc7J2dh+sBQw73MBmW3
	jWewiiGB7vK3E9GyBu8FLQ3Chvj9Os3b/xlhUsEhl69QWtkXdIj3QOf+1v6uHtXtI6s1Aef9QLto2
	lJ9giw3s35iN2Y+VmqtdqyXD+FF2IFZ2P+AC90WwiKa59ynRV1YuB71V1zCuVfngWK+6qeCs/kd9O
	X09QqjYyo3+BmEA/q8pNT5RVDHh4o7VOI+mQMHSJouLmvBt/AxXkcnOpB8inYx+ecxYeIqJLYT6Pl
	LyTsnxxrXfj+h2js+lwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGa6-000393-Uj; Fri, 21 Jun 2019 10:15:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGEI-0003f2-C9
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:53:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBA4B1478;
 Fri, 21 Jun 2019 02:53:09 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4246B3F246;
 Fri, 21 Jun 2019 02:53:07 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH v7 01/25] kernel: Standardize vdso_datapage
Date: Fri, 21 Jun 2019 10:52:28 +0100
Message-Id: <20190621095252.32307-2-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190621095252.32307-1-vincenzo.frascino@arm.com>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_025310_561399_027CAA19 
X-CRM114-Status: GOOD (  16.49  )
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
Cc: Shuah Khan <shuah@kernel.org>, Andre Przywara <andre.przywara@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Thomas Gleixner <tglx@linutronix.de>, Shijith Thotton <sthotton@marvell.com>,
 Peter Collingbourne <pcc@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to unify the common code for managing the vdso library in
between all the architectures that support it, this patch tries to
provide a common format for the vdso datapage.

As a result of this, this patch generalized the data structures in vgtod.h
from x86 private includes to general includes (include/vdso).

Cc: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Tested-by: Shijith Thotton <sthotton@marvell.com>
Tested-by: Andre Przywara <andre.przywara@arm.com>
---
 include/vdso/datapage.h | 93 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)
 create mode 100644 include/vdso/datapage.h

diff --git a/include/vdso/datapage.h b/include/vdso/datapage.h
new file mode 100644
index 000000000000..770f40254b08
--- /dev/null
+++ b/include/vdso/datapage.h
@@ -0,0 +1,93 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_DATAPAGE_H
+#define __VDSO_DATAPAGE_H
+
+#ifdef __KERNEL__
+
+#ifndef __ASSEMBLY__
+
+#include <linux/bits.h>
+#include <linux/time.h>
+#include <linux/types.h>
+
+#define VDSO_BASES	(CLOCK_TAI + 1)
+#define VDSO_HRES	(BIT(CLOCK_REALTIME)		| \
+			 BIT(CLOCK_MONOTONIC)		| \
+			 BIT(CLOCK_BOOTTIME)		| \
+			 BIT(CLOCK_TAI))
+#define VDSO_COARSE	(BIT(CLOCK_REALTIME_COARSE)	| \
+			 BIT(CLOCK_MONOTONIC_COARSE))
+#define VDSO_RAW	(BIT(CLOCK_MONOTONIC_RAW))
+
+#define CS_HRES_COARSE	0
+#define CS_RAW		1
+#define CS_BASES	(CS_RAW + 1)
+
+/**
+ * struct vdso_timestamp - basetime per clock_id
+ * @sec: seconds
+ * @nsec: nanoseconds
+ *
+ * There is one vdso_timestamp object in vvar for each vDSO-accelerated
+ * clock_id. For high-resolution clocks, this encodes the time
+ * corresponding to vdso_data.cycle_last. For coarse clocks this encodes
+ * the actual time.
+ *
+ * To be noticed that for highres clocks nsec is left-shifted by
+ * vdso_data.cs[x].shift.
+ */
+struct vdso_timestamp {
+	u64	sec;
+	u64	nsec;
+};
+
+/**
+ * struct vdso_data - vdso datapage representation
+ * @seq: timebase sequence counter
+ * @clock_mode: clock mode
+ * @cycle_last: timebase at clocksource init
+ * @mask: clocksource mask
+ * @mult: clocksource multiplier
+ * @shift: clocksource shift
+ * @basetime[clock_id]: basetime per clock_id
+ * @tz_minuteswest: minutes west of Greenwich
+ * @tz_dsttime: type of DST correction
+ * @hrtimer_res: hrtimer resolution
+ * @__unused: unused
+ *
+ * vdso_data will be accessed by 64 bit and compat code at the same time
+ * so we should be careful before modifying this structure.
+ */
+struct vdso_data {
+	u32			seq;
+
+	s32			clock_mode;
+	u64			cycle_last;
+	u64			mask;
+	u32			mult;
+	u32			shift;
+
+	struct vdso_timestamp	basetime[VDSO_BASES];
+
+	s32			tz_minuteswest;
+	s32			tz_dsttime;
+	u32			hrtimer_res;
+	u32			__unused;
+};
+
+/*
+ * We use the hidden visibility to prevent the compiler from generating a GOT
+ * relocation. Not only is going through a GOT useless (the entry couldn't and
+ * must not be overridden by another library), it does not even work: the linker
+ * cannot generate an absolute address to the data page.
+ *
+ * With the hidden visibility, the compiler simply generates a PC-relative
+ * relocation, and this is what we need.
+ */
+extern struct vdso_data _vdso_data[CS_BASES] __attribute__((visibility("hidden")));
+
+#endif /* !__ASSEMBLY__ */
+
+#endif /* __KERNEL__ */
+
+#endif /* __VDSO_DATAPAGE_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
