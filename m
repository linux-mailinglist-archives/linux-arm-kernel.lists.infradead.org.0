Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6670A4207E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 11:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AyMf/Cxe61jFuTGbWjSQ1ox8Y/qfp61wn8cc++Ppbw8=; b=l49L/zsclCTEqr
	zgw/hz+zesDd1jSWOI2ZiEgk8PrrzhW44WkvpLPHYjIIAD0nbYL7XP7iSPDxLQaXhT0dGTsORdB/c
	j0qTvmHogrRAKxBv+nkAdBda6CVc+JTaX9ArHWV9dvFTC2M+Q9RVJTJdiM2fqo9RzEcWqcA+BeY0U
	p2bjPqJcvLMhJa5Yx8z4h9hsDHJwfykqs6HWJzbNUdlfT/GutV50yt205SoV6z/1NiC/sOcGG6sT3
	fcXfPKQcUeVp6WS4o4ULKkLIV9K60o2yytDESAz5GzR73bzY/sn3Sm+k1eo5Q9N+RfcwvrrsfOPc0
	sd5Ww6TZ+dkGpKzqymHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazMm-00039s-Mg; Wed, 12 Jun 2019 09:16:24 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hazLR-0001CG-79
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 09:15:04 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1DA3161A477AB224809E;
 Wed, 12 Jun 2019 17:11:56 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Wed, 12 Jun 2019 17:11:48 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-perf-users@vger.kernel.org>
Subject: [PATCH v1 5/5] perf,kvm/arm64: perf-kvm-stat to report VM TRAP
Date: Wed, 12 Jun 2019 09:08:46 +0000
Message-ID: <1560330526-15468-6-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
References: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_021502_456254_764E2F5E 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, christoffer.dall@arm.com, acme@kernel.org,
 linuxarm@huawei.com, acme@redhat.com, peterz@infradead.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com,
 wanghaibin.wang@huawei.com, ganapatrao.kulkarni@cavium.com,
 Zenghui Yu <yuzenghui@huawei.com>, namhyung@kernel.org, jolsa@redhat.com,
 xiexiangyou@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When guest exits due to "TRAP", we can analyze the guest exit reasons
deeplier. Enhance perf-kvm-stat to record and analyze VM TRAP events.

There is a mapping between guest's "trap_code" (ESR_ELx's bits[31:26])
and "trap_reason" - kvm_arm_exception_class. Copy it from kernel to
aarch64_guest_exits.h, export it to userspace.

This patch records two new KVM tracepoints: "kvm:kvm_trap_enter" and
"kvm:kvm_trap_exit", and reports statistical data between these two
tracepoints.

A simple test go below:

 # ./tools/perf/perf kvm stat record -p 20763
[ perf record: Woken up 92 times to write data ]
[ perf record: Captured and wrote 203.727 MB perf.data.guest (2601786 samples) ]

 # ./tools/perf/perf kvm stat report --event=vmexit

Analyze events for all VMs, all VCPUs:

             VM-EXIT    Samples  Samples%     Time%    Min Time    Max Time         Avg time

                TRAP     640931    97.12%   100.00%      2.44us  14683.86us   3446.49us ( +-   0.05% )
                 IRQ      19019     2.88%     0.00%      0.90us    461.94us      2.12us ( +-   2.09% )

Total Samples:659950, Total events handled time:2209005391.30us.

 # ./tools/perf/perf kvm stat report --event=trap

Analyze events for all VMs, all VCPUs:

          TRAP-EVENT    Samples  Samples%     Time%    Min Time    Max Time         Avg time

                 WFx     601194    93.80%    99.98%      0.90us   4294.04us   3671.01us ( +-   0.03% )
               SYS64      33714     5.26%     0.01%      1.10us     41.34us      5.68us ( +-   0.18% )
            DABT_LOW       6014     0.94%     0.00%      1.12us     18.04us      2.57us ( +-   0.91% )
            IABT_LOW         12     0.00%     0.01%  12597.76us  14679.96us  12893.61us ( +-   1.34% )

Total Samples:640934, Total events handled time:2207353434.56us.

Cc: Arnaldo Carvalho de Melo <acme@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Christoffer Dall <christoffer.dall@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 tools/perf/arch/arm64/util/aarch64_guest_exits.h | 68 ++++++++++++++++++++++++
 tools/perf/arch/arm64/util/kvm-stat.c            | 65 ++++++++++++++++++++++
 2 files changed, 133 insertions(+)

diff --git a/tools/perf/arch/arm64/util/aarch64_guest_exits.h b/tools/perf/arch/arm64/util/aarch64_guest_exits.h
index a8ca4b8..0dbbd87 100644
--- a/tools/perf/arch/arm64/util/aarch64_guest_exits.h
+++ b/tools/perf/arch/arm64/util/aarch64_guest_exits.h
@@ -20,4 +20,72 @@
 	{ARM_EXCEPTION_TRAP,		"TRAP"		},	\
 	{ARM_EXCEPTION_HYP_GONE,	"HYP_GONE"	}
 
+/* esr.h */
+#define ESR_ELx_EC_UNKNOWN	(0x00)
+#define ESR_ELx_EC_WFx		(0x01)
+/* Unallocated EC: 0x02 */
+#define ESR_ELx_EC_CP15_32	(0x03)
+#define ESR_ELx_EC_CP15_64	(0x04)
+#define ESR_ELx_EC_CP14_MR	(0x05)
+#define ESR_ELx_EC_CP14_LS	(0x06)
+#define ESR_ELx_EC_FP_ASIMD	(0x07)
+#define ESR_ELx_EC_CP10_ID	(0x08) /* EL2 only */
+#define ESR_ELx_EC_PAC		(0x09) /* EL2 and above */
+/* Unallocated EC: 0x0A - 0x0B */
+#define ESR_ELx_EC_CP14_64	(0x0C)
+/* Unallocated EC: 0x0d */
+#define ESR_ELx_EC_ILL		(0x0E)
+/* Unallocated EC: 0x0F - 0x10 */
+#define ESR_ELx_EC_SVC32	(0x11)
+#define ESR_ELx_EC_HVC32	(0x12) /* EL2 only */
+#define ESR_ELx_EC_SMC32	(0x13) /* EL2 and above */
+/* Unallocated EC: 0x14 */
+#define ESR_ELx_EC_SVC64	(0x15)
+#define ESR_ELx_EC_HVC64	(0x16) /* EL2 and above */
+#define ESR_ELx_EC_SMC64	(0x17) /* EL2 and above */
+#define ESR_ELx_EC_SYS64	(0x18)
+#define ESR_ELx_EC_SVE		(0x19)
+/* Unallocated EC: 0x1A - 0x1E */
+#define ESR_ELx_EC_IMP_DEF	(0x1f) /* EL3 only */
+#define ESR_ELx_EC_IABT_LOW	(0x20)
+#define ESR_ELx_EC_IABT_CUR	(0x21)
+#define ESR_ELx_EC_PC_ALIGN	(0x22)
+/* Unallocated EC: 0x23 */
+#define ESR_ELx_EC_DABT_LOW	(0x24)
+#define ESR_ELx_EC_DABT_CUR	(0x25)
+#define ESR_ELx_EC_SP_ALIGN	(0x26)
+/* Unallocated EC: 0x27 */
+#define ESR_ELx_EC_FP_EXC32	(0x28)
+/* Unallocated EC: 0x29 - 0x2B */
+#define ESR_ELx_EC_FP_EXC64	(0x2C)
+/* Unallocated EC: 0x2D - 0x2E */
+#define ESR_ELx_EC_SERROR	(0x2F)
+#define ESR_ELx_EC_BREAKPT_LOW	(0x30)
+#define ESR_ELx_EC_BREAKPT_CUR	(0x31)
+#define ESR_ELx_EC_SOFTSTP_LOW	(0x32)
+#define ESR_ELx_EC_SOFTSTP_CUR	(0x33)
+#define ESR_ELx_EC_WATCHPT_LOW	(0x34)
+#define ESR_ELx_EC_WATCHPT_CUR	(0x35)
+/* Unallocated EC: 0x36 - 0x37 */
+#define ESR_ELx_EC_BKPT32	(0x38)
+/* Unallocated EC: 0x39 */
+#define ESR_ELx_EC_VECTOR32	(0x3A) /* EL2 only */
+/* Unallocted EC: 0x3B */
+#define ESR_ELx_EC_BRK64	(0x3C)
+/* Unallocated EC: 0x3D - 0x3F */
+#define ESR_ELx_EC_MAX		(0x3F)
+
+/* kvm_arm.h */
+#define ECN(x) { ESR_ELx_EC_##x, #x }
+
+#define kvm_arm_exception_class \
+	ECN(UNKNOWN), ECN(WFx), ECN(CP15_32), ECN(CP15_64), ECN(CP14_MR), \
+	ECN(CP14_LS), ECN(FP_ASIMD), ECN(CP10_ID), ECN(CP14_64), ECN(SVC64), \
+	ECN(HVC64), ECN(SMC64), ECN(SYS64), ECN(IMP_DEF), ECN(IABT_LOW), \
+	ECN(IABT_CUR), ECN(PC_ALIGN), ECN(DABT_LOW), ECN(DABT_CUR), \
+	ECN(SP_ALIGN), ECN(FP_EXC32), ECN(FP_EXC64), ECN(SERROR), \
+	ECN(BREAKPT_LOW), ECN(BREAKPT_CUR), ECN(SOFTSTP_LOW), \
+	ECN(SOFTSTP_CUR), ECN(WATCHPT_LOW), ECN(WATCHPT_CUR), \
+	ECN(BKPT32), ECN(VECTOR32), ECN(BRK64)
+
 #endif
diff --git a/tools/perf/arch/arm64/util/kvm-stat.c b/tools/perf/arch/arm64/util/kvm-stat.c
index 5804bc2..afa0fc5 100644
--- a/tools/perf/arch/arm64/util/kvm-stat.c
+++ b/tools/perf/arch/arm64/util/kvm-stat.c
@@ -22,6 +22,7 @@
 #include "aarch64_guest_exits.h"
 
 define_exit_reasons_table(arm64_exit_reasons, kvm_arm_exception_type);
+define_exit_reasons_table(arm64_trap_reasons, kvm_arm_exception_class);
 
 static struct kvm_events_ops exit_events = {
 	.is_begin_event = exit_event_begin,
@@ -36,14 +37,78 @@
 const char *kvm_entry_trace = "kvm:kvm_entry";
 const char *kvm_exit_trace = "kvm:kvm_exit";
 
+const char *kvm_trap_reason = "esr_ec";
+const char *kvm_trap_enter_trace = "kvm:kvm_trap_enter";
+const char *kvm_trap_exit_trace = "kvm:kvm_trap_exit";
+
+static void trap_event_get_key(struct perf_evsel *evsel,
+			       struct perf_sample *sample,
+			       struct event_key *key)
+{
+	key->info = 0;
+	key->key = perf_evsel__intval(evsel, sample, kvm_trap_reason);
+}
+
+static const char *get_trap_reason(u64 exit_code)
+{
+	struct exit_reasons_table *tbl = arm64_trap_reasons;
+
+	while (tbl->reason != NULL) {
+		if (tbl->exit_code == exit_code)
+			return tbl->reason;
+		tbl++;
+	}
+
+	pr_err("Unknown kvm trap exit code: %lld on aarch64\n",
+	       (unsigned long long)exit_code);
+	return "UNKNOWN";
+}
+
+static bool trap_event_begin(struct perf_evsel *evsel,
+			     struct perf_sample *sample, struct event_key *key)
+{
+	if (!strcmp(evsel->name, kvm_trap_enter_trace)) {
+		trap_event_get_key(evsel, sample, key);
+		return true;
+	}
+
+	return false;
+}
+
+static bool trap_event_end(struct perf_evsel *evsel,
+			   struct perf_sample *sample __maybe_unused,
+			   struct event_key *key __maybe_unused)
+{
+	return (!strcmp(evsel->name, kvm_trap_exit_trace));
+}
+
+static void trap_event_decode_key(struct perf_kvm_stat *kvm __maybe_unused,
+				  struct event_key *key,
+				  char *decode)
+{
+	const char *trap_reason = get_trap_reason(key->key);
+
+	scnprintf(decode, decode_str_len, "%s", trap_reason);
+}
+
+static struct kvm_events_ops trap_events = {
+	.is_begin_event = trap_event_begin,
+	.is_end_event = trap_event_end,
+	.decode_key = trap_event_decode_key,
+	.name = "TRAP-EVENT",
+};
+
 const char *kvm_events_tp[] = {
 	"kvm:kvm_entry",
 	"kvm:kvm_exit",
+	"kvm:kvm_trap_enter",
+	"kvm:kvm_trap_exit",
 	NULL,
 };
 
 struct kvm_reg_events_ops kvm_reg_events_ops[] = {
 	{ .name = "vmexit", .ops = &exit_events },
+	{ .name = "trap", .ops = &trap_events },
 	{ NULL, NULL },
 };
 
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
