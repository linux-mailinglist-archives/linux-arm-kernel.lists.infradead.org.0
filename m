Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED028A84F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 22:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=To7jeo98XYxkmJ0ugLO46lGkpXnFZcYGCUwyGdGvXyE=; b=pjArH8HXy3UuII
	h0ttMC5VQeizsOBFmnmUoB3VccMCK/mpcyk7rDY5aWVsS5rmhiRfQrxzyQc+J35M15pFYpNGwONOM
	38d8ZPnyXBbrYRjRxVfAiU4LgJKtg7WkrTQDLEVyoVun3bzApZAfw7i6/rCw9shwC8QK37MvX02LD
	Mf0aPPpEyr9a73wGzvsB1RZrACHkD0hpqmBdCHwZLHhqOz9nbvol/QjRNgvd/QjmFZToCl3vfz1da
	uUt11s0HkZQR4SuLb9lc0Segm/65tkATnR9obLe8PbPCstNl0uFYjZuAyrlNKkArQZVns0iCGxaB8
	R1+dnEDpbfeB6cjB3v0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGqj-0005W9-0W; Mon, 12 Aug 2019 20:23:25 +0000
Received: from 187-26-98-68.3g.claro.net.br ([187.26.98.68]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGqD-0005Vr-AL; Mon, 12 Aug 2019 20:22:53 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 3F25040340; Mon, 12 Aug 2019 17:22:51 -0300 (-03)
Date: Mon, 12 Aug 2019 17:22:51 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Igor Lubashev <ilubashe@akamai.com>
Subject: Re: [PATCH v3 4/4] perf: Use CAP_SYS_ADMIN instead of euid==0 with
 ftrace
Message-ID: <20190812202251.GG9280@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <bd8763b72ed4d58d0b42d44fbc7eb474d32e53a3.1565188228.git.ilubashe@akamai.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd8763b72ed4d58d0b42d44fbc7eb474d32e53a3.1565188228.git.ilubashe@akamai.com>
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

Em Wed, Aug 07, 2019 at 10:44:17AM -0400, Igor Lubashev escreveu:
> Kernel requires CAP_SYS_ADMIN instead of euid==0 to mount debugfs for ftrace.
> Make perf do the same.
> 
> Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
> ---
>  tools/perf/builtin-ftrace.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
> index ae1466aa3b26..d09eac8a6d57 100644
> --- a/tools/perf/builtin-ftrace.c
> +++ b/tools/perf/builtin-ftrace.c
> @@ -13,6 +13,7 @@
>  #include <signal.h>
>  #include <fcntl.h>
>  #include <poll.h>
> +#include <linux/capability.h>
>  
>  #include "debug.h"
>  #include <subcmd/parse-options.h>
> @@ -21,6 +22,7 @@
>  #include "target.h"
>  #include "cpumap.h"
>  #include "thread_map.h"
> +#include "util/cap.h"
>  #include "util/config.h"
>  
>  
> @@ -281,7 +283,7 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
>  		.events = POLLIN,
>  	};
>  
> -	if (geteuid() != 0) {
> +	if (!perf_cap__capable(CAP_SYS_ADMIN)) {
>  		pr_err("ftrace only works for root!\n");

I guess we should update the error message too? 

>  		return -1;
>  	}
> -- 
> 2.7.4

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
