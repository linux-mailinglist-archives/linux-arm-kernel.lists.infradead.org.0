Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AAF84F10
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BhTMQ4LEbVdfRvfpY2bdSboCNixz4ZCmDcrvFOAcdGM=; b=ipZuQkNUllMFll
	x+imhwqdVetRtEdGOiImlo7HnkFMbKtKfXf2+zl8gMwA5iy/gecqR5XdC4AQ5dD0G7iuebM05yv0S
	EAwLRd71mnjLwWBHR6CDLLninOX5fsjyBucbG/jXnGyJprCOrbHZje9G8CptXisLTlYqndmAaf2x4
	cDnP5UbrKIRJB9IXxuDE5CRkfjgyNr1cAsYe1UM3dqT8HOe+wtqn0FIKyoAQOqus2awUCze39c6f9
	DqyrI5tUJnIF/v39AtQ5wYXpZ1do1IG2Mhyx+eVIgJHrh0jefmsT1joqo4QRMMoso3HaFpO+4OfZH
	w5URcpflfcp1kHg8vHIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNDK-0004em-KU; Wed, 07 Aug 2019 14:46:54 +0000
Received: from mx0a-00190b01.pphosted.com ([2620:100:9001:583::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNCN-0003rl-Su
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:45:59 +0000
Received: from pps.filterd (m0122333.ppops.net [127.0.0.1])
 by mx0a-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x77Eg1RP032646; Wed, 7 Aug 2019 15:44:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=jan2016.eng;
 bh=BiKVim5LTdt00h4YVq+oKw2tFWSi2ArgyBrv4voUJTU=;
 b=dpnwroZjA2HDa8387ZjNWlcQFABkbmapEhjAlOy2nQWnVVYNcozD29DrACUM75ACfzDp
 ZrFRKO/tt78Zz5LFY3Ey7aXbFz1ntUULYGcSpgY963AGYOzNGWLLSwiM4XkmUxxMZg9p
 31cqHQ/SFQqWyVRQ32kvkkZPxPtFQfezVNGJZ/+GB5taFiy5IuepGjf2LaakDq8F/swV
 JGhMRzV6+jJdHeiYfyD0o2cDCfhGYXTn3FgcBApVJJo2Ykve0pm6Ro/Ac53zvZmMTM0b
 hCDE04J+NhWchO2589dX4ta+fChJDYJZ1SkLRSMYYiB8oQm01+vnCj3MzRgR82AglXNx qA== 
Received: from prod-mail-ppoint1 (prod-mail-ppoint1.akamai.com [184.51.33.18]
 (may be forged))
 by mx0a-00190b01.pphosted.com with ESMTP id 2u51h7u0rh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 07 Aug 2019 15:44:46 +0100
Received: from pps.filterd (prod-mail-ppoint1.akamai.com [127.0.0.1])
 by prod-mail-ppoint1.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x77EWigI024517; Wed, 7 Aug 2019 10:44:44 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.30])
 by prod-mail-ppoint1.akamai.com with ESMTP id 2u55kwbsgd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 07 Aug 2019 10:44:43 -0400
Received: from USMA1EX-CAS2.msg.corp.akamai.com (172.27.123.31) by
 usma1ex-dag1mb2.msg.corp.akamai.com (172.27.123.102) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Wed, 7 Aug 2019 10:44:41 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 USMA1EX-CAS2.msg.corp.akamai.com (172.27.123.31) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Wed, 7 Aug 2019 10:44:41 -0400
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id 8756C61D5F; Wed,  7 Aug 2019 10:44:39 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: <linux-kernel@vger.kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, Alexey Budankov
 <alexey.budankov@linux.intel.com>
Subject: [PATCH v3 0/4] perf: Use capabilities instead of uid and euid
Date: Wed, 7 Aug 2019 10:44:13 -0400
Message-ID: <cover.1565188228.git.ilubashe@akamai.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-07_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908070155
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-07_03:2019-08-07,2019-08-07 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 lowpriorityscore=0
 impostorscore=0 mlxlogscore=999 spamscore=0 clxscore=1015 adultscore=0
 phishscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1906280000
 definitions=main-1908070157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_074556_169365_47693047 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9001:583:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Series v1: https://lkml.kernel.org/lkml/1562112605-6235-1-git-send-email-ilubashe@akamai.com


Kernel is using capabilities instead of uid and euid to restrict access to
kernel pointers and tracing facilities.  This patch series updates the perf to
better match the security model used by the kernel.

This series enables instructions in Documentation/admin-guide/perf-security.rst
to actually work, even when kernel.perf_event_paranoid=2 and
kernel.kptr_restrict=1.

The series consists of four patches:

  01: perf: Add capability-related utilities
    Add utility functions to check capabilities and perf_event_paranoid checks,
    if libcap-dev[el] is available. (Otherwise, assume no capabilities.)

  02: perf: Use CAP_SYS_ADMIN with perf_event_paranoid checks
    Replace the use of euid==0 with a check for CAP_SYS_ADMIN whenever
    perf_event_paranoid level is verified.

  03: perf: Use CAP_SYSLOG with kptr_restrict checks
    Replace the use of uid and euid with a check for CAP_SYSLOG when
    kptr_restrict is verified (similar to kernel/kallsyms.c and lib/vsprintf.c).
    Consult perf_event_paranoid when kptr_restrict==0 (see kernel/kallsyms.c).

  04: perf: Use CAP_SYS_ADMIN instead of euid==0 with ftrace
    Replace the use of euid==0 with a check for CAP_SYS_ADMIN before mounting
    debugfs for ftrace.

I tested this by following Documentation/admin-guide/perf-security.rst
guidelines and setting sysctls:

   kernel.perf_event_paranoid=2
   kernel.kptr_restrict=1

As an unprivileged user who is in perf_users group (setup via instructions
above), I executed:
   perf record -a -- sleep 1

Without the patch, perf record did not capture any kernel functions.
With the patch, perf included all kernel functions.


Changelog:
v3:  * Fix arm64 compilation (thanks, Alexey and Jiri)
v2:  * Added a build feature check for libcap-dev[el] as suggested by Arnaldo


Igor Lubashev (4):
  perf: Add capability-related utilities
  perf: Use CAP_SYS_ADMIN with perf_event_paranoid checks
  perf: Use CAP_SYSLOG with kptr_restrict checks
  perf: Use CAP_SYS_ADMIN instead of euid==0 with ftrace

 tools/build/Makefile.feature         |  2 ++
 tools/build/feature/Makefile         |  4 ++++
 tools/build/feature/test-libcap.c    | 20 ++++++++++++++++++++
 tools/perf/Makefile.config           | 11 +++++++++++
 tools/perf/Makefile.perf             |  2 ++
 tools/perf/arch/arm/util/cs-etm.c    |  3 ++-
 tools/perf/arch/arm64/util/arm-spe.c |  3 ++-
 tools/perf/arch/x86/util/intel-bts.c |  3 ++-
 tools/perf/arch/x86/util/intel-pt.c  |  2 +-
 tools/perf/builtin-ftrace.c          |  4 +++-
 tools/perf/util/Build                |  2 ++
 tools/perf/util/cap.c                | 29 +++++++++++++++++++++++++++++
 tools/perf/util/cap.h                | 24 ++++++++++++++++++++++++
 tools/perf/util/event.h              |  1 +
 tools/perf/util/evsel.c              |  2 +-
 tools/perf/util/python-ext-sources   |  1 +
 tools/perf/util/symbol.c             | 15 +++++++++++----
 tools/perf/util/util.c               |  9 +++++++++
 18 files changed, 127 insertions(+), 10 deletions(-)
 create mode 100644 tools/build/feature/test-libcap.c
 create mode 100644 tools/perf/util/cap.c
 create mode 100644 tools/perf/util/cap.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
