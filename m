Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB3B13A389
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 10:13:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/6eSj3PV8JvkNDR7IouGJOkKqBxLD+NPeiUrtdP9Yw=; b=Mi8nFegcNFT4mV
	TRUP3ndRm7sD9SfJN6E5ZgDug9jN+1BlYOWAfz44icjvgyKWkl1JTK6OvJB0SCF3RnlYA4wCf/Lzd
	yWEWLlnwJM2x0vUwfdUiD5RyjnyaTgE8qmbDwe9eZp6qIFNIh39kP1OA5TvZot6lpihqC0Sn2nsOD
	JESxDRwKbTMOPM/VGuciOBcqGzFjFxzR/Dpi0jGri3QcnBod8DnTvXF0TEVsBOV0xRnfL8rINj9ud
	qo/6dqkNOh5FDZTcg8BnVdiZHe+yinugTxtXw2GGasYKHV3yMI7QD+6AW9mwqKRcXKISHVHVgy0aT
	sxJItyavWMCzG80VU6og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irIFt-0003dd-21; Tue, 14 Jan 2020 09:12:57 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irIFh-0003dE-93
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 09:12:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578993162;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZALZvhnBSZ8UpPszsBIa5IaFJFn9TLqKEGfeaXNCWf8=;
 b=Yh+NX1KSORKkWlk1TUGahwy94NkrdE8imk9sTSP8rwgcW/8napmenTfgJ9S3YM56+OboXA
 P61vOFVc4KW0o6RIiWubjOCKovDsBnL3NI8+H4csAatZzT3cer/R0abs49HonUkEOOTPOJ
 h/e8g+n6ySGIBEBQ1Qjmgju2TR1QcyE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-17-s2IltAB8N3OuT-kphzjcZQ-1; Tue, 14 Jan 2020 04:12:36 -0500
X-MC-Unique: s2IltAB8N3OuT-kphzjcZQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A85CC100551A;
 Tue, 14 Jan 2020 09:12:34 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 848D2601B3;
 Tue, 14 Jan 2020 09:12:31 +0000 (UTC)
Date: Tue, 14 Jan 2020 10:12:28 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v5 2/2] perf parse: Copy string to perf_evsel_config_term
Message-ID: <20200114091228.GA170376@krava>
References: <20200113151806.17854-1-leo.yan@linaro.org>
 <20200113151806.17854-2-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113151806.17854-2-leo.yan@linaro.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_011245_395707_97033212 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Andi Kleen <ak@linux.intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 11:18:06PM +0800, Leo Yan wrote:
> perf with CoreSight fails to record trace data with command:
> 
>   perf record -e cs_etm/@tmc_etr0/u --per-thread ls
>   failed to set sink "" on event cs_etm/@tmc_etr0/u with 21 (Is a
>   directory)/perf/
> 
> This failure is root caused with the commit 1dc925568f01 ("perf
> parse: Add a deep delete for parse event terms").
> 
> The log shows, cs_etm fails to parse the sink attribution; cs_etm event
> relies on the event configuration to pass sink name, but the event
> specific configuration data cannot be passed properly with flow:
> 
>   get_config_terms()
>     ADD_CONFIG_TERM(DRV_CFG, term->val.str);
>       __t->val.str = term->val.str;
>         `> __t->val.str is assigned to term->val.str;
> 
>   parse_events_terms__purge()
>     parse_events_term__delete()
>       zfree(&term->val.str);
>         `> term->val.str is freed and assigned to NULL pointer;
> 
>   cs_etm_set_sink_attr()
>     sink = __t->val.str;
>       `> sink string has been freed.
> 
> To fix this issue, in the function get_config_terms(), this patch
> changes to use strdup() for allocation a new duplicate string rather
> than directly assignment string pointer.
> 
> This patch addes a new field 'free_str' in the data structure
> perf_evsel_config_term; 'free_str' is set to true when the union is used
> as a string pointer; thus it can tell perf_evsel__free_config_terms() to
> free the string.
> 
> Fixes: 1dc925568f01 ("perf parse: Add a deep delete for parse event terms")
> Suggested-by: Jiri Olsa <jolsa@kernel.org>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>

with that checkpatch changes

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
