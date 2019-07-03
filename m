Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B110D5E18C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 12:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7iGFMjOja3oQEHvibdE3sxeViEdMLsJxTV97QI1c80=; b=En4NADtkdhnneq
	45D8mDYKugQ9t3qhOP2ljgo91dqpRcjKOnc3pTjILSgZFm0os4RJz5Zr4ur8RvUFWF6MZpfTjhZrS
	80sGRF7l0KIpqSKU0QotzoQzOgLyuE1dQrVbQweba2GGOQ2T3B+15dODcZUzsxK6kC5Wyr7qySxGu
	NuYW3EtBPX46QjdHgNknMbxxHMrDZ9idhubgWz0cBsChIfpEg1zRwjnDivF5vr2pwxpUvuvY+JTui
	Dz4rhpH79uYbI7A7fYH3l2GGf4EHLeqdMJ8VyJuec5fX/ZWPWdIrCqvt62FblJNDd0ZzxSPEOwNqf
	fhIcNK3mBedebm2Xp5Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hic4J-0006GS-Bx; Wed, 03 Jul 2019 10:00:51 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hic45-0006G8-Ss
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 10:00:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id z23so1678809wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 03:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hSoC8nCs+Ob8KpfWiAi2Egv+8x1VlTi1X6Jdz/e0TiE=;
 b=GPiaNAqlidJ00jvmbOg+47CWfJuM45shHFlTIhUeIz4jD7SzAN4JOxAmjsR3J77NYE
 6fn5HBiY4d9so3sU7iDfDk60j9T1KO75VJ5iQW02N+ZbShqn3EXR+mzEHYzj2XvNKiMS
 vIA7Fc4ru6OJxZahc5yN8EK5MGWuVPeTOXwSbaxZSlmYolZOmJgrgYDb6U8aLLbdvQOT
 xd9/MebBpd5j0BEgUNdQUUi8MGKL5mLowQmHQx9cqWmHZ78xFGEDFT1OXKCw4g0aAEKg
 XCEVPmbltka1ruj/nkEsjkjbj/JbrfKuavcSe1AVcXKXb/rMBfk+QHGqodZkolThbFo6
 cjAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hSoC8nCs+Ob8KpfWiAi2Egv+8x1VlTi1X6Jdz/e0TiE=;
 b=BGcF00AI0XARY6SDgAB3uHvci/NLNjHDrpqntELEmXC5vq4jjptjZ1Wijq/01S2UUz
 +4v/sGhEG4MsfWoaUjVwcMVp6EPYCA2w6H5Fdoi1Tj57SyZXpiqqdh3EU43zLCY5FGSX
 IwDbMM1adwkIEgPHLW/fmM5OJPTw9+wx7z4Od5LAmyy822gtkP9ocCTRKgK3EeB0w1RP
 tY+TCz3uRVNJ4Lu3Ds67NPRXN8+Hxfs7rAFULFZ9g9nOx0y5g0KWGpV1wrQE2Ld5ztsg
 q0vhVqw+2uiUb9nNZnt0vuIH3roUQgDFdXMgdetvnFBd0PmdDPaem5zXAiqLzRcgoEjY
 MhIg==
X-Gm-Message-State: APjAAAWFdjfYqSwAOZLT7uNnCbA+YQL0QnDzOazoOwd8dtC5BFCsTmw/
 CeI9SA35u8zVIkbwtYdrxZN2GA==
X-Google-Smtp-Source: APXvYqyjnisJdnYjmgXQwAxd0u+GRWZQWek8Q0MirKmW/6kbwY/YptViRFJf/sYkiTHIsQAMpqnmvg==
X-Received: by 2002:a1c:ca06:: with SMTP id a6mr7504214wmg.48.1562148035749;
 Wed, 03 Jul 2019 03:00:35 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id e7sm1387470wmd.0.2019.07.03.03.00.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 03:00:35 -0700 (PDT)
Date: Wed, 3 Jul 2019 11:00:32 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 10/11] perf intel-pt: Smatch: Fix potential NULL
 pointer dereference
Message-ID: <20190703100032.yx5genhqcrit4z5p@holly.lan>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-11-leo.yan@linaro.org>
 <cfef1777-141e-4223-e0c1-1a3f3aee1d3c@intel.com>
 <20190703013553.GB6852@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703013553.GB6852@leoy-ThinkPad-X240s>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_030037_942785_146701C5 
X-CRM114-Status: GOOD (  24.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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

On Wed, Jul 03, 2019 at 09:35:54AM +0800, Leo Yan wrote:
> Hi Adrian,
> 
> On Tue, Jul 02, 2019 at 02:07:40PM +0300, Adrian Hunter wrote:
> > On 2/07/19 1:34 PM, Leo Yan wrote:
> > > Based on the following report from Smatch, fix the potential
> > > NULL pointer dereference check.
> > 
> > It never is NULL.  Remove the NULL test if you want:
> > 
> > -	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> > +	if (session->itrace_synth_opts->set) {
> > 
> > But blindly making changes like below is questionable.
> 
> Thanks for suggestions.
> 
> I checked report and script commands, as you said, both command will
> always set session->itrace_synth_opts.  For these two commands, we can
> safely remove the NULL test.
> 
> Because perf tool contains many sub commands, so I don't have much
> confidence it's very safe to remove the NULL test for all cases; e.g.
> there have cases which will process aux trace buffer but without
> itrace options; for this case, session->itrace_synth_opts might be NULL.
> 
> For either way (remove NULL test or keep NULL test), I don't want to
> introduce regression and extra efforts by my patch.  So want to double
> confirm with you for this :)

Review is useful to ensure the chosen solution is correct but
unless I missed something the non-regression reasoning here is easy
easy. In its original form and despite the check, the code will
always dereference session->itrace_synth_opts, therefore removing
the check cannot makes things worse.


Daniel.


PS Of course we do also have to check that
   itrace_synth_opts__set_default() isn't a macro... but it isn't.


> > >   tools/perf/util/intel-pt.c:3200
> > >   intel_pt_process_auxtrace_info() error: we previously assumed
> > >   'session->itrace_synth_opts' could be null (see line 3196)
> > > 
> > >   tools/perf/util/intel-pt.c:3206
> > >   intel_pt_process_auxtrace_info() warn: variable dereferenced before
> > >   check 'session->itrace_synth_opts' (see line 3200)
> > > 
> > > tools/perf/util/intel-pt.c
> > > 3196         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> > > 3197                 pt->synth_opts = *session->itrace_synth_opts;
> > > 3198         } else {
> > > 3199                 itrace_synth_opts__set_default(&pt->synth_opts,
> > > 3200                                 session->itrace_synth_opts->default_no_sample);
> > >                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^
> > > 3201                 if (!session->itrace_synth_opts->default_no_sample &&
> > > 3202                     !session->itrace_synth_opts->inject) {
> > > 3203                         pt->synth_opts.branches = false;
> > > 3204                         pt->synth_opts.callchain = true;
> > > 3205                 }
> > > 3206                 if (session->itrace_synth_opts)
> > >                          ^^^^^^^^^^^^^^^^^^^^^^^^^^
> > > 3207                         pt->synth_opts.thread_stack =
> > > 3208                                 session->itrace_synth_opts->thread_stack;
> > > 3209         }
> > > 
> > > To dismiss the potential NULL pointer dereference, this patch validates
> > > the pointer 'session->itrace_synth_opts' before access its elements.
> > > 
> > > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > > ---
> > >  tools/perf/util/intel-pt.c | 5 ++---
> > >  1 file changed, 2 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/tools/perf/util/intel-pt.c b/tools/perf/util/intel-pt.c
> > > index 550db6e77968..88b567bdf1f9 100644
> > > --- a/tools/perf/util/intel-pt.c
> > > +++ b/tools/perf/util/intel-pt.c
> > > @@ -3195,7 +3195,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
> > >  
> > >  	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> > >  		pt->synth_opts = *session->itrace_synth_opts;
> > > -	} else {
> > > +	} else if (session->itrace_synth_opts) {
> > >  		itrace_synth_opts__set_default(&pt->synth_opts,
> > >  				session->itrace_synth_opts->default_no_sample);
> > >  		if (!session->itrace_synth_opts->default_no_sample &&
> > > @@ -3203,8 +3203,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
> > >  			pt->synth_opts.branches = false;
> > >  			pt->synth_opts.callchain = true;
> > >  		}
> > > -		if (session->itrace_synth_opts)
> > > -			pt->synth_opts.thread_stack =
> > > +		pt->synth_opts.thread_stack =
> > >  				session->itrace_synth_opts->thread_stack;
> > >  	}
> > >  
> > > 
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
