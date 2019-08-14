Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D7B8DCB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 20:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbg16rewU275mt06CNu2UxoLpRa+m5Wrv2+eJqCk+3Q=; b=h9n5+l9EXzylhi
	wYbHAQxbAx24H6fXWeZ1zVBCyLNoGlnYOmo4E5FvBzjmZorkMvj+195TORyYjGH2DHkbWX28VFA1D
	vMmnzMPgEtPPoRZ8QEgSxR9X7ttWaqdbkFvZsmKGWAqN0vwnEnfBrJtuC+6oGrxnpbr2ip1/cnREw
	I6y9MfV8wlXKMHWiM6f6xXaeKBZ9O4Po1VIS+vFGG5sj8tRElciroxj362480/Cf8+Eg4Mb9ypIeW
	EhBYpNfjOgLulKeWa49Ww/Oi2mrCVNZcRz3WhLzV/I3HAyBiMN8wjaMv/iwe3HlyYc9n88RZezmUi
	DEcCTyHNldtBF8ofChdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxxdv-00084d-9H; Wed, 14 Aug 2019 18:05:03 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxxdf-00083v-C5
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 18:04:48 +0000
Received: by mail-ot1-x342.google.com with SMTP id b1so40304otp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 11:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fre2yC1vMIg/Ij78+LtkTPs0yDzqDgWHdQaFD72Ay5k=;
 b=c8WaEs0gX1vkjN0sz8yITmdD0epqeCGI9JTG8KM5bgB0UgZPBGAMS/52zXuwINa7PF
 Zq55ouRXA2at27mYggoXxEu5betH2SU1k8k86RQ5YEvyOi+ySgd8d0YF40JIloaUl7pg
 r0waHNmZr+006um7SjxpIaCgr/kFWl/U1c/DN+zFuN5y0XolPOgD+lI8Z6u5zf8PDI2g
 c4m3QFEvVOOgC5lexEG/lhhdZMNTcyi+qee4NOhsuzfhma3iiAO3yfiTUCJVsvOQlTtk
 ZxSMFtmK7Wza50DHp7orALP+H66VUKsJ9/ekXlx0Y7rhuTg1T3T8PQpKIsel6/ScaPgF
 0mHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fre2yC1vMIg/Ij78+LtkTPs0yDzqDgWHdQaFD72Ay5k=;
 b=FPuFkBPRx+fzzODvJXp8mSkz6AE1Q7THwK+q59EuKlH3qdzH2G7rvEBNcK27MvmM2R
 ck9nfDGHvqkmVHkD1evgaENdJ9Ealt7hpTh3+nN5I+Q3dHG8LAqgigrxzko52/b7Pk2U
 Z0fN7R1NUvlgo7o4dnnDMUQu/WysoRxrMjvteWAAqGGZrrT8H77qS4DXKO0IITMQyfDt
 nDTEQXaJUYe4X5r5g1biZaorPKt1pp0swTE9EWvTO67Hlb6Srbu/oO1cknaVuygqKpwW
 EJ4wYbez99f+2Ijn8TusKeZHdQ6mA5Pf/DDai2lovQxbXm2VNSaGNh9Lm/Cev9XEnUsF
 jG1Q==
X-Gm-Message-State: APjAAAV0VsGH3iS6Hdto8oLmjJGknYjNLxUGndR1IY5WlfezRI419TdE
 uwHPahVhYeXff1pvgH4FBpSkxukuCmYPOVvuTJHtBw==
X-Google-Smtp-Source: APXvYqyF6QAjCvLdwmaPHuxijiZA4sSwGBMmI5G/Jyqgb3QpoKsmhl6M6l6c5naR8I/d5DEBmigS5GeVcoPQVqAXfRc=
X-Received: by 2002:a6b:720e:: with SMTP id n14mr1241464ioc.139.1565805884486; 
 Wed, 14 Aug 2019 11:04:44 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565188228.git.ilubashe@akamai.com>
 <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
In-Reply-To: <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 14 Aug 2019 12:04:33 -0600
Message-ID: <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
To: Igor Lubashev <ilubashe@akamai.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_110447_421725_7838CD70 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019 at 08:44, Igor Lubashev <ilubashe@akamai.com> wrote:
>
> Kernel is using CAP_SYSLOG capability instead of uid==0 and euid==0 when
> checking kptr_restrict. Make perf do the same.
>
> Also, the kernel is a more restrictive than "no restrictions" in case of
> kptr_restrict==0, so add the same logic to perf.
>
> Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
> ---
>  tools/perf/util/symbol.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
>
> diff --git a/tools/perf/util/symbol.c b/tools/perf/util/symbol.c
> index 173f3378aaa0..046271103499 100644
> --- a/tools/perf/util/symbol.c
> +++ b/tools/perf/util/symbol.c
> @@ -4,6 +4,7 @@
>  #include <stdlib.h>
>  #include <stdio.h>
>  #include <string.h>
> +#include <linux/capability.h>
>  #include <linux/kernel.h>
>  #include <linux/mman.h>
>  #include <linux/time64.h>
> @@ -15,8 +16,10 @@
>  #include <inttypes.h>
>  #include "annotate.h"
>  #include "build-id.h"
> +#include "cap.h"
>  #include "util.h"
>  #include "debug.h"
> +#include "event.h"
>  #include "machine.h"
>  #include "map.h"
>  #include "symbol.h"
> @@ -890,7 +893,11 @@ bool symbol__restricted_filename(const char *filename,
>  {
>         bool restricted = false;
>
> -       if (symbol_conf.kptr_restrict) {
> +       /* Per kernel/kallsyms.c:
> +        * we also restrict when perf_event_paranoid > 1 w/o CAP_SYSLOG
> +        */
> +       if (symbol_conf.kptr_restrict ||
> +           (perf_event_paranoid() > 1 && !perf_cap__capable(CAP_SYSLOG))) {
>                 char *r = realpath(filename, NULL);
>

# echo 0 > /proc/sys/kernel/kptr_restrict
# ./tools/perf/perf record -e instructions:k uname
perf: Segmentation fault
Obtained 10 stack frames.
./tools/perf/perf(sighandler_dump_stack+0x44) [0x55af9e5da5d4]
/lib/x86_64-linux-gnu/libc.so.6(+0x3ef20) [0x7fd31efb6f20]
./tools/perf/perf(perf_event__synthesize_kernel_mmap+0xa7) [0x55af9e590337]
./tools/perf/perf(+0x1cf5be) [0x55af9e50c5be]
./tools/perf/perf(cmd_record+0x1022) [0x55af9e50dff2]
./tools/perf/perf(+0x23f98d) [0x55af9e57c98d]
./tools/perf/perf(+0x23fc9e) [0x55af9e57cc9e]
./tools/perf/perf(main+0x369) [0x55af9e4f6bc9]
/lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xe7) [0x7fd31ef99b97]
./tools/perf/perf(_start+0x2a) [0x55af9e4f704a]
Segmentation fault

I can reproduce this on both x86 and ARM64.

>                 if (r != NULL) {
> @@ -2190,9 +2197,9 @@ static bool symbol__read_kptr_restrict(void)
>                 char line[8];
>
>                 if (fgets(line, sizeof(line), fp) != NULL)
> -                       value = ((geteuid() != 0) || (getuid() != 0)) ?
> -                                       (atoi(line) != 0) :
> -                                       (atoi(line) == 2);
> +                       value = perf_cap__capable(CAP_SYSLOG) ?
> +                                       (atoi(line) >= 2) :
> +                                       (atoi(line) != 0);
>
>                 fclose(fp);
>         }
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
