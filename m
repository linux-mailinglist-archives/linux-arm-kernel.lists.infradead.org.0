Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B718562B44
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 23:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFwZ+5e+pWmeTLOHKVqcY98la3sc+x+Sv9NYqD2AeXI=; b=H4B1XhAgelt8oC
	tRnRmnKmI+nowMIV1245xCOZ6MTcuQMOl/V2LPBDEf5omTymeko+0BJMk/IO7sVkrMm62MGswHYEq
	1rbZTWaUkuNIbNyGa7/kVpqug5IWtfpjdpmcT3hiWShqgGnI8AGzXdRhCZs4zFsmta+hBm18cQfsc
	qnsy76QgJX7mHK9sNyusJ/NAGYURs0iGyU2w4OLZ/CDQ7W+bIEnnoHld2OUTYIsZ6XzybTaqsdCxR
	gCTNWpgYv2HieXy5izmpgXbrv1hil+mhTNyAqrD5bGCw9v11Ocaq1Q6pnJpS1TVoRDfaTBGtfEnOb
	N+19DubUttZ5XwAmNRYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkbe6-0007Tb-7s; Mon, 08 Jul 2019 21:58:02 +0000
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hkbdl-0007TR-0u
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 21:57:41 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 2081B40340; Mon,  8 Jul 2019 18:57:38 -0300 (-03)
Date: Mon, 8 Jul 2019 18:57:38 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 4/4] perf cs-etm: Smatch: Fix potential NULL pointer
 dereference
Message-ID: <20190708215738.GC7455@kernel.org>
References: <20190708143937.7722-1-leo.yan@linaro.org>
 <20190708143937.7722-5-leo.yan@linaro.org>
 <CANLsYkwHMfVf-FUQ+wBkDfq9GnCihimFAhd+ybCsxMAt8d3HcA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkwHMfVf-FUQ+wBkDfq9GnCihimFAhd+ybCsxMAt8d3HcA@mail.gmail.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: Andi Kleen <ak@linux.intel.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Jul 08, 2019 at 11:38:48AM -0600, Mathieu Poirier escreveu:
> On Mon, 8 Jul 2019 at 08:40, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > Based on the following report from Smatch, fix the potential
> > NULL pointer dereference check.
> >
> >   tools/perf/util/cs-etm.c:2545
> >   cs_etm__process_auxtrace_info() error: we previously assumed
> >   'session->itrace_synth_opts' could be null (see line 2541)
> >
> > tools/perf/util/cs-etm.c
> > 2541         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> > 2542                 etm->synth_opts = *session->itrace_synth_opts;
> > 2543         } else {
> > 2544                 itrace_synth_opts__set_default(&etm->synth_opts,
> > 2545                                 session->itrace_synth_opts->default_no_sample);
> >                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^
> > 2546                 etm->synth_opts.callchain = false;
> > 2547         }
> >
> > 'session->itrace_synth_opts' is impossible to be a NULL pointer in
> > cs_etm__process_auxtrace_info(), thus this patch removes the NULL
> > test for 'session->itrace_synth_opts'.
> >
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/cs-etm.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index ad43a6e31827..ab578a06a790 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -2537,7 +2537,7 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
> >                 return 0;
> >         }
> >
> > -       if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> > +       if (session->itrace_synth_opts->set) {
> >                 etm->synth_opts = *session->itrace_synth_opts;
> >         } else {
> >                 itrace_synth_opts__set_default(&etm->synth_opts,
> 
> This is in accordance with what was previously discussed.
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Thanks, applied.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
