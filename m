Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD8FD0E1F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 14:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yd20NaNc/ap+UEzJs/oYqXcxjdSyfdDp0PJZwzSqMp0=; b=rgwlLwfX7v4LLq
	ycR7q2Th/vXvGozx8ClTh2iGmfNdj6JZDITvlE0+H4jufvPnjDj6ukZJYVH75T+sF0FEG4OGv0Vsr
	Uj2/f5tlyGkv5GXRZCoIMYj1zf9QLL+/qVX1o8nxvp+HxuAQIrZ0pJ06HD4L3alQsMAvXUUWbu6GZ
	owd1ZelWPlu7cb9tWOGT3qihY6B93KOz8dg2pRkVEDaI+y7ynxhESZccPSA6WVCCfiCrIzTA+pvnH
	nNCn8Ih6uuA7dXNm4Zy076+/bGKmy6CAgpj17z1eQw6v01eRjA7nU2hHbmTNubPzn3pG04Itt7ZA/
	ZyZlAe2lsfUgMydy1AqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAe3-0005rW-An; Wed, 09 Oct 2019 12:00:43 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAdj-0005qx-DH
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 12:00:24 +0000
Received: by mail-qk1-f193.google.com with SMTP id u184so1932131qkd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 05:00:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rlwO26uEbZIvy8Rt6EQsVw4/mYU/c72A1N8CJzY5Lz8=;
 b=mP1iEB/IttRfyq5brnskKaSu/ioncO+gQY270Ohocd4xMFW9azJY6VF1I9H+iPCWC2
 qH0o+4fqF0sGstUpdPTo5r1eqlvHMB3kJCBvtEaPKDeZst5OnxqU9VpVBfS8bN0ERJ0t
 48w9Kx3PEp//yZ5mGBJYApCsHfAi5ZdN9OUEBE+osxCOVxeF5DXdMvz8LOUcGakQe509
 /04HOn43wUxkfayh9aeqY66IclKGVnt9Na0BFauPGkVxr7onsGTh14CUPDiRqrk8grqu
 eGYJS42wWUrkZZ5s+GbXCGO+dSYcFhuza9yZT+aXOwGavfeB/GAmHhk2m56m6yxGSjkA
 dAsg==
X-Gm-Message-State: APjAAAX9y1UxxV5pL2AMAIGPyCqJVsI4dkaMsNVcIixQApFxXwDIIaVE
 wsiLZsCoaUjl/YoSZqdGqpCQgXB9DNfsj1Q4jiU=
X-Google-Smtp-Source: APXvYqwouv09Ey1N1pCTHKRmPr3SHCbcPdHc0QektmioFwgwNkipnp5ol6C0w5T21cxS0Dxesa+G5kI7/EDlm/Ofgo4=
X-Received: by 2002:a37:9ad4:: with SMTP id c203mr3171422qke.352.1570622421684; 
 Wed, 09 Oct 2019 05:00:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
 <20191009084610.GG2311@hirez.programming.kicks-ass.net>
 <CAK8P3a3--khxZgWNa3uH8g5PsP7y8PrgpdktEV49UrOhFCX8jQ@mail.gmail.com>
 <20191009093118.GJ2328@hirez.programming.kicks-ass.net>
 <CAK8P3a0W2+oayv8D=DBqDaeR+dp2QsjhigKevT_D6NLtGPMWxw@mail.gmail.com>
 <20191009105650.GM2328@hirez.programming.kicks-ass.net>
In-Reply-To: <20191009105650.GM2328@hirez.programming.kicks-ass.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 9 Oct 2019 14:00:05 +0200
Message-ID: <CAK8P3a1CyaqHvx+UC+ZeJYDjU4x52hQ9sKyEMiOc=dKq8NTYKg@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
To: Peter Zijlstra <peterz@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_050023_452388_7EE05317 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Russell King <linux@armlinux.org.uk>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 9, 2019 at 12:57 PM Peter Zijlstra <peterz@infradead.org> wrote:
> On Wed, Oct 09, 2019 at 12:31:24PM +0200, Arnd Bergmann wrote:
> > On Wed, Oct 9, 2019 at 11:31 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > I assume the 16-bit xchg_relaxed() in qspinlock.c was meant as
> > an optimization for x86 and other cmpxchg based architectures but
> > doesn't actually help on ll/sc based architectures that get the
> > reservation on the whole cache line anyway?
>
> It does actually help here too, because it allows other operations to be
> regular load/stores.
>
> Look at the #if _Q_PENDING_BITS==8 in qspinlock.c, as opposed to the
> #else where they're all atomic_*().

Oh, is that safe with an xchg() implementation that operates on the whole
32 bit when a concurrent thread can do a simple store to one half of it?

The ARM architecture reference says "It is UNPREDICTABLE whether the
transition from Exclusive Access to Open Access state occurs when the
Store or StoreExcl is from another observer.", which sounds to me
me like the xchg_small() trick would not work with the qspinlock
implementation on ARM. [I see that mips, openrisc and xtensa do this,
but did not try to find out whether they have ll/sc semantics that make
it safe when another thread does a plain store to the reservation]

OTOH, I suppose we could just set _Q_PENDING_BITS to 1
regardless of NR_CPUS on any architecture without a 16-bit
xchg() primitive.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
