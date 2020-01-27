Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB8614A3ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 13:31:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8U8EMyYqCFN/GXZqR2Clmmrtsi83iMvwfzJflNHa5E=; b=hhISkCciBjzXhA
	Nbjnz0wnft5gWOiAkQ2VQiRSs0THyRkbcUyxVNqUayQUQW/SWxcqwKSVwCSP6yLbwNaf4/Bdiked1
	IksETmrSDXf7ZJOtbUTw7wgvEhaycYHE8u+Gs+F3KVe9FAwY/hyqA5BGHBhuOxnUvswOYoQjY4jw8
	UJn8VKcr4hAlFGPeZIxpq332M30DACBvcNIoaOSJ/b62FYOArLTKqpC9pf9bMM7XP3BQeOWWTRmKd
	/33cRuZ5iFDSf+MLj78OjiqVIiwtx+907xJuD30mFrXzMh2rCFSOt8YY76UDKBVntM77kECuheP58
	d6d65i9VovZHl5yMCFRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw3YG-0005s3-8K; Mon, 27 Jan 2020 12:31:36 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3Y5-0005rD-1j
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 12:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580128282;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=oAnLNIAG1HbXrAdqHTG2NFjfY/aBl0jW6qpN4f74QF4=;
 b=I3Kt9i3ZmW7j/9LKjNK2bZXgUYV3IfeWOWGj3ow6UK2xyyBiD89TDZp+4FUss/JLLAiUCk
 n+JgGMzpsAQOXR09Vra7AA3tpCezREuW9uE+YEw5TI7E/f905xAWj7SkBsoTXVGdP9OJfj
 T2H0XO60G4Qi56vULdEWN7Vzi+8WtWo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-57-61GjJgf0OiuHdPJRgJqX5Q-1; Mon, 27 Jan 2020 07:31:17 -0500
X-MC-Unique: 61GjJgf0OiuHdPJRgJqX5Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D651613E1;
 Mon, 27 Jan 2020 12:31:14 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 956628E60E;
 Mon, 27 Jan 2020 12:31:10 +0000 (UTC)
Date: Mon, 27 Jan 2020 13:31:08 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: James Clark <james.clark@arm.com>
Subject: Re: [PATCH v2 5/7] perf tools: add perf_evlist__terminate() for
 terminate
Message-ID: <20200127123108.GC1114818@krava>
References: <20200123160734.3775-1-james.clark@arm.com>
 <20200123160734.3775-6-james.clark@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123160734.3775-6-james.clark@arm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_043125_165681_A50FB483 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 wxf.wang@hisilicon.com, Peter Zijlstra <peterz@infradead.org>,
 Will Deacon <will@kernel.org>, suzuki.poulose@arm.com,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 gengdongjiu@huawei.com, linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, liuqi115@hisilicon.com,
 Tan Xiaojun <tanxiaojun@huawei.com>, huawei.libin@huawei.com,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, liwei391@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 04:07:32PM +0000, James Clark wrote:
> From: Wei Li <liwei391@huawei.com>
> 
> In __cmd_record(), when receiving SIGINT(ctrl + c), a done flag will
> be set and the event list will be disabled by perf_evlist__disable()
> once.
> 
> While in auxtrace_record.read_finish(), the related events will be
> enabled again, if they are continuous, the recording seems to be endless.
> 
> Mark the evlist's state as terminated, preparing for the following fix.
> 
> Signed-off-by: Wei Li <liwei391@huawei.com>
> Tested-by: Qi Liu <liuqi115@hisilicon.com>
> Signed-off-by: James Clark <james.clark@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Tan Xiaojun <tanxiaojun@huawei.com>
> Cc: Al Grant <al.grant@arm.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> ---
>  tools/perf/builtin-record.c |  1 +
>  tools/perf/util/evlist.c    | 14 ++++++++++++++
>  tools/perf/util/evlist.h    |  1 +
>  tools/perf/util/evsel.h     |  1 +
>  4 files changed, 17 insertions(+)
> 
> diff --git a/tools/perf/builtin-record.c b/tools/perf/builtin-record.c
> index 4c301466101b..e7c917f9534d 100644
> --- a/tools/perf/builtin-record.c
> +++ b/tools/perf/builtin-record.c
> @@ -1722,6 +1722,7 @@ static int __cmd_record(struct record *rec, int argc, const char **argv)
>  		if (done && !disabled && !target__none(&opts->target)) {
>  			trigger_off(&auxtrace_snapshot_trigger);
>  			evlist__disable(rec->evlist);
> +			evlist__terminate(rec->evlist);
>  			disabled = true;
>  		}
>  	}
> diff --git a/tools/perf/util/evlist.c b/tools/perf/util/evlist.c
> index b9c7e5271611..b04794cd8586 100644
> --- a/tools/perf/util/evlist.c
> +++ b/tools/perf/util/evlist.c
> @@ -377,6 +377,20 @@ bool evsel__cpu_iter_skip(struct evsel *ev, int cpu)
>  	return true;
>  }
>  
> +void evlist__terminate(struct evlist *evlist)
> +{
> +	struct evsel *pos;
> +
> +	evlist__for_each_entry(evlist, pos) {
> +		if (pos->disabled || !perf_evsel__is_group_leader(pos) || !pos->core.fd)
> +			continue;
> +		evsel__disable(pos);
> +		pos->terminated = true;
> +	}

how is this different from evlist__disable? other than it does not
follow the cpu affinity ;-) can't you just call evlist__disable and
check later on evlist->enabled instead of evlist->terminated?

jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
