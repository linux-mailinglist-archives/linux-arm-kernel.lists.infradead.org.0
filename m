Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB388150438
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 11:30:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixYtjItOWHW8fvSHDPWqh2lAcqArfOzKKz2c7kJAOaw=; b=V/76aj9whmZLPk
	VHlrVye6f/FbYjqNlAOdJ+f2bMyEB39Cj+5DnrJihMBuNgkvrd36L8g21Tocn8KOzih6BSD2uurcp
	aqwRmvBUm4LQIHpNO8gmQ1GhZ5GsKn5VHYLscbF3yPJSRg+fq8CRkgEj2o6xPvBp4woHcxatdZg16
	ECIA5o+gJfV+l7Nbyg1KXD2+8Ay9Ex0JNd4GcZMKrKaVc0Ld7GQH33IovM4qIeziwsP+D10Yvoi+A
	B2d8Gi16XenHk0h4AEyz+L2zPMKVrUB/GFaTJHI7chjcnMtNix/UYeXgMU2bq0HoFTNG9rHEqRsux
	zBvaKHFa1Gl6Th2ieQng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZ0H-0005r5-2m; Mon, 03 Feb 2020 10:30:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZ08-0005my-PG
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 10:30:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id g1so15179328wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 02:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dD9fba3D0HqXgOSqJlLFz2muhY16h6Gr+BwVuHnFIv4=;
 b=UKGNNJxPihSVdDnyfCzDlB+1MVddilSdG2GMCVkiCGZL6D4AXhN/Byg8SWyWW/bnPv
 ZhR3DWnYrfYRCjJom/Sh/JFBZ7Iwl4epixB/18DbnkFz7yPe8kl55ww3eOTntukb3ppn
 DJMyUvrIU12QGoinWcbsJ/q0VJC88l8j9qeBE7MvLq2Yj6xHtWBYBAQYNNlPMKQf8Nd5
 EqLLTWtOUfsnFNR7Kr+L3uZvlKVeimHI/QULdJTHLV8iEpdDqj4VDcz3s7vCA2nKdmiV
 f+EQ9zpHVS6KalEcfPgv8DBDc6jw7fnqqMZlQjLHwj9n0GfXXn0NPvHjPnaM1pSMxGxT
 XLKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dD9fba3D0HqXgOSqJlLFz2muhY16h6Gr+BwVuHnFIv4=;
 b=YpdWYeMaIcKXetGBy2cc/8ciju7ai2Hl1fibOFh2ixPSY8Rg0MVtShfIwsMEJLXyZE
 dkXxWt5LjHp5f8dWIFTWVizQGZpw4haegdk9ocdwBzxZw0BCjR0ieH9LlHoXm4fswyGr
 2q7S8Q0owL7rdIRb8r7jyNTt2S5JaYPHM3if1OOjav6u+mmindzsR+2d1aVJK5sZhivg
 cGPYHzoYqCYtDifcFSRGR0W2Cr2PS3ov1NNhu9/wcu4W8rSumFgNr5mO4mIEAhdRcyaD
 jDj8HZVbZJhqbadJ/yYVAsutthWWm/sksw5IJmXc57VloKrl/oAnrP6M8AO8dEyBbCY1
 LyOg==
X-Gm-Message-State: APjAAAXGGMuczd6DWJikF9aFtxihBErdJDqULnE6N5+m65gPdq8MsCB7
 pp6zDcfPPwmARcs1jyNMHchRS5ECiGWFvu3nniMteg==
X-Google-Smtp-Source: APXvYqxNx7Z0KIvo/FhK4eHPDW3mZ84bqAFnEzCbf8Hd0g8df+eNawGKBotlJvsxIVfVYaHjsPN4BUWk/DfxFPRlw6I=
X-Received: by 2002:a1c:7907:: with SMTP id l7mr27326507wme.37.1580725840251; 
 Mon, 03 Feb 2020 02:30:40 -0800 (PST)
MIME-Version: 1.0
References: <20200130064430.17198-1-walter-zh.wu@mediatek.com>
 <CAG_fn=X_jSUJXD932z9oN5hBa--n3Qct4zrjzGaPtb2MwJye7A@mail.gmail.com>
 <1580436306.11126.16.camel@mtksdccf07>
 <CAG_fn=X2V0nL=+s38bDbS3UXf2_i61tSevd8vzkV-ZKY=7MHvw@mail.gmail.com>
 <1580695544.17006.7.camel@mtksdccf07>
In-Reply-To: <1580695544.17006.7.camel@mtksdccf07>
From: Alexander Potapenko <glider@google.com>
Date: Mon, 3 Feb 2020 11:30:28 +0100
Message-ID: <CAG_fn=UHhZB-2JBdSBAbuNjBZwVwrzhqQvR1nHb+XOqUEvLMsw@mail.gmail.com>
Subject: Re: [PATCH v3] lib/stackdepot: Fix global out-of-bounds in stackdepot
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_023044_847452_D425BBC0 
X-CRM114-Status: GOOD (  24.93  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Mon, Feb 3, 2020 at 3:05 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> On Fri, 2020-01-31 at 19:11 +0100, Alexander Potapenko wrote:
> > On Fri, Jan 31, 2020 at 3:05 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > >
> > > On Thu, 2020-01-30 at 13:03 +0100, Alexander Potapenko wrote:
> > > > On Thu, Jan 30, 2020 at 7:44 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > >
> > > > Hi Walter,
> > > >
> > > > > If the depot_index = STACK_ALLOC_MAX_SLABS - 2 and next_slab_inited = 0,
> > > > > then it will cause array out-of-bounds access, so that we should modify
> > > > > the detection to avoid this array out-of-bounds bug.
> > > > >
> > > > > Assume depot_index = STACK_ALLOC_MAX_SLABS - 3
> > > > > Consider following call flow sequence:
> > > > >
> > > > > stack_depot_save()
> > > > >    depot_alloc_stack()
> > > > >       if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
> > > > >       depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 2
> > > > >       if (depot_index + 1 < STACK_ALLOC_MAX_SLABS) //enter
> > > > >          smp_store_release(&next_slab_inited, 0); //next_slab_inited = 0
> > > > >       init_stack_slab()
> > > > >          if (stack_slabs[depot_index] == NULL) //enter and exit
> > > > >
> > > > > stack_depot_save()
> > > > >    depot_alloc_stack()
> > > > >       if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
> > > > >       depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 1
> > > > >       init_stack_slab(&prealloc)
> > > > >          stack_slabs[depot_index + 1]  //here get global out-of-bounds
> > > > >
> > > > > Cc: Dmitry Vyukov <dvyukov@google.com>
> > > > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > > > Cc: Thomas Gleixner <tglx@linutronix.de>
> > > > > Cc: Alexander Potapenko <glider@google.com>
> > > > > Cc: Josh Poimboeuf <jpoimboe@redhat.com>
> > > > > Cc: Kate Stewart <kstewart@linuxfoundation.org>
> > > > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > > > Cc: Kate Stewart <kstewart@linuxfoundation.org>
> > > > > Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> > > > > ---
> > > > > changes in v2:
> > > > > modify call flow sequence and preconditon
> > > > >
> > > > > changes in v3:
> > > > > add some reviewers
> > > > > ---
> > > > >  lib/stackdepot.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/lib/stackdepot.c b/lib/stackdepot.c
> > > > > index ed717dd08ff3..7e8a15e41600 100644
> > > > > --- a/lib/stackdepot.c
> > > > > +++ b/lib/stackdepot.c
> > > > > @@ -106,7 +106,7 @@ static struct stack_record *depot_alloc_stack(unsigned long *entries, int size,
> > > > >         required_size = ALIGN(required_size, 1 << STACK_ALLOC_ALIGN);
> > > > >
> > > > >         if (unlikely(depot_offset + required_size > STACK_ALLOC_SIZE)) {
> > > > > -               if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) {
> > > > > +               if (unlikely(depot_index + 2 >= STACK_ALLOC_MAX_SLABS)) {
> >
> > This again means stack_slabs[STACK_ALLOC_MAX_SLABS - 2] gets
> > initialized, but stack_slabs[STACK_ALLOC_MAX_SLABS - 1] doesn't,
> > because we'll be bailing out from init_stack_slab() from now on.
> > Does this patch actually fix the problem (do you have a reliable reproducer?)
> We get it by reviewing code, because Kasan doesn't scan it and we catch
> another bug internally, we found it unintentionally.
>
> > This addition of 2 is also counterintuitive, I don't think further
> > readers will understand the logic behind it.
> >
> Yes
>
> > What if we just check that depot_index + 1 is a valid index before accessing it?
> >
> It should fix the problem, do you want to send this patch?

I've sent the patch. Thanks for the report!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
