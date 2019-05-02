Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A11512546
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 01:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJHDMhj3oGJ5y9jMxyd2WedAdVOTRKLOZqA8wFA451I=; b=r7WpmKlF9eUMka
	gdCQBVnzhgTjZ3yBmLKD1VYcCf9J+OsvkZM8oqkFLd1fKbNkHcBPaR5h6iMg/ingOvY0i1aQJa+u1
	6khFaDSRo+O6W1195DTfn4ENpcsFsuPuOB/RaVK9ApJPaBy3d5PW8+pW9OeTE2onL43GDXwJt71tN
	zfVKgHQ4lOJv+r89W9WwF6I/K3qVX17hStCfrNuGO95xZulcjdehHyDLr92RYEbIykve1m4cJK5a5
	b+S5CMapNc7z6XLj8k4JjKWsAqTTt3XljvS1RjIpA7yELM64zHvW87n9w/b7niqxp/4QyX59E3Evc
	srNBv3sMVtLzPdJWFipQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMLa3-0004jr-51; Thu, 02 May 2019 23:57:35 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMLZv-0004jV-0E; Thu, 02 May 2019 23:57:27 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 50CAC403AD; Thu,  2 May 2019 19:57:25 -0400 (EDT)
Date: Thu, 2 May 2019 19:57:25 -0400
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] perf vendor events arm64: Map Brahma-B53 CPUID to
 cortex-a53 events
Message-ID: <20190502235725.GB22982@kernel.org>
References: <20190405165047.15847-1-f.fainelli@gmail.com>
 <20190408162607.GB7872@fuggles.cambridge.arm.com>
 <46ac3066-fa55-9fb8-dd54-32fb702030cb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46ac3066-fa55-9fb8-dd54-32fb702030cb@gmail.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, bcm-kernel-feedback-list@broadcom.com,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 "moderated list:ARM PMU PROFILING AND DEBUGGING"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Thu, May 02, 2019 at 02:28:02PM -0700, Florian Fainelli escreveu:
> On 4/8/19 9:26 AM, Will Deacon wrote:
> > On Fri, Apr 05, 2019 at 09:50:47AM -0700, Florian Fainelli wrote:
> >> Broadcom's Brahma-B53 CPUs support the same type of events that the
> >> Cortex-A53 supports, recognize its CPUID and map it to the cortex-a53
> >> events.
> >>
> >> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> >> ---
> >>  tools/perf/pmu-events/arch/arm64/mapfile.csv | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/tools/perf/pmu-events/arch/arm64/mapfile.csv b/tools/perf/pmu-events/arch/arm64/mapfile.csv
> >> index 59cd8604b0bd..e97c12484bc6 100644
> >> --- a/tools/perf/pmu-events/arch/arm64/mapfile.csv
> >> +++ b/tools/perf/pmu-events/arch/arm64/mapfile.csv
> >> @@ -13,6 +13,7 @@
> >>  #
> >>  #Family-model,Version,Filename,EventType
> >>  0x00000000410fd03[[:xdigit:]],v1,arm/cortex-a53,core
> >> +0x00000000420f100[[:xdigit:]],v1,arm/cortex-a53,core
> >>  0x00000000420f5160,v1,cavium/thunderx2,core
> >>  0x00000000430f0af0,v1,cavium/thunderx2,core
> >>  0x00000000480fd010,v1,hisilicon/hip08,core
> > 
> > Acked-by: Will Deacon <will.deacon@arm.com>
> 
> Thanks! Can this be picked up?

Thanks, applied to perf/core.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
