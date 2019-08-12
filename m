Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5333D8A856
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 22:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdHagazJUgfiskG1ULpxcjiNod8qryYnQq5vvdyApTU=; b=k7TVsl8H8nLp6u
	E8ssSrCJSJ+Yx7vlU8c0Mw1OmUPrrfPdy8Q6T20qjeYRGgDWngvqR8N3Mir+rPUg3r6kcndFKaghE
	9ifqNE+IrbKBAYgzvQiFl6d2/hs8VRyROKJBo+d5PMi2gMhrlt0T0gcIxGbEGl1vs4wQ4n9oPK+7x
	+fh58ccrPFVZIKEqJdMAUrSoU+8E1Ox3RWgAMofo8iamF/Zw3UVUv6oif1Y2h/aCcURgYgRPeJKUI
	ROI2aRhuSOHxZPjtjJz6va02BspGFkLIbPD+bj12wwrdJtQln4ZkjrlCrTdd2385Cuk+ALCKyxFWD
	ZTUp5SAj+P8tb1ZzyzXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGuZ-0007FM-Iw; Mon, 12 Aug 2019 20:27:23 +0000
Received: from 187-26-98-68.3g.claro.net.br ([187.26.98.68]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGuL-0007FB-Ko; Mon, 12 Aug 2019 20:27:10 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 70EC640340; Mon, 12 Aug 2019 17:27:06 -0300 (-03)
Date: Mon, 12 Aug 2019 17:27:06 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Igor Lubashev <ilubashe@akamai.com>
Subject: Re: [PATCH v3 4/4] perf: Use CAP_SYS_ADMIN instead of euid==0 with
 ftrace
Message-ID: <20190812202706.GH9280@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <bd8763b72ed4d58d0b42d44fbc7eb474d32e53a3.1565188228.git.ilubashe@akamai.com>
 <20190812202251.GG9280@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812202251.GG9280@kernel.org>
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
 linux-kernel@vger.kernel.org, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Aug 12, 2019 at 05:22:51PM -0300, Arnaldo Carvalho de Melo escreveu:
> Em Wed, Aug 07, 2019 at 10:44:17AM -0400, Igor Lubashev escreveu:
> > Kernel requires CAP_SYS_ADMIN instead of euid==0 to mount debugfs for ftrace.
> > Make perf do the same.
> > 
> > Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
> > ---
> >  tools/perf/builtin-ftrace.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
> > index ae1466aa3b26..d09eac8a6d57 100644
> > --- a/tools/perf/builtin-ftrace.c
> > +++ b/tools/perf/builtin-ftrace.c
> > @@ -13,6 +13,7 @@
> >  #include <signal.h>
> >  #include <fcntl.h>
> >  #include <poll.h>
> > +#include <linux/capability.h>
> >  
> >  #include "debug.h"
> >  #include <subcmd/parse-options.h>
> > @@ -21,6 +22,7 @@
> >  #include "target.h"
> >  #include "cpumap.h"
> >  #include "thread_map.h"
> > +#include "util/cap.h"
> >  #include "util/config.h"
> >  
> >  
> > @@ -281,7 +283,7 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
> >  		.events = POLLIN,
> >  	};
> >  
> > -	if (geteuid() != 0) {
> > +	if (!perf_cap__capable(CAP_SYS_ADMIN)) {
> >  		pr_err("ftrace only works for root!\n");
> 
> I guess we should update the error message too? 
> 

I.e. I applied this as a follow up patch:

diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
index 01a5bb58eb04..ba8b65c2f9dc 100644
--- a/tools/perf/builtin-ftrace.c
+++ b/tools/perf/builtin-ftrace.c
@@ -284,7 +284,12 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
 	};
 
 	if (!perf_cap__capable(CAP_SYS_ADMIN)) {
-		pr_err("ftrace only works for root!\n");
+		pr_err("ftrace only works for %s!\n",
+#ifdef HAVE_LIBCAP_SUPPORT
+		"users with the SYS_ADMIN capability"
+#else
+		"root"
+#endif
 		return -1;
 	}
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
