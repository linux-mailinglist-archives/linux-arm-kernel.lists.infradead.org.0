Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7314314E6EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 03:05:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OJt0rntoLDqZA8RcQE4IPlbKmlzPu9NHZWjNaAO0TY=; b=UhAHSvWf97zPvF
	iOjzbS4M9oQ4ty+sU9bIQHJrHo1CZqR38CiN827p8Pw2QyUNAb0vHCSXgTNb3mOpI/0bMCvWEZHav
	XETlqMznQY59KHJc/vfAODFEfbE5ZtJXwJ3IirU8XLmnHAA8pU3S8cqhBlO8BAuOE2v1uWjChfTzb
	CM/hilViee7iaQc4EHMBo8BOp5+LZbu6HoaWTX3n+79qeywjrGhRdCHgGeJbhSS2NEGdAdXkYRVqe
	KlPmGBuzWyXzT5JcUFBPy30KWKFGjgbT8zHRF7ED8GkGtFz5XvIrMo6AjrsGV7egHOs+KtfLHn1lG
	RBgJTynreO5JZ7ExD65A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixLgx-0007AN-Tq; Fri, 31 Jan 2020 02:05:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixLgp-00079j-Uk; Fri, 31 Jan 2020 02:05:49 +0000
X-UUID: 1b99f470b09443db9ec129b6e29d950d-20200130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=eAN7TYSx5Ngnmh1dy1RUM0HJOBtCp5tpJodPVFhl6LQ=; 
 b=t/kHqHbIsMuJDEtefMCvcLTmsW/5c4BBHLrMccFqL+IkVCD9EQGYsUxoeu3xExjhxaeLQeVc6JHic3PR8Th2tLKjUwCDhHw+oOtddmhwkThlVxzRWfvCm6SWd2aIudQTNypgISxPxIiwjIZsMgp3a3SAABvmQQATXNRZhwr6k0Y=;
X-UUID: 1b99f470b09443db9ec129b6e29d950d-20200130
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 919770357; Thu, 30 Jan 2020 18:05:42 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 Jan 2020 18:05:33 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 Jan 2020 10:04:23 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 31 Jan 2020 10:05:16 +0800
Message-ID: <1580436306.11126.16.camel@mtksdccf07>
Subject: Re: [PATCH v3] lib/stackdepot: Fix global out-of-bounds in stackdepot
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Alexander Potapenko <glider@google.com>
Date: Fri, 31 Jan 2020 10:05:06 +0800
In-Reply-To: <CAG_fn=X_jSUJXD932z9oN5hBa--n3Qct4zrjzGaPtb2MwJye7A@mail.gmail.com>
References: <20200130064430.17198-1-walter-zh.wu@mediatek.com>
 <CAG_fn=X_jSUJXD932z9oN5hBa--n3Qct4zrjzGaPtb2MwJye7A@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_180547_998924_069104EE 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Thu, 2020-01-30 at 13:03 +0100, Alexander Potapenko wrote:
> On Thu, Jan 30, 2020 at 7:44 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> 
> Hi Walter,
> 
> > If the depot_index = STACK_ALLOC_MAX_SLABS - 2 and next_slab_inited = 0,
> > then it will cause array out-of-bounds access, so that we should modify
> > the detection to avoid this array out-of-bounds bug.
> >
> > Assume depot_index = STACK_ALLOC_MAX_SLABS - 3
> > Consider following call flow sequence:
> >
> > stack_depot_save()
> >    depot_alloc_stack()
> >       if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
> >       depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 2
> >       if (depot_index + 1 < STACK_ALLOC_MAX_SLABS) //enter
> >          smp_store_release(&next_slab_inited, 0); //next_slab_inited = 0
> >       init_stack_slab()
> >          if (stack_slabs[depot_index] == NULL) //enter and exit
> >
> > stack_depot_save()
> >    depot_alloc_stack()
> >       if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
> >       depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 1
> >       init_stack_slab(&prealloc)
> >          stack_slabs[depot_index + 1]  //here get global out-of-bounds
> >
> > Cc: Dmitry Vyukov <dvyukov@google.com>
> > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: Alexander Potapenko <glider@google.com>
> > Cc: Josh Poimboeuf <jpoimboe@redhat.com>
> > Cc: Kate Stewart <kstewart@linuxfoundation.org>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Kate Stewart <kstewart@linuxfoundation.org>
> > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > ---
> > changes in v2:
> > modify call flow sequence and preconditon
> >
> > changes in v3:
> > add some reviewers
> > ---
> >  lib/stackdepot.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/lib/stackdepot.c b/lib/stackdepot.c
> > index ed717dd08ff3..7e8a15e41600 100644
> > --- a/lib/stackdepot.c
> > +++ b/lib/stackdepot.c
> > @@ -106,7 +106,7 @@ static struct stack_record *depot_alloc_stack(unsigned long *entries, int size,
> >         required_size = ALIGN(required_size, 1 << STACK_ALLOC_ALIGN);
> >
> >         if (unlikely(depot_offset + required_size > STACK_ALLOC_SIZE)) {
> > -               if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) {
> > +               if (unlikely(depot_index + 2 >= STACK_ALLOC_MAX_SLABS)) {
> 
> I don't think this is the right way to fix the problem.
> You're basically throwing away the last element of stack_slabs[], as
> we won't allocate anything from it.
> 
ok, I agree.
 
> How about we set |next_slab_inited| to 1 here:
> 
> diff --git a/lib/stackdepot.c b/lib/stackdepot.c
> index 2e7d2232ed3c..943a51eb746d 100644
> --- a/lib/stackdepot.c
> +++ b/lib/stackdepot.c
> @@ -105,6 +105,8 @@ static bool init_stack_slab(void **prealloc)
>                 return true;
>         if (stack_slabs[depot_index] == NULL) {
>                 stack_slabs[depot_index] = *prealloc;
> +               if (depot_index + 1 == STACK_ALLOC_MAX_SLABS)
> +                       smp_store_release(&next_slab_inited, 1);
>         } else {
>                 stack_slabs[depot_index + 1] = *prealloc;
>                 /*
> 
> This will ensure we won't be preallocating pages once |depot_index|
> reaches the last element, and we won't attempt to write those pages
> anywhere either.
> 
> Could you please check if this fixes the problem for you?
> 
Consider above call flow sequence at first stack_depot_save(),
depot_index = STACK_ALLOC_MAX_SLABS - 2 before enter init_stack_slab(),
so the fixes should be below.

--- a/lib/stackdepot.c
+++ b/lib/stackdepot.c
@@ -83,6 +83,8 @@ static bool init_stack_slab(void **prealloc)
                return true;
        if (stack_slabs[depot_index] == NULL) {
                stack_slabs[depot_index] = *prealloc;
+               if (depot_index + 2 == STACK_ALLOC_MAX_SLABS)
+                       smp_store_release(&next_slab_inited, 1);
        } else {
                stack_slabs[depot_index + 1] = *prealloc;
                /*


> >                         WARN_ONCE(1, "Stack depot reached limit capacity");
> >                         return NULL;
> >                 }
> > --
> > 2.18.0
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
