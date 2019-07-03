Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5A65EBA0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 20:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQiJFXhr6e2/AcBjEdBrg5UFP5PM3duft/kSApSRAJ4=; b=a6mHIFsL93gr/T
	oIM7YGDND2Z+2GjEBxr1JiTjIui+2/5I4a/Va7gMUGjtpzKDddd47NvZxsM/KfvXG0UPSWUmKGB7H
	L0xkLsfJJsND+V/BOuaU0TQZxNmHaFXnHW0oVZRY2OVO1y/TPYB5z5tExy+9MRwlPTcwLCB+iTG5t
	Un1k1kXcpd+zwtpbP22ypku6M2XfvveaDQao/0uYHBahHthFHxmbImGTPWk1PofgFvoX3HcEENNDd
	095b9AEHle3Jc+wnLK7VDwYaSDsCgM6CP4xNZWQCX5E8p96xiKslxhwJLby6V3UnKKN53kjMkpvnr
	GFsD3c/dADwrguvjkRPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hik24-0002d8-5v; Wed, 03 Jul 2019 18:31:04 +0000
Received: from [177.195.209.182] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hik1t-0002cu-UB; Wed, 03 Jul 2019 18:30:54 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 5542A41153; Wed,  3 Jul 2019 15:30:49 -0300 (-03)
Date: Wed, 3 Jul 2019 15:30:49 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 03/11] perf top: Smatch: Fix potential NULL pointer
 dereference
Message-ID: <20190703183049.GD10740@kernel.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-4-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702103420.27540-4-leo.yan@linaro.org>
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

Em Tue, Jul 02, 2019 at 06:34:12PM +0800, Leo Yan escreveu:
> Based on the following report from Smatch, fix the potential
> NULL pointer dereference check.
> 
>   tools/perf/builtin-top.c:109
>   perf_top__parse_source() warn: variable dereferenced before check 'he'
>   (see line 103)
> 
>   tools/perf/builtin-top.c:233
>   perf_top__show_details() warn: variable dereferenced before check 'he'
>   (see line 228)
> 
> tools/perf/builtin-top.c
> 101 static int perf_top__parse_source(struct perf_top *top, struct hist_entry *he)
> 102 {
> 103         struct perf_evsel *evsel = hists_to_evsel(he->hists);
>                                                       ^^^^
> 104         struct symbol *sym;
> 105         struct annotation *notes;
> 106         struct map *map;
> 107         int err = -1;
> 108
> 109         if (!he || !he->ms.sym)
> 110                 return -1;
> 
> This patch moves the values assignment after validating pointer 'he'.

Applied, thanks,

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
