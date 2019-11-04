Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10630EE23E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:27:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQsmh9gKNSHtOqY+LEzLJ6TGlD+P8Q3sxyoT7T7xcgU=; b=E+NZguhhvpNWx+
	fvZA0Z607/hImkCDobH9nlerDy8ChnNJ7jCV1RjEQIQBbi4nA5aV+o7xpc/2P0TravUT+dyPfOinN
	ekdDYOIPQlAVLGyJNoImJx/XoxAsTb8wahg2ItzjR9DOb7/pnqfKAWeZ0NzjEIm9fjw+oj7b3LKgB
	84KzxTC5qwDl6vT81GXNV+UjM25kf7sTzeS9j24Xl+5sj+4ABE3w8I373DTa6IWMrm2Wfv7/F3Rbu
	rt0ybQnv6ctGKjh5EpcMlxr7yDqbuVsM0633HXgrWs4PfEryuDG1fMvkL0iOBTDbUcW7nzPGEvvLX
	/PnONg72k5IspuguLKcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRdK2-0000lS-CC; Mon, 04 Nov 2019 14:27:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdJs-0000kO-8v
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 14:27:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01E0A217F4;
 Mon,  4 Nov 2019 14:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572877619;
 bh=0IjKRPtlsAuGGSBfyycUTHeq+OKoAcUZR2xfdqbrOgs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EcwNhrNW699SAWToP/HTLcjb/0Z5KD9Ws4UgUPP7G8FaI4CkH1achz2b6G8yRHmPX
 KUp8mUaFn23KKjjV7S2q8vXsnnkEzHKzEAr4SIsa4FWir9RubmKdDuAKKQDOi7z3UW
 gtlvHv2zF/WuZLLl1N2CUhO2A3M06mGFLMG2ZfgA=
Date: Mon, 4 Nov 2019 14:26:54 +0000
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>
Subject: Re: [RFC] About perf-mem command support on arm64 platform
Message-ID: <20191104142654.GA24609@willie-the-truck>
References: <74f8ddb5-13cc-5dce-82a6-ca8bd02f8175@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74f8ddb5-13cc-5dce-82a6-ca8bd02f8175@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_062700_333931_54981979 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 liuqi115@hisilicon.com, huangdaode@hisilicon.com,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 05:18:00PM +0800, Shaokun Zhang wrote:
> perf-mem is used to profile memory access which has been implemented on x86
> platform. It needs mem-stores events and mem-loads/load-latency.
> For mem-stores events, it is MEM_INST_RETIRED_ALL_STORES whose raw number
> is r82d0, and mem-loads/load-latency is from PEBS if I follow its code.
> 
> Now, for some arm64 cores, like HiSilicon's tsv110 and ARM's Neoverse N1,
> has supported the SPE(Statistical Profiling Extensions), so is it a
> possibility that perf-mem is supported on arm64?
> https://developer.arm.com/ip-products/processors/neoverse/neoverse-n1

I don't understand the relationship you're trying to draw between mem-stores
and SPE. How does perf-mem work and what does it actually require from the
CPU?

One thing that may be worth noting is that SPE isn't generally able to
capture information about all instructions being executed by the CPU:
instead, it instructions (most likely micro-ops) are sampled based on
some user-specified period. The CPU advertises a minimum recommended
period which we expose under /sys and enforce when programming events.

> For arm64 PMU, it has 'st_retired' event that the event number is 0x0007
> which is equal to mem-stores on x86, if we want support perf-mem, it seems
> that 'st_retired' shall be replaced by 'mem-stores'
> in arch/arm64/kernel/perf_event.c file. Of course, the cpu core should
> support st_retired event. I'm not sure Will/Mark are happy on this.;-)
> 
> For mem-loads/load-latency, we can derive them from SPE sampled data which
> supports by load_filter and min_latency in SPE driver. and we may do some
> work on tools/perf/builtin-mem.c.

I don't see how you could reconcile the sampling nature of SPE with a
CPU PMU counter, particularly as filtering in SPE happens /after/ sampling.

> From the above conditions, it seems that we may have the opportunity to
> support the perf-mem command on arm64.
> I'm not very sure about it, so I send this RFC and any comments are welcome.

I don't think there's enough information here to comment meaningfully more
than SPE != PEBS.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
