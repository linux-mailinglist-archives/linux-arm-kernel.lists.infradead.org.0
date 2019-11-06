Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AE8F17D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 15:00:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67+FURp7pzbG9/tGAYbCI7CnNNuG4TE4glB9vpi6ilM=; b=QayAKT7mj8SpkR
	aRle5NgOFL3d2hizpIvGu7A+v0nEwCQayTO57WlI8iuAVcud9n5UfqyS/pQebsJRpH619naSrJcQz
	B3zdgOywvYJ6EbjO8AeH6FCoZ5jZx1JHjWGMrYzHZyHkstt3sy5ykxy6aTecq1+zVEfSL0QAXogG5
	ymrTrEbpIfAY4B8pySFC3jf2T2sZliPFKR9Cf1QVCAEZwp6/LMmoB0bpWFDUayyyHcHCHQtImOVN4
	t8fJF+v8Ix68pXGwvMH8ip6VZ4de9D2PxjUzjQsWKXvpEf3mmCUci9sPygib5R0B0x08KZupitJUJ
	qmtsY3G7U3JUwQzsoT3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLre-00029r-EY; Wed, 06 Nov 2019 14:00:50 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLrW-00029F-IP
 for linux-arm-kernel@bombadil.infradead.org; Wed, 06 Nov 2019 14:00:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e8GY1rXwBKcb+Lwe+YcPDTUeq1DMxubTmclRXFMT0T0=; b=uwDRkZtcnHSlTUsxuYN4iP+I1
 +gmPtoMEjAlt2v8PlMNlj6GFTxxYB+wIJxgPsoQ2IUKbywS54mgPlFneltg6ZVyk7TgVJ9PcmBUTD
 h1Acxdm2iU0j65atb04ljscqND2hEBKHxOwfnpt2yAIj8zc2UE61CeGAQ1HLNcCuF6RsxssPx7k7R
 sADEJZJiFAYU3ot54Qb0tztiPZ6iU1ukHqjK4xxS8Mwlce1aGgY4MfQiA3BQnWGgkOdLLN+gEMMge
 wukKRAoDAZ6ufmrAM8mdMk+vTMhG8RqQ3cUo61FsjNSmzCGGBNy0TzeagirQfzS/uzJkf/ssP54Vq
 q4KxI1qIA==;
Received: from [179.97.35.50] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLrU-0007oL-QD; Wed, 06 Nov 2019 14:00:41 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 6A5F140B1D; Wed,  6 Nov 2019 11:00:36 -0300 (-03)
Date: Wed, 6 Nov 2019 11:00:36 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [RFC PATCH] perf tools: Fix cross compile for ARM64
Message-ID: <20191106140036.GA6259@kernel.org>
References: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: mark.rutland@arm.com, peterz@infradead.org, will@kernel.org,
 linux-kernel@vger.kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Nov 06, 2019 at 09:00:54PM +0800, John Garry escreveu:
> Currently when cross compiling perf tool for ARM64 on my x86 machine I get
> this error:
> arch/arm64/util/sym-handling.c:9:10: fatal error: gelf.h: No such file or directory
>  #include <gelf.h>
> 
> For the build, libelf is reported off:
> Auto-detecting system features:
> ...
> ...                        libelf: [ OFF ]

Thanks, applied.

- Arnaldo
 
> Indeed, test-libelf is not built successfully:
> more ./build/feature/test-libelf.make.output
> test-libelf.c:2:10: fatal error: libelf.h: No such file or directory
>  #include <libelf.h>
>           ^~~~~~~~~~
> compilation terminated.
> 
> I have no such problems natively compiling on ARM64, and I did not
> previously have this issue for cross compiling. Fix by relocating
> the gelf.h include.
> 
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
> 
> I marked this as RFC as I am suspicious that I have seen no other
> reports, and whether fixing up the libelf.h include issue is the proper
> approach.
> 
> diff --git a/tools/perf/arch/arm64/util/sym-handling.c b/tools/perf/arch/arm64/util/sym-handling.c
> index 5df788985130..8dfa3e5229f1 100644
> --- a/tools/perf/arch/arm64/util/sym-handling.c
> +++ b/tools/perf/arch/arm64/util/sym-handling.c
> @@ -6,9 +6,10 @@
>  
>  #include "symbol.h" // for the elf__needs_adjust_symbols() prototype
>  #include <stdbool.h>
> -#include <gelf.h>
>  
>  #ifdef HAVE_LIBELF_SUPPORT
> +#include <gelf.h>
> +
>  bool elf__needs_adjust_symbols(GElf_Ehdr ehdr)
>  {
>  	return ehdr.e_type == ET_EXEC ||
> -- 
> 2.17.1

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
