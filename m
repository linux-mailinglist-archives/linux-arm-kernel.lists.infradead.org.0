Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B6A161147
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 12:41:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCx/hb4FlZJGyx2a7yPHzdlvrZiSniPLuXy3EsmgWdw=; b=o8x0CdVZwVT5Ly
	Ml98tSvejCiVZuOYXiDchttICFPJzd8HOqk2jxhZu26jtl7onGPrzjkrPVvaD4fWhC0iJf0FocTfw
	IaTg19v1Q3qro1TkIiqQsRPK0asrqSlBv0MwmT5naNKQ2DWZSbMk6WK/wdzySz+p2U1ob8M50+j20
	GqvjxZW2W314uEbUAYwCTHT4so9sSRbupdvG7/qpLhQB0h3pcZ9/JqYcgpQSEVrIpBKmaQ+VfoOYe
	BtxQBwJMjFCKvLCzAJkrHY4U66URpxlZZsAx1/BbG1kTN6Fp+g3L0u4uD8KeuFGpRzlBFOH53kRws
	RqJpEmVVaCwW0xh8ZgqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3em2-0003L3-IW; Mon, 17 Feb 2020 11:41:14 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ell-0003IZ-QV
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 11:40:59 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 03:40:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,452,1574150400"; d="scan'208";a="435525438"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga006.fm.intel.com with ESMTP; 17 Feb 2020 03:40:52 -0800
Subject: Re: [PATCH v4 3/4] perf report: Add SPE options to --itrace argument
To: James Clark <james.clark@arm.com>, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200210122509.GA2005279@krava>
 <20200211140445.21986-1-james.clark@arm.com>
 <20200211140445.21986-4-james.clark@arm.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <768a33f2-8694-270e-d3e8-3da4c65e96b3@intel.com>
Date: Mon, 17 Feb 2020 13:39:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200211140445.21986-4-james.clark@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_034057_867676_9947359A 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>, nd@arm.com,
 Will Deacon <will@kernel.org>, Tan Xiaojun <tanxiaojun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/02/20 4:04 pm, James Clark wrote:
> From: Tan Xiaojun <tanxiaojun@huawei.com>
> 
> The previous patch added support in "perf report" for some arm-spe
> events(llc-miss, tlb-miss, branch-miss, remote_access). This patch
> adds their help instructions.
> 
> Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
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

There is also ITRACE_HELP in tools/perf/util/auxtrace.h

Otherwise for auxtrace:

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  tools/perf/Documentation/itrace.txt | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/Documentation/itrace.txt b/tools/perf/Documentation/itrace.txt
> index 82ff7dad40c2..8e1488de1fb3 100644
> --- a/tools/perf/Documentation/itrace.txt
> +++ b/tools/perf/Documentation/itrace.txt
> @@ -1,5 +1,5 @@
>  		i	synthesize instructions events
> -		b	synthesize branches events
> +		b	synthesize branches events (branch misses on Arm)
>  		c	synthesize branches events (calls only)
>  		r	synthesize branches events (returns only)
>  		x	synthesize transactions events
> @@ -12,6 +12,9 @@
>  		g	synthesize a call chain (use with i or x)
>  		l	synthesize last branch entries (use with i or x)
>  		s       skip initial number of events
> +		m	synthesize LLC miss events
> +		t	synthesize TLB miss events
> +		a	synthesize remote access events
>  
>  	The default is all events i.e. the same as --itrace=ibxwpe,
>  	except for perf script where it is --itrace=ce
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
