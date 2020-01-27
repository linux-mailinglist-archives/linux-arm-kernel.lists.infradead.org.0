Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B91E14A3EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 13:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RXwrIn2Jlgc84JGOJrIf6uA7nTiB0TC4c258uqAOy8E=; b=k5sUCTgIJmosdg
	1yEcLv0whM60rz7pK+iImk8tf0ChBt4JqS4ld/5WgZInXF9qbOqSMFQaHAYJEKizWxZ7tGe4A5Dnb
	5kn021BUDBs5yKddkxcki+ylrALQGXe3iW4wJCesVr5qoilXsX8gvBi6VRtBjV3NDBubHiisyU2dU
	tIMwVBy57nywPiDHhitjNFbjIRjYnjNKDHUsURu+q85TMo+uM07R5jBoH/zE6MOl+uKXAZ1OcbAW8
	IvnQRRCMl+5VZU/n1HHKevDqYOUIu7gNFwY/zkkrtzqtBuwVlchhczTDws3yrKYvDik/9lmm7pxwi
	EU84WEXo/VI/WWeCZDfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw3Yc-000675-2w; Mon, 27 Jan 2020 12:31:58 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3YE-0005x2-O1
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 12:31:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580128292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1hhEdcDWCEgGN0YrQx/xF84TmWOWm/XDVRZuqvlPeOI=;
 b=JfbsiiPNDqlc02HG5vHt43/sRsb7/cCU59wRNbHZaLbcYEAlaM58nb+dagt9LeSvNEy11i
 6l76cqnODbwJeA0IL95uUGW7kd6vrjrTc2/42ia4WhDe4VfyeBzt83UrrnKvbM+n/OLfBi
 PlNfQtTBgElSCMi6DGT1b5C8uLPfWaQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-270-XumPK1NYNvKbzopPmVyKfg-1; Mon, 27 Jan 2020 07:31:28 -0500
X-MC-Unique: XumPK1NYNvKbzopPmVyKfg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 001F31005510;
 Mon, 27 Jan 2020 12:31:25 +0000 (UTC)
Received: from krava (unknown [10.43.17.48])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7EBA98E60E;
 Mon, 27 Jan 2020 12:31:22 +0000 (UTC)
Date: Mon, 27 Jan 2020 13:31:20 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: James Clark <james.clark@arm.com>
Subject: Re: [PATCH v2 4/7] perf tools: Support "branch-misses:pp" on arm64
Message-ID: <20200127123120.GD1114818@krava>
References: <20200123160734.3775-1-james.clark@arm.com>
 <20200123160734.3775-5-james.clark@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123160734.3775-5-james.clark@arm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_043134_893215_C0E1CCC1 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
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

On Thu, Jan 23, 2020 at 04:07:31PM +0000, James Clark wrote:

SNIP

> diff --git a/tools/perf/util/evlist.c b/tools/perf/util/evlist.c
> index 1548237b6558..b9c7e5271611 100644
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
> @@ -179,6 +180,7 @@ void perf_evlist__splice_list_tail(struct evlist *evlist,
>  	struct evsel *evsel, *temp;
>  
>  	__evlist__for_each_entry_safe(list, temp, evsel) {
> +		arm_spe_precise_ip_support(evlist, evsel);

this is 'splice' function, you can't configure precise in here

do you need this 'config thing' to be executed on arm only?

if yes, please add something like arch_evsel__config, make it
weak for generic code and define it for arm

if no, just add the call at the end perf_evsel__config I guess

thanks,
jirka

>  		list_del_init(&evsel->core.node);
>  		evlist__add(evlist, evsel);
>  	}
> -- 
> 2.25.0
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
