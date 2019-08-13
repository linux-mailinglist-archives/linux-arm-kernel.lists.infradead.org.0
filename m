Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3398B9F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 15:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0okUwUpNCzu+8NRQXjMj3h6pd4YmqCvSaXisRCSya4=; b=Hcq+JY+UH06Bft
	HoxVQ8IXhC1LHpf6dnQVip6chin8Qi7W7nKpJ6Ld8sZ3AGrU0tEI94L4IV8gXOre6OfFTOEqXTEJY
	nYXTSg4lYt47diEw/guQ92+ejAMoiQTjGmyY9eKX9BrLWHWYfQ8/xzIz7fYu+/IIMsAhdZbn9epGU
	PqVnEEBbU811MO15EuCXwsi2dG0bOpBf8bZ7Q5S8TZy+U+19+uqYLDEZ3iEXdg+a7APBmG6V71kjs
	4JgtubUrfCTKSKDvtce3B7QryEbMTWqoxEXTkhCwgkJINWE4CPh6oKuGI+ivALm+P9yF51cNlY3fW
	VlWd2lr30qnhAw6iW4UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWjI-0001dB-Jt; Tue, 13 Aug 2019 13:20:48 +0000
Received: from [179.97.35.50] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWj2-0001Sa-5k; Tue, 13 Aug 2019 13:20:33 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 790F140340; Tue, 13 Aug 2019 10:20:23 -0300 (-03)
Date: Tue, 13 Aug 2019 10:20:23 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: "Lubashev, Igor" <ilubashe@akamai.com>
Subject: Re: [PATCH v3 2/4] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Message-ID: <20190813132023.GA12299@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <ad56df5452eeafb99dda9fc3d30f0f487aace503.1565188228.git.ilubashe@akamai.com>
 <20190812200134.GE9280@kernel.org>
 <20190812201557.GF9280@kernel.org>
 <735aabdfa76f4435bdaff2c63d566044@usma1ex-dag1mb6.msg.corp.akamai.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <735aabdfa76f4435bdaff2c63d566044@usma1ex-dag1mb6.msg.corp.akamai.com>
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 James Morris <jmorris@namei.org>, Jiri Olsa <jolsa@redhat.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Aug 12, 2019 at 10:33:07PM +0000, Lubashev, Igor escreveu:
> On Mon, August 12, 2019 at 4:16 PM Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com> wrote:
> > Em Mon, Aug 12, 2019 at 05:01:34PM -0300, Arnaldo Carvalho de Melo
> > escreveu:
> > > Em Wed, Aug 07, 2019 at 10:44:15AM -0400, Igor Lubashev escreveu:
> > > > +++ b/tools/perf/util/evsel.c
> > > > @@ -279,7 +279,7 @@ struct evsel *perf_evsel__new_idx(struct
> > > > perf_event_attr *attr, int idx)
> > >
> > > >  static bool perf_event_can_profile_kernel(void)
> > > >  {
> > > > -	return geteuid() == 0 || perf_event_paranoid() == -1;
> > > > +	return perf_event_paranoid_check(-1);
> > > >  }
> > >
> > > While looking at your changes I think the pre-existing code is wrong,
> > > i.e. the check in sys_perf_event_open(), in the kernel is:
> > >
> > >         if (!attr.exclude_kernel) {
> > >                 if (perf_paranoid_kernel() && !capable(CAP_SYS_ADMIN))
> > >                         return -EACCES;
> > >         }
> > >
> > > And:
> > >
> > > static inline bool perf_paranoid_kernel(void) {
> > >         return sysctl_perf_event_paranoid > 1; }
> > >
> > > So we have to change that perf_event_paranoit_check(-1) to pass 1
> > > instead?
> 
> Indeed.  This seems right.  It was a pre-existing problem.
> 
> 
> > > bool perf_event_paranoid_check(int max_level) {
> > >         return perf_cap__capable(CAP_SYS_ADMIN) ||
> > >                         perf_event_paranoid() <= max_level; }
> > >
> > > Also you defined perf_cap__capable(anything) as:
> > >
> > > #ifdef HAVE_LIBCAP_SUPPORT
> > >
> > > #include <sys/capability.h>
> > >
> > > bool perf_cap__capable(cap_value_t cap);
> > >
> > > #else
> > >
> > > static inline bool perf_cap__capable(int cap __maybe_unused)
> > > {
> > >         return false;
> > > }
> > >
> > > #endif /* HAVE_LIBCAP_SUPPORT */
> > >
> > >
> > > I think we should have:
> > >
> > > #else
> > >
> > > static inline bool perf_cap__capable(int cap __maybe_unused) {
> > >         return geteuid() == 0;
> > > }
> > >
> > > #endif /* HAVE_LIBCAP_SUPPORT */
> > >
> > > Right?
> 
> You can have EUID==0 and not have CAP_SYS_ADMIN, though this would be rare in practice.  I did not to use EUID in leu of libcap, since kernel does not do so, and therefore it seemed a bit misleading.  But this is a slight matter of taste, and I do not see a problem with choosing to fall back to EUID -- the kernel will do the right thing anyway.
> 
> Now, if I were pedantic, I'd say that to use geteuid(), you need to #include <unistd.h> .

Right, and that is how I did it :-)

[acme@seventh perf]$ cat tools/perf/util/cap.h
/* SPDX-License-Identifier: GPL-2.0 */
#ifndef __PERF_CAP_H
#define __PERF_CAP_H

#include <stdbool.h>
#include <linux/capability.h>
#include <linux/compiler.h>

#ifdef HAVE_LIBCAP_SUPPORT

#include <sys/capability.h>

bool perf_cap__capable(cap_value_t cap);

#else

#include <unistd.h>
#include <sys/types.h>

static inline bool perf_cap__capable(int cap __maybe_unused)
{
	return geteuid() == 0;
}

#endif /* HAVE_LIBCAP_SUPPORT */

#endif /* __PERF_CAP_H */
[acme@seventh perf]$
 
> 
> > > So I am removing the introduction of perf_cap__capable() from the
> > > first patch you sent, leaving it with _only_ the feature detection
> > > part, using that feature detection to do anything is then moved to a
> > > separate patch, after we finish this discussion about what we should
> > > fallback to when libcap-devel isn't available, i.e. we should use the
> > > previous checks, etc.
> > 
> > So, please take a look at the tmp.perf/cap branch in my git repo:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/acme/linux.git/log/?h=tmp.p
> > erf/cap
> > 
> > I split the patch and made perf_cap__capable() fallback to 'return
> > geteuid() == 0;' when libcap-devel isn't available, i.e. keep the checks made
> > prior to your patchset.
> 
> Thank you.  And thanks for updating "make_minimal". 

Ok!

 
> > 
> > Jiri, can I keep your Acked-by?
> > 
> > - Arnaldo

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
