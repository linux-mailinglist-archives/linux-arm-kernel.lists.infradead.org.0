Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3887113526E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 06:08:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCoZBDZ1K3rWayIsIYNR0s/LPoYfdOUEYZLGVBUWLjs=; b=ceQHu9YC14kGlG
	+/wwCFYE1lpG4P68l9OiQqQ7O5NOJZ5H9iJ1wdY1IYOMvcV4Mr+9502LDpKVZJUwtyUu3EVrP9C2W
	+pUoj2YGV0rJ4Ft0Uc0bKhvUYl/uybBBJs1Bl+xciJnYmta5N1BAnRTmsxJNLM6yaBu8eFvagQKs7
	trGTcG3hX/ZrdpNmwdAYMahEilCFp8EpUu2ms62YmbtB0F5wWdDk/8UBROnrzONesUP3yWFNefDhW
	bBwDudPIlexLAfbvzn793B/8ssDKwW9KOC73czz+i8+VxzXb76SZWllYfdw+yivAyZtG/3UTzjef5
	IWcK7BHOebq4wnwi7PHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipQ3T-0007OJ-EE; Thu, 09 Jan 2020 05:08:23 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipQ3K-0007N8-5n
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 05:08:15 +0000
Received: by mail-pl1-x641.google.com with SMTP id b22so2040061pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 21:08:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lcAJ8a5JjzOWUFJCh86RBNGI7a8kNUnL/Mhr975Tw90=;
 b=RnvZmwwI6pZ9+qidRZsu0vns4iAn1DAJL5MlsGLIdlqfq4TZAVoPlJz/U1+JLRYEZT
 EYjPlCBSXAM3IAQ+BOQ3xalMH2B4N/y/Di06WGGOQD6/wip/IMUBYL1aOpYDdBS57I9G
 nQceWEUwEtys99Wtrms/hTUUDG8s1K8OxwItTaAe64xEffhKYBg773HmWD1qL8DqkEmC
 w8u7Sr6g1cUNPdfxuEUdWwoDxxOsvzO7EOyZVgj71XnE69iWWm+jiScOdoMvJhfJjAVy
 JzqTj57Dhawu7blgdHEYan07YQDuQVhtZj4WQ3yj3nKP7G7ARiqx4zR81gkGlytyJkDu
 IHzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lcAJ8a5JjzOWUFJCh86RBNGI7a8kNUnL/Mhr975Tw90=;
 b=sKZsd5VmivXf4tptnsEaOEmW+plleeSJN0RDlh0NEjlaV17Yh94YsdeBwd90Thm7pv
 xYlwCAEbdmorUsREXGpFNp3yhY9n5IbjklbqVVRZZlxwwgYA6+LxrMj9JapNJ08plUvm
 V7UZ4STpd7smhHodsemvVjuX+fMrR+rd/2cObenfSN0DCYNT8RXqUaSEjxGRfR5ykdas
 ZtJZZe9qQHtD6P69TsDjCCEunNjlaa8B000qRWsXqvBqDBYg738syOsGKBAEdMiiX1IR
 ecLJvd9LLl9iXUZ+k701MjwBVcDpmEpe3rBzmjqo48UVfaori3blplf/dnbucmYSU9sv
 Bnnw==
X-Gm-Message-State: APjAAAVLjhAsCksNKTv4p9K71FGPikHPL5gDpXDYDHWq1wwl8dQdr580
 d9y0qre6y7ycTlhiaBPKvlF/zA==
X-Google-Smtp-Source: APXvYqyMdP63NJdH9SfWzk07UUKeaz4wI65kF4lFtyIiSizBhZXFfGZ5NaL5lEw5MHT5xrwe0s6MnA==
X-Received: by 2002:a17:90a:5806:: with SMTP id
 h6mr2977688pji.120.1578546493628; 
 Wed, 08 Jan 2020 21:08:13 -0800 (PST)
Received: from leoy-ThinkPad-X240s (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id r37sm1049482pjb.7.2020.01.08.21.08.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 Jan 2020 21:08:13 -0800 (PST)
Date: Thu, 9 Jan 2020 13:08:06 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v4 1/2] perf parse: Refactor struct perf_evsel_config_term
Message-ID: <20200109050753.GA24741@leoy-ThinkPad-X240s>
References: <20200108142010.11269-1-leo.yan@linaro.org>
 <CANLsYkzv2Di-qeU1Q3M4Ro21hQ09eE26FBjeP1A9uSsA_W2Uww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkzv2Di-qeU1Q3M4Ro21hQ09eE26FBjeP1A9uSsA_W2Uww@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_210814_221309_3C2B899B 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Mathieu,

On Wed, Jan 08, 2020 at 10:58:31AM -0700, Mathieu Poirier wrote:

[...]

> > diff --git a/tools/perf/util/evsel_config.h b/tools/perf/util/evsel_config.h
> > index 1f8d2fe0b66e..4e5b3ebf09cf 100644
> > --- a/tools/perf/util/evsel_config.h
> > +++ b/tools/perf/util/evsel_config.h
> > @@ -33,21 +33,8 @@ struct perf_evsel_config_term {
> >         struct list_head      list;
> >         enum evsel_term_type  type;
> >         union {
> > -               u64           period;
> > -               u64           freq;
> > -               bool          time;
> > -               char          *callgraph;
> > -               char          *drv_cfg;
> > -               u64           stack_user;
> > -               int           max_stack;
> > -               bool          inherit;
> > -               bool          overwrite;
> > -               char          *branch;
> > -               unsigned long max_events;
> > -               bool          percore;
> > -               bool          aux_output;
> > -               u32           aux_sample_size;
> > -               u64           cfg_chg;
> > +               u64           num;
> > +               char          *str;
> 
> That is a lot more than just dealing with the "char *" members.  Given
> the pervasiveness of the changes I would have been happy to leave
> other members alone for the time being.

I think actually you are suggesting like below which add general
members and also keep the old members.  If so, I prefer to add two
general members 'num' and 'str'.

struct perf_evsel_config_term {
        struct list_head      list;
        enum evsel_term_type  type;
        union {
                u64           period;
                u64           freq;
                bool          time;
                char          *callgraph;
                char          *drv_cfg;
                u64           stack_user;
                int           max_stack;
                bool          inherit;
                bool          overwrite;
                char          *branch;
                unsigned long max_events;
                bool          percore;
                bool          aux_output;
                u32           aux_sample_size;
                u64           cfg_chg;
+               u64           num;
+               char          *str;
        } val;
        bool weak;
};

> I will let Jiri make the
> final call but if we are to proceed this way I think we should have a
> member per type to avoid casting issues.

Yeah, let's see what's Jiri thinking.

Just note, with this change, I don't see any casting warning or errors
when built perf on arm64/arm32.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
