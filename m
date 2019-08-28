Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1AFA0A7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 21:31:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/GUNcSAXHVGljgmpPZ0SU23p2VQK9pimHUj1VPCp50=; b=gHvLOqrY3Lu7GG
	XrU5QuMvaSz9H3C3Edqqjsm/0cz2dSHB57G67S5BAWMLf/KR7U1lr0qYzL+g9F0D2mZfzzqh4OEkj
	XFrF/u+oIwl/pKA6tINADwXJC+crX93Ca68Zody8TYJgUB8BO8kG7c7M2hh5bNyLV2If9RuUp1iSs
	M2HUNzCFCBUS99r2b9j3/4xNinUwWmil8IKXR0Mk4JqlABKamrPfz9gKljT4uRTndNH1WJb3FXAL4
	ET++lVGww/H/vgoPgLTEDSLcHXJYC/zJfRUEwKHdO8hxcxLCSf2ni38pDACZMl07SSoZhNsONt+8x
	Z00HJB1d8B10F88Rwj6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i33fU-0000Qo-9O; Wed, 28 Aug 2019 19:31:44 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i33fJ-0000QQ-OM
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 19:31:35 +0000
Received: by mail-io1-xd42.google.com with SMTP id j5so1867891ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 12:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OPq6eHkfSEMrDtXlZHggTT9FiJjZ14kSQYk2XHwhvZA=;
 b=X5FVdJNR8hI2vWzGUiUbRUHPEpCZwqGopCVHHOg1zU6Xv0LSn9tFaafxTc+PSVyUgN
 Vm9lcNVXvcysI5VUvchwYyYLL8XsUoK3sEf1fG9iKq6VYYFUMHQGb1CWVntYjb2tX9VH
 TVsEy0gIeCkRNl2gTTDCG0cBfUPu2cWbxHHRT/qXCwcMneOdOeEM4VN3U6oGhdyHqSXl
 jiGvbNXzLq2WFQU67xGtBr+wsJQ7XK2hMwX35pccBS1AtYoKylZk89YeZCcGzV5E+tw7
 m3k1o9yvBLyYa0v64T0q03UjqhHP7jRjJrNwFl0OB5mnqZkarX61QVHM6FQxyytmUlCs
 lGjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OPq6eHkfSEMrDtXlZHggTT9FiJjZ14kSQYk2XHwhvZA=;
 b=uLwlAETHN9NtpC522t5l8XoGpcIoyKECmMFhaUV+rJZjm6wkZKCJLVvKTPx8ILkm8o
 YVWu2hTTEspaTjjX7BUA+cFYr5DLlzxNJ0X3Cpry/ddnpWViaURr/ZWzW5S0To+odKAV
 Ot4IcOiLC9I+FuAKgfMb5m0nmS/At6x+lLH6O/xAsXd8UOdAWaQeLTSpfJaDqGZMDHBx
 uzYe9WGRRixPXBLWCIZ4cj+sXkXqiYVQMSAX104PztHVKCHiY4Z8oDShSoJ2opf2WKWF
 sLGyqLe9GPBd616zEZ62yzgOgRP/mBzntUd86Prexxw1MHZMNThxf3sTuSahov4E214X
 ShFQ==
X-Gm-Message-State: APjAAAUe+cIS2PezGFj7wB9JMVtbk3PqEddUwuecM0q1W3ciNpMsJlHE
 34kAn/AceU01HNefYD8NUOClHAL1E0J080qPWhfS8A==
X-Google-Smtp-Source: APXvYqyZx1HtW0OkfrtQ29V/XqVXQQUk7BQodnXXtHFG8tFy4rV5ofzUcZqV/dV+JMGYWsVQaP5eYfgNSUyhT2J7lQc=
X-Received: by 2002:a6b:720e:: with SMTP id n14mr2596211ioc.139.1567020692511; 
 Wed, 28 Aug 2019 12:31:32 -0700 (PDT)
MIME-Version: 1.0
References: <1566869956-7154-1-git-send-email-ilubashe@akamai.com>
In-Reply-To: <1566869956-7154-1-git-send-email-ilubashe@akamai.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 28 Aug 2019 13:31:21 -0600
Message-ID: <CANLsYkwZm9ehopjDMXNw-3JOj8MPeT_shPPJBOeLNe7BUtibmA@mail.gmail.com>
Subject: Re: [PATCH 0/5] perf: Treat perf_event_paranoid and kptr_restrict
 like the kernel does it
To: Igor Lubashev <ilubashe@akamai.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_123133_796960_25A8600C 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019 at 19:40, Igor Lubashev <ilubashe@akamai.com> wrote:
>
> This is a follow up series to the ensure perf treats perf_event_paranoid and
> kptr_restrict in a way that is similar to the kernel's.  That includes use of
> capabilities instead of euid==0, when possible, as well as adjusting the logic
> and fixing bugs.
>
> Prior discussion: https://lkml.kernel.org/lkml/cover.1565188228.git.ilubashe@akamai.com
>
> ===  Testing notes ===
>
> I have tested on x86 with perf binary installed according to
> Documentation/admin-guide/perf-security.rst (cap_sys_admin, cap_sys_ptrace,
> cap_syslog assigned to the perf executable).
>
> I tested each permutation of:
>
>   * 7 commits:
>       1. HEAD of perf/core
>       2. patch 01 on top of perf/core
>       3. patches 01-02 on top of perf/core
>       4. patches 01-03 on top of perf/core
>       5. patches 01-04 on top of perf/core
>       6. patches 01-05 on top of perf/core
>       7. HEAD of perf/cap (with known bug fixed by patch 01 of this series)
>
>   * 2 build environments: with and without libcap-dev
>
>   * 3 kernel.kptr_restrict values: 0, 1, 2
>
>   * 4 kernel.perf_event_paranoid values: -1, 0, 1, 2
>
>   * 2 users: root and non-root
>
> Total: 336 permutations
>
> Each permutation consisted of:
>   perf test
>   perf record -e instructions -- sleep 1
>
> All test runs were expected.  Also, as expected, the following permutation (just
> that permutation) resulted in segmentation failure:
>  commit:                     perf/cap
>  build:                      no libcap-dev
>  kernel.kptr_restrict:       0
>  kernel.perf_event_paranoid: 2
>  user:                       non-root
>
> The perf/cap commit was included in the test to ensure that we can reproduce the
> crash and hence test that the patch series fixes the crash, while retaining the
> desired behavior of perf/cap.
>
> === Series Contents ===
>
>   01: perf event: Check ref_reloc_sym before using it
>     Fix the pre-existing cause of the crash above: use of ref_reloc_sym without
>     a check for NULL
>
>   02: perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks
>     Replace the use of euid==0 with a check for CAP_SYS_ADMIN whenever
>     perf_event_paranoid level is verified.
>     * This patch has been reviewed previously and is unchanged.
>     * I kept Acks and Sign-offs.
>
>   03: perf util: kernel profiling is disallowed only when perf_event_paranoid>1
>     Align perf logic regarding perf_event_paranoid to match kernel's.
>     This has been reported by Arnaldo.
>
>   04: perf symbols: Use CAP_SYSLOG with kptr_restrict checks
>     Replace the use of uid and euid with a check for CAP_SYSLOG when
>     kptr_restrict is verified (similar to kernel/kallsyms.c and lib/vsprintf.c).
>     Consult perf_event_paranoid when kptr_restrict==0 (see kernel/kallsyms.c).
>     * A previous version of this patch has been reviewed previously, but I
>     * modified it in a non-trivial way, so I removed Acks.
>
>   05: perf: warn perf_event_paranoid restrict kernel symbols
>     Warn that /proc/sys/kernel/perf_event_paranoid can also restrict kernel
>     symbols.
>
> Igor Lubashev (5):
>   perf event: Check ref_reloc_sym before using it
>   perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks
>   perf util: kernel profiling is disallowed only when perf_event_paranoid > 1
>   perf symbols: Use CAP_SYSLOG with kptr_restrict checks
>   perf: warn that perf_event_paranoid can restrict kernel symbols
>
>  tools/perf/arch/arm/util/cs-etm.c    |  3 ++-

For the coresight part:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  tools/perf/arch/arm64/util/arm-spe.c |  3 ++-
>  tools/perf/arch/x86/util/intel-bts.c |  3 ++-
>  tools/perf/arch/x86/util/intel-pt.c  |  2 +-
>  tools/perf/builtin-record.c          |  2 +-
>  tools/perf/builtin-top.c             |  2 +-
>  tools/perf/builtin-trace.c           |  2 +-
>  tools/perf/util/event.c              |  7 ++++---
>  tools/perf/util/evsel.c              |  2 +-
>  tools/perf/util/symbol.c             | 15 ++++++++++++---
>  10 files changed, 27 insertions(+), 14 deletions(-)

For the set:

Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
