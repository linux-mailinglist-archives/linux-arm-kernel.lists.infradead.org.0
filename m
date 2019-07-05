Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E9F6087B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiDtPbLwbnNKbR5v/qlElxb9/b3of+MlKHLbfnuXwp8=; b=hYq4EGE/4PORzV
	FDrD/ts24jncVpGrBCjajhIqOFd2rbm19Q7GRrJQpYSwb1/Yzfi0XBTk4k1cUzYdoKODl0KYsNZWp
	93Y15qYyvemUOt0wl9GHkk7e3rc/0DHV3zHcdXFsIQGQwsHupN29WqmgcSikcmT3FsGFvMhUpavHQ
	RwVk/I7W8zZBxKesH7vqj/rjE9UDzQ6h618HCOQnu7ZzzYQ+bxLAnOTZDISbRBVigjMtStkZWHBCa
	W9FmeBoLWkZ+fFrii6gdCULKCl+8p1wmObkF+ueD3g8sazWezt9T8x/GF6fk0W8gj7Ffiz0k1WmJq
	6XTzZT9lsWJFc46CIXYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPbt-0007Dr-1X; Fri, 05 Jul 2019 14:54:49 +0000
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPbk-0007DP-0D; Fri, 05 Jul 2019 14:54:40 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 25F0540495; Fri,  5 Jul 2019 11:54:36 -0300 (-03)
Date: Fri, 5 Jul 2019 11:54:36 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [PATCH v2 1/5] perf: arm64: Add test to check userspace access
 to hardware counters.
Message-ID: <20190705145436.GA29396@kernel.org>
References: <20190705085541.9356-1-raphael.gault@arm.com>
 <20190705085541.9356-2-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705085541.9356-2-raphael.gault@arm.com>
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, Jul 05, 2019 at 09:55:37AM +0100, Raphael Gault escreveu:
> This test relies on the fact that the PMU registers are accessible
> from userspace. It then uses the perf_event_mmap_page to retrieve
> the counter index and access the underlying register.
> 
> This test uses sched_setaffinity(2) in order to run on all CPU and thus
> check the behaviour of the PMU of all cpus in a big.LITTLE environment.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  tools/perf/arch/arm64/include/arch-tests.h |   6 +
>  tools/perf/arch/arm64/tests/Build          |   1 +
>  tools/perf/arch/arm64/tests/arch-tests.c   |   4 +
>  tools/perf/arch/arm64/tests/user-events.c  | 255 +++++++++++++++++++++
>  4 files changed, 266 insertions(+)
>  create mode 100644 tools/perf/arch/arm64/tests/user-events.c
> 
> diff --git a/tools/perf/arch/arm64/include/arch-tests.h b/tools/perf/arch/arm64/include/arch-tests.h
> index 90ec4c8cb880..a9b17ae0560b 100644
> --- a/tools/perf/arch/arm64/include/arch-tests.h
> +++ b/tools/perf/arch/arm64/include/arch-tests.h
> @@ -2,11 +2,17 @@
>  #ifndef ARCH_TESTS_H
>  #define ARCH_TESTS_H
>  
> +#define __maybe_unused	__attribute__((unused))


What is wrong with using:

#include <linux/compiler.h>

?

[acme@quaco perf]$ find tools/perf/ -name "*.[ch]" | xargs grep __maybe_unused | wc -l
1115
[acme@quaco perf]$ grep __maybe_unused tools/include/linux/compiler.h
#ifndef __maybe_unused
# define __maybe_unused		__attribute__((unused))
[acme@quaco perf]$

Also please don't break strings in multiple lines just to comply with
the 80 column limit. That is ok when you have multiple lines ending with
a newline, but otherwise just makes it look ugly.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
