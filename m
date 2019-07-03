Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 078EA5EC28
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 21:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmmGQHx+E1Xmsq+WQZtLg9ULY/rq7Zy2NajjqFLevIU=; b=CId/Ofcf7EdVyK
	hQs5ryO6PX+UTqfWwo006H9qefEx41JCa1nLv3t2jyboETf0mM/vT9xpxZAOpExPFOW50bkfvMODK
	pd9lkxw3kJmuHvtDUipc8QABi0V05Jmhx4bosqFMZ3UsOf20FxsDGQGaf0pIUo0pb8uKAbV5A+9EY
	5a3EnVLnqQyuHmXegE/Vy5f13r/I7jnw83YNb+X+LZvYjpHgvoWDYkuvSau4E4QL4Oi3k7t9Oye68
	l2jX1LYWv/LFqUohu4VMs4SsfZrdzS5cC5f9joY9qRhi3FIqWzxu91Ns4E6s/hZT2edAzO9jLzSwg
	+qvKKeyojGKltbEhrjFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikY9-0007Cn-JC; Wed, 03 Jul 2019 19:04:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikXH-0006gd-BB
 for linux-arm-kernel@bombadil.infradead.org; Wed, 03 Jul 2019 19:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9j91QuzZiuA3k9yRtiEcwirJNujPfeZz+gfvWzqG4sM=; b=P1VEgFwTZfuElTcCPQMWMuwwV
 2yZfwwe3QwvmXVA6IfxdEPaYhq5qXo5Ty6kpKy+izCa1rLxVWQDYQZmdC4Pg/iXewnSUxiyxecEr7
 8jiRQ5uGVPfcOQVtzvQOGaM/BLAmZvtgsjZ+1jJOImVU/xKRLuFl4wkbb6oeiT699jJfgflzKM2VS
 jhosPBZ5UlUQWLfXTNt+gGz4qCpPzinK4/DIK3r6ZM0Opq/+4lPjWQhwTlAc76tIDEtsQO3GMfEMZ
 2mCj06EEzoUbA8sHNPExDNagG7w9lz8TmcM/kYb7LK+zT41UU/GXbqOixYQPPLb0+E/pfNhV25EP1
 HPuqhE7eQ==;
Received: from [177.195.209.182] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hikXF-0000hO-85; Wed, 03 Jul 2019 19:03:17 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 7CFD341153; Wed,  3 Jul 2019 16:01:57 -0300 (-03)
Date: Wed, 3 Jul 2019 16:01:57 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 08/11] perf session: Smatch: Fix potential NULL
 pointer dereference
Message-ID: <20190703190157.GG10740@kernel.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-9-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702103420.27540-9-leo.yan@linaro.org>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: Song Liu <songliubraving@fb.com>, Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Jin Yao <yao.jin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Andi Kleen <ak@linux.intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Ingo Molnar <mingo@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Davidlohr Bueso <dave@stgolabs.net>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Changbin Du <changbin.du@intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, Jul 02, 2019 at 06:34:17PM +0800, Leo Yan escreveu:
> Based on the following report from Smatch, fix the potential
> NULL pointer dereference check.
> 
>   tools/perf/util/session.c:1252
>   dump_read() error: we previously assumed 'evsel' could be null
>   (see line 1249)
> 
> tools/perf/util/session.c
> 1240 static void dump_read(struct perf_evsel *evsel, union perf_event *event)
> 1241 {
> 1242         struct read_event *read_event = &event->read;
> 1243         u64 read_format;
> 1244
> 1245         if (!dump_trace)
> 1246                 return;
> 1247
> 1248         printf(": %d %d %s %" PRIu64 "\n", event->read.pid, event->read.tid,
> 1249                evsel ? perf_evsel__name(evsel) : "FAIL",
> 1250                event->read.value);
> 1251
> 1252         read_format = evsel->attr.read_format;
>                            ^^^^^^^
> 
> 'evsel' could be NULL pointer, for this case this patch directly bails
> out without dumping read_event.

So this needs another hunk, adding it.

diff --git a/tools/perf/builtin-inject.c b/tools/perf/builtin-inject.c
index 8e0e06d3edfc..f4591a1438b4 100644
--- a/tools/perf/builtin-inject.c
+++ b/tools/perf/builtin-inject.c
@@ -224,7 +224,7 @@ static int perf_event__repipe_sample(struct perf_tool *tool,
 				     struct perf_evsel *evsel,
 				     struct machine *machine)
 {
-	if (evsel->handler) {
+	if (evsel && evsel->handler) {
 		inject_handler f = evsel->handler;
 		return f(tool, event, sample, evsel, machine);
 	}
 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/session.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/tools/perf/util/session.c b/tools/perf/util/session.c
> index 54cf163347f7..2e61dd6a3574 100644
> --- a/tools/perf/util/session.c
> +++ b/tools/perf/util/session.c
> @@ -1249,6 +1249,9 @@ static void dump_read(struct perf_evsel *evsel, union perf_event *event)
>  	       evsel ? perf_evsel__name(evsel) : "FAIL",
>  	       event->read.value);
>  
> +	if (!evsel)
> +		return;
> +
>  	read_format = evsel->attr.read_format;
>  
>  	if (read_format & PERF_FORMAT_TOTAL_TIME_ENABLED)
> -- 
> 2.17.1

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
