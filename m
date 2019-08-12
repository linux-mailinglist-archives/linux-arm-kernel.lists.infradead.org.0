Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 699238A7B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 22:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3laKRtq0C7UCzIi7mRbzsSkjuX0xW7neZ1nWqOXploA=; b=k9/n4wE4KlnIBo
	/vjwdMEmP0yusAZe+KFwuqZC/g8wUqrOSY37eRDfWsYN7CDq4ixl42INkG2I1aojC3UZqC+2IEHBJ
	O0LcIUXxeMeW59XifF5/Asdr97R/SC6inzyCoNtBuNZnBWc8mM/gKeiC2XdPPXznnH5wZEDCPtxCN
	IZM4mCc57jFPM2BgMT+FP0d4IN9tcipeuGDa7GFla/WgUQsongyitGNVU9QvuqN6yGK6ywYmDO7+W
	2tE+jV18mT8Vg0+RxQBjMB5oqGOr0y1mnL9MfSzTFb4QDw9eCr2iQ14SCJgjEUxOPrbGGxtXjgNdS
	quZ9AqyDhwIvURQypMsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGVz-0006wn-Qt; Mon, 12 Aug 2019 20:01:59 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGVh-0006wf-Ky
 for linux-arm-kernel@bombadil.infradead.org; Mon, 12 Aug 2019 20:01:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mzJd9LfyI6OyvkYy9nxABgF/o+uPg/L4uhRhKYYKXK8=; b=e/jOHcUEEcQBgPHdUtMXcYRoz
 1zPkiL0qQ/of1HyHPJVxhnKid8ngwJquo4GSqJAF5h++hrKGsM7UDCp8nldRhpvRHSXwsoyAZ2Xpk
 0fP2QZxkYYf1oRByRvlY/eOZzz1KmeKouFK0jnjeGR2+x+uOMWBiwFFg5RnN1h+KPbuLTwo6tgYam
 Jc8qrnNqhRClFwmXoKCRjLBndwEKi2169q4JblCafRPZR4k1KI8wIfhU3vMg7sO3YByd9XyAgqlFa
 ouXSyp23eLGuLKa8ARpSIgy0ijIQyWppvGlOu8Z8MkLi6IcC7hm/r7t1qWpCae50oqIfmHD3fzvDZ
 rBpfVOsKg==;
Received: from 187-26-98-68.3g.claro.net.br ([187.26.98.68]
 helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGVf-0004IL-J3; Mon, 12 Aug 2019 20:01:39 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id D585740340; Mon, 12 Aug 2019 17:01:34 -0300 (-03)
Date: Mon, 12 Aug 2019 17:01:34 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Igor Lubashev <ilubashe@akamai.com>
Subject: Re: [PATCH v3 2/4] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Message-ID: <20190812200134.GE9280@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <ad56df5452eeafb99dda9fc3d30f0f487aace503.1565188228.git.ilubashe@akamai.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad56df5452eeafb99dda9fc3d30f0f487aace503.1565188228.git.ilubashe@akamai.com>
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

Em Wed, Aug 07, 2019 at 10:44:15AM -0400, Igor Lubashev escreveu:
> +++ b/tools/perf/util/evsel.c
> @@ -279,7 +279,7 @@ struct evsel *perf_evsel__new_idx(struct perf_event_attr *attr, int idx)
  
>  static bool perf_event_can_profile_kernel(void)
>  {
> -	return geteuid() == 0 || perf_event_paranoid() == -1;
> +	return perf_event_paranoid_check(-1);
>  }

While looking at your changes I think the pre-existing code is wrong,
i.e. the check in sys_perf_event_open(), in the kernel is:

        if (!attr.exclude_kernel) {
                if (perf_paranoid_kernel() && !capable(CAP_SYS_ADMIN))
                        return -EACCES;
        }

And:

static inline bool perf_paranoid_kernel(void)
{
        return sysctl_perf_event_paranoid > 1;
}

So we have to change that perf_event_paranoit_check(-1) to pass 1
instead?

bool perf_event_paranoid_check(int max_level)
{
        return perf_cap__capable(CAP_SYS_ADMIN) ||
                        perf_event_paranoid() <= max_level;
}

Also you defined perf_cap__capable(anything) as:

#ifdef HAVE_LIBCAP_SUPPORT

#include <sys/capability.h>

bool perf_cap__capable(cap_value_t cap);
        
#else   

static inline bool perf_cap__capable(int cap __maybe_unused)
{               
        return false;
}       
                
#endif /* HAVE_LIBCAP_SUPPORT */


I think we should have:

#else

static inline bool perf_cap__capable(int cap __maybe_unused)
{
        return geteuid() == 0;
}

#endif /* HAVE_LIBCAP_SUPPORT */

Right?

So I am removing the introduction of perf_cap__capable() from the first
patch you sent, leaving it with _only_ the feature detection part, using
that feature detection to do anything is then moved to a separate patch,
after we finish this discussion about what we should fallback to when
libcap-devel isn't available, i.e. we should use the previous checks,
etc.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
