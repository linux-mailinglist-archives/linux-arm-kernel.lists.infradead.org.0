Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DCB14F1FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 19:12:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZblUzA3yK4eUo/8cvPXX8JlesyHQQdFmJhl53ABgIl8=; b=Y1FQ8czBsEc5NV
	WD8WgY7xfCU05NjlTv6rQ/qzl0QXJ58S08I608W/tLyjRjuBLwUue+jhTe+J+s8qGxzixg3ZyaLVB
	cG/m2fYKZ3r/ASXTfitvUQ7rvXc3yc+KB8tVJS5AfemHXKU+vfwlVODyxwegxaLwvuVb6vJNnHZ4j
	3Cm6XcrTaZEz2xowDTSJAab8ScNOFXtN6G9qzxmqhdnlybumhCtQVXPvpDzlI0CrREl3ugYce/tQb
	qQxABnmdYZugIS7RejQT43Bx3eA02OOlmYbHpP17LE5GFgfLZzJt5chDLCTH+ZpdIxg8aT2vzOlZ2
	2yq/O9NvbSRyMVHJquLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixam5-0007UC-9x; Fri, 31 Jan 2020 18:12:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixalt-0007SZ-JL
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 18:12:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so9821431wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 10:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fQB69rHX1wLUOB6ckxnewaTIywwOUniSjsLx2ZdmZVU=;
 b=jeDt22Y76Yhwn3Q8wYjH9uJcoKEH0QuY429dXNFN7HruLwWlRqVzXUK751j8JOdxjq
 FULXCK2DPDMD9GR+VdOs4vb/InZZFXbIn0Y73jMsCQBUw7xAQd1SkBJu2EwklkEOxiS6
 0USCMPOp279Gx/SIRygdYahxOnYgQuJqKQthJwCpA/S0Ut4VeHIr5/WrT9o9OQprpORe
 xvfqMAcldi7yr298nGsS9k0ykRUMQSUO57pZwZ78QXiR6+6BSTCvE6Xxau6WzzcN/2UD
 6y+X9NEM5Z/eaynqJL6QbY4sQN5sJ43ZQ4BOe/ZqUspMnrtQZJNJlhlFTMDfeKCP2/+H
 d7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fQB69rHX1wLUOB6ckxnewaTIywwOUniSjsLx2ZdmZVU=;
 b=pQ/oS4o2H7qIcx8m/93DKxchYt1ivBKP4moEqQWkWN39mhhfRDfVyZKcPPjhnDyhJX
 usGc4Hpalf83STCA6XWhwt7XMyQmkC5K9OclQ8tyhVkN9beNAmDoO5AdMbcogif8WibA
 MTAcLpzsPEGRPPbohNlOCrP/7YgAxgzAFq4Yah6vCflrwgQnIEZg45CeZeqVJ/cKH8LB
 eAueTIdldCwiBmisBcWBaUpIhigcZe/i3Yr4H4M9RXynqYC0uMkRnKvE5rh/fr6iyz4t
 9p8ebyM5+WyNFPImUSAGufzforIneUqsHxwj0B6vh7tq2hIyTABFH7Wbue6PoZjfXLPS
 sAAw==
X-Gm-Message-State: APjAAAXH8K4zU6Vb/27cbTf/wmxH33FiwYGCpAMQ+7piqjXuc49lt5M/
 OLeEilrpspcL5u0whsIsJ0GWXEZQw87U12E/+HwqFQ==
X-Google-Smtp-Source: APXvYqyq/YfoE0oFSPYzEyKRSgA8t1DxpbDmSXNnWAWmVKZvjNNBuUx80heTPOUQbSjAkXy16oEV7Acsq2nO+E63ABI=
X-Received: by 2002:a5d:6692:: with SMTP id l18mr12918211wru.382.1580494315839; 
 Fri, 31 Jan 2020 10:11:55 -0800 (PST)
MIME-Version: 1.0
References: <20200130064430.17198-1-walter-zh.wu@mediatek.com>
 <CAG_fn=X_jSUJXD932z9oN5hBa--n3Qct4zrjzGaPtb2MwJye7A@mail.gmail.com>
 <1580436306.11126.16.camel@mtksdccf07>
In-Reply-To: <1580436306.11126.16.camel@mtksdccf07>
From: Alexander Potapenko <glider@google.com>
Date: Fri, 31 Jan 2020 19:11:44 +0100
Message-ID: <CAG_fn=X2V0nL=+s38bDbS3UXf2_i61tSevd8vzkV-ZKY=7MHvw@mail.gmail.com>
Subject: Re: [PATCH v3] lib/stackdepot: Fix global out-of-bounds in stackdepot
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_101201_667121_8D236576 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Josh Poimboeuf <jpoimboe@redhat.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 3:05 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> On Thu, 2020-01-30 at 13:03 +0100, Alexander Potapenko wrote:
> > On Thu, Jan 30, 2020 at 7:44 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > Hi Walter,
> >
> > > If the depot_index = STACK_ALLOC_MAX_SLABS - 2 and next_slab_inited = 0,
> > > then it will cause array out-of-bounds access, so that we should modify
> > > the detection to avoid this array out-of-bounds bug.
> > >
> > > Assume depot_index = STACK_ALLOC_MAX_SLABS - 3
> > > Consider following call flow sequence:
> > >
> > > stack_depot_save()
> > >    depot_alloc_stack()
> > >       if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
> > >       depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 2
> > >       if (depot_index + 1 < STACK_ALLOC_MAX_SLABS) //enter
> > >          smp_store_release(&next_slab_inited, 0); //next_slab_inited = 0
> > >       init_stack_slab()
> > >          if (stack_slabs[depot_index] == NULL) //enter and exit
> > >
> > > stack_depot_save()
> > >    depot_alloc_stack()
> > >       if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
> > >       depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 1
> > >       init_stack_slab(&prealloc)
> > >          stack_slabs[depot_index + 1]  //here get global out-of-bounds
> > >
> > > Cc: Dmitry Vyukov <dvyukov@google.com>
> > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > Cc: Thomas Gleixner <tglx@linutronix.de>
> > > Cc: Alexander Potapenko <glider@google.com>
> > > Cc: Josh Poimboeuf <jpoimboe@redhat.com>
> > > Cc: Kate Stewart <kstewart@linuxfoundation.org>
> > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > Cc: Kate Stewart <kstewart@linuxfoundation.org>
> > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > ---
> > > changes in v2:
> > > modify call flow sequence and preconditon
> > >
> > > changes in v3:
> > > add some reviewers
> > > ---
> > >  lib/stackdepot.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/lib/stackdepot.c b/lib/stackdepot.c
> > > index ed717dd08ff3..7e8a15e41600 100644
> > > --- a/lib/stackdepot.c
> > > +++ b/lib/stackdepot.c
> > > @@ -106,7 +106,7 @@ static struct stack_record *depot_alloc_stack(unsigned long *entries, int size,
> > >         required_size = ALIGN(required_size, 1 << STACK_ALLOC_ALIGN);
> > >
> > >         if (unlikely(depot_offset + required_size > STACK_ALLOC_SIZE)) {
> > > -               if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) {
> > > +               if (unlikely(depot_index + 2 >= STACK_ALLOC_MAX_SLABS)) {

This again means stack_slabs[STACK_ALLOC_MAX_SLABS - 2] gets
initialized, but stack_slabs[STACK_ALLOC_MAX_SLABS - 1] doesn't,
because we'll be bailing out from init_stack_slab() from now on.
Does this patch actually fix the problem (do you have a reliable reproducer?)
This addition of 2 is also counterintuitive, I don't think further
readers will understand the logic behind it.

What if we just check that depot_index + 1 is a valid index before accessing it?

diff --git a/lib/stackdepot.c b/lib/stackdepot.c
index 2e7d2232ed3c..c2e6ff18d716 100644
--- a/lib/stackdepot.c
+++ b/lib/stackdepot.c
@@ -106,7 +106,9 @@ static bool init_stack_slab(void **prealloc)
        if (stack_slabs[depot_index] == NULL) {
                stack_slabs[depot_index] = *prealloc;
        } else {
-               stack_slabs[depot_index + 1] = *prealloc;
+               /* If this is the last depot slab, do not touch the next one. */
+               if (depot_index + 1 < STACK_ALLOC_MAX_SLABS)
+                       stack_slabs[depot_index + 1] = *prealloc;
                /*
                 * This smp_store_release pairs with smp_load_acquire() from
                 * |next_slab_inited| above and in stack_depot_save().

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
