Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D19163002
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFmENELgTXIW3Rq4yWS+2lj7ohdFEla3NaSI0713CKg=; b=FY6iJi5RW5YR4w
	4iqSNelIDtkFj2DVLJTgnNW4aKT8kcvqSbyrCj9uK9ihLf/R6lH0Y2lWgCVxgG83cx7D/LnK7Vx0+
	e7LJ80kpuOQ2HJx9M1i2QeH4QrhIMna0i8tlrmtdAoz2eS2Wh02s7Kk5C/5gD+GB9wgY8Ilmp6mLE
	zlKT45x913W0LchfT0AOY/apt2Kv9j0c1wQD5SR6pCaw7z613H0q0iNyEkwa9XWPbuIwij9eoMyXR
	QwAf2/9Gvl3x6gMqwmw4cCpB79VsBbZXHSSseY/PpGCToom7fxmN6HIJSwEn9KEz1RWfOcUKglX5Q
	ajjykRUMCRHoABS6FVyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48a1-0007Gc-QC; Tue, 18 Feb 2020 19:30:49 +0000
Received: from [177.195.210.189] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48Zc-0006yV-Gv; Tue, 18 Feb 2020 19:30:25 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id B2047403AD; Tue, 18 Feb 2020 16:30:11 -0300 (-03)
Date: Tue, 18 Feb 2020 16:30:11 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v4 0/5] perf cs-etm: Fix synthesizing instruction samples
Message-ID: <20200218193011.GB5365@kernel.org>
References: <20200213094204.2568-1-leo.yan@linaro.org>
 <20200218184934.GA11448@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218184934.GA11448@xps15>
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Robert Walker <robert.walker@arm.com>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, Feb 18, 2020 at 11:49:34AM -0700, Mathieu Poirier escreveu:
> On Thu, Feb 13, 2020 at 05:41:59PM +0800, Leo Yan wrote:
> > This patch series is to address issues for synthesizing instruction
> > samples, especially when the instruction sample period is small enough,
> > the current logic cannot synthesize multiple instruction samples within
> > one instruction range packet.
> > 
> > Patch 0001 is to swap packets for instruction samples, so this allow
> > option '--itrace=iNNN' can work well.
> > 
> > Patch 0002 avoids to reset the last branches for every instruction
> > sample; if reset the last branches for every time generating sample, the
> > later samples in the same range packet cannot use the last branches
> > anymore.
> > 
> > Patch 0003 is the fixing for handling different instruction periods,
> > especially for small sample period.
> > 
> > Patch 0004 is an optimization for copying last branches; it only copies
> > last branches once if the instruction samples share the same last
> > branches.
> > 
> > Patch 0005 is a minor fix for unsigned variable comparison to zero.
> > 
> > This patch set has been rebased on the latest perf/core branch; and
> > verified on Juno board with below commands:
> > 
> >   # perf script --itrace=i2
> >   # perf script --itrace=i2il16
> >   # perf inject --itrace=i2il16 -i perf.data -o perf.data.new
> >   # perf inject --itrace=i100il16 -i perf.data -o perf.data.new
> > 
> > Changes from v3:
> > * Refactored patch 0001 with new function cs_etm__packet_swap() (Mike);
> > * Refined instruction sample generation flow with single while loop,
> >   which completely uses Mike's suggestions (Mike);
> > * Added Mike's review tags for patch 01/02/04/05.
> > 
> > Changes from v2:
> > * Added patch 0001 which is to fix swapping packets for instruction
> >   samples;
> > * Refined minor commit logs and comments;
> > * Rebased on the latest perf/core branch.
> > 
> > Changes from v1:
> > * Rebased patch set on perf/core branch with latest commit 9fec3cd5fa4a
> >   ("perf map: Check if the map still has some refcounts on exit").
> > 
> > 
> > 
> > Leo Yan (5):
> >   perf cs-etm: Swap packets for instruction samples
> >   perf cs-etm: Continuously record last branch
> >   perf cs-etm: Correct synthesizing instruction samples
> >   perf cs-etm: Optimize copying last branches
> >   perf cs-etm: Fix unsigned variable comparison to zero
> 
> For all the patches in this set:
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
> Unless Arnaldo says otherwise, I suggest you send a new V5 with Mike's RB for
> patch 3/5 and mine for all of them.  That way he doesn't have to edit the
> patches when applying them.

Yeah, that would make things easier for me, always appreciated.

- Arnaldo
 
> Thanks,
> Mathieu
> 
> > 
> >  tools/perf/util/cs-etm.c | 157 +++++++++++++++++++++++++++------------
> >  1 file changed, 111 insertions(+), 46 deletions(-)
> > 
> > -- 
> > 2.17.1
> > 

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
