Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A4FD1092
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryEXgYenAIek8r2gP8vntaBCqtXGHfYdPz6lmDrcd1M=; b=eOaCd5j9m7HadK
	BXTIlUqv9VTx9xhNCKjQHa/fCrqjBKJtBmWZTg3K6sm1UTy+n6/ZkT+KSmnq7GYJYYF//FIL6x6e4
	ItdV9oSZUk1GDQbH3Oz62Glnqo70PrAMCqnhidr6VSphQJs2z26rhIBxSURX0H9484e2+hzFtETiv
	m3u1ai7YsJJ+m2oaVR9yUjRsFYp7+fpNpYIaGq4yjX6AiTms2mpFUyz8pEM4Zl28B9ofDSPA8IEFW
	RNRWnBis//GaBJJKt3whwbnbYuJWH0BUM1XLF3YpBZpBtc/DUwi3QfgtmangIJQ97qzk0QCGDgzfJ
	lrJtVoQ+4TaVrKg0TBsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICMe-0005z3-K0; Wed, 09 Oct 2019 13:50:52 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICMV-0005yi-6k
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 13:50:46 +0000
Received: by mail-qk1-f195.google.com with SMTP id u186so2270240qkc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 06:50:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fGblOzYNZ2dGPT7eFBibDbwhvlUd08Nz7CsmX3H+8CM=;
 b=KUhLsv4pXscTznUbsGtAmvhIZwp6fUEmjR6oR5dS4Ead0TBE+Mj2s/5kLi3Z8G3DeJ
 Ec374oHR01B4Jkr/bFniOrwyF1nvgwWxXWWSS5Yma5wB/EdIUeTTICKnh0BvQebfJND7
 5AFQ0a/G9aP1bpu0NcaQYcjmerxUGkXPXhbYUd2QYvHCxwDrgemM2Tz4IVAnf6ziPTMf
 WPAJVP8hXdsrXzjzus+Lk8cEWo35n1mKns8PMhNrT/yawxKdnFle65/pWnG7OAcB3B4+
 cp5+gnkQHygD37Aq6kdXYUZx1+Rbg0J2dSD2bvXUrEgXFxrz79V1s9bthAq71Qrzg7Rw
 J/Rw==
X-Gm-Message-State: APjAAAUdCFMqDw7b6KWeyYR1lUxcBmelNdItaqgpQcr/YDzpYP74npn6
 uS0qaffDdoGbCxm2W2F6F2W0ZoZF5kPT0YfwmE0=
X-Google-Smtp-Source: APXvYqzWQzuwo4Ye99DzsL3YbPF62co8qA53IocbZP/W7D7npo1Oc9wQr/VhkHA7L9KGU0RfaFrcdSRA0SRKWIUNGgw=
X-Received: by 2002:a37:9ad4:: with SMTP id c203mr3695572qke.352.1570629041718; 
 Wed, 09 Oct 2019 06:50:41 -0700 (PDT)
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
 <CAK8P3a1CyaqHvx+UC+ZeJYDjU4x52hQ9sKyEMiOc=dKq8NTYKg@mail.gmail.com>
 <20191009120639.GI2311@hirez.programming.kicks-ass.net>
In-Reply-To: <20191009120639.GI2311@hirez.programming.kicks-ass.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 9 Oct 2019 15:50:24 +0200
Message-ID: <CAK8P3a1nMjjZCT+do6y07yvm-JLy-HhXCNrcqfDr=sAoAtM9-Q@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
To: Peter Zijlstra <peterz@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_065044_797671_80CAEB62 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
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

On Wed, Oct 9, 2019 at 2:06 PM Peter Zijlstra <peterz@infradead.org> wrote:
> On Wed, Oct 09, 2019 at 02:00:05PM +0200, Arnd Bergmann wrote:
> > On Wed, Oct 9, 2019 at 12:57 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > > On Wed, Oct 09, 2019 at 12:31:24PM +0200, Arnd Bergmann wrote:
> > > > On Wed, Oct 9, 2019 at 11:31 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > > > I assume the 16-bit xchg_relaxed() in qspinlock.c was meant as
> > > > an optimization for x86 and other cmpxchg based architectures but
> > > > doesn't actually help on ll/sc based architectures that get the
> > > > reservation on the whole cache line anyway?
> > >
> > > It does actually help here too, because it allows other operations to be
> > > regular load/stores.
> > >
> > > Look at the #if _Q_PENDING_BITS==8 in qspinlock.c, as opposed to the
> > > #else where they're all atomic_*().
> >
> > Oh, is that safe with an xchg() implementation that operates on the whole
> > 32 bit when a concurrent thread can do a simple store to one half of it?
>
> It had better be, otherwise LL/SC'd be broken. SC _must_ fail when there
> is a contending store.

Ok. I looked a bit at the other implementations that do xchg16() through
cmpxchg32(), and it seems it would be easiest to reuse the superh version,
which is fully portable by moving arch/sh/include/asm/cmpxchg-xchg.h
into include/asm-generic/, the same thing would allow us to change a
number of other architectures to use the generic qspinlock instead of
their own locks.

Sebastian, do you want to try doing it that way?

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
