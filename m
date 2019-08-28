Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17951A0B3B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 22:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPYtWim7MVItrQkULT0tfdYyCKotPrEvDu8bd2auhBo=; b=KfP070sTSrbM+E
	cCaP4+vkuowB4fu1kTwAMYSinWzCvOLOTDfCyQhmYbXzznptZRe0Q9OvN0B3noXdPYzmunfg1pO/O
	upkXz5RgwnySatE542sCa0XQlhKck7EXOjiwQOAlHivyx5s27Pw4SpsgirJC7xUOGgs7XdV2FhaW1
	c8aEC9npQtsZveWlYW1JNnN+KKMgI8f1gRuVkABaLhW8zDB2OG+VrNrGtFCy1XDHF3o8H5204fcun
	62V5ArXPJ5RFLqHH7Msk7ryji7cyBv2U7zogP7lgMZrWJt+0y5TCg2VDQtBfWkdJXz41sHaSwxmwR
	uNrAiAbdNj277fEW858Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i34SU-0006YI-Ls; Wed, 28 Aug 2019 20:22:22 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i34SM-0006Xk-Eq
 for linux-arm-kernel@bombadil.infradead.org; Wed, 28 Aug 2019 20:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mwIgPQ0U3pATqGjKmjCsEUAR/LGRI1zRVmHzmqKpcRg=; b=RB0oTYlvA2IQNd3qJl8isI2WT
 RUyvvAI3wkbClmP2fEOKoGkwShGWlCZqcyDd1McA3cuUg+OvSyZWr1J6FvtItYd7iP0ADRFVrXDro
 1aWyvdx68WrUhpkuOLFtylQL4SZveG7EPia4mcsUtc9ktp7SPrPC8HX0Yyb9sAUnqCJXdKsJpFW2u
 2RE2pDyeI1iVxbP1sZKW05S+xPXRMj5rAHoChSscooXyAxSS2ol7nFWle/SwnQO2WMO9R0ONO6rIZ
 qJI0VhNCkJhbVpxrOW4eDyZ0jNdFNGlTLzUwFS0WVsUFf+UQhLXHJWlnwVwWdHW2fytFXXrB7jdCj
 q2p5R66mg==;
Received: from [179.182.3.211] (helo=sandy.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i34SK-0000Z2-GE; Wed, 28 Aug 2019 20:22:12 +0000
Received: by sandy.ghostprotocols.net (Postfix, from userid 1000)
 id E5D50119; Wed, 28 Aug 2019 17:22:05 -0300 (BRT)
Date: Wed, 28 Aug 2019 17:22:05 -0300
From: Arnaldo Carvalho de Melo <acme@redhat.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 0/5] perf: Treat perf_event_paranoid and kptr_restrict
 like the kernel does it
Message-ID: <20190828202205.GG2053@redhat.com>
References: <1566869956-7154-1-git-send-email-ilubashe@akamai.com>
 <CANLsYkwZm9ehopjDMXNw-3JOj8MPeT_shPPJBOeLNe7BUtibmA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkwZm9ehopjDMXNw-3JOj8MPeT_shPPJBOeLNe7BUtibmA@mail.gmail.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.5.20 (2009-12-10)
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
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Aug 28, 2019 at 01:31:21PM -0600, Mathieu Poirier escreveu:
> On Mon, 26 Aug 2019 at 19:40, Igor Lubashev <ilubashe@akamai.com> wrote:
> > Igor Lubashev (5):
> >   perf event: Check ref_reloc_sym before using it
> >   perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks
> >   perf util: kernel profiling is disallowed only when perf_event_paranoid > 1
> >   perf symbols: Use CAP_SYSLOG with kptr_restrict checks
> >   perf: warn that perf_event_paranoid can restrict kernel symbols

> >  tools/perf/arch/arm/util/cs-etm.c    |  3 ++-
 
> For the coresight part:
 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
 
> >  tools/perf/arch/arm64/util/arm-spe.c |  3 ++-
> >  tools/perf/arch/x86/util/intel-bts.c |  3 ++-
> >  tools/perf/arch/x86/util/intel-pt.c  |  2 +-
> >  tools/perf/builtin-record.c          |  2 +-
> >  tools/perf/builtin-top.c             |  2 +-
> >  tools/perf/builtin-trace.c           |  2 +-
> >  tools/perf/util/event.c              |  7 ++++---
> >  tools/perf/util/evsel.c              |  2 +-
> >  tools/perf/util/symbol.c             | 15 ++++++++++++---
> >  10 files changed, 27 insertions(+), 14 deletions(-)
> 
> For the set:
> 
> Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Thanks, updated the patches with your tags,

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
