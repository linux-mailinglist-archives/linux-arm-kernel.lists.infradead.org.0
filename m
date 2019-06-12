Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5076642082
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 11:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPVRNj4HTNvGYImWHQgITvfDTCRiQbj/HWfm7aXXcgY=; b=ZNmDHWmK7mTZCB
	vrzOw584eivWOU71smK0XzSb/54pB8aNBLhnCWo74scdLXKolNqjDbvlCbp8ay1kMVigkjjOirBSq
	A1V4aKgvfFFLPKbGTGw2NPr0nWpdG7OW7cdnmw2ddk7FO05OMDXSKlg3bI87t5qPuXp3X98D/OLYm
	W619YW2o23u2uxaGYbOIR0EUoGK/9puYwotL8wwovPpJ6jubNAU4j+XiCsTlxv2Q5f120SgMzDWoq
	p2Yzkk458VYHqwVDwV8ElsQ8ZPWWBB2JGDDu5Qj4ioprrOEFjAJpipre03AAOGlYXT4Dn7dQl1t0S
	wx4RrBOgI0fAhO/5fxGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazN7-0003Pu-Dl; Wed, 12 Jun 2019 09:16:45 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hazLS-0001CI-RQ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 09:15:05 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 06646C5C9D43BF77E6DD;
 Wed, 12 Jun 2019 17:11:56 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Wed, 12 Jun 2019 17:11:46 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-perf-users@vger.kernel.org>
Subject: [PATCH v1 3/5] perf tools arm64: Add support for get_cpuid() function
Date: Wed, 12 Jun 2019 09:08:44 +0000
Message-ID: <1560330526-15468-4-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
References: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_021503_138308_04167BAA 
X-CRM114-Status: GOOD (  14.37  )
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

The get_cpuid() function returns the MIDR string of the first CPU.

Cc: Ganapatrao Kulkarni <ganapatrao.kulkarni@cavium.com>
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>

---
When recording, perf will write host's cpuid (through get_cpuid()) into
perf.data.guest file:

  __cmd_record
    record__finish_output
      perf_session__write_header
        perf_header__adds_write
          do_write_feat (type == HEADER_CPUID)
            write_cpuid

When reporting, perf will read cpuid from perf.data.guest file:

  read_events
    perf_session__new
      perf_session__open
        perf_session__read_header
          perf_header__process_sections
            perf_file_section__process
              process_cpuid

I'm not familiar with ARM ID register usage, and how does perf code make
use of get_cpuid() function. If we left get_cpuid() unimplemented on
arm64 (we have a default implementation in tools/perf/util/header.c),
'perf kvm stat report' will failed with following error:
        "Failed to look up CPU type"

I will read the code further, and any comments or suggestions from both
sides (arm64 & perf) will be appreciated.

---
 tools/perf/arch/arm64/util/header.c | 74 +++++++++++++++++++++++--------------
 1 file changed, 47 insertions(+), 27 deletions(-)

diff --git a/tools/perf/arch/arm64/util/header.c b/tools/perf/arch/arm64/util/header.c
index 534cd25..5c17b86 100644
--- a/tools/perf/arch/arm64/util/header.c
+++ b/tools/perf/arch/arm64/util/header.c
@@ -9,17 +9,56 @@
 #define MIDR_VARIANT_SHIFT      20
 #define MIDR_VARIANT_MASK       (0xf << MIDR_VARIANT_SHIFT)
 
-char *get_cpuid_str(struct perf_pmu *pmu)
+/* Return value of midr_el1 if success, else return 0. */
+static int read_midr_el1(char *buf, int cpu_nr)
 {
-	char *buf = NULL;
 	char path[PATH_MAX];
 	const char *sysfs = sysfs__mountpoint();
+	u64 midr = 0;
+	FILE *file;
+
+	if (!sysfs)
+		return 0;
+
+	scnprintf(path, PATH_MAX, "%s/devices/system/cpu/cpu%d"MIDR,
+		  sysfs, cpu_nr);
+
+	file = fopen(path, "r");
+	if (!file) {
+		pr_debug("fopen failed for file %s\n", path);
+		return 0;
+	}
+
+	if (!fgets(buf, MIDR_SIZE, file)) {
+		fclose(file);
+		return 0;
+	}
+	fclose(file);
+
+	/* Ignore/clear Variant[23:20] and Revision[3:0] of MIDR */
+	midr = strtoul(buf, NULL, 16);
+	midr &= (~(MIDR_VARIANT_MASK | MIDR_REVISION_MASK));
+	scnprintf(buf, MIDR_SIZE, "0x%016lx", midr);
+
+	return midr;
+}
+
+int get_cpuid(char *buffer, size_t sz __maybe_unused)
+{
+	if (read_midr_el1(buffer, 0))
+		return 0;
+
+	return -1;
+}
+
+char *get_cpuid_str(struct perf_pmu *pmu)
+{
+	char *buf = NULL;
 	int cpu;
 	u64 midr = 0;
 	struct cpu_map *cpus;
-	FILE *file;
 
-	if (!sysfs || !pmu || !pmu->cpus)
+	if (!pmu || !pmu->cpus)
 		return NULL;
 
 	buf = malloc(MIDR_SIZE);
@@ -29,29 +68,10 @@ char *get_cpuid_str(struct perf_pmu *pmu)
 	/* read midr from list of cpus mapped to this pmu */
 	cpus = cpu_map__get(pmu->cpus);
 	for (cpu = 0; cpu < cpus->nr; cpu++) {
-		scnprintf(path, PATH_MAX, "%s/devices/system/cpu/cpu%d"MIDR,
-				sysfs, cpus->map[cpu]);
-
-		file = fopen(path, "r");
-		if (!file) {
-			pr_debug("fopen failed for file %s\n", path);
-			continue;
-		}
-
-		if (!fgets(buf, MIDR_SIZE, file)) {
-			fclose(file);
-			continue;
-		}
-		fclose(file);
-
-		/* Ignore/clear Variant[23:20] and
-		 * Revision[3:0] of MIDR
-		 */
-		midr = strtoul(buf, NULL, 16);
-		midr &= (~(MIDR_VARIANT_MASK | MIDR_REVISION_MASK));
-		scnprintf(buf, MIDR_SIZE, "0x%016lx", midr);
-		/* got midr break loop */
-		break;
+		midr = read_midr_el1(buf, cpus->map[cpu]);
+		if (midr)
+			/* got midr break loop */
+			break;
 	}
 
 	if (!midr) {
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
