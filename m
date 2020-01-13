Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC611394B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjmvDquXL5Ta6c3QwMbwdIww0vFWnlVHcXEub7J6Qzg=; b=qweX5ZCNgfYv0d
	r8sK1axgzQqLD/eOrsSs7Kum8IwktkrJpqAbShsY2MlXVGvg4TQqYuo5bPFdqyzywiNk2yocznHBc
	isN1zX0IMELOMFrGhQgy5SWm71zJluOE3Zh6QjAHJxqAJUt91wwZslM7L2KKQfoBVjRHpLIL7BDwZ
	dyEFm3nSEVmcm+HMpXcng8+tvEMqczsVtegs/xP1arqslptp/AAFoEFSt+6YWUd8mRFuPWSo+IDHv
	TOSgdYnjsX4/abMUGWLlia6r7KsS56rcpBi9WK/5dCc9TAA1godw+duFtNaSaX6dtDmfwNmrIse5F
	v/c4gp6GRJa39ehQc8QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1Wt-0000H3-EP; Mon, 13 Jan 2020 15:21:23 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1Wj-0000Fo-RC
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:21:15 +0000
Received: by mail-pj1-x1041.google.com with SMTP id e11so2863146pjt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 07:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Xio3ltsZ5CL1rGBail8nUykniEUKdTJ+MhVEQqazwvU=;
 b=XBlxvOFSWkhf5jOxtE1Jstbl/y1fHgss2bgjBDGytbhH8Aq/6Te18ZGLd92cxH3SoR
 2v/9Y6BkFaLkj56QsKKo9yEBtiWdkZ4Q0D6dhJggBWWJeEH5eWu0N4HSuxaNHkHeWkx5
 69gjs+FOSPISRwpreQg5IlDtCIrtXwVNJXfO3AktEPrG3Rl3rI7ZYx0Ga3PL7MJC/aB8
 skZBN2UPl0R4zMOA/GUVivuDD9wxODbeRXG3IXzjP20npcrKtE7IYOv+cD2vPPMhPEnK
 pia71Duax2cEASLqn+YA9PyqA9Ecf55dHUdPMSp+2fQ7LHJ4zFvhKQ8RpKJstZZeNJei
 610w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Xio3ltsZ5CL1rGBail8nUykniEUKdTJ+MhVEQqazwvU=;
 b=ikrP31cdIvlYtTvviot4EdmS+vuaiXtNA7V9maqDSbdI8JV/TXkfbtJ8Q9573Tj0lR
 01f8DJ31kQGfHRWka1RucJB8+RIohIFOvQc8937INWnCBy7/xNSPtpoi1X0QVOTF7A2B
 vDBLUQZYKtyhsDaU58SoMRqTPnmRbbkdBOKBFvXDjpPxtnUC5xzjB9/p0OIUw7yjFrIR
 GRmzthZpcxR2hvlAlKzzLQ5vdhkeGwiWZyDvqXICYsLtdPNR5JeZah0gpnQIrNf7RVaV
 8rSdDVVs9GtOTxA7lAouo16XszOFuJeg7faCAwbbzeT+aQGz8BqsVHtgbgXyrZ7Unn2z
 9wqQ==
X-Gm-Message-State: APjAAAU/V+2gFyAsLuyfx2llFvRwYb1gZQZEWqD/pyb04W9PH8NVs3Wc
 z71o6ettgrKyXs7tCs2LRxWxCw==
X-Google-Smtp-Source: APXvYqyytvMkDTSyPxScTbeP6EkWGYOBA7VViLmMT3aJFn+73OPR2r5RlBpFUBv6hrE0NeeXjZrNQg==
X-Received: by 2002:a17:902:ab83:: with SMTP id
 f3mr20933451plr.106.1578928872619; 
 Mon, 13 Jan 2020 07:21:12 -0800 (PST)
Received: from leoy-ThinkPad-X240s (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id w4sm13737264pjt.23.2020.01.13.07.21.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 Jan 2020 07:21:12 -0800 (PST)
Date: Mon, 13 Jan 2020 23:21:03 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Jiri Olsa <jolsa@redhat.com>
Subject: Re: [PATCH v4 1/2] perf parse: Refactor struct perf_evsel_config_term
Message-ID: <20200113152103.GC10620@leoy-ThinkPad-X240s>
References: <20200108142010.11269-1-leo.yan@linaro.org>
 <CANLsYkzv2Di-qeU1Q3M4Ro21hQ09eE26FBjeP1A9uSsA_W2Uww@mail.gmail.com>
 <20200109050753.GA24741@leoy-ThinkPad-X240s>
 <20200109163424.GA5721@xps15> <20200110150410.GG82989@krava>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110150410.GG82989@krava>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_072113_895131_219C54AE 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Andi Kleen <ak@linux.intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 04:04:10PM +0100, Jiri Olsa wrote:
> On Thu, Jan 09, 2020 at 09:34:24AM -0700, Mathieu Poirier wrote:
> 
> SNIP
> 
> > 
> > If we are to deal with all flields of the union, I think it should be as below:
> > 
> >         union {
> >                 bool            cfg_bool;
> >                 int             cfg_int;
> >                 unsigned long   cfg_ulong;
> >                 u32             cfg_u32;
> >                 char            *cfg_str;
> >         } val;
> > 
> > But just dealing with the "char *" as below would also be fine with me:
> > 
> >         union {
> >                 u64           period;
> >                 u64           freq;
> >                 bool          time;
> >                 u64           stack_user;
> >                 int           max_stack;
> >                 bool          inherit;
> >                 bool          overwrite;
> >                 unsigned long max_events;
> >                 bool          percore;
> >                 bool          aux_output;
> >                 u32           aux_sample_size;
> >                 u64           cfg_chg;
> >                 u64           num;
> >                 char          *str;
> >         } val;
> > 
> > > 
> > > struct perf_evsel_config_term {
> > >         struct list_head      list;
> > >         enum evsel_term_type  type;
> > >         union {
> > >                 u64           period;
> > >                 u64           freq;
> > >                 bool          time;
> > >                 char          *callgraph;
> > >                 char          *drv_cfg;
> > >                 u64           stack_user;
> > >                 int           max_stack;
> > >                 bool          inherit;
> > >                 bool          overwrite;
> > >                 char          *branch;
> > >                 unsigned long max_events;
> > >                 bool          percore;
> > >                 bool          aux_output;
> > >                 u32           aux_sample_size;
> > >                 u64           cfg_chg;
> > > +               u64           num;
> > > +               char          *str;
> > >         } val;
> > >         bool weak;
> > > };
> > > 
> > > > I will let Jiri make the
> > > > final call but if we are to proceed this way I think we should have a
> > > > member per type to avoid casting issues.
> > > 
> > > Yeah, let's see what's Jiri thinking.
> > > 
> > > Just note, with this change, I don't see any casting warning or errors
> > > when built perf on arm64/arm32.
> > 
> > At this time you may not, but they will happen and it will be very hard to
> > debug.
> 
> hi,
> sry for late reply..
> 
> I think ;-) we should either add all different types to the union
> or just add 'str' pointer to handle strings correctly.. which seems
> better, because it's less changes and there's no real issue that
> would need that other bigger change

Thanks for the suggestion, Jiri.

Have sent out patch v5 with following the ideas.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
