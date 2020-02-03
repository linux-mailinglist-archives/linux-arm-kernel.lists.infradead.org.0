Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97499150070
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 03:06:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfTo6QWzwWHzZ0pneVUtFi31QBPZadv+CDuuWVSTrTY=; b=ZnV+/TyPX9ZD1z
	OIQ0hCK4V2c14Srno+NXInIc19Pe/B5QBqXK8G0C5/Gaj6MMu+DWhkAkki7hEYoV0thDiKDQHSG0M
	S488D7ja3OTVLFhud2UrJrOkCoFDBNE0gDfiLiuXh59POE8zdGZnVJgW/jI4b6xx0DoruJYDsV1cF
	DQIdtKqzPJXCp50xzfQm9Bn93uyKDoFanZBg+AoTDz8czoE+BfMg+0FBnA4O4gKl56Wv8bfRHW9al
	bYrHiWk1t8cadA301nXrvJd3egiox0NdrFr4LzrmtP2BSIvFMng4RTHmkB6DxxQDiTg3kXzVlzed+
	7qlgSvnfO5YrQlJ+q1Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyR7g-00050i-33; Mon, 03 Feb 2020 02:06:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyR7Y-00050H-Ow; Mon, 03 Feb 2020 02:05:54 +0000
X-UUID: c3df323753ad424f81597597546b086f-20200202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=NWarxv3wt0FpySWansQ4rSsY2Q9gQTyzvXi1iyPbHi8=; 
 b=KfUoiozTl+xGCm0GvD2XneP2ZVmfO9bJxcTfBM2JruQjmJZ1UvKGiyqhkMYm+fkaIfIB0g/b5Cuza/pnklo4z2bfFbDmN8aPj2PCKlrwrrwwag+qhlrwN6PLt3xe+Qw07XnRaAGHXI6dV1VgoKw8s8Nrz4KWd0ipsaMxytotsBo=;
X-UUID: c3df323753ad424f81597597546b086f-20200202
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1979139905; Sun, 02 Feb 2020 18:05:47 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Feb 2020 18:05:45 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Feb 2020 10:05:06 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 3 Feb 2020 10:05:30 +0800
Message-ID: <1580695544.17006.7.camel@mtksdccf07>
Subject: Re: [PATCH v3] lib/stackdepot: Fix global out-of-bounds in stackdepot
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Alexander Potapenko <glider@google.com>
Date: Mon, 3 Feb 2020 10:05:44 +0800
In-Reply-To: <CAG_fn=X2V0nL=+s38bDbS3UXf2_i61tSevd8vzkV-ZKY=7MHvw@mail.gmail.com>
References: <20200130064430.17198-1-walter-zh.wu@mediatek.com>
 <CAG_fn=X_jSUJXD932z9oN5hBa--n3Qct4zrjzGaPtb2MwJye7A@mail.gmail.com>
 <1580436306.11126.16.camel@mtksdccf07>
 <CAG_fn=X2V0nL=+s38bDbS3UXf2_i61tSevd8vzkV-ZKY=7MHvw@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_180552_819441_0ECAE807 
X-CRM114-Status: GOOD (  24.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Josh
 Poimboeuf <jpoimboe@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-01-31 at 19:11 +0100, Alexander Potapenko wrote:
> On Fri, Jan 31, 2020 at 3:05 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > On Thu, 2020-01-30 at 13:03 +0100, Alexander Potapenko wrote:
> > > On Thu, Jan 30, 2020 at 7:44 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > >
> > > Hi Walter,
> > >
> > > > If the depot_index = STACK_ALLOC_MAX_SLABS - 2 and next_slab_inited = 0,
> > > > then it will cause array out-of-bounds access, so that we should modify
> > > > the detection to avoid this array out-of-bounds bug.
> > > >
> > > > Assume depot_index = STACK_ALLOC_MAX_SLABS - 3
> > > > Consider following call flow sequence:
> > > >
> > > > stack_depot_save()
> > > >    depot_alloc_stack()
> > > >       if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
> > > >       depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 2
> > > >       if (depot_index + 1 < STACK_ALLOC_MAX_SLABS) //enter
> > > >          smp_store_release(&next_slab_inited, 0); //next_slab_inited = 0
> > > >       init_stack_slab()
> > > >          if (stack_slabs[depot_index] == NULL) //enter and exit
> > > >
> > > > stack_depot_save()
> > > >    depot_alloc_stack()
> > > >       if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
> > > >       depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 1
> > > >       init_stack_slab(&prealloc)
> > > >          stack_slabs[depot_index + 1]  //here get global out-of-bounds
> > > >
> > > > Cc: Dmitry Vyukov <dvyukov@google.com>
> > > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > > Cc: Thomas Gleixner <tglx@linutronix.de>
> > > > Cc: Alexander Potapenko <glider@google.com>
> > > > Cc: Josh Poimboeuf <jpoimboe@redhat.com>
> > > > Cc: Kate Stewart <kstewart@linuxfoundation.org>
> > > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > > Cc: Kate Stewart <kstewart@linuxfoundation.org>
> > > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > > ---
> > > > changes in v2:
> > > > modify call flow sequence and preconditon
> > > >
> > > > changes in v3:
> > > > add some reviewers
> > > > ---
> > > >  lib/stackdepot.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/lib/stackdepot.c b/lib/stackdepot.c
> > > > index ed717dd08ff3..7e8a15e41600 100644
> > > > --- a/lib/stackdepot.c
> > > > +++ b/lib/stackdepot.c
> > > > @@ -106,7 +106,7 @@ static struct stack_record *depot_alloc_stack(unsigned long *entries, int size,
> > > >         required_size = ALIGN(required_size, 1 << STACK_ALLOC_ALIGN);
> > > >
> > > >         if (unlikely(depot_offset + required_size > STACK_ALLOC_SIZE)) {
> > > > -               if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) {
> > > > +               if (unlikely(depot_index + 2 >= STACK_ALLOC_MAX_SLABS)) {
> 
> This again means stack_slabs[STACK_ALLOC_MAX_SLABS - 2] gets
> initialized, but stack_slabs[STACK_ALLOC_MAX_SLABS - 1] doesn't,
> because we'll be bailing out from init_stack_slab() from now on.
> Does this patch actually fix the problem (do you have a reliable reproducer?)
We get it by reviewing code, because Kasan doesn't scan it and we catch
another bug internally, we found it unintentionally.

> This addition of 2 is also counterintuitive, I don't think further
> readers will understand the logic behind it.
> 
Yes

> What if we just check that depot_index + 1 is a valid index before accessing it?
> 
It should fix the problem, do you want to send this patch?

> diff --git a/lib/stackdepot.c b/lib/stackdepot.c
> index 2e7d2232ed3c..c2e6ff18d716 100644
> --- a/lib/stackdepot.c
> +++ b/lib/stackdepot.c
> @@ -106,7 +106,9 @@ static bool init_stack_slab(void **prealloc)
>         if (stack_slabs[depot_index] == NULL) {
>                 stack_slabs[depot_index] = *prealloc;
>         } else {
> -               stack_slabs[depot_index + 1] = *prealloc;
> +               /* If this is the last depot slab, do not touch the next one. */
> +               if (depot_index + 1 < STACK_ALLOC_MAX_SLABS)
> +                       stack_slabs[depot_index + 1] = *prealloc;
>                 /*
>                  * This smp_store_release pairs with smp_load_acquire() from
>                  * |next_slab_inited| above and in stack_depot_save().

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
