Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AC51E977F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 14:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUVnN68w/DwBiZHaO1RjuGQpptg2PXLsctQWuH4bjmM=; b=NBkMo5TiIemK0c
	aaEDfMnHHgm8onxQL6feNepge95mTUb8pn2YaAGrixDiNmLOoxHG7y3XRcy+bCsvzgkgIXOxGnM5G
	Dqk+37G0Z66UsYPId5S2u91GQ0vI3Tp5tEAaMXiqFmlJhaH6AqxSgLeGypO0zbTvNYr/jh0M9DwFK
	TpnqgwOjxVpNSjseHDKaHCCFTWS5Ce856yjJ2Z9CLNAbCWndvc0Ws++9f4/LBJmIcU/hfnQ0sq9Mz
	8BMg6SxA3koBbcatZNduzXf/qcmBjkEaNzvZLOcvNJtKiGLMDWZTX4yofncuLPnoT2ePoJibI/0zH
	/4zC+AEdzTHC/U0fuwJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfMzn-000865-HN; Sun, 31 May 2020 12:23:19 +0000
Received: from [179.97.37.151] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfMzh-00085g-Cf; Sun, 31 May 2020 12:23:13 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id D480540AFD; Sun, 31 May 2020 09:23:10 -0300 (-03)
Date: Sun, 31 May 2020 09:23:10 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>, Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v8 0/3] perf arm-spe: Add support for synthetic events
Message-ID: <20200531122310.GF31795@kernel.org>
References: <20200530122442.490-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200530122442.490-1-leo.yan@linaro.org>
X-Url: http://acmel.wordpress.com
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Andi Kleen <ak@linux.intel.com>, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Jin Yao <yao.jin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Sat, May 30, 2020 at 08:24:39PM +0800, Leo Yan escreveu:
> This patch set is to support synthetic events with enabling Arm SPE
> decoder.  This patch set is based Xiaojun Tan (Hisilicon) and
> James Clark (Arm)'s previous patches who have contributed much for
> the related task.

Applied, will push to tmp.perf/core, and then perf/core if all tests are
successful, Adrian, if you could provide an Acked-by: for the auxtrace
case, that would be good,

- Arnaldo
 
> This patch set has been checked with checkpatch.pl, though it leaves
> several warnings, but these warnings are deliberately kept after
> reviewing.  Some warnings ask to add maintainer (so far it's not
> necessary), and some warnings complaint for patch 02 "perf auxtrace:
> Add four itrace options" for the text format, since need to keep the
> consistency with the same code format in the source code, this is why
> this patch doesn't get rid of checkpatch warnings.
> 
> This patch set has been rebased on Perf tmp.perf/core branch with
> latest commit 9300acc6fed8 ("perf build: Add a LIBPFM4=1 build test
> entry").  The patches has been tested on Arm N1 machine (by James)
> and on Hisilicon D06 platform (by Leo).
> 
> Changes from v7:
> * Added James's tested-by tags;
> * Rebased on Perf tmp.perf/core branch.
> 
> 
> Tan Xiaojun (3):
>   perf tools: Move arm-spe-pkt-decoder.h/c to the new dir
>   perf auxtrace: Add four itrace options
>   perf arm-spe: Support synthetic events
> 
>  tools/perf/Documentation/itrace.txt           |   6 +-
>  tools/perf/util/Build                         |   2 +-
>  tools/perf/util/arm-spe-decoder/Build         |   1 +
>  .../util/arm-spe-decoder/arm-spe-decoder.c    | 219 +++++
>  .../util/arm-spe-decoder/arm-spe-decoder.h    |  82 ++
>  .../arm-spe-pkt-decoder.c                     |   0
>  .../arm-spe-pkt-decoder.h                     |  16 +
>  tools/perf/util/arm-spe.c                     | 823 +++++++++++++++++-
>  tools/perf/util/auxtrace.c                    |  17 +
>  tools/perf/util/auxtrace.h                    |  15 +-
>  10 files changed, 1135 insertions(+), 46 deletions(-)
>  create mode 100644 tools/perf/util/arm-spe-decoder/Build
>  create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.c
>  create mode 100644 tools/perf/util/arm-spe-decoder/arm-spe-decoder.h
>  rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.c (100%)
>  rename tools/perf/util/{ => arm-spe-decoder}/arm-spe-pkt-decoder.h (64%)
> 
> -- 
> 2.17.1
> 

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
