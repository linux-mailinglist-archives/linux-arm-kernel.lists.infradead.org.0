Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6EB89992
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0m6iBa3EghMK1WAXv5b5YQ/D0TBz5y2IjYJ4fS4q2XA=; b=nZ/Xgq891qIdZ4
	wDwVJ84V9TYn2NQ8rXkCyKTkPN5lpleJvafExlJm2xgWpDH6kJRQ0dU8E4f5i4f8CdazMc1yCXLhO
	1ssX5AhKnSHH1Xod3ueK1uq49qkY3hdSsv8HM4OIhBpEATjvevioyXBwLQTD8J705TeOn0nas80R4
	XKO0XkiWlfZTVIQ0XQ5cwjXzwAuPK4KSCLWYFxPMIqwQ4niWxr1YeAJiMWtqioh0lFIoq4CzqXUe3
	bJGZ/2lieIYxOkZgxOZ6EjlYbn9v22R7fH3cbHg88YOdUdmDffeydf78DHm3ptHXkUQVZy24IU0wV
	MGF+aEfteEIZOEremlGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6Oz-0006tF-95; Mon, 12 Aug 2019 09:14:05 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6Om-0006sY-DE
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:13:54 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4FB5030BCB86;
 Mon, 12 Aug 2019 09:13:51 +0000 (UTC)
Received: from krava (unknown [10.43.17.33])
 by smtp.corp.redhat.com (Postfix) with SMTP id D192F19C65;
 Mon, 12 Aug 2019 09:13:48 +0000 (UTC)
Date: Mon, 12 Aug 2019 11:13:48 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Igor Lubashev <ilubashe@akamai.com>
Subject: Re: [PATCH v3 0/4] perf: Use capabilities instead of uid and euid
Message-ID: <20190812091348.GA11946@krava>
References: <cover.1565188228.git.ilubashe@akamai.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1565188228.git.ilubashe@akamai.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 12 Aug 2019 09:13:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_021352_479981_3D0C2F48 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 10:44:13AM -0400, Igor Lubashev wrote:
> Series v1: https://lkml.kernel.org/lkml/1562112605-6235-1-git-send-email-ilubashe@akamai.com
> 
> 
> Kernel is using capabilities instead of uid and euid to restrict access to
> kernel pointers and tracing facilities.  This patch series updates the perf to
> better match the security model used by the kernel.
> 
> This series enables instructions in Documentation/admin-guide/perf-security.rst
> to actually work, even when kernel.perf_event_paranoid=2 and
> kernel.kptr_restrict=1.
> 
> The series consists of four patches:
> 
>   01: perf: Add capability-related utilities
>     Add utility functions to check capabilities and perf_event_paranoid checks,
>     if libcap-dev[el] is available. (Otherwise, assume no capabilities.)
> 
>   02: perf: Use CAP_SYS_ADMIN with perf_event_paranoid checks
>     Replace the use of euid==0 with a check for CAP_SYS_ADMIN whenever
>     perf_event_paranoid level is verified.
> 
>   03: perf: Use CAP_SYSLOG with kptr_restrict checks
>     Replace the use of uid and euid with a check for CAP_SYSLOG when
>     kptr_restrict is verified (similar to kernel/kallsyms.c and lib/vsprintf.c).
>     Consult perf_event_paranoid when kptr_restrict==0 (see kernel/kallsyms.c).
> 
>   04: perf: Use CAP_SYS_ADMIN instead of euid==0 with ftrace
>     Replace the use of euid==0 with a check for CAP_SYS_ADMIN before mounting
>     debugfs for ftrace.
> 
> I tested this by following Documentation/admin-guide/perf-security.rst
> guidelines and setting sysctls:
> 
>    kernel.perf_event_paranoid=2
>    kernel.kptr_restrict=1
> 
> As an unprivileged user who is in perf_users group (setup via instructions
> above), I executed:
>    perf record -a -- sleep 1
> 
> Without the patch, perf record did not capture any kernel functions.
> With the patch, perf included all kernel functions.
> 
> 
> Changelog:
> v3:  * Fix arm64 compilation (thanks, Alexey and Jiri)

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka


> v2:  * Added a build feature check for libcap-dev[el] as suggested by Arnaldo
> 
> 
> Igor Lubashev (4):
>   perf: Add capability-related utilities
>   perf: Use CAP_SYS_ADMIN with perf_event_paranoid checks
>   perf: Use CAP_SYSLOG with kptr_restrict checks
>   perf: Use CAP_SYS_ADMIN instead of euid==0 with ftrace
> 
>  tools/build/Makefile.feature         |  2 ++
>  tools/build/feature/Makefile         |  4 ++++
>  tools/build/feature/test-libcap.c    | 20 ++++++++++++++++++++
>  tools/perf/Makefile.config           | 11 +++++++++++
>  tools/perf/Makefile.perf             |  2 ++
>  tools/perf/arch/arm/util/cs-etm.c    |  3 ++-
>  tools/perf/arch/arm64/util/arm-spe.c |  3 ++-
>  tools/perf/arch/x86/util/intel-bts.c |  3 ++-
>  tools/perf/arch/x86/util/intel-pt.c  |  2 +-
>  tools/perf/builtin-ftrace.c          |  4 +++-
>  tools/perf/util/Build                |  2 ++
>  tools/perf/util/cap.c                | 29 +++++++++++++++++++++++++++++
>  tools/perf/util/cap.h                | 24 ++++++++++++++++++++++++
>  tools/perf/util/event.h              |  1 +
>  tools/perf/util/evsel.c              |  2 +-
>  tools/perf/util/python-ext-sources   |  1 +
>  tools/perf/util/symbol.c             | 15 +++++++++++----
>  tools/perf/util/util.c               |  9 +++++++++
>  18 files changed, 127 insertions(+), 10 deletions(-)
>  create mode 100644 tools/build/feature/test-libcap.c
>  create mode 100644 tools/perf/util/cap.c
>  create mode 100644 tools/perf/util/cap.h
> 
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
