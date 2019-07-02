Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192EC5CE1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 13:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPKySUGbUpGZWG7OBjhIRv1UaqKBg8PhBuieYmBPZx4=; b=hffcWFszER45xd
	g+PvbIod9JbjUeWg24XLwHoUP2tVPF+kGo+lGcsF1QxpmJbiX0llCSJwaMqHZNNH1j71wZyzZpLUR
	55NShDdPnYvNSIzhdZuvr057/Ervi4+AiJhMy67qFA18e64USn2MzYW8k4fMSyt3bQ19svwN/NTBp
	S+Mv+zxBCEBZ9g2K5xkmtIxXYGndRT2nc7jUGxGpvDssRtNyKh59o+fHszUVD45jHmnuv965bxRoA
	1ISH+nNrZfQFZ39EiZcGugMHC5pzM9nhbxfXfskP+T68+fRcT09DWOPKfpIpR1BxF8TxAMQxoqHbn
	Jsxc5xYo+3nGUdMT6BHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGdm-0008Lv-UA; Tue, 02 Jul 2019 11:08:03 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGda-0008LW-V6
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 11:07:52 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E79EA120D7;
 Tue,  2 Jul 2019 11:07:38 +0000 (UTC)
Received: from krava (unknown [10.43.17.81])
 by smtp.corp.redhat.com (Postfix) with SMTP id 2AB116F921;
 Tue,  2 Jul 2019 11:07:29 +0000 (UTC)
Date: Tue, 2 Jul 2019 13:07:28 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 06/11] perf hists: Smatch: Fix potential NULL pointer
 dereference
Message-ID: <20190702110728.GA15322@krava>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-7-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702103420.27540-7-leo.yan@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 02 Jul 2019 11:07:48 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_040751_026279_3145272A 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Jin Yao <yao.jin@linux.intel.com>, Andi Kleen <ak@linux.intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Ingo Molnar <mingo@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
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

On Tue, Jul 02, 2019 at 06:34:15PM +0800, Leo Yan wrote:
> Based on the following report from Smatch, fix the potential
> NULL pointer dereference check.
> 
>   tools/perf/ui/browsers/hists.c:641
>   hist_browser__run() error: we previously assumed 'hbt' could be
>   null (see line 625)
> 
>   tools/perf/ui/browsers/hists.c:3088
>   perf_evsel__hists_browse() error: we previously assumed
>   'browser->he_selection' could be null (see line 2902)
> 
>   tools/perf/ui/browsers/hists.c:3272
>   perf_evsel_menu__run() error: we previously assumed 'hbt' could be
>   null (see line 3260)
> 
> This patch firstly validating the pointers before access them, so can
> fix potential NULL pointer dereference.
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/ui/browsers/hists.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/tools/perf/ui/browsers/hists.c b/tools/perf/ui/browsers/hists.c
> index 3421ecbdd3f0..2ba33040ddd8 100644
> --- a/tools/perf/ui/browsers/hists.c
> +++ b/tools/perf/ui/browsers/hists.c
> @@ -638,7 +638,9 @@ int hist_browser__run(struct hist_browser *browser, const char *help,
>  		switch (key) {
>  		case K_TIMER: {

not sure this can really happen, perhaps WARN_ON_ONCE(!hbt) would be
good in here

jirka

>  			u64 nr_entries;
> -			hbt->timer(hbt->arg);
> +
> +			if (hbt)
> +				hbt->timer(hbt->arg);
>  
>  			if (hist_browser__has_filter(browser) ||
>  			    symbol_conf.report_hierarchy)

SNIP

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
