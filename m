Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A571CD6B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 12:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujUQ2ZzMlp+lGKInNMr3DQtXJE0qZyaETYZH4Jb+mtI=; b=nJcqJNWLlUv0W1
	lMFdufbCq86vrb/R8SScnZSenya79YnZJ9Lv4IvTHGgBMBH6gqfk2lzKPGMOH2qN4BvOWYEhW/mBP
	vaDRTCS6LaaznYEmL0j4ds//ou8MKuIxVqV0A+9e4/a8SH9J8Rawcp52BOuiF41JYOAk3b//woGDi
	iWYEzHloIW2b/ndoU4/fDMa9DZ7bq2A1bsk1oEvDrzXIqnvvq4uItICv70Lq4Bz2RxbtArUXl5kyj
	gGrkQBwcvfgbZ83dnm+dryTmusS8OaA8a8CKqrejWK3aCqG7hXBkGhIGfI/burf2mDcpR/eTxOskf
	QEUoCinF2fMvynwqzvYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5pm-0006oB-45; Mon, 11 May 2020 10:38:54 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5pe-0006nV-6F
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 10:38:47 +0000
Received: by mail-qt1-x841.google.com with SMTP id y42so4020366qth.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 03:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uf04Bplo4VLk4LrjpEdz9FsKxhkP+ZdN12Hn8z8gR3k=;
 b=mqCzMPdN1teGg+bTUJ01IQPzCKWAyY17rXaBqjFXSPbHfTK6eVvfpfhpRGaGtPu+so
 iv6Jd3DU9G0rPUCR44eqM9VMiVhXQIUY4PSxySOMunDn7pPZiNpTE8QVn0gklug4tYtL
 HhxyJGVKSCzbVbUBfSexUl29cX/iFDCHXNBoyFYW1CsI18YThM3pKlwl72PNt3AjZolH
 /avPwS+NyEJL+Kshm6XR1HRSQDQ5ObnJ37DttPS1Bh+ugYOMsAJGHM8M8aUCU/iGQ611
 B2GlRrMt09krd7851/RYyF3ez8kweAYOugm5MtHHlGE2cFq18qlesvNwgwhgIwZ7MF18
 notg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uf04Bplo4VLk4LrjpEdz9FsKxhkP+ZdN12Hn8z8gR3k=;
 b=Sm/eWeW1Mnlc0KABFDKvE/rQZEyJid+6ACAULwEYFr+FPWb1J2IgrqXrIB8VKlu64m
 z4T7TTI3pvY4+F9rHAta5ezrGaAGRHQTX6DDL2KtVkWOJqDhACYA8BXDRke6pIcPodXR
 xPQja3ngL8G6X+qHyYd6rUFo4kGNHY6efGQci+8SnxRCiDO3OTT08yOIWybQB7I7IBov
 zonozdUe25K8w/h/d5FNmTzcv/rZAw3hYG//N6Umn0lmDyqElcuQlecOTfJ7PJTJ+gWK
 JxRRFSNEnbEraU63hbC147cDwPTQPke9OIc3LLSyd440qxiw1Dz/Swt1nXUJ8LxIbrgQ
 5OlA==
X-Gm-Message-State: AGi0PuaiP0ZyrRnGW85X/qnInKGeTPuyt0OWuFWkStRZqoEFOFjvtQfa
 imKXbQ0lfxXUC63FkruUhJTKGTmOnjz/UlagsLy7Rg==
X-Google-Smtp-Source: APiQypKA80aT7+91W0G/UAG3ToBMU16CEkrdAIjzMcXXPQQBDIf2vVmju/g34hV4WYzwqrhQjb6qWRfjMFJ+BMKUNlw=
X-Received: by 2002:ac8:6c24:: with SMTP id k4mr15495561qtu.257.1589193524519; 
 Mon, 11 May 2020 03:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200511022359.15063-1-walter-zh.wu@mediatek.com>
 <CACT4Y+aC4i8cAVFu2-s82RczWCjYMpPVJLwS0OBLELR9qF8SYg@mail.gmail.com>
 <1589193126.2930.2.camel@mtksdccf07>
In-Reply-To: <1589193126.2930.2.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 11 May 2020 12:38:32 +0200
Message-ID: <CACT4Y+b16+-R=nQs-x1iDBZwBZKgJWf22Q=o1MvqkGP+8ybzmA@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] kasan: memorize and print call_rcu stack
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_033846_263295_52D2ABBB 
X-CRM114-Status: GOOD (  26.58  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Paul E . McKenney" <paulmck@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 12:32 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> On Mon, 2020-05-11 at 12:01 +0200, 'Dmitry Vyukov' via kasan-dev wrote:
> > On Mon, May 11, 2020 at 4:24 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > >
> > > This patchset improves KASAN reports by making them to have
> > > call_rcu() call stack information. It is useful for programmers
> > > to solve use-after-free or double-free memory issue.
> >
> > Hi Walter,
> >
> > I am looking at this now.
> >
> > I've upload the change to gerrit [1]
> > https://linux-review.googlesource.com/c/linux/kernel/git/torvalds/linux/+/2458
> >
> > I am not capable enough to meaningfully review such changes in this format...
> >
> > [1] https://linux.googlesource.com/Documentation
> >
>
> Hi Dmitry,
>
> I don't fully understand your meaning, our patchset's format has
> problem? or?

No, it does not have any problems. Your patch format is standard for kernel.

It's just complex patches in the standard kernel format that are hard
to review for me.


> > > The KASAN report was as follows(cleaned up slightly):
> > >
> > > BUG: KASAN: use-after-free in kasan_rcu_reclaim+0x58/0x60
> > >
> > > Freed by task 0:
> > >  save_stack+0x24/0x50
> > >  __kasan_slab_free+0x110/0x178
> > >  kasan_slab_free+0x10/0x18
> > >  kfree+0x98/0x270
> > >  kasan_rcu_reclaim+0x1c/0x60
> > >  rcu_core+0x8b4/0x10f8
> > >  rcu_core_si+0xc/0x18
> > >  efi_header_end+0x238/0xa6c
> > >
> > > First call_rcu() call stack:
> > >  save_stack+0x24/0x50
> > >  kasan_record_callrcu+0xc8/0xd8
> > >  call_rcu+0x190/0x580
> > >  kasan_rcu_uaf+0x1d8/0x278
> > >
> > > Last call_rcu() call stack:
> > > (stack is not available)
> > >
> > > Generic KASAN will record first and last call_rcu() call stack
> > > and print two call_rcu() call stack in KASAN report.
> > >
> > > This feature doesn't increase the cost of memory consumption. It is
> > > only suitable for generic KASAN.
> > >
> > > [1]https://bugzilla.kernel.org/show_bug.cgi?id=198437
> > > [2]https://groups.google.com/forum/#!searchin/kasan-dev/better$20stack$20traces$20for$20rcu%7Csort:date/kasan-dev/KQsjT_88hDE/7rNUZprRBgAJ
> > >
> > > Changes since v2:
> > > - remove new config option, default enable it in generic KASAN
> > > - test this feature in SLAB/SLUB, it is pass.
> > > - modify macro to be more clearly
> > > - modify documentation
> > >
> > > Walter Wu (3):
> > > rcu/kasan: record and print call_rcu() call stack
> > > kasan: record and print the free track
> > > kasan: update documentation for generic kasan
> > >
> > > Documentation/dev-tools/kasan.rst |  6 ++++++
> > > include/linux/kasan.h             |  2 ++
> > > kernel/rcu/tree.c                 |  4 ++++
> > > lib/Kconfig.kasan                 |  2 ++
> > > mm/kasan/common.c                 | 26 ++++----------------------
> > > mm/kasan/generic.c                | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
> > > mm/kasan/kasan.h                  | 23 +++++++++++++++++++++++
> > > mm/kasan/report.c                 | 47 +++++++++++++++++++++--------------------------
> > > mm/kasan/tags.c                   | 37 +++++++++++++++++++++++++++++++++++++
> > > 9 files changed, 149 insertions(+), 48 deletions(-)
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200511022359.15063-1-walter-zh.wu%40mediatek.com.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/1589193126.2930.2.camel%40mtksdccf07.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
