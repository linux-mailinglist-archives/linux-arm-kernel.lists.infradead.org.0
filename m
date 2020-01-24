Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EEF1489FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:41:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+RzhMpYyvJi9PcqXIo0rRBsot4MVUumNMP5xnBhPPg=; b=I5jXOsuGpc6Z4Y
	Ox3Tj56Sw+ykonVe+dihWGPZNopxVblFEgrM7vTbZcM+SiprePRFLWC0ICRKXBdzByMKvoqy7eql+
	l9bHNe3kng2DhtgHGcMNgT57y3ERmNTn4tH2/Vgbkk4eQM2tcLwmLUjSkvbG771pAuKnuILNgIxaN
	lMFJmeBoaEVaHur2D5cHdES+d2X0U1OkdBD/a6pAb/9aP23kczEz2wgSa2t/1/EkkGRakNSvEcFIP
	6Or5iNsEapqC8Pnm0FzRi2fEKCYkFwyN+ulF4JWS9kheWrmezaIilE9IISDs54EJJoyuaRpEHstWl
	sAIkuhhasEj+j/al2CCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv08o-0004qJ-Qr; Fri, 24 Jan 2020 14:40:58 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv072-00029X-VF
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:39:12 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 48009B4E415BE2436B1E;
 Fri, 24 Jan 2020 22:39:03 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Fri, 24 Jan 2020 22:38:53 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>,
 <ak@linux.intel.com>
Subject: [PATCH RFC 3/7] perf jevents: Add support for a system events PMU
Date: Fri, 24 Jan 2020 22:35:01 +0800
Message-ID: <1579876505-113251-4-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_063909_351451_BE7B1B3C 
X-CRM114-Status: GOOD (  28.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: suzuki.poulose@arm.com, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 james.clark@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently CPU or uncore PMUs are supported for PMU event aliasing.

For fully integrated SoCs, we may have many other system PMUs and it is
useful to be able to alias events for those PMUs also. This could also
include the grey area of uncore PMUs, which need to be matched by CPU ID,
so need to be tightly coupled with the CPU. This is how it works for x86.
However, this may not work well for architectures where the CPU may not
have fixed uncore PMUs - ARM arch, for example.

Add support for a new mapfile - mapfile_sys.csv - which maps to system
event tables. For these, some SYS ID is used to match. For CPU PMUs,
mapfile.csv is still used to match any CPU event alises.

Generated pmu-events.c format will be like:

struct pmu_event pme_hisilicon_hip08_cpu[] = {
{
	.name = "l1d_cache_rd",
	.event = "event=0x40",
	.desc = "L1D cache access, read",
	.topic = "core imp def",
	.long_desc = "Attributable Level 1 data cache access, read",
},
{
	.name = "l1d_cache_wr",
	.event = "event=0x41",
	.desc = "L1D cache access, write",
	.topic = "core imp def",
	.long_desc = "Attributable Level 1 data cache access, write",
},
{
	.name = 0,
	.event = 0,
	.desc = 0,
},
};

struct pmu_event pme_hisilicon_hip08_sys[] = {
{
	.name = "uncore_hisi_l3c.rd_cpipe",
	.event = "event=0",
	.desc = "Total read accesses. Unit: hisi_sccl,l3c ",
	.topic = "uncore l3c",
	.long_desc = "Total read accesses",
	.pmu = "hisi_sccl,l3c",
},
{
	.name = "uncore_hisi_l3c.wr_cpipe",
	.event = "event=0x1",
	.desc = "Total write accesses. Unit: hisi_sccl,l3c ",
	.topic = "uncore l3c",
	.long_desc = "Total write accesses",
	.pmu = "hisi_sccl,l3c",
},
{
	.name = 0,
	.event = 0,
	.desc = 0,
},
};

struct pmu_events_map pmu_events_map[] = {
{
	.cpuid = "0x00000000480fd010",
	.version = "v1",
	.type = "core",
	.table = pme_hisilicon_hip08_cpu
},
{
	.sysid = "HIP08",
	.version = "v1",
	.type = "sys",
	.table = pme_hisilicon_hip08_sys
},
{
	.cpuid = 0,
	.sysid = 0,
	.version = 0,
	.type = 0,
	.table = 0,
},
};

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/pmu-events/README                  | 47 +++++++++++++----
 .../pmu-events/arch/arm64/mapfile_sys.csv     | 13 +++++
 tools/perf/pmu-events/jevents.c               | 52 ++++++++++++++++---
 tools/perf/pmu-events/pmu-events.h            |  1 +
 4 files changed, 94 insertions(+), 19 deletions(-)
 create mode 100644 tools/perf/pmu-events/arch/arm64/mapfile_sys.csv

diff --git a/tools/perf/pmu-events/README b/tools/perf/pmu-events/README
index de7efa2cebd1..e940cef73d2b 100644
--- a/tools/perf/pmu-events/README
+++ b/tools/perf/pmu-events/README
@@ -1,6 +1,7 @@
 
 The contents of this directory allow users to specify PMU events in their
-CPUs by their symbolic names rather than raw event codes (see example below).
+CPUs or other PMUs in the system by their symbolic names rather than raw
+event codes (see example below).
 
 The main program in this directory, is the 'jevents', which is built and
 executed _BEFORE_ the perf binary itself is built.
@@ -12,7 +13,12 @@ tree tools/perf/pmu-events/arch/foo.
 	  JSON files, each of which describes a set of PMU events.
 
 	- The CSV file that maps a specific CPU to its set of PMU events is to
-	  be named 'mapfile.csv' (see below for mapfile format).
+	  be named 'mapfile.csv'.
+
+	  An additional optional CSV file maps specific PMU to its set of PMU
+	  events is to be named 'mapfile_sys.csv'.
+
+	  See below for mapfile formats.
 
 	- Directories are traversed, but all other files are ignored.
 
@@ -22,10 +28,10 @@ tree tools/perf/pmu-events/arch/foo.
 	  Architecture standard JSONs must be located in the architecture root
 	  folder. Matching is based on the "EventName" field.
 
-The PMU events supported by a CPU model are expected to grouped into topics
-such as Pipelining, Cache, Memory, Floating-point etc. All events for a topic
-should be placed in a separate JSON file - where the file name identifies
-the topic. Eg: "Floating-point.json".
+The PMU events supported by a CPU model or PMU are expected to grouped into
+topics such as Pipelining, Cache, Memory, Floating-point etc. All events for
+a topic should be placed in a separate JSON file - where the file name
+identifies the topic. Eg: "Floating-point.json".
 
 All the topic JSON files for a CPU model/family should be in a separate
 sub directory. Thus for the Silvermont X86 CPU:
@@ -38,7 +44,11 @@ The JSONs folder for a CPU model/family may be placed in the root arch
 folder, or may be placed in a vendor sub-folder under the arch folder
 for instances where the arch and vendor are not the same.
 
-Using the JSON files and the mapfile, 'jevents' generates the C source file,
+The JSONS folder for a system PMU should be placed in a subfolder for
+the platform, separate to the CPU events folder. The reason is that different
+matching mechanism could be used for detecting CPU and system PMUs.
+
+Using the JSON files and the mapfile(s), 'jevents' generates the C source file,
 'pmu-events.c', which encodes the two sets of tables:
 
 	- Set of 'PMU events tables' for all known CPUs in the architecture,
@@ -83,11 +93,11 @@ NOTES:
 	2. The 'pmu-events.h' has an extern declaration for the mapping table
 	   and the generated 'pmu-events.c' defines this table.
 
-	3. _All_ known CPU tables for architecture are included in the perf
-	   binary.
+	3. _All_ known CPU and system tables for architecture are included in
+	   the perf binary.
 
-At run time, perf determines the actual CPU it is running on, finds the
-matching events table and builds aliases for those events. This allows
+At run time, perf determines the actual CPU or system it is running on, finds
+the matching events table and builds aliases for those events. This allows
 users to specify events by their name:
 
 	$ perf stat -e pm_1plus_ppc_cmpl sleep 1
@@ -150,3 +160,18 @@ where:
 
 	i.e the three CPU models use the JSON files (i.e PMU events) listed
 	in the directory 'tools/perf/pmu-events/arch/x86/silvermont'.
+
+The mapfile_sys.csv format is slightly different, in that it contains a SYSID
+instead of the CPUID:
+
+	Header line
+	SYSID,Version,Dir/path/name,Type
+
+where, same as mapfile.csv, except:
+
+	SYSID:
+		SYSID is a platform specific char string, that can be used
+		to identify thr system.
+
+	Type:
+		Should always be sys
diff --git a/tools/perf/pmu-events/arch/arm64/mapfile_sys.csv b/tools/perf/pmu-events/arch/arm64/mapfile_sys.csv
new file mode 100644
index 000000000000..701d8ff67354
--- /dev/null
+++ b/tools/perf/pmu-events/arch/arm64/mapfile_sys.csv
@@ -0,0 +1,13 @@
+# Format:
+#	SYS ID,Version,JSON/file/pathname,Type
+#
+# where
+#	SYS ID	Unique identifier for the system
+#		Could be DT machine ID, ACPI OEM ID, etc
+#	Version could be used to track version of of JSON file
+#		but currently unused.
+#	JSON/file/pathname is the path to JSON file, relative
+#		to tools/perf/pmu-events/arch/arm64/.
+#	Type is sys
+#
+#Family-model,Version,Filename,EventType
diff --git a/tools/perf/pmu-events/jevents.c b/tools/perf/pmu-events/jevents.c
index 8af05b94a37d..da6430c0d184 100644
--- a/tools/perf/pmu-events/jevents.c
+++ b/tools/perf/pmu-events/jevents.c
@@ -755,6 +755,7 @@ static void print_mapping_table_suffix(FILE *outfp)
 	 */
 	fprintf(outfp, "{\n");
 	fprintf(outfp, "\t.cpuid = 0,\n");
+	fprintf(outfp, "\t.sysid = 0,\n");
 	fprintf(outfp, "\t.version = 0,\n");
 	fprintf(outfp, "\t.type = 0,\n");
 	fprintf(outfp, "\t.table = 0,\n");
@@ -771,7 +772,7 @@ static int process_mapfile(FILE *outfp, char *fpath)
 	char *save = NULL;
 	char *line, *p;
 	int line_num;
-	char *tblname;
+	char *tblname, *table_id;
 	int ret = 0;
 
 	pr_info("%s: Processing mapfile %s\n", prog, fpath);
@@ -788,8 +789,6 @@ static int process_mapfile(FILE *outfp, char *fpath)
 		return -1;
 	}
 
-	print_mapping_table_prefix(outfp);
-
 	/* Skip first line (header) */
 	p = fgets(line, n, mapfp);
 	if (!p)
@@ -797,7 +796,7 @@ static int process_mapfile(FILE *outfp, char *fpath)
 
 	line_num = 1;
 	while (1) {
-		char *cpuid, *version, *type, *fname;
+		char *id, *version, *type, *fname;
 
 		line_num++;
 		p = fgets(line, n, mapfp);
@@ -816,14 +815,21 @@ static int process_mapfile(FILE *outfp, char *fpath)
 		}
 		line[strlen(line)-1] = '\0';
 
-		cpuid = fixregex(strtok_r(p, ",", &save));
+		id = fixregex(strtok_r(p, ",", &save));
 		version = strtok_r(NULL, ",", &save);
 		fname = strtok_r(NULL, ",", &save);
 		type = strtok_r(NULL, ",", &save);
 
+		/* We treat uncore as "cpu" events */
+		if (!strcmp(type, "core") || !strcmp(type, "uncore"))
+			table_id = "cpuid";
+		else if (!strcmp(type, "sys"))
+			table_id = "sysid";
+		else
+			table_id = "unknown";
 		tblname = file_name_to_table_name(fname);
 		fprintf(outfp, "{\n");
-		fprintf(outfp, "\t.cpuid = \"%s\",\n", cpuid);
+		fprintf(outfp, "\t.%s = \"%s\",\n", table_id, id);
 		fprintf(outfp, "\t.version = \"%s\",\n", version);
 		fprintf(outfp, "\t.type = \"%s\",\n", type);
 
@@ -841,12 +847,36 @@ static int process_mapfile(FILE *outfp, char *fpath)
 	}
 
 out:
-	print_mapping_table_suffix(outfp);
 	fclose(mapfp);
 	free(line);
 	return ret;
 }
 
+static int process_mapfiles(FILE *outfp, char *fpath, char *fpath_sys)
+{
+	char *save = NULL;
+	int line_num;
+	char *tblname;
+	char *table_id;
+	int ret;
+
+	pr_info("%s: Processing mapfiles %s fpath_sys=%s\n", prog, fpath, fpath_sys);
+
+	print_mapping_table_prefix(outfp);
+
+	ret = process_mapfile(outfp, fpath);
+	if (ret)
+		goto out;
+
+	if (fpath_sys)
+		ret = process_mapfile(outfp, fpath_sys);
+
+out:
+	print_mapping_table_suffix(outfp);
+
+	return ret;
+}
+
 /*
  * If we fail to locate/process JSON and map files, create a NULL mapping
  * table. This would at least allow perf to build even if we can't find/use
@@ -887,6 +917,7 @@ static int get_maxfds(void)
  */
 static FILE *eventsfp;
 static char *mapfile;
+static char *mapfile_sys;
 
 static int is_leaf_dir(const char *fpath)
 {
@@ -1024,6 +1055,11 @@ static int process_one_file(const char *fpath, const struct stat *sb,
 			return 0;
 		}
 
+		if (!strcmp(bname, "mapfile_sys.csv")) {
+			mapfile_sys = strdup(fpath);
+			return 0;
+		}
+
 		pr_info("%s: Ignoring file %s\n", prog, fpath);
 		return 0;
 	}
@@ -1174,7 +1210,7 @@ int main(int argc, char *argv[])
 		goto empty_map;
 	}
 
-	if (process_mapfile(eventsfp, mapfile)) {
+	if (process_mapfiles(eventsfp, mapfile, mapfile_sys)) {
 		pr_info("%s: Error processing mapfile %s\n", prog, mapfile);
 		/* Make build fail */
 		fclose(eventsfp);
diff --git a/tools/perf/pmu-events/pmu-events.h b/tools/perf/pmu-events/pmu-events.h
index caeb577d36c9..9964bdd2f6e1 100644
--- a/tools/perf/pmu-events/pmu-events.h
+++ b/tools/perf/pmu-events/pmu-events.h
@@ -31,6 +31,7 @@ struct pmu_event {
  */
 struct pmu_events_map {
 	const char *cpuid;
+	const char *sysid;
 	const char *version;
 	const char *type;		/* core, uncore etc */
 	struct pmu_event *table;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
