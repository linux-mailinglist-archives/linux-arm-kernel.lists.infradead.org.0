Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391868DD68
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 20:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/dHdlHxTcq4IZcfcbzhgOLZn1j+Vp/1SJllV82QkOY=; b=IT++kt+YksOUzP
	ZaoG8Wd57EbmNXIUjwde69ngAfEWI2WeGG3BzG9aYPbvulsYMsX/DhKJab0/tBM4HYBXmxm7JVC4q
	TkxNzAvL2RsemA65o5CPUSCDQPZaWc/DDbtOtm9KKJ0yowVQzU3b/9HPE2BanKzk2WMyuafGqvUyj
	9/YPp6oVX9MpPGQTgbDw8KqykTBWWAP6nss+5qegGHBjyLuTAqKLjdIEz5/KA8V8nEqpu1VNdYwTd
	slvEsijzXz38fn8c6bgOhFbT5cR7KZpzgPjiZ4oyqVKyJkE+0kkinVGfqSXHkAs11UKmYPpGoOGcD
	q7aeWYsdLfOapmD7xo/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxyKT-00055T-N8; Wed, 14 Aug 2019 18:49:01 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxyK9-000552-FV
 for linux-arm-kernel@bombadil.infradead.org; Wed, 14 Aug 2019 18:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+sR6B4cibYHHnwu3bpvdAPRMk/urhyGa01jZXxbES1Q=; b=J/LIPhBmZkO0FG0ZeJtQLiM8t
 9KhtNppapT22fHrGzP23VbTaT+SSpnNMVI5u0V8jwZkL7oQ5sPo8vfoEErF9dGOoUGV6O+/GBnRVm
 2Yrn6kPU8XOERXp3N3OXkyVh02sxAoVzOZ0R+qpQQ/doQ5qReFHnrBIGGxCJj6IrQkN7PJCBKt90u
 ll5Vw15a5EENf8mSp4Dzul4Qq18bhBkQMY7V3BL4BrMJW+OZOD5uilUjDQ0Wfov5FMez985NtTv9L
 Pr9BaeqwRFHmxrqELQBzA8jLWPdq9UCyLBD5oZUh8ZzNXnM7+GKVnJNa7Zl4i77ZfokR0x94Z7G9b
 Q/B5Yof9w==;
Received: from [177.195.212.110] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxyK0-0001w6-1m; Wed, 14 Aug 2019 18:48:39 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 6029B40857; Wed, 14 Aug 2019 15:48:14 -0300 (-03)
Date: Wed, 14 Aug 2019 15:48:14 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
Message-ID: <20190814184814.GM9280@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
 <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.0 (2019-05-25)
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
 Igor Lubashev <ilubashe@akamai.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Aug 14, 2019 at 12:04:33PM -0600, Mathieu Poirier escreveu:
> On Wed, 7 Aug 2019 at 08:44, Igor Lubashev <ilubashe@akamai.com> wrote:
> >
> > Kernel is using CAP_SYSLOG capability instead of uid==0 and euid==0 when
> > checking kptr_restrict. Make perf do the same.
> >
> > Also, the kernel is a more restrictive than "no restrictions" in case of
> > kptr_restrict==0, so add the same logic to perf.
> >
> > Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
> > ---
> >  tools/perf/util/symbol.c | 15 +++++++++++----
> >  1 file changed, 11 insertions(+), 4 deletions(-)
> >
> > diff --git a/tools/perf/util/symbol.c b/tools/perf/util/symbol.c
> > index 173f3378aaa0..046271103499 100644
> > --- a/tools/perf/util/symbol.c
> > +++ b/tools/perf/util/symbol.c
> > @@ -4,6 +4,7 @@
> >  #include <stdlib.h>
> >  #include <stdio.h>
> >  #include <string.h>
> > +#include <linux/capability.h>
> >  #include <linux/kernel.h>
> >  #include <linux/mman.h>
> >  #include <linux/time64.h>
> > @@ -15,8 +16,10 @@
> >  #include <inttypes.h>
> >  #include "annotate.h"
> >  #include "build-id.h"
> > +#include "cap.h"
> >  #include "util.h"
> >  #include "debug.h"
> > +#include "event.h"
> >  #include "machine.h"
> >  #include "map.h"
> >  #include "symbol.h"
> > @@ -890,7 +893,11 @@ bool symbol__restricted_filename(const char *filename,
> >  {
> >         bool restricted = false;
> >
> > -       if (symbol_conf.kptr_restrict) {
> > +       /* Per kernel/kallsyms.c:
> > +        * we also restrict when perf_event_paranoid > 1 w/o CAP_SYSLOG
> > +        */
> > +       if (symbol_conf.kptr_restrict ||
> > +           (perf_event_paranoid() > 1 && !perf_cap__capable(CAP_SYSLOG))) {
> >                 char *r = realpath(filename, NULL);
> >
> 
> # echo 0 > /proc/sys/kernel/kptr_restrict
> # ./tools/perf/perf record -e instructions:k uname
> perf: Segmentation fault
> Obtained 10 stack frames.
> ./tools/perf/perf(sighandler_dump_stack+0x44) [0x55af9e5da5d4]
> /lib/x86_64-linux-gnu/libc.so.6(+0x3ef20) [0x7fd31efb6f20]
> ./tools/perf/perf(perf_event__synthesize_kernel_mmap+0xa7) [0x55af9e590337]
> ./tools/perf/perf(+0x1cf5be) [0x55af9e50c5be]
> ./tools/perf/perf(cmd_record+0x1022) [0x55af9e50dff2]
> ./tools/perf/perf(+0x23f98d) [0x55af9e57c98d]
> ./tools/perf/perf(+0x23fc9e) [0x55af9e57cc9e]
> ./tools/perf/perf(main+0x369) [0x55af9e4f6bc9]
> /lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xe7) [0x7fd31ef99b97]
> ./tools/perf/perf(_start+0x2a) [0x55af9e4f704a]
> Segmentation fault
> 
> I can reproduce this on both x86 and ARM64.

I don't see this with these two csets removed:

7ff5b5911144 perf symbols: Use CAP_SYSLOG with kptr_restrict checks
d7604b66102e perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks

Which were the ones I guessed were related to the problem you reported,
so they are out of my ongoing perf/core pull request to Ingo/Thomas, now
trying with these applied and your instructions...

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
