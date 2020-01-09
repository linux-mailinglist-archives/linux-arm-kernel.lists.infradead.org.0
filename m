Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AA6135E5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:34:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwRba3GtrakS+AbWCy9w4C98fomPki8AY4B6Q+mn8lI=; b=ByWQaXQBNB8gf2
	NEuYuraDxk1g6V2x+3hYema/bc0IlOeQjLrIzPxiMFj+OjumSHkYJSgksFIxSjKpblnSjcxJM6SAZ
	PeTyAacu5+gMdD+uGrS16caJPYP6TKbqXVGB+UYBjEWEJ5slMlj+ikZ5NNgf5FKXQEM19gHeI5W8x
	JbI/Ahw/yPJvxM9rdUtr5/XG5eoKLiG7J3rOHRLWMBkfiqVzsXREno847Oy7XTDYOexi7KDyEA+xL
	+KoqEntG0cEjroeHmmcrOKraXFnggTYXyH8kVccnU15IQEcaGZ/qc2uENXsYQYnAZCEsUgNW1h7fi
	KBgPsjVAo23+vllckdEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipalZ-0000f6-N2; Thu, 09 Jan 2020 16:34:37 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipalP-0000eX-TG
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:34:29 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s94so1047034pjc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cKowTXElbIwNPHiVPa4u4GnF2xIwH7p+D7SwgI4xDds=;
 b=KranUPvIVSlrQAeovbcdugffemKy/nR+ighvkTl00RCdUFrRihDCRDxFEZRZN9JG+v
 UyNWVX9N764l0/gx4dzPGT7buMh2fg3v8z9XO03HhHGpmporxiy0g33ISVkf3n5Q1ccH
 lvGlJAU+N5/FoaOV0yWTPnIW5C964CXKHhFSESlOZyCKhwHJxUY0At3jJ1DIuUfJoceK
 lvvBBIPPjAsLca2UpRaroS6RID9NOl1V0zs8p5w0a+fi5KxWh1vKTXTa48eX/RF6nDzU
 mF7I+j3lThSGZvAjUALBKU1G/vYarh91VfoZLLTPlqyvK/7kn7UVSPyPBcoaLNtNUR/u
 Cb0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cKowTXElbIwNPHiVPa4u4GnF2xIwH7p+D7SwgI4xDds=;
 b=JYhn26ufU16+zL8MzvDW2b6f+WCfXwA4pfBfaCyhxV3veVwMYd3cK0CQFwiVLYMxI4
 yp2EUZ5rLCeN3N+nnkP2NS24QFRXgnA95gALc7TiXQMpxKvJh9tDCpAq5eLLFmBE3h8g
 zA+U7oXvqwFQI0+Gb2ykQKxSpr8CU53n2rRV8DDSJYwd/ZG14H2U1FzY58Eg6K3tsefj
 cURIoxY/VVXosmkyJgQd9gLv1kkDmvFvSmK/ylDfaQfztKljNQ6Gc2qqHaabJ9np7pBl
 nX5FbOH4924DoF5OjvIotDloCB6hIhOP/296WrJBT5zzuQy2B0XKuWwzZ6BTydl+iJOY
 bgSw==
X-Gm-Message-State: APjAAAXtHB/hk0aCBkpBLI2s39A2CzeFnQ6DZDPGI6qiVPafzD4rIr3m
 7GAs8gGoWCmX26AXzsxyEZepSA==
X-Google-Smtp-Source: APXvYqwS8CfoM7rN0/so2UXiS4NXNMNBpmHmy2fuhralDqnpSqUWh/Lv9MYVJQrARDZRLYxmVvnYcA==
X-Received: by 2002:a17:902:b68c:: with SMTP id
 c12mr12357128pls.160.1578587667268; 
 Thu, 09 Jan 2020 08:34:27 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j9sm8446085pff.6.2020.01.09.08.34.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:34:26 -0800 (PST)
Date: Thu, 9 Jan 2020 09:34:24 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v4 1/2] perf parse: Refactor struct perf_evsel_config_term
Message-ID: <20200109163424.GA5721@xps15>
References: <20200108142010.11269-1-leo.yan@linaro.org>
 <CANLsYkzv2Di-qeU1Q3M4Ro21hQ09eE26FBjeP1A9uSsA_W2Uww@mail.gmail.com>
 <20200109050753.GA24741@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109050753.GA24741@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_083427_947440_A60F290B 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Andi Kleen <ak@linux.intel.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
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

On Thu, Jan 09, 2020 at 01:08:06PM +0800, Leo Yan wrote:
> Hi Mathieu,
> 
> On Wed, Jan 08, 2020 at 10:58:31AM -0700, Mathieu Poirier wrote:
> 
> [...]
> 
> > > diff --git a/tools/perf/util/evsel_config.h b/tools/perf/util/evsel_config.h
> > > index 1f8d2fe0b66e..4e5b3ebf09cf 100644
> > > --- a/tools/perf/util/evsel_config.h
> > > +++ b/tools/perf/util/evsel_config.h
> > > @@ -33,21 +33,8 @@ struct perf_evsel_config_term {
> > >         struct list_head      list;
> > >         enum evsel_term_type  type;
> > >         union {
> > > -               u64           period;
> > > -               u64           freq;
> > > -               bool          time;
> > > -               char          *callgraph;
> > > -               char          *drv_cfg;
> > > -               u64           stack_user;
> > > -               int           max_stack;
> > > -               bool          inherit;
> > > -               bool          overwrite;
> > > -               char          *branch;
> > > -               unsigned long max_events;
> > > -               bool          percore;
> > > -               bool          aux_output;
> > > -               u32           aux_sample_size;
> > > -               u64           cfg_chg;
> > > +               u64           num;
> > > +               char          *str;
> > 
> > That is a lot more than just dealing with the "char *" members.  Given
> > the pervasiveness of the changes I would have been happy to leave
> > other members alone for the time being.
> 
> I think actually you are suggesting like below which add general
> members and also keep the old members.  If so, I prefer to add two
> general members 'num' and 'str'.

If we are to deal with all flields of the union, I think it should be as below:

        union {
                bool            cfg_bool;
                int             cfg_int;
                unsigned long   cfg_ulong;
                u32             cfg_u32;
                char            *cfg_str;
        } val;

But just dealing with the "char *" as below would also be fine with me:

        union {
                u64           period;
                u64           freq;
                bool          time;
                u64           stack_user;
                int           max_stack;
                bool          inherit;
                bool          overwrite;
                unsigned long max_events;
                bool          percore;
                bool          aux_output;
                u32           aux_sample_size;
                u64           cfg_chg;
                u64           num;
                char          *str;
        } val;

> 
> struct perf_evsel_config_term {
>         struct list_head      list;
>         enum evsel_term_type  type;
>         union {
>                 u64           period;
>                 u64           freq;
>                 bool          time;
>                 char          *callgraph;
>                 char          *drv_cfg;
>                 u64           stack_user;
>                 int           max_stack;
>                 bool          inherit;
>                 bool          overwrite;
>                 char          *branch;
>                 unsigned long max_events;
>                 bool          percore;
>                 bool          aux_output;
>                 u32           aux_sample_size;
>                 u64           cfg_chg;
> +               u64           num;
> +               char          *str;
>         } val;
>         bool weak;
> };
> 
> > I will let Jiri make the
> > final call but if we are to proceed this way I think we should have a
> > member per type to avoid casting issues.
> 
> Yeah, let's see what's Jiri thinking.
> 
> Just note, with this change, I don't see any casting warning or errors
> when built perf on arm64/arm32.

At this time you may not, but they will happen and it will be very hard to
debug.

> 
> Thanks,
> Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
