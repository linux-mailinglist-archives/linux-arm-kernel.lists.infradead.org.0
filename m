Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB1CD0A69
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5VyEc+0VMwZA9zELrG07AZMUk53/xan2DWVf0sUBUE=; b=mO4p1YY1Rfjho9
	gVUM86mon+dCKHKThTkCkH0Rtvrv/LZ9HZ+aB4JXh/MEAk3OmpRvgGEvsH5Zz346AaYUGoDgW6vrO
	AROAelxIgScN+4lIDk4wiwkYbpGOhBY3DbDXpVMETf6tFX/9SGGPXJfvoZKqTivsoL2UIJCueQmFV
	5cTZzujODz//dVxClFF1RMHOQ+Oc3LTznCBNd6g3zcS5ggZglFi3PPIRRYlCufRgiLz04oNTlnfdF
	ovhKdJANAPzL7wbL6agkGx6wO/hwozvR/5SyApJoD4DkKgenAnjDjimDxC9JeAo2PX6NTaaKkrWqg
	UP267xWj586JTtah/mtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7n5-0003Jt-HE; Wed, 09 Oct 2019 08:57:51 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7mx-0003JC-6C
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:57:44 +0000
Received: by mail-qt1-f195.google.com with SMTP id w14so2258383qto.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 01:57:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Opx/ROGTjtBNadWFSCJ3z4RUl5WRhmS5Oj7dF/736Bo=;
 b=DbkRXOPIBa6sXx3FC2d+LR1elNlBCBtoOMWFrCoL+KdylQ6o96C9GnmAttI7puwfYe
 X8m7Id/BkkC/LdtF8+OAbocFSahD39hTCzftuTYGn6nOO+R+ARzDH2p6yDOiXywwTA7I
 XQXHklyeVQWCAs38f4kqGvEecIkq7bxl9XB88zJtc7bZREpCxiEb5nPO8MP+opo5dZLr
 PGDUYnlLNC53VcpyBMApeowzAR+U04S+dxvdSdTyuW6YRYIPxR5D2+J4We05iREpch+4
 vjj9bDFmLqqTlqylGOeYdT4ciz2Zj0PTbPv8vq7v4MXxiac5HKkt2pv5T6/L3XuvNSvW
 3IYA==
X-Gm-Message-State: APjAAAUGJNiezURbdCtp2r+osLL9nMSnZeTTlBiNyFfq3IXqscZQGaYI
 Mbsy9/J2VSYHGQKacBwF6OsKC2xkSnPQI/lPVzU=
X-Google-Smtp-Source: APXvYqx2aCroqOM+Svuqn9qFZyVJuZiOBarmXemNtkqAf8sySVJxC5yCTzwAIczpMjnvK7Y57zKf3jLh/q8mskcY1Cg=
X-Received: by 2002:aed:3c67:: with SMTP id u36mr2455565qte.142.1570611462033; 
 Wed, 09 Oct 2019 01:57:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
 <20191009084610.GG2311@hirez.programming.kicks-ass.net>
In-Reply-To: <20191009084610.GG2311@hirez.programming.kicks-ass.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 9 Oct 2019 10:57:25 +0200
Message-ID: <CAK8P3a3--khxZgWNa3uH8g5PsP7y8PrgpdktEV49UrOhFCX8jQ@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
To: Peter Zijlstra <peterz@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_015743_227822_F32472B0 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Wed, Oct 9, 2019 at 10:46 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Tue, Oct 08, 2019 at 04:32:27PM +0200, Arnd Bergmann wrote:
> > diff --git a/arch/arm/include/asm/cmpxchg.h b/arch/arm/include/asm/cmpxchg.h
> > index 8b701f8e175c..6bf4964c105c 100644
> > --- a/arch/arm/include/asm/cmpxchg.h
> > +++ b/arch/arm/include/asm/cmpxchg.h
> > @@ -114,6 +114,24 @@ static inline unsigned long __xchg(unsigned long
> > x, volatile void *ptr, int size
> >         return ret;
> >  }
> >
> > +#ifdef CONFIG_CPU_V6
> > +static inline unsigned short smp_xchg16_relaxed(volatile unsigned
> > short *ptr, unsigned short x)
> > +{
> > +       unsigned short ret, tmp;
> > +       asm volatile("@ smp_xchg16_relaxed\n"
> > +       ".arch armv6k\n"
> > +       "1:     ldrexh  %0, [%3]\n"
> > +       "       strexh  %1, %2, [%3]\n"
> > +       "       teq     %1, #0\n"
> > +       "       bne     1b"
> > +               : "=&r" (ret), "=&r" (tmp)
> > +               : "r" (x), "r" (ptr)
> > +               : "memory", "cc");
> > +       return ret;
> > +}
> > +#define smp_xchg16_relaxed smp_xchg16_relaxed
> > +#endif
>
> Why is this not in __xchg() as a variant for case 2 ?

ldrexh/strexh are instructions that are only available on SMP-capable
architecture revisions (ARMv6K or higher). When building a kernel
that runs both on pre-K ARMv6 uniprocessor systems and on later
SMP systems, __xchg() can only do 32-bit  ldrex/strex.

The trick of smp_xchg16_relaxed() is to allow the 16-bit atomics
in code that can is only ever executed on SMP systems but not
the uniprocessor OMAP2 and i.MX3 chips that would trap.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
