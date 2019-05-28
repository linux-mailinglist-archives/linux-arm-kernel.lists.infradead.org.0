Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEBB2CA38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 17:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpe03QDBRyQ+b6Nxu8fxXihRNAy5+BxsyeB5M5V+qnE=; b=R/Bo5HgkJSgrqk
	tmhqCyEx8jnKbuU2OhwG+RBwVTg1NVkD8VyXzdGIu2QuRiD9/5BKDWr2YY8MKUL9IuEiQG7A3rgQ+
	E90rVnkWJre56uju6BC4Vj4XX1SlFFNl2B5ykNC1RjA7HKRd44JrqBH9DsLUGGxhjN6on4o4KzrQh
	ciNU+XI3jbQIBe6LS3KWVpxuVUwpy+CxqW3wnYH3vhDR+7OSdvZTzVJ2K6FZ30kFgCKxacWqtzPFO
	o1VL5q2+ifyQF9rpYKOFLZ72NKwShoKOP7OAHCzdfN63URrxFO9vsWpegWE+Y6m9CLWuWm9/hcxXS
	UJbSLGO/cENTyefYnUvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVdtF-0004kk-BF; Tue, 28 May 2019 15:19:49 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVdt8-0004kP-Pd
 for linux-arm-kernel@bombadil.infradead.org; Tue, 28 May 2019 15:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AgIhMjtQNDDLn24P5b2RW+PI0xzMqgCFH6A7C0wsOiI=; b=HlGhE8AWqFF0vpElQq6JRq1Oi
 8bV34TcnQy5d/IULeSnGSFNkGxdWOtDKUT4qvm2E2JaxyPYN/BSd6v5KJghRwrY2lR/mr+zUoe9wN
 TPWepdn+YHLE/UGGWMTX0loVx5v6aCUEsyEVLa2TvrxJd1gXRYfmVc/u/gsCjnT/GGl0lnmWqd3jq
 RaZzucFVkedlfPQq1LkA0PNjhA3oGUE0BmoA02WRAWpN/2yjdPHARkDDM6pF4rKCFehgzzSt8iwYo
 55J8djKn+h7b4wn7sjSsuP9cBxRoSoInCYtVhA0JiFsdi2qzuLKSZwW0dzOibMqIV/Xmj8A7v3Sng
 yirv07P5Q==;
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVdt6-00050J-Op; Tue, 28 May 2019 15:19:40 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 4491841149; Tue, 28 May 2019 12:19:38 -0300 (-03)
Date: Tue, 28 May 2019 12:19:38 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [RFC 1/7] perf: arm64: Compile tests unconditionally
Message-ID: <20190528151938.GC13830@kernel.org>
References: <20190528150320.25953-1-raphael.gault@arm.com>
 <20190528150320.25953-2-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528150320.25953-2-raphael.gault@arm.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Em Tue, May 28, 2019 at 04:03:14PM +0100, Raphael Gault escreveu:
> In order to subsequently add more tests for the arm64 architecture
> we compile the tests target for arm64 systematically.

Humm, the subject doesn't match the description? I.e. it _was_
unconditionally built, now it is only built if CONFIG_DWARF_UNWIND is
set to 'y'.

- Arnaldo
 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  tools/perf/arch/arm64/Build       | 2 +-
>  tools/perf/arch/arm64/tests/Build | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/perf/arch/arm64/Build b/tools/perf/arch/arm64/Build
> index 36222e64bbf7..a7dd46a5b678 100644
> --- a/tools/perf/arch/arm64/Build
> +++ b/tools/perf/arch/arm64/Build
> @@ -1,2 +1,2 @@
>  perf-y += util/
> -perf-$(CONFIG_DWARF_UNWIND) += tests/
> +perf-y += tests/
> diff --git a/tools/perf/arch/arm64/tests/Build b/tools/perf/arch/arm64/tests/Build
> index 41707fea74b3..a61c06bdb757 100644
> --- a/tools/perf/arch/arm64/tests/Build
> +++ b/tools/perf/arch/arm64/tests/Build
> @@ -1,4 +1,4 @@
>  perf-y += regs_load.o
> -perf-y += dwarf-unwind.o
> +perf-$(CONFIG_DWARF_UNWIND) += dwarf-unwind.o
>  
>  perf-y += arch-tests.o
> -- 
> 2.17.1

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
