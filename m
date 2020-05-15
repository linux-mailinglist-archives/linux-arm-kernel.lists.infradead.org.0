Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53341D4939
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryAyV2jttlH47d+uPm2P9KaRFrqfVuGmHmnD2KCuIus=; b=Vmf4cKhsMnwvI+
	BIP+QAOhTFjo+CKwltaBxEofmO/nbGbag7fVv8LXt6EF79IZlgGy8TtymFICbE/J1AN6C1nq7I2an
	nZZVMxuNywjTGK7q1FjadzT2jh/6Br9mU8TKcAwXJFvJDE+BZBysDMN31a64HLUb0SqIAvrxNCEW0
	N/vGdiqLwW60fxyNGJrIJCT/F6XzLgCJuLn5RKLCvdq8qhudx8UeC4yH8ePAAClFuoEfCuPtaaY6S
	NdcrmYde7sEufw7ixfFNNiCnqU/NYfHM2qZu7J0wz+4H67mliEcPb4XWyDjo+rUICsdgUmGPpF0PJ
	JSQ8JWE5mT23MGw51NTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWRe-0007AW-Kk; Fri, 15 May 2020 09:15:54 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWRV-00079z-KM
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:15:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589534144;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/5awcNeBjTNuGjgZ8wQMW9no+F30tdMR8rr0G98WOb4=;
 b=KxMpQ2jQZ9ZIkQwhDpIuYkaoZdLvt1ms6/A/+wlldepsrORYGvPuZez4R6ipHB2JI0xR9h
 jkF3sVqndE/2ChzPv6TAYw80f3d2FvEYzU/AC+6VP1B/Qbk8NMlKHX7OugbduDbLrP0V8T
 vKAjfkLRnleCAqNO5o9CWsC/HpekUkY=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-92-3RSDaZe-MgKUMNP5GIYfsg-1; Fri, 15 May 2020 05:15:43 -0400
X-MC-Unique: 3RSDaZe-MgKUMNP5GIYfsg-1
Received: by mail-qk1-f197.google.com with SMTP id i17so1561621qka.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 02:15:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/5awcNeBjTNuGjgZ8wQMW9no+F30tdMR8rr0G98WOb4=;
 b=WJpHG9SVcdCW1UmSWm6fs0VcLtlFsifLYVqzs218rQbPO5+yvRwFYzgDAlZzY6en8G
 M2Gq0qwmu5lwNt6ECGSLGY7coMs9BqUf8CXSjHOG0QX/PnnrcF1D7TxmtgrOx4O39QF0
 nbi3B/aLgdNcy3u3shpdmQjG4BHMpYN9Vi/yPQJaX3QTTuFhKDZHjkgtWHi0aNEVLcVW
 1FsDraLM3o9YNMMb7wFbmRW00bYK4t4+gsBgdIVRuVnXA9b253mPxnBDd8SePA16CgAg
 w3+kHaUGd73C1U+a7EA4tzgfu9LlqBVJRGMU+a+w8HukpRbtdqM7jo7BxZf2MxU78AV9
 oAjw==
X-Gm-Message-State: AOAM531/Mc6zjEadmvZH+bj8FcZ1PqL+djdbhsKYFmU55+YMdwKhA1bm
 MAW0oVbUb0EOqnr2V4wFJ2b37SCpdWnQzwOM77S6qpZNk2xIo9G5Ljw9liITmM2sF6jcen2ulZT
 iqN8eYf2HKle5WO6tE9HGdO+SOI7hVAVXKvSLNR4wjdxA4FvTYzI=
X-Received: by 2002:ac8:380d:: with SMTP id q13mr2372099qtb.200.1589534142862; 
 Fri, 15 May 2020 02:15:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx8nyyO55A3mAp5k/ZtXVWiRwhEwxpHzlb/m+SHwSRPOCkAKQQlYUW1tRALhgZ0tlz8hGPGU5nXJcBAoRq0W1Y=
X-Received: by 2002:ac8:380d:: with SMTP id q13mr2372075qtb.200.1589534142649; 
 Fri, 15 May 2020 02:15:42 -0700 (PDT)
MIME-Version: 1.0
References: <1588063937-5744-1-git-send-email-bhsharma@redhat.com>
 <20200428100745.GA15300@C02TD0UTHF1T.local>
 <CACi5LpM9_O6gRgMgfAXrmZuaO111xJk3=xtjYXK5rKhTF7Znsg@mail.gmail.com>
In-Reply-To: <CACi5LpM9_O6gRgMgfAXrmZuaO111xJk3=xtjYXK5rKhTF7Znsg@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 15 May 2020 14:45:29 +0530
Message-ID: <CACi5LpPqjm6Tc7vP1oCt4ZFm0UQTMMr3CZuVGhA4Swz-DxjvsA@mail.gmail.com>
Subject: Re: [PATCH] hw_breakpoint: Remove unused
 '__register_perf_hw_breakpoint' declaration
To: Mark Rutland <mark.rutland@arm.com>,
 Frederic Weisbecker <fweisbec@gmail.com>, 
 Ingo Molnar <mingo@kernel.org>, Peter Zijlstra <peterz@infradead.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_021545_745499_D4E99A81 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>, Will Deacon <will@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter, Frederic, Ingo

On Thu, Apr 30, 2020 at 9:49 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> Hi Mark,
>
> Thanks for the review.
>
> On Tue, Apr 28, 2020 at 3:37 PM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > Hi Bhupesh,
> >
> > On Tue, Apr 28, 2020 at 02:22:17PM +0530, Bhupesh Sharma wrote:
> > > commit b326e9560a28 ("hw-breakpoints: Use overflow handler instead of
> > > the event callback") removed '__register_perf_hw_breakpoint' function
> > > usage and replaced it with 'register_perf_hw_breakpoint' function.
> > >
> > > Remove the left-over unused '__register_perf_hw_breakpoint' declaration
> > > from 'hw_breakpoint.h' as well.
> > >
> > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> >
> > This is generic code, so I'm a bit confused as to why you've sent it to
> > us. I'd expect this to go via the perf core maintainers (cc'd).
>
> Oops, my bad. Seems my git patch sending script messed up while
> picking up the perf maintainers (who should have been Cc'ed on the
> patch) :(
>
> Thanks for adding them in the Cc list.
>
> Hi Peter, Frederic, Ingo - Kindly help review this patch and help
> apply the patch (if suitable).

Ping. Any comments on this patch?

Thanks,
Bhupesh

> > FWIW, this looks sane to me, so:
> >
> > Acked-by: Mark Rutland <mark.rutland@arm.com>
> >
> > Mark.
> >
> > > ---
> > >  include/linux/hw_breakpoint.h | 3 ---
> > >  1 file changed, 3 deletions(-)
> > >
> > > diff --git a/include/linux/hw_breakpoint.h b/include/linux/hw_breakpoint.h
> > > index 6058c3844a76..fe1302da8e0f 100644
> > > --- a/include/linux/hw_breakpoint.h
> > > +++ b/include/linux/hw_breakpoint.h
> > > @@ -72,7 +72,6 @@ register_wide_hw_breakpoint(struct perf_event_attr *attr,
> > >                           void *context);
> > >
> > >  extern int register_perf_hw_breakpoint(struct perf_event *bp);
> > > -extern int __register_perf_hw_breakpoint(struct perf_event *bp);
> > >  extern void unregister_hw_breakpoint(struct perf_event *bp);
> > >  extern void unregister_wide_hw_breakpoint(struct perf_event * __percpu *cpu_events);
> > >
> > > @@ -115,8 +114,6 @@ register_wide_hw_breakpoint(struct perf_event_attr *attr,
> > >                           void *context)              { return NULL; }
> > >  static inline int
> > >  register_perf_hw_breakpoint(struct perf_event *bp)   { return -ENOSYS; }
> > > -static inline int
> > > -__register_perf_hw_breakpoint(struct perf_event *bp)         { return -ENOSYS; }
> > >  static inline void unregister_hw_breakpoint(struct perf_event *bp)   { }
> > >  static inline void
> > >  unregister_wide_hw_breakpoint(struct perf_event * __percpu *cpu_events)      { }
> > > --
> > > 2.7.4
> > >
> >


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
