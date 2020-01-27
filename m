Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485DC14A3F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 13:32:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06mv8IU/8dJ/5EJtrXSICE2Uaz+BqEwHWyvVVMXgH5Q=; b=aogHdbFuZUJ4wK
	VyAyvf6aQinMBrdnuq3JshrdgncoJTmU1WP2NaaMtF9iZgCJI4lwvh0UMQ2gz11mPUi8tZ/NvXOKK
	lK6rZJDDh2UQ0EpS5x2U7n8/ZgwTwGPssRh4tQUjeiRzkZ9O5g1Zzs/O5iKhTfXgHENquWg4mB5xT
	qxbbLFLreBIref9+LVn8GFG8bGErytdkOXKopC3bOL6m7M1AsqKqRVU+smoKY+fqVlyJbYvodliJC
	tvtjlyKfiWfvGGiVbdN5kjU7zDuqCqnBzT0c9FBuB2QLt9roK9m2AXLLVLVLmj9D4KtnGje5Ql0nI
	EUDRqeFQuiuyblhN7APQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw3Yp-0006Ls-Q6; Mon, 27 Jan 2020 12:32:11 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3YQ-000698-IK
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 12:31:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580128305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RKjG1/5cA7SZH1QMU5AvJ91rZVjHPgjPOojbBcC6/cs=;
 b=gpjLwG+chdkYTmdvdRbceOsRrYlw/+VOYMRKP0eBERjPdMoJ+DxpBHNVozcrOBInaECcGM
 rBQ6SvLvOpLnGWSUypG7v4NudueYCLSOB3MYSrZhYZglPX80htglM8GMiUstbA4+CTQ4W/
 gaPoOnUDpqLSl9+aCKlhAE+/Dyu3M9M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-7tc7XUzxOJe_owBE1WQQ9Q-1; Mon, 27 Jan 2020 07:31:39 -0500
X-MC-Unique: 7tc7XUzxOJe_owBE1WQQ9Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6CEE8017CC;
 Mon, 27 Jan 2020 12:31:35 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2EADC451F;
 Mon, 27 Jan 2020 12:31:32 +0000 (UTC)
Date: Mon, 27 Jan 2020 13:31:29 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: James Clark <james.clark@arm.com>
Subject: Re: [PATCH v2 2/7] perf tools: Add support for "report" for some spe
 events
Message-ID: <20200127123129.GE1114818@krava>
References: <20200123160734.3775-1-james.clark@arm.com>
 <20200123160734.3775-3-james.clark@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123160734.3775-3-james.clark@arm.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_043146_684302_5960CC6A 
X-CRM114-Status: GOOD (  14.95  )
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

On Thu, Jan 23, 2020 at 04:07:29PM +0000, James Clark wrote:

SNIP

> diff --git a/tools/perf/util/auxtrace.h b/tools/perf/util/auxtrace.h
> index 749d72cd9c7b..b47108599280 100644
> --- a/tools/perf/util/auxtrace.h
> +++ b/tools/perf/util/auxtrace.h
> @@ -111,6 +111,22 @@ struct itrace_synth_opts {
>  	int			range_num;
>  };
>  
> +/**
> + * struct arm_spe_synth_opts - ARM SPE tracing synthesis options.
> + * @set: indicates whether or not options have been set
> + * @llc_miss: whether to synthesize last level cache miss events
> + * @tlb_miss: whether to synthesize TLB miss events
> + * @branch_miss: whether to synthesize Branch miss events
> + * @remote_access: whether to synthesize Remote access events
> + */
> +struct arm_spe_synth_opts {
> +	bool			set;
> +	bool			llc_miss;
> +	bool			tlb_miss;
> +	bool			branch_miss;
> +	bool			remote_access;

hum, why don't you add that to itrace_synth_opts instead? seems generic enough

I don't follow the code much, but I assume itrace_synth_opts is generic object,
as it's already used by some of the s390 and x86 code.. also I don't like new
pointer to synth_ops in perf_session

jirka

> diff --git a/tools/perf/util/session.h b/tools/perf/util/session.h
> index f76480166d38..cee134d7643f 100644
> --- a/tools/perf/util/session.h
> +++ b/tools/perf/util/session.h
> @@ -19,6 +19,7 @@ struct thread;
>  
>  struct auxtrace;
>  struct itrace_synth_opts;
> +struct arm_spe_synth_opts;
>  
>  struct perf_session {
>  	struct perf_header	header;
> @@ -26,6 +27,7 @@ struct perf_session {
>  	struct evlist	*evlist;
>  	struct auxtrace		*auxtrace;
>  	struct itrace_synth_opts *itrace_synth_opts;
> +	struct arm_spe_synth_opts *arm_spe_synth_opts;
>  	struct list_head	auxtrace_index;
>  	struct trace_event	tevent;
>  	struct perf_record_time_conv	time_conv;
> -- 
> 2.25.0
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
