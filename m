Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2024E8A83B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 22:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myeRwS/zfSmtAGzrRMyk5ucsetf4ysglGDfC0CMcmg8=; b=uZeWloEErmTXWt
	KhMpNWxbrltazeWAidPd7OqXoLOGYGVfJp1MP/uH8ddSUidaTuOf2CYv626GF8Rg5i2VIkA9UE6eg
	AA2V3kqnEgHdEyA/sxNDTbjYdZl2QXydgbVJe6Qt+1pq1b0h7UeIsmlztSdciHPE4/3uQTG8ToWKo
	9ht+kqWCAX+M0FiJtsxKqjfNRtPlELdP8qqhcE8lvVturgXUlnpVxBuUxPmap6MyIMqgzN5sR8M64
	aYiGVMkJK/38qvkKDEybZ75NoxmMHLn+IcBtUtWmcuerOxa1/dC1buvCIM4TSdhcqFsDu71X+CEXk
	/RCJ1KbBTr9Udhlwe43Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGjn-0003Ni-H0; Mon, 12 Aug 2019 20:16:15 +0000
Received: from 187-26-98-68.3g.claro.net.br ([187.26.98.68]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGjY-0003Nb-57; Mon, 12 Aug 2019 20:16:01 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 7243E40340; Mon, 12 Aug 2019 17:15:57 -0300 (-03)
Date: Mon, 12 Aug 2019 17:15:57 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Igor Lubashev <ilubashe@akamai.com>
Subject: Re: [PATCH v3 2/4] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Message-ID: <20190812201557.GF9280@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <ad56df5452eeafb99dda9fc3d30f0f487aace503.1565188228.git.ilubashe@akamai.com>
 <20190812200134.GE9280@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812200134.GE9280@kernel.org>
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 linux-kernel@vger.kernel.org, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Aug 12, 2019 at 05:01:34PM -0300, Arnaldo Carvalho de Melo escreveu:
> Em Wed, Aug 07, 2019 at 10:44:15AM -0400, Igor Lubashev escreveu:
> > +++ b/tools/perf/util/evsel.c
> > @@ -279,7 +279,7 @@ struct evsel *perf_evsel__new_idx(struct perf_event_attr *attr, int idx)
>   
> >  static bool perf_event_can_profile_kernel(void)
> >  {
> > -	return geteuid() == 0 || perf_event_paranoid() == -1;
> > +	return perf_event_paranoid_check(-1);
> >  }
> 
> While looking at your changes I think the pre-existing code is wrong,
> i.e. the check in sys_perf_event_open(), in the kernel is:
> 
>         if (!attr.exclude_kernel) {
>                 if (perf_paranoid_kernel() && !capable(CAP_SYS_ADMIN))
>                         return -EACCES;
>         }
> 
> And:
> 
> static inline bool perf_paranoid_kernel(void)
> {
>         return sysctl_perf_event_paranoid > 1;
> }
> 
> So we have to change that perf_event_paranoit_check(-1) to pass 1
> instead?
> 
> bool perf_event_paranoid_check(int max_level)
> {
>         return perf_cap__capable(CAP_SYS_ADMIN) ||
>                         perf_event_paranoid() <= max_level;
> }
> 
> Also you defined perf_cap__capable(anything) as:
> 
> #ifdef HAVE_LIBCAP_SUPPORT
> 
> #include <sys/capability.h>
> 
> bool perf_cap__capable(cap_value_t cap);
>         
> #else   
> 
> static inline bool perf_cap__capable(int cap __maybe_unused)
> {               
>         return false;
> }       
>                 
> #endif /* HAVE_LIBCAP_SUPPORT */
> 
> 
> I think we should have:
> 
> #else
> 
> static inline bool perf_cap__capable(int cap __maybe_unused)
> {
>         return geteuid() == 0;
> }
> 
> #endif /* HAVE_LIBCAP_SUPPORT */
> 
> Right?
> 
> So I am removing the introduction of perf_cap__capable() from the first
> patch you sent, leaving it with _only_ the feature detection part, using
> that feature detection to do anything is then moved to a separate patch,
> after we finish this discussion about what we should fallback to when
> libcap-devel isn't available, i.e. we should use the previous checks,
> etc.

So, please take a look at the tmp.perf/cap branch in my git repo:

https://git.kernel.org/pub/scm/linux/kernel/git/acme/linux.git/log/?h=tmp.perf/cap

I split the patch and made perf_cap__capable() fallback to 'return
geteuid() == 0;' when libcap-devel isn't available, i.e. keep the
checks made prior to your patchset.

Jiri, can I keep your Acked-by?

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
