Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C229DB4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 03:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SrYQQuBayJKwU2/UFQMNUNgMwipcQCfxeSoTu0DdgIo=; b=cY98VFmFmYYk+A
	aDbyyMQFQiaFBPQ3NQGHDbF3AQki3gUNHqUNORJEmAwcB45BPVdcxGv/c33iAEPcLYf5igTs43YMi
	ywZMMAHWyNqak0VlTpUqAwrRp3s4/zBKFlbWLnZexX9jinHsp7THstoXgUUAombW2vqFppTg498Fv
	3muZ6c/Fr3TGIrSe3pIJVAs0ogm8vmBULiZuTpZsqbTCNgtIoJCrbIF7AV28zeI4+4UpG+QKrbcT6
	m7F/DbWjvB+Zbynwn0M4fS0jt6sY/TvfE+TYqoQNMJpELGRd7fhrt4N6TrI5y+Ogk+tlv1NZIbQZL
	m6iQItSrZ1d6QLZ93cng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2QUV-00048A-EI; Tue, 27 Aug 2019 01:41:47 +0000
Received: from mx0a-00190b01.pphosted.com ([2620:100:9001:583::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2QTo-0003iv-Du
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 01:41:06 +0000
Received: from pps.filterd (m0122333.ppops.net [127.0.0.1])
 by mx0a-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7R1c695025938; Tue, 27 Aug 2019 02:39:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=jan2016.eng;
 bh=E4ylNvpjQ0jZ/RNWmzecbioNYnJuGcm8chdT4IjusrQ=;
 b=EzIhoSQPedH/tUbCZDG2YkYrsJzao4aALZYg/UwEcOSeeoxxKrpi/XHwLWPNDxFM5G60
 +agyo6rK9Y1pmwXMCMcVoqiFY91umt6nkchPJkgNkgAlz6y00VTMLM+Q5MhrRntukvFy
 rIN8RmRjFkTWiJR/kqCY8QZ3C0MhW7luUuz78FYdyWsJw/MsYma/Y+1kxtTmhBIbHciR
 FCk7sLooQVUl75HNWHgtHD2DaJY1nJcRBvFE7vs7GYuTWVwsVtuQVLD/pJd6KXv9SB1+
 pkVYfABnoBVKV0L1bFVbzHr9zMWX8t4wo19sNkZe2i3GDiiuJw9liXS0YPiEt0fSt/8C MQ== 
Received: from prod-mail-ppoint4 (prod-mail-ppoint4.akamai.com [96.6.114.87]
 (may be forged))
 by mx0a-00190b01.pphosted.com with ESMTP id 2ujwcd29r3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 27 Aug 2019 02:39:47 +0100
Received: from pps.filterd (prod-mail-ppoint4.akamai.com [127.0.0.1])
 by prod-mail-ppoint4.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x7R1Vn49014943; Mon, 26 Aug 2019 21:39:46 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.53])
 by prod-mail-ppoint4.akamai.com with ESMTP id 2uk0k0bb13-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 26 Aug 2019 21:39:45 -0400
Received: from usma1ex-cas5.msg.corp.akamai.com (172.27.123.53) by
 usma1ex-dag1mb4.msg.corp.akamai.com (172.27.123.104) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Mon, 26 Aug 2019 21:39:43 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 usma1ex-cas5.msg.corp.akamai.com (172.27.123.53) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Mon, 26 Aug 2019 18:39:44 -0700
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id 4797861E72; Mon, 26 Aug 2019 21:39:41 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: Jiri Olsa <jolsa@kernel.org>, Arnaldo Carvalho de Melo <acme@redhat.com>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 0/5] perf: Treat perf_event_paranoid and kptr_restrict like
 the kernel does it
Date: Mon, 26 Aug 2019 21:39:11 -0400
Message-ID: <1566869956-7154-1-git-send-email-ilubashe@akamai.com>
X-Mailer: git-send-email 2.7.4
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
 adultscore=0 clxscore=1015
 mlxlogscore=999 priorityscore=1501 bulkscore=0 suspectscore=0
 malwarescore=0 spamscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1906280000
 definitions=main-1908270015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_184104_511010_CD7BD952 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9001:583:0:0:0:1 listed in] [list.dnswl.org]
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

This is a follow up series to the ensure perf treats perf_event_paranoid and
kptr_restrict in a way that is similar to the kernel's.  That includes use of
capabilities instead of euid==0, when possible, as well as adjusting the logic
and fixing bugs.

Prior discussion: https://lkml.kernel.org/lkml/cover.1565188228.git.ilubashe@akamai.com

===  Testing notes ===

I have tested on x86 with perf binary installed according to
Documentation/admin-guide/perf-security.rst (cap_sys_admin, cap_sys_ptrace,
cap_syslog assigned to the perf executable).

I tested each permutation of:

  * 7 commits:
      1. HEAD of perf/core
      2. patch 01 on top of perf/core
      3. patches 01-02 on top of perf/core
      4. patches 01-03 on top of perf/core
      5. patches 01-04 on top of perf/core
      6. patches 01-05 on top of perf/core
      7. HEAD of perf/cap (with known bug fixed by patch 01 of this series)

  * 2 build environments: with and without libcap-dev

  * 3 kernel.kptr_restrict values: 0, 1, 2

  * 4 kernel.perf_event_paranoid values: -1, 0, 1, 2

  * 2 users: root and non-root

Total: 336 permutations

Each permutation consisted of:
  perf test
  perf record -e instructions -- sleep 1

All test runs were expected.  Also, as expected, the following permutation (just
that permutation) resulted in segmentation failure:
 commit:                     perf/cap
 build:                      no libcap-dev
 kernel.kptr_restrict:       0
 kernel.perf_event_paranoid: 2
 user:                       non-root

The perf/cap commit was included in the test to ensure that we can reproduce the
crash and hence test that the patch series fixes the crash, while retaining the
desired behavior of perf/cap.

=== Series Contents ===

  01: perf event: Check ref_reloc_sym before using it
    Fix the pre-existing cause of the crash above: use of ref_reloc_sym without
    a check for NULL

  02: perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks
    Replace the use of euid==0 with a check for CAP_SYS_ADMIN whenever
    perf_event_paranoid level is verified.
    * This patch has been reviewed previously and is unchanged.
    * I kept Acks and Sign-offs.

  03: perf util: kernel profiling is disallowed only when perf_event_paranoid>1
    Align perf logic regarding perf_event_paranoid to match kernel's.
    This has been reported by Arnaldo.

  04: perf symbols: Use CAP_SYSLOG with kptr_restrict checks
    Replace the use of uid and euid with a check for CAP_SYSLOG when
    kptr_restrict is verified (similar to kernel/kallsyms.c and lib/vsprintf.c).
    Consult perf_event_paranoid when kptr_restrict==0 (see kernel/kallsyms.c).
    * A previous version of this patch has been reviewed previously, but I
    * modified it in a non-trivial way, so I removed Acks.

  05: perf: warn perf_event_paranoid restrict kernel symbols
    Warn that /proc/sys/kernel/perf_event_paranoid can also restrict kernel
    symbols.

Igor Lubashev (5):
  perf event: Check ref_reloc_sym before using it
  perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks
  perf util: kernel profiling is disallowed only when perf_event_paranoid > 1
  perf symbols: Use CAP_SYSLOG with kptr_restrict checks
  perf: warn that perf_event_paranoid can restrict kernel symbols

 tools/perf/arch/arm/util/cs-etm.c    |  3 ++-
 tools/perf/arch/arm64/util/arm-spe.c |  3 ++-
 tools/perf/arch/x86/util/intel-bts.c |  3 ++-
 tools/perf/arch/x86/util/intel-pt.c  |  2 +-
 tools/perf/builtin-record.c          |  2 +-
 tools/perf/builtin-top.c             |  2 +-
 tools/perf/builtin-trace.c           |  2 +-
 tools/perf/util/event.c              |  7 ++++---
 tools/perf/util/evsel.c              |  2 +-
 tools/perf/util/symbol.c             | 15 ++++++++++++---
 10 files changed, 27 insertions(+), 14 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
