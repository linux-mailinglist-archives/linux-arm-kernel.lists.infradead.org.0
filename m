Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCB0140DFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 16:37:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfjPOAffNrTf2K3tGGhVE5m6IKbU+8XBZrgw2eJ/8OU=; b=MV8/51jgOQBI7h
	ytx80vcOsXsyw3wC3zm93lcdUCZqsPi9DpWSFl9+yVUWV7r8vXiKToza+FTjcahaZ0egCWe9BsLYn
	e1oRCraVp69MjNzr+QxtDv4aH2uzZ1kYO9jLPDJ0HLv35VIzHwtMj3ntPmp4slxyCesYsKzY2+ELE
	W2FCmShdcwmT1PThAJ+XOifwYoPF87gcs+Fnn2GXJraM6uxHI61nY1HIg87V1XuM8EHiggrk2a3KG
	0lees+nInEVGGIc8aD7YCsSKZDVDlzUl8ny7Q3hLjSrPGXIUe80rzwFdI26lSDPO6tnBWIRyq6vMf
	By1g7ytxiR/4QUa0wfzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isTg9-0001yb-DH; Fri, 17 Jan 2020 15:36:57 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isTfw-0001xe-Qn
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 15:36:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id y8so9996259pll.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 07:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pwBF42N8bOInUjU3mqsM9gMbAa/G/sJJUIKIesRfdeA=;
 b=dLz+DeXdaoeUIACOt7xvx6JZ/KdgW4elO6F4OJiTi95bhZNv5d0fTi8sf2esjEeHve
 jrYJvTvtuTwk9455w9u6uWdHWVRnE2Jb+jmlZYKTHRxuESeUvLSApCr070QeGHnCUSHQ
 WMwSgYvTh9T6hzji33cRrFwCpRBljihZmZYy5U11TO1jyUAqzKJ6fCEHy8e3bV4O/wxR
 OAwCrbd7XqNaPEZBQQMj15F4sfT051R1jES7hQ/M3/UigVmN0OjjBXiLETRdBMmDnRnG
 nC8arJzl3mRUBtRUIpf67KeJ0HgjqXZk6xkCP6pgJgGauSqz4fetpCLJ3l5+GefWmOyv
 +nWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pwBF42N8bOInUjU3mqsM9gMbAa/G/sJJUIKIesRfdeA=;
 b=IUjmKUCyV6iHArRMQ6yhaceU+Bvmy/a/uaMig2X4CLlz3Z7odjDiv1EP90OQSyy7IQ
 1KJEA6sjyOppMUWyZ5JdCNb5PIr+FYmPBc0sDOAwD6aV4pukejmEM2KsASUMjP8gjplO
 B1svibEfqcJAI4QsT91Vf67lo1mi3qfwt3fZ/On9q8Bo/Min4HtWvOrup1/oUSuOPFv4
 vXYop9Ow68Vb5dZSuv5kUU1jU7CYroXMi5XQ4m7s4HXoJbq4oCHeyPC1RWqeghVybRor
 w6TA4XWkWfB8vkPxaQRPr4atYmoCPhf7HHtp9Ep/jpfrINkhsP7NVf+9mlh2PQLoZpGR
 TvSg==
X-Gm-Message-State: APjAAAU7y7kFEd9PzcwwHTx7DbYEi97HeTMsDOoVhjnSRO9WBtaSLJnW
 wtpOKhwlgmT/Q3Gow3F7d2Zw1Q==
X-Google-Smtp-Source: APXvYqyD8/HZXE/aMpUdpii4a83GeHFpYoYCaaceWICf147EcnNFrFFn2yGKuJYhU1mhHZIjnA4P9Q==
X-Received: by 2002:a17:90a:330c:: with SMTP id
 m12mr6335610pjb.18.1579275403850; 
 Fri, 17 Jan 2020 07:36:43 -0800 (PST)
Received: from leoy-ThinkPad-X240s (li96-55.members.linode.com.
 [74.207.254.55])
 by smtp.gmail.com with ESMTPSA id b15sm29770249pft.58.2020.01.17.07.36.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Jan 2020 07:36:43 -0800 (PST)
Date: Fri, 17 Jan 2020 23:36:30 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: Re: [PATCH v6 2/2] perf parse: Copy string to perf_evsel_config_term
Message-ID: <20200117153630.GA22019@leoy-ThinkPad-X240s>
References: <20200117055251.24058-1-leo.yan@linaro.org>
 <20200117055251.24058-2-leo.yan@linaro.org>
 <20200117133409.GB3323@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117133409.GB3323@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_073644_931152_9841C8E6 
X-CRM114-Status: GOOD (  25.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Andi Kleen <ak@linux.intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 10:34:09AM -0300, Arnaldo Carvalho de Melo wrote:
> Em Fri, Jan 17, 2020 at 01:52:51PM +0800, Leo Yan escreveu:
> > perf with CoreSight fails to record trace data with command:
> > 
> >   perf record -e cs_etm/@tmc_etr0/u --per-thread ls
> >   failed to set sink "" on event cs_etm/@tmc_etr0/u with 21 (Is a
> >   directory)/perf/
> > 
> > This failure is root caused with the commit 1dc925568f01 ("perf
> > parse: Add a deep delete for parse event terms").
> > 
> > The log shows, cs_etm fails to parse the sink attribution; cs_etm event
> > relies on the event configuration to pass sink name, but the event
> > specific configuration data cannot be passed properly with flow:
> > 
> >   get_config_terms()
> >     ADD_CONFIG_TERM(DRV_CFG, term->val.str);
> >       __t->val.str = term->val.str;
> >         `> __t->val.str is assigned to term->val.str;
> > 
> >   parse_events_terms__purge()
> >     parse_events_term__delete()
> >       zfree(&term->val.str);
> >         `> term->val.str is freed and assigned to NULL pointer;
> > 
> >   cs_etm_set_sink_attr()
> >     sink = __t->val.str;
> >       `> sink string has been freed.
> > 
> > To fix this issue, in the function get_config_terms(), this patch
> > changes to use strdup() for allocation a new duplicate string rather
> > than directly assignment string pointer.
> > 
> > This patch addes a new field 'free_str' in the data structure
> > perf_evsel_config_term; 'free_str' is set to true when the union is used
> > as a string pointer; thus it can tell perf_evsel__free_config_terms() to
> > free the string.
> > 
> > Fixes: 1dc925568f01 ("perf parse: Add a deep delete for parse event terms")
> > Suggested-by: Jiri Olsa <jolsa@kernel.org>
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > Acked-by: Jiri Olsa <jolsa@kernel.org>
> > ---
> >  tools/perf/util/evsel.c        | 2 ++
> >  tools/perf/util/evsel_config.h | 1 +
> >  tools/perf/util/parse-events.c | 7 ++++++-
> >  3 files changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
> > index 549abd43816f..6fe9e28180e5 100644
> > --- a/tools/perf/util/evsel.c
> > +++ b/tools/perf/util/evsel.c
> > @@ -1265,6 +1265,8 @@ static void perf_evsel__free_config_terms(struct evsel *evsel)
> >  
> >  	list_for_each_entry_safe(term, h, &evsel->config_terms, list) {
> >  		list_del_init(&term->list);
> > +		if (term->free_str)
> > +			free(term->val.str);
> 
> I'm replacing this with zfree, so that we can catch possible bugs where
> term gets used after freed, just like you do below, in ADD_CONFIG_TERM_STR()

Thanks a lot, Arnaldo.

> >  		free(term);
> >  	}
> >  }
> > diff --git a/tools/perf/util/evsel_config.h b/tools/perf/util/evsel_config.h
> > index b4a65201e4f7..e026ab67b008 100644
> > --- a/tools/perf/util/evsel_config.h
> > +++ b/tools/perf/util/evsel_config.h
> > @@ -32,6 +32,7 @@ enum evsel_term_type {
> >  struct perf_evsel_config_term {
> >  	struct list_head      list;
> >  	enum evsel_term_type  type;
> > +	bool		      free_str;
> >  	union {
> >  		u64	      period;
> >  		u64	      freq;
> > diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> > index f59f3c8da473..c01ba6f8fdad 100644
> > --- a/tools/perf/util/parse-events.c
> > +++ b/tools/perf/util/parse-events.c
> > @@ -1240,7 +1240,12 @@ do {								\
> >  #define ADD_CONFIG_TERM_STR(__type, __val)			\
> >  do {								\
> >  	ADD_CONFIG_TERM(__type);				\
> > -	__t->val.str = __val;					\
> > +	__t->val.str = strdup(__val);				\
> > +	if (!__t->val.str) {					\
> > +		zfree(&__t);					\
> > +		return -ENOMEM;					\
> > +	}							\
> > +	__t->free_str = true;					\
> >  } while (0)
> >  
> >  	struct parse_events_term *term;
> > -- 
> > 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
