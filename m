Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741311370A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:04:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APVdOxYXq1eaNDYVhvk+Pzp9MT3tNcmN7g9N5BHKgQw=; b=NLKWHdIYirn1QG
	feq8hgAXO0gj/tB9+az6fA/PxSV+NOR6gWdTiWdAKA7WFL4XIffM/z+884Nk32yHS9hhVZxMs3eW8
	Wvks6viuolExCQhH6lKGJ8qd6qOg5KA+tvQ4T8jw+LT4P6uo7ewqhySear/ZhMvBQyTRHQge8Vr+B
	nMSyHt676frAEFof4Q8fA24yh+y9G51A93FoapwXczIhSQteXrzjzD80dk+3iXL48W0u0a0nVxgC3
	C1F6i801kIWoJsUzvGzOHMYeh1V+24zSKCd3ofUbYLnt/zT0gvXL8Q4xVzK7kvI0GPE2BYn+Yb4no
	O3Mi2O4IKVb385PEmtAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvq0-0003PM-43; Fri, 10 Jan 2020 15:04:36 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvpp-0003OF-8F
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:04:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578668662;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zpRs+t3MnBquJOXxU7DLw4h9hLZJR04RmfH2UeDCZ2w=;
 b=Mj5DUC60G6wm7gMuAzjujeUPCS6yyssSlFzqlYPQ833QkECPIjhyi1LoM748DNTD5HQvrH
 h8xKFb6d+u/+Y0z/XQTNUxoC7GwhcI0JXJt/KVqbGz7EPZRgW6/nXcuic6ITlKNVcx/gb8
 lMBr5yZuxxb9DJrqnzNpQm5FsYrCsqs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-fmVMeFvvMLOECcXhOOR0wA-1; Fri, 10 Jan 2020 10:04:19 -0500
X-MC-Unique: fmVMeFvvMLOECcXhOOR0wA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D8CC4107ACC5;
 Fri, 10 Jan 2020 15:04:16 +0000 (UTC)
Received: from krava (ovpn-205-164.brq.redhat.com [10.40.205.164])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E9F628088C;
 Fri, 10 Jan 2020 15:04:12 +0000 (UTC)
Date: Fri, 10 Jan 2020 16:04:10 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v4 1/2] perf parse: Refactor struct perf_evsel_config_term
Message-ID: <20200110150410.GG82989@krava>
References: <20200108142010.11269-1-leo.yan@linaro.org>
 <CANLsYkzv2Di-qeU1Q3M4Ro21hQ09eE26FBjeP1A9uSsA_W2Uww@mail.gmail.com>
 <20200109050753.GA24741@leoy-ThinkPad-X240s>
 <20200109163424.GA5721@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109163424.GA5721@xps15>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_070425_391400_3159823C 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 09:34:24AM -0700, Mathieu Poirier wrote:

SNIP

> 
> If we are to deal with all flields of the union, I think it should be as below:
> 
>         union {
>                 bool            cfg_bool;
>                 int             cfg_int;
>                 unsigned long   cfg_ulong;
>                 u32             cfg_u32;
>                 char            *cfg_str;
>         } val;
> 
> But just dealing with the "char *" as below would also be fine with me:
> 
>         union {
>                 u64           period;
>                 u64           freq;
>                 bool          time;
>                 u64           stack_user;
>                 int           max_stack;
>                 bool          inherit;
>                 bool          overwrite;
>                 unsigned long max_events;
>                 bool          percore;
>                 bool          aux_output;
>                 u32           aux_sample_size;
>                 u64           cfg_chg;
>                 u64           num;
>                 char          *str;
>         } val;
> 
> > 
> > struct perf_evsel_config_term {
> >         struct list_head      list;
> >         enum evsel_term_type  type;
> >         union {
> >                 u64           period;
> >                 u64           freq;
> >                 bool          time;
> >                 char          *callgraph;
> >                 char          *drv_cfg;
> >                 u64           stack_user;
> >                 int           max_stack;
> >                 bool          inherit;
> >                 bool          overwrite;
> >                 char          *branch;
> >                 unsigned long max_events;
> >                 bool          percore;
> >                 bool          aux_output;
> >                 u32           aux_sample_size;
> >                 u64           cfg_chg;
> > +               u64           num;
> > +               char          *str;
> >         } val;
> >         bool weak;
> > };
> > 
> > > I will let Jiri make the
> > > final call but if we are to proceed this way I think we should have a
> > > member per type to avoid casting issues.
> > 
> > Yeah, let's see what's Jiri thinking.
> > 
> > Just note, with this change, I don't see any casting warning or errors
> > when built perf on arm64/arm32.
> 
> At this time you may not, but they will happen and it will be very hard to
> debug.

hi,
sry for late reply..

I think ;-) we should either add all different types to the union
or just add 'str' pointer to handle strings correctly.. which seems
better, because it's less changes and there's no real issue that
would need that other bigger change

jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
