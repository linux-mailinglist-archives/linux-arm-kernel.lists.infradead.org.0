Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D54139937
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:45:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6cuTmkllr28jxEcfNm/zWHLxhtx2wiK2a89+kCQ0ME=; b=GM5GA6SNifPAjY
	Va2LEVNLqWie0EB+pIwL7mBmxmnUpZnxLYV7XS/CHZvCs1yqRz2zCBu9D48FLBTgAOs4HLodpFZmN
	hGp/KPRG3c3CW12ijKgvoU6p2Op3iJF5M6Z0hskJMo81mokR1VzulJHRTA+p43AcB3U98qQ2jmk3A
	WjaN454aHXv96z28yYM9xY471jZWGkFvEmnHyeu3wsMCcY62LocOXPtLCAczwT9fI6QPJgTnvmupb
	X3ngcECPwfju7iKiNQkROVyMK2OK4R85l3xEqRVA7lG/TjitZT0sbAKbxOyqQKKP9wbWn6q2IoDHf
	0FyFLTJOijEFYBGtV1Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4il-0004Gg-6a; Mon, 13 Jan 2020 18:45:51 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4ie-0002jc-O5
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:45:45 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 10:43:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,429,1571727600"; d="scan'208";a="219367166"
Received: from tassilo.jf.intel.com (HELO tassilo.localdomain) ([10.7.201.21])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jan 2020 10:43:42 -0800
Received: by tassilo.localdomain (Postfix, from userid 1000)
 id 84880301003; Mon, 13 Jan 2020 10:43:42 -0800 (PST)
Date: Mon, 13 Jan 2020 10:43:42 -0800
From: Andi Kleen <ak@linux.intel.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v5 1/2] perf parse: Refactor struct perf_evsel_config_term
Message-ID: <20200113184342.GA302770@tassilo.jf.intel.com>
References: <20200113151806.17854-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113151806.17854-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_104544_823834_AE12226F 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
 Mathieu Poirier <mathieu.poirier@linaro.org>,
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

On Mon, Jan 13, 2020 at 11:18:05PM +0800, Leo Yan wrote:
> The struct perf_evsel_config_term::val is a union which contains
> fields 'callgraph', 'drv_cfg' and 'branch' as string pointers.  This
> leads to the complex code logic for handling every type's string
> separately, and it's hard to release string as a general way.
> 
> This patch refactors the structure to add a common field 'str' in the
> 'val' union as string pointer and remove the other three fields
> 'callgraph', 'drv_cfg' and 'branch'.  Without passing field name, the
> patch simplifies the string handling with macro ADD_CONFIG_TERM_STR()
> for string pointer assignment.

Looks like a good cleanup.

Reviewed-by: Andi Kleen <ak@linux.intel.com>

-Andi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
