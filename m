Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605615E206
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 12:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hII0jDl+RGPUupDVWHV2CVruV4w0rPN8Wh3h35ohlyE=; b=Uw9HZVuFhTioHB
	IcFSN35u8NaWK/XnoyQJwiUfTj+SzsNAzPqB8kF+FD33O3stjxLACOgqnR7XlQpJi3lkxZTj1SLWL
	Ist5cF2eHp8U/8HeUSIvhBxTtwHe68rg9mbtW8upS6DKY3y7ATjYrqilGYMiPAu5eDiaRndFNllhE
	4kh5wvUFxt0x8w3jf/T/ntP6ndDaQmCKhfa+6nTGwWRtCus/yUNAxFktUvsxIFToXIIOHGTsnXOal
	EkydO9Dnd63HY34bgviSSVud2ecUHzYiX50b40qp6FAgPc5/FZEOwW2m5IZH168VFGdbBMi3bjf5Z
	ksK8FQ25KCoeaf+jcsog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hicVE-0006sx-Ov; Wed, 03 Jul 2019 10:28:40 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hicV2-0006sM-Qf
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 10:28:30 +0000
Received: by mail-oi1-x242.google.com with SMTP id m202so1630622oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 03:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3Mom1ProBR9YeVJzIGAXAqtT65cJ4yLePEcgMF+2h1g=;
 b=CL/hz4gFm/ysalmbq7Djqj+RlWjsSAw2kXr2MXz8FB/mP/6ldXYShgEs69/vsU2Edt
 0ZY9uBmBKFRa0eKR86iPXFOskLnbxyGdpmtpQoxF49KRinJAgflls4sZbhtJMFCmRiCZ
 ady0tjJ9IuDbGRAGbJnaU+DYRgf52RRg3vL2XVUZq+/osKm+2j/dRZWXsROAee3m7hpZ
 CfnWmUrhICr4ML+bYUOyjq4jxchXEoKai2dbVmg6RaHnmLTKG7ceVItTSnFeKw91omCu
 fKCpOIGt+eBIjlYFNtFeo93B9Xki2j4xZh2A7z9h9/WP5+qdJ5zYrjBAUM4eQOfepHcu
 apbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3Mom1ProBR9YeVJzIGAXAqtT65cJ4yLePEcgMF+2h1g=;
 b=LM5ov83HEvu/U38qHDHpvuP9p6g/3jEKZGpZxpA+YJ/uwAYKs+kHRMg0yCXb/u77bA
 VWwAJs8UO/BUrHAGEIBrHxD/joIqN55yBJ+r/bO+22o59GazQhsgXnJeTCqbt4rUA6Nb
 X+WUWVrXDr+rpXkgHYHVd4E+dbRvijUmV9OV9TlYoPTuzFP/g4ZNc1NYPKBuptTbfNFO
 p1JSUGkBvJoPcT36kzpO82mr/mZIuQbZpEWe2rqB9sjwc0IroLmhbDD8fBQTxJsLmIDU
 88in7RKik+yG3TN068iFNxWGCstnc2S0hvBQlIsWFyBw0MDq9kAk4BTVuvALthGIo7+G
 T6GQ==
X-Gm-Message-State: APjAAAUyn1aP22rQlEm6YVoKPcCb/IjpfJHxRBZBbw+DWz6hAmugNPIN
 rj7xaenPw0iXyOoTW/79KQh8JQ==
X-Google-Smtp-Source: APXvYqwriFNHEgJv7zyy3uCTUnmQ8lSSXNvZphE1F6T0g85+yK3ROr16yDzo4S+Gx54iN0m/0eziyw==
X-Received: by 2002:aca:55c2:: with SMTP id j185mr3106282oib.100.1562149706938; 
 Wed, 03 Jul 2019 03:28:26 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id r9sm718646otc.26.2019.07.03.03.28.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 03 Jul 2019 03:28:26 -0700 (PDT)
Date: Wed, 3 Jul 2019 18:28:14 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v1 10/11] perf intel-pt: Smatch: Fix potential NULL
 pointer dereference
Message-ID: <20190703102814.GF6852@leoy-ThinkPad-X240s>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-11-leo.yan@linaro.org>
 <cfef1777-141e-4223-e0c1-1a3f3aee1d3c@intel.com>
 <20190703013553.GB6852@leoy-ThinkPad-X240s>
 <20190703100032.yx5genhqcrit4z5p@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703100032.yx5genhqcrit4z5p@holly.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_032828_870776_7CA67E03 
X-CRM114-Status: GOOD (  27.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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

On Wed, Jul 03, 2019 at 11:00:32AM +0100, Daniel Thompson wrote:
> On Wed, Jul 03, 2019 at 09:35:54AM +0800, Leo Yan wrote:
> > Hi Adrian,
> > 
> > On Tue, Jul 02, 2019 at 02:07:40PM +0300, Adrian Hunter wrote:
> > > On 2/07/19 1:34 PM, Leo Yan wrote:
> > > > Based on the following report from Smatch, fix the potential
> > > > NULL pointer dereference check.
> > > 
> > > It never is NULL.  Remove the NULL test if you want:
> > > 
> > > -	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> > > +	if (session->itrace_synth_opts->set) {
> > > 
> > > But blindly making changes like below is questionable.
> > 
> > Thanks for suggestions.
> > 
> > I checked report and script commands, as you said, both command will
> > always set session->itrace_synth_opts.  For these two commands, we can
> > safely remove the NULL test.
> > 
> > Because perf tool contains many sub commands, so I don't have much
> > confidence it's very safe to remove the NULL test for all cases; e.g.
> > there have cases which will process aux trace buffer but without
> > itrace options; for this case, session->itrace_synth_opts might be NULL.
> > 
> > For either way (remove NULL test or keep NULL test), I don't want to
> > introduce regression and extra efforts by my patch.  So want to double
> > confirm with you for this :)
> 
> Review is useful to ensure the chosen solution is correct but
> unless I missed something the non-regression reasoning here is easy
> easy. In its original form and despite the check, the code will
> always dereference session->itrace_synth_opts, therefore removing
> the check cannot makes things worse.

Fair point and it's smart to connect with function
itrace_synth_opts__set_default(). :)

Thanks, Daniel.

> PS Of course we do also have to check that
>    itrace_synth_opts__set_default() isn't a macro... but it isn't.
> 
> 
> > > >   tools/perf/util/intel-pt.c:3200
> > > >   intel_pt_process_auxtrace_info() error: we previously assumed
> > > >   'session->itrace_synth_opts' could be null (see line 3196)
> > > > 
> > > >   tools/perf/util/intel-pt.c:3206
> > > >   intel_pt_process_auxtrace_info() warn: variable dereferenced before
> > > >   check 'session->itrace_synth_opts' (see line 3200)
> > > > 
> > > > tools/perf/util/intel-pt.c
> > > > 3196         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> > > > 3197                 pt->synth_opts = *session->itrace_synth_opts;
> > > > 3198         } else {
> > > > 3199                 itrace_synth_opts__set_default(&pt->synth_opts,
> > > > 3200                                 session->itrace_synth_opts->default_no_sample);
> > > >                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^
> > > > 3201                 if (!session->itrace_synth_opts->default_no_sample &&
> > > > 3202                     !session->itrace_synth_opts->inject) {
> > > > 3203                         pt->synth_opts.branches = false;
> > > > 3204                         pt->synth_opts.callchain = true;
> > > > 3205                 }
> > > > 3206                 if (session->itrace_synth_opts)
> > > >                          ^^^^^^^^^^^^^^^^^^^^^^^^^^
> > > > 3207                         pt->synth_opts.thread_stack =
> > > > 3208                                 session->itrace_synth_opts->thread_stack;
> > > > 3209         }
> > > > 
> > > > To dismiss the potential NULL pointer dereference, this patch validates
> > > > the pointer 'session->itrace_synth_opts' before access its elements.
> > > > 
> > > > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > > > ---
> > > >  tools/perf/util/intel-pt.c | 5 ++---
> > > >  1 file changed, 2 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/tools/perf/util/intel-pt.c b/tools/perf/util/intel-pt.c
> > > > index 550db6e77968..88b567bdf1f9 100644
> > > > --- a/tools/perf/util/intel-pt.c
> > > > +++ b/tools/perf/util/intel-pt.c
> > > > @@ -3195,7 +3195,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
> > > >  
> > > >  	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> > > >  		pt->synth_opts = *session->itrace_synth_opts;
> > > > -	} else {
> > > > +	} else if (session->itrace_synth_opts) {
> > > >  		itrace_synth_opts__set_default(&pt->synth_opts,
> > > >  				session->itrace_synth_opts->default_no_sample);
> > > >  		if (!session->itrace_synth_opts->default_no_sample &&
> > > > @@ -3203,8 +3203,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
> > > >  			pt->synth_opts.branches = false;
> > > >  			pt->synth_opts.callchain = true;
> > > >  		}
> > > > -		if (session->itrace_synth_opts)
> > > > -			pt->synth_opts.thread_stack =
> > > > +		pt->synth_opts.thread_stack =
> > > >  				session->itrace_synth_opts->thread_stack;
> > > >  	}
> > > >  
> > > > 
> > > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
