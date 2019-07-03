Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6875DAFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 03:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4TnNUYC2+XBQ6jSfaLeKCVcYCX7kPuS0gtBqw9A4l8=; b=S64E9dSx1pwr5t
	8AXtd7kQ/e15Mo0J0VKIsSdwU4E3FMybpkQfFfG+nuAvmM92Sj8HUya7TKdiEJFg/rZ+f//Q7eYj3
	Oxm4GdKAGMD2qy6q8A3AAOPQCbWLp1jO/VF6anvLWzelbU+GaYKkmbpG2IarlmggXlqHFb3OIX1yS
	857dPbhDgpSqsEGmhzyXalABG8ynOF5+89wcUUE3ezCW0ywUq/F701IVWfBlp+xHyzvCiiNi3PddI
	jrOsH8+xmSOlsy7GXL6opH4xxRUmG8uKg4IHpj2zdIh4Qv7aWRcmiw8zKbMwAuPKekuDu+wpUDVJp
	gyfAPukvsqCHxcHVz7wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiUCA-00081o-Le; Wed, 03 Jul 2019 01:36:26 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiUBp-00080X-O5
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 01:36:07 +0000
Received: by mail-ot1-x341.google.com with SMTP id q10so571596otk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 18:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E2MNJNc0I8SY9kpTYL4zXVRKevXLFfOR8LtkzYCFYP8=;
 b=PRkXgnbejC/VB9+KXb4YewettRGuuiReipmTOyCGjNfN+UlPVFmB1qcV6KaskT+iPt
 Xdt7aspktUfzrU1W5HJ0qw7BOeqxXC3gDyB3yjaMb/leXWiKQ7J/NhOnstDi/DYadqUc
 Ab1sUvmz8dtcDu/NeHwTRZG+Y8HYq28MJWLl+Nuk4GaoKgCzqTuTyznilpie7ih+9kSe
 oaIFnji/asaBd/m66PPlG03NvkCpUJYwMUS/UfmVKlWPEX/3Ajs8/REuZcBVq/FOItqk
 HV9RXVR9I/ipnMmWgTy8jG06q4ISQ/nxIPUQOsH3XCrNPMG3nZ8bH40yE1y5yi5Nn0/x
 LXfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E2MNJNc0I8SY9kpTYL4zXVRKevXLFfOR8LtkzYCFYP8=;
 b=dEJSZB4e4WWp93Ty/ZVlDp5dQRon8rFRaYN7KCdiKoCNPHBi32208pn/YxOr0YDFlR
 kH2oHg75jBNUsScuUmLN5yzFb/2nygPN6hK0b49RaSQX2mXpwehm1dYHWnoJHdIYZdIB
 kp+6wDw+ToIHo7FD5ZqaMGgF8hkDfxLevbg05AiWn061Xx89pOfIQPXUzXwlCceCmRKE
 mDhvlZXgXn4lmmR+k5vYOnGHFV82dYxmi2ii+iiyAPQsdVAnMIH38sXUt+DEXZdlXygq
 ox40MmYfBAYfveqfkXuZoIgmca2GXnfv+jbPxzl5gnUiPknzEJxmQiRSD21/lpLyPlnO
 jKDA==
X-Gm-Message-State: APjAAAXwhAFZN5FMuBfr62ZJRhNGY9F6RUBJbQBF/MJyD5hH8ejch7qm
 XGHXVD+lU3HptZgp6PN8eE0Onw==
X-Google-Smtp-Source: APXvYqwGefhythDt/68wjxjOg0JL3+QasPI0nNvcZJItdd0qB/SHQCSt1CpNo+ij1fqyCtyrlOcIrw==
X-Received: by 2002:a9d:7f0e:: with SMTP id j14mr25247006otq.87.1562117764484; 
 Tue, 02 Jul 2019 18:36:04 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id n26sm344887otq.10.2019.07.02.18.35.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 02 Jul 2019 18:36:03 -0700 (PDT)
Date: Wed, 3 Jul 2019 09:35:54 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v1 10/11] perf intel-pt: Smatch: Fix potential NULL
 pointer dereference
Message-ID: <20190703013553.GB6852@leoy-ThinkPad-X240s>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-11-leo.yan@linaro.org>
 <cfef1777-141e-4223-e0c1-1a3f3aee1d3c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cfef1777-141e-4223-e0c1-1a3f3aee1d3c@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_183605_793362_011DB2A7 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Jin Yao <yao.jin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Ingo Molnar <mingo@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Davidlohr Bueso <dave@stgolabs.net>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Thomas Richter <tmricht@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Changbin Du <changbin.du@intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

On Tue, Jul 02, 2019 at 02:07:40PM +0300, Adrian Hunter wrote:
> On 2/07/19 1:34 PM, Leo Yan wrote:
> > Based on the following report from Smatch, fix the potential
> > NULL pointer dereference check.
> 
> It never is NULL.  Remove the NULL test if you want:
> 
> -	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> +	if (session->itrace_synth_opts->set) {
> 
> But blindly making changes like below is questionable.

Thanks for suggestions.

I checked report and script commands, as you said, both command will
always set session->itrace_synth_opts.  For these two commands, we can
safely remove the NULL test.

Because perf tool contains many sub commands, so I don't have much
confidence it's very safe to remove the NULL test for all cases; e.g.
there have cases which will process aux trace buffer but without
itrace options; for this case, session->itrace_synth_opts might be NULL.

For either way (remove NULL test or keep NULL test), I don't want to
introduce regression and extra efforts by my patch.  So want to double
confirm with you for this :)

Thanks,
Leo Yan

> >   tools/perf/util/intel-pt.c:3200
> >   intel_pt_process_auxtrace_info() error: we previously assumed
> >   'session->itrace_synth_opts' could be null (see line 3196)
> > 
> >   tools/perf/util/intel-pt.c:3206
> >   intel_pt_process_auxtrace_info() warn: variable dereferenced before
> >   check 'session->itrace_synth_opts' (see line 3200)
> > 
> > tools/perf/util/intel-pt.c
> > 3196         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> > 3197                 pt->synth_opts = *session->itrace_synth_opts;
> > 3198         } else {
> > 3199                 itrace_synth_opts__set_default(&pt->synth_opts,
> > 3200                                 session->itrace_synth_opts->default_no_sample);
> >                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^
> > 3201                 if (!session->itrace_synth_opts->default_no_sample &&
> > 3202                     !session->itrace_synth_opts->inject) {
> > 3203                         pt->synth_opts.branches = false;
> > 3204                         pt->synth_opts.callchain = true;
> > 3205                 }
> > 3206                 if (session->itrace_synth_opts)
> >                          ^^^^^^^^^^^^^^^^^^^^^^^^^^
> > 3207                         pt->synth_opts.thread_stack =
> > 3208                                 session->itrace_synth_opts->thread_stack;
> > 3209         }
> > 
> > To dismiss the potential NULL pointer dereference, this patch validates
> > the pointer 'session->itrace_synth_opts' before access its elements.
> > 
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/intel-pt.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> > 
> > diff --git a/tools/perf/util/intel-pt.c b/tools/perf/util/intel-pt.c
> > index 550db6e77968..88b567bdf1f9 100644
> > --- a/tools/perf/util/intel-pt.c
> > +++ b/tools/perf/util/intel-pt.c
> > @@ -3195,7 +3195,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
> >  
> >  	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> >  		pt->synth_opts = *session->itrace_synth_opts;
> > -	} else {
> > +	} else if (session->itrace_synth_opts) {
> >  		itrace_synth_opts__set_default(&pt->synth_opts,
> >  				session->itrace_synth_opts->default_no_sample);
> >  		if (!session->itrace_synth_opts->default_no_sample &&
> > @@ -3203,8 +3203,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
> >  			pt->synth_opts.branches = false;
> >  			pt->synth_opts.callchain = true;
> >  		}
> > -		if (session->itrace_synth_opts)
> > -			pt->synth_opts.thread_stack =
> > +		pt->synth_opts.thread_stack =
> >  				session->itrace_synth_opts->thread_stack;
> >  	}
> >  
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
