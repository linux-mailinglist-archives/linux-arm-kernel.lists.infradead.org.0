Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44660157475
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 13:25:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPbzIhndby8R5RDJFaL854R6fAlUYzuTL64oAEf3UJQ=; b=LIalwVF0z8yBkf
	Ep+vmvaUDaNuDB8GqFCBlMrbx6eI7gglEmkkh6paWmZ4gF/EjyE6wuCpyCNf4HpzL/sQCU/+Y2PQr
	WB0JhQe9BM6KM7rEia5N7uNiJMBOmzWgM/IgS/09WWgHc1UWhFWKHX6Kf92KujJSOlWWBNpNu+rYU
	2G+jXmvtmrVu5D+1yUZ8PRjOPDr61GX1iBm+gHL0plhlL3eshEGpZ7oGay2oX6Jxk44Zz5l83WlKU
	YLajBtJRuA4qv5MmR0wnflBTCheXDZPtayE3HUtXNEZQFcF/OhdGaCwYQc9Z4t1iXuPwrN/lVseX3
	XwIsz6s93BMr3Gx4pavQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1881-0007G2-Pg; Mon, 10 Feb 2020 12:25:29 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j187v-0007Ey-2C
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 12:25:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581337520;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=8bOZtM38ft0UNzkfcKXCCm45plDuDA+WiWNvbXuXVks=;
 b=HwJxeGzE/OYw5mulHKaxc9fMbQ6UlDa7xIC9CCRUYSgdfvu6Pj+x/2hzJCYQAuGfC/mDDC
 XLgii+twnHO+He95baV4u2x/AiYpTVDAnB6SK7Clo8e+9civlTOvSMelwgx8vbXk9cyQsl
 kq0LWSX5P82+8UwWEcb74sBZw7dIZ/0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-400-7misDm8vMPqaE4WoYJh8YQ-1; Mon, 10 Feb 2020 07:25:16 -0500
X-MC-Unique: 7misDm8vMPqaE4WoYJh8YQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DDE50107ACC5;
 Mon, 10 Feb 2020 12:25:14 +0000 (UTC)
Received: from krava (unknown [10.43.17.9])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FC2B5C1D6;
 Mon, 10 Feb 2020 12:25:12 +0000 (UTC)
Date: Mon, 10 Feb 2020 13:25:09 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: James Clark <james.clark@arm.com>
Subject: Re: [PATCH v3 4/4] perf tools: Support "branch-misses:pp" on arm64
Message-ID: <20200210122509.GA2005279@krava>
References: <20200127123108.GC1114818@krava>
 <20200207152142.28662-1-james.clark@arm.com>
 <20200207152142.28662-5-james.clark@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207152142.28662-5-james.clark@arm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_042523_241477_C6D98BB4 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Peter Zijlstra <peterz@infradead.org>, liwei391@huawei.com,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, Will Deacon <will@kernel.org>,
 Tan Xiaojun <tanxiaojun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 03:21:42PM +0000, James Clark wrote:

SNIP

>  
>  #define ITRACE_HELP \
>  "				i:	    		synthesize instructions events\n"		\
> @@ -728,6 +729,11 @@ void auxtrace__free(struct perf_session *session __maybe_unused)
>  {
>  }
>  
> +static inline
> +void auxtrace__preprocess_evlist(struct evlist *evlist __maybe_unused)
> +{
> +}
> +
>  static inline
>  int auxtrace_index__write(int fd __maybe_unused,
>  			  struct list_head *head __maybe_unused)
> diff --git a/tools/perf/util/evlist.c b/tools/perf/util/evlist.c
> index 1548237b6558..84136d0adb29 100644
> --- a/tools/perf/util/evlist.c
> +++ b/tools/perf/util/evlist.c
> @@ -9,6 +9,7 @@
>  #include <errno.h>
>  #include <inttypes.h>
>  #include <poll.h>
> +#include "arm-spe.h"
>  #include "cpumap.h"
>  #include "util/mmap.h"
>  #include "thread_map.h"
> diff --git a/tools/perf/util/evsel.h b/tools/perf/util/evsel.h
> index dc14f4a823cd..c212e2eeeeb2 100644
> --- a/tools/perf/util/evsel.h
> +++ b/tools/perf/util/evsel.h
> @@ -174,7 +174,6 @@ void perf_evsel__exit(struct evsel *evsel);
>  void evsel__delete(struct evsel *evsel);
>  
>  struct callchain_param;
> -

hum? ;-)

jirka

>  void perf_evsel__config(struct evsel *evsel,
>  			struct record_opts *opts,
>  			struct callchain_param *callchain);
> -- 
> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
