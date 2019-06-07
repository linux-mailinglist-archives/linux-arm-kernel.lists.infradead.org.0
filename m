Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA22E39428
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 20:21:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBMQAK89sh7cFq+m335/B3+KQMDgi5GEQ9rI6fxbxE0=; b=OG84nEwZIec2pK
	O3LWpvt6pUn9rem+Kj1qWBXo33JFPogkTD20lStHa899jPRFW62oWNwOBcIZO+I3lvE8XsSXsnbFB
	Z3bpkh2A8W+3CK3lx6Yikd049gVoWkCD+fOLyFH85boCUQgw1shHq6CamOtUXWS/HzVa8x8QvWE07
	n1GuEn2T2zg80D8DlSXUPx4J0Gs3Fsvtim+E64GoLzoIYdtBzniPMUu3z3hELTV4uH0VuP2sZgOqo
	FdeDVdxAGRJxFdEQ4bWGO1zoFjtUMIaQ4ADYuIXZFK+sSADk+IjaBUtXxxWYZXfIYEIeN2SxtxiIl
	wPQO8oFu9TuRniwig0Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZJU5-00046J-Qv; Fri, 07 Jun 2019 18:21:01 +0000
Received: from 187-26-97-17.3g.claro.net.br ([187.26.97.17]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hZJTz-00045i-QI; Fri, 07 Jun 2019 18:20:56 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id CEE8441149; Fri,  7 Jun 2019 15:20:47 -0300 (-03)
Date: Fri, 7 Jun 2019 15:20:47 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 01/17] perf tools: Configure contextID tracing in
 CPU-wide mode
Message-ID: <20190607182047.GK21245@kernel.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
 <20190524173508.29044-2-mathieu.poirier@linaro.org>
 <68c1c548-33cd-31e8-100d-7ffad008c7b2@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <68c1c548-33cd-31e8-100d-7ffad008c7b2@arm.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: mathieu.poirier@linaro.org, Peter Zijlstra <peterz@infradead.org>,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@kernel.org>, leo.yan@linaro.org,
 Namhyung Kim <namhyung@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, Jun 07, 2019 at 10:21:36AM +0100, Suzuki K Poulose escreveu:
> Hi Mathieu,
> 
> On 24/05/2019 18:34, Mathieu Poirier wrote:
> > When operating in CPU-wide mode being notified of contextID changes is
> > required so that the decoding mechanic is aware of the process context
> > switch.
> > 
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
> 
> > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> I am sorry but, I don't remember reviewing this patch in the previous
> postings. But here we go.

Can I keep it as is? I addressed one of your concerns below, please
check.

- Arnaldo
 
> > +++ b/tools/perf/util/cs-etm.h
> > @@ -103,6 +103,18 @@ struct intlist *traceid_list;
> >   #define KiB(x) ((x) * 1024)
> >   #define MiB(x) ((x) * 1024 * 1024)
> > +/*
> > + * Create a contiguous bitmask starting at bit position @l and ending at
> > + * position @h. For example
> > + * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
> > + *
> > + * Carbon copy of implementation found in $KERNEL/include/linux/bitops.h
> > + */
> > +#define GENMASK(h, l) \
> > +	(((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
> > +
> 
> minor nit: Could this be placed in a more generic header file for the other
> parts of the perf tool to consume ?
> 

Yeah, since we have:

Good catch, we have it already:

[acme@quaco perf]$ tail tools/include/linux/bits.h
 * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
 */
#define GENMASK(h, l) \
	(((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))

#define GENMASK_ULL(h, l) \
	(((~0ULL) - (1ULL << (l)) + 1) & \
	 (~0ULL >> (BITS_PER_LONG_LONG - 1 - (h))))

#endif	/* __LINUX_BITS_H */
[acme@quaco perf]$
[acme@quaco perf]$

So I'm adding this to the pile with a Suggested-by: Suzuki, ok?

commit 3217a621248824fbff8563d8447fdafe69c5316d
Author: Arnaldo Carvalho de Melo <acme@redhat.com>
Date:   Fri Jun 7 15:14:27 2019 -0300

    perf cs-etm: Remove duplicate GENMASK() define, use linux/bits.h instead
    
    Suzuki noticed that this should be more useful in a generic header, and
    after looking I noticed we have it already in our copy of
    include/linux/bits.h in tools/include, so just use it, test built on
    x86-64 and ubuntu 19.04 with:
    
      perfbuilder@46646c9e848e:/$ aarch64-linux-gnu-gcc --version |& head -1
      aarch64-linux-gnu-gcc (Ubuntu/Linaro 8.3.0-6ubuntu1) 8.3.0
      perfbuilder@46646c9e848e:/$
    
    Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
    Link: https://lkml.kernel.org/r/68c1c548-33cd-31e8-100d-7ffad008c7b2@arm.com
    Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
    Cc: Jiri Olsa <jolsa@redhat.com>
    Cc: Leo Yan <leo.yan@linaro.org>
    Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
    Cc: Namhyung Kim <namhyung@kernel.org>
    Cc: Peter Zijlstra <peterz@infradead.org>
    Cc: coresight@lists.linaro.org
    Cc: linux-arm-kernel@lists.infradead.org,
    Link: https://lkml.kernel.org/n/tip-69pd3mqvxdlh2shddsc7yhyv@git.kernel.org
    Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>

diff --git a/tools/perf/util/cs-etm.h b/tools/perf/util/cs-etm.h
index 33b57e748c3d..bc848fd095f4 100644
--- a/tools/perf/util/cs-etm.h
+++ b/tools/perf/util/cs-etm.h
@@ -9,6 +9,7 @@
 
 #include "util/event.h"
 #include "util/session.h"
+#include <linux/bits.h>
 
 /* Versionning header in case things need tro change in the future.  That way
  * decoding of old snapshot is still possible.
@@ -161,16 +162,6 @@ struct cs_etm_packet_queue {
 
 #define CS_ETM_INVAL_ADDR 0xdeadbeefdeadbeefUL
 
-/*
- * Create a contiguous bitmask starting at bit position @l and ending at
- * position @h. For example
- * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
- *
- * Carbon copy of implementation found in $KERNEL/include/linux/bitops.h
- */
-#define GENMASK(h, l) \
-	(((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
-
 #define BMVAL(val, lsb, msb)	((val & GENMASK(msb, lsb)) >> lsb)
 
 #define CS_ETM_HEADER_SIZE (CS_HEADER_VERSION_0_MAX * sizeof(u64))

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
