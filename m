Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CACEE9DB4C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 03:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bM0ily8b1kM8Rgi2YT5bbiEIuv/+3QTFlz9k8HrtMc=; b=aTJvElWJZzlpbR
	aKql2c/13VOVE1l/xouq0v4uv+6t/NO5LL/BPQdCuTZcZazCyK/E02C9uYIwpg8SRsgwqXohhyTbU
	6CSGmQgd5G9+aWH7Z9c8q9ii1Cl6A2531tq4shsUC3fDAKPlmScJ+Zls9S5ULxwGwt/0ht9+8RMbs
	Byh0t49Q1xLX8ZRzVOp9zbrJ8SZFVDA12XmKqiC77sGCUnjDkuix33LlPZaFaYerEG0kvh6Ke4xmp
	kNI/JTyTg9+zWVGYbotUygbqs0j6w8oh2CONEP+r80NeatSuy186AU2RyWYNNpvGA423EYG4H9JZ1
	lW9/TfHuLayURObxlydg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2QU9-0003nL-Iw; Tue, 27 Aug 2019 01:41:25 +0000
Received: from mx0b-00190b01.pphosted.com ([2620:100:9005:57f::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2QT5-00032f-2n
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 01:40:20 +0000
Received: from pps.filterd (m0050102.ppops.net [127.0.0.1])
 by m0050102.ppops.net-00190b01. (8.16.0.42/8.16.0.42) with SMTP id
 x7R1c3lC007643; Tue, 27 Aug 2019 02:39:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=jan2016.eng;
 bh=i/fS3kaYLIQIoeCLN0aSMpme087olJ0xn55iGTg1BP8=;
 b=LW6iKhCZiAvAnOiHuw4pHX6jL6VhNewE78rlc3fFfJ1m+M5QK0EewhhRWARmG+BetR22
 3ZPz4GqktmSKFceOOhbAy34Cnp4/e1ET8uMq2sWFpI95riJsvnhfS0WOQ1HCOjW7IpFx
 /+4RyH7r+PVZ0VPoKRrqUiGe/EZPAeWBf+/5kb05ngCGslJlOFrQDqFJfBXTP0vDLtUc
 sB+JANrth4txHMgtAZGJTB51KgqtRYOIIpCooKmTe5KiW7GZA3a/Qt6UPR3ISQ6JN5XC
 YO+zEESr6YQdHMTFV69RnTRK1+iwl6zxGNre6+Ah2u/MDD5bM82E+rp4UNAt1Z44JyZg 6A== 
Received: from prod-mail-ppoint4 (prod-mail-ppoint4.akamai.com [96.6.114.87]
 (may be forged))
 by m0050102.ppops.net-00190b01. with ESMTP id 2ujwcyjmgy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 27 Aug 2019 02:39:52 +0100
Received: from pps.filterd (prod-mail-ppoint4.akamai.com [127.0.0.1])
 by prod-mail-ppoint4.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x7R1VoC5014957; Mon, 26 Aug 2019 21:39:51 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.53])
 by prod-mail-ppoint4.akamai.com with ESMTP id 2uk0k0bb1t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 26 Aug 2019 21:39:51 -0400
Received: from usma1ex-cas5.msg.corp.akamai.com (172.27.123.53) by
 usma1ex-dag1mb1.msg.corp.akamai.com (172.27.123.101) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Mon, 26 Aug 2019 21:39:50 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 usma1ex-cas5.msg.corp.akamai.com (172.27.123.53) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Mon, 26 Aug 2019 18:39:44 -0700
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id 4CBF064C11; Mon, 26 Aug 2019 21:39:42 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: Jiri Olsa <jolsa@kernel.org>, Arnaldo Carvalho de Melo <acme@redhat.com>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 5/5] perf: warn that perf_event_paranoid can restrict kernel
 symbols
Date: Mon, 26 Aug 2019 21:39:16 -0400
Message-ID: <1566869956-7154-6-git-send-email-ilubashe@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566869956-7154-1-git-send-email-ilubashe@akamai.com>
References: <1566869956-7154-1-git-send-email-ilubashe@akamai.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908270014
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-26_08:2019-08-26,2019-08-26 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0 mlxlogscore=999
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1908270015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_184019_438810_4AFFD1F7 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9005:57f:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Warn that /proc/sys/kernel/perf_event_paranoid can also restrict kernel
symbols.

Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
---
 tools/perf/builtin-record.c | 2 +-
 tools/perf/builtin-top.c    | 2 +-
 tools/perf/builtin-trace.c  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/perf/builtin-record.c b/tools/perf/builtin-record.c
index f71631f2bcb5..18505d92ff69 100644
--- a/tools/perf/builtin-record.c
+++ b/tools/perf/builtin-record.c
@@ -2372,7 +2372,7 @@ int cmd_record(int argc, const char **argv)
 	if (symbol_conf.kptr_restrict && !perf_evlist__exclude_kernel(rec->evlist))
 		pr_warning(
 "WARNING: Kernel address maps (/proc/{kallsyms,modules}) are restricted,\n"
-"check /proc/sys/kernel/kptr_restrict.\n\n"
+"check /proc/sys/kernel/kptr_restrict and /proc/sys/kernel/perf_event_paranoid.\n\n"
 "Samples in kernel functions may not be resolved if a suitable vmlinux\n"
 "file is not found in the buildid cache or in the vmlinux path.\n\n"
 "Samples in kernel modules won't be resolved at all.\n\n"
diff --git a/tools/perf/builtin-top.c b/tools/perf/builtin-top.c
index 5970723cd55a..29e910fb2d9a 100644
--- a/tools/perf/builtin-top.c
+++ b/tools/perf/builtin-top.c
@@ -770,7 +770,7 @@ static void perf_event__process_sample(struct perf_tool *tool,
 		if (!perf_evlist__exclude_kernel(top->session->evlist)) {
 			ui__warning(
 "Kernel address maps (/proc/{kallsyms,modules}) are restricted.\n\n"
-"Check /proc/sys/kernel/kptr_restrict.\n\n"
+"Check /proc/sys/kernel/kptr_restrict and /proc/sys/kernel/perf_event_paranoid.\n\n"
 "Kernel%s samples will not be resolved.\n",
 			  al.map && map__has_symbols(al.map) ?
 			  " modules" : "");
diff --git a/tools/perf/builtin-trace.c b/tools/perf/builtin-trace.c
index bc44ed29e05a..9443b8e05810 100644
--- a/tools/perf/builtin-trace.c
+++ b/tools/perf/builtin-trace.c
@@ -1381,7 +1381,7 @@ static char *trace__machine__resolve_kernel_addr(void *vmachine, unsigned long l
 
 	if (symbol_conf.kptr_restrict) {
 		pr_warning("Kernel address maps (/proc/{kallsyms,modules}) are restricted.\n\n"
-			   "Check /proc/sys/kernel/kptr_restrict.\n\n"
+			   "Check /proc/sys/kernel/kptr_restrict and /proc/sys/kernel/perf_event_paranoid.\n\n"
 			   "Kernel samples will not be resolved.\n");
 		machine->kptr_restrict_warned = true;
 		return NULL;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
