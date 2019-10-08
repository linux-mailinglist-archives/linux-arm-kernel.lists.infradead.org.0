Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BACE8CFC7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:33:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfw429rjzKWVgARUunqNXBUpTN8//XUsSsmHDayL/GQ=; b=lFcxSJ2e2qQBFu
	NrVN99ZShO4ViNP4MX166Yh1ffHjGWRgLRHodrP7TAfD9fv2RthFU6OhBYyxiO1lD2fiEzNN6fe95
	zhCxZzbNFSvOzKYXldywLduBSRNmwtYZny5C+j067YI0Mq/vsw9VS2oqjPzCSsRLi5b5uhOBfzl9x
	5hEdY2QsdUs/CiZzKodustwzpNIcWJKolzk6+zg1JyhffRBZJl/45hr0m6QXqO1qND9420GCWh9uX
	QxWNbQXUZLPRekijYsj2VlF3RtV7eLB5KVfAevpdyoNkmm/h9dgiFzsHGXGfxypXwlHZ580IcSNd6
	oOnbmHnJQrt7XWU3/EjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqXv-0004nu-O6; Tue, 08 Oct 2019 14:33:03 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqXf-0004gj-7O
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:32:48 +0000
Received: by mail-qt1-f196.google.com with SMTP id o12so25636700qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 07:32:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aeofbixJZVHd7KQCNzgPu5rtd0VN2VKsRMgswlCkKW8=;
 b=mQFpg+xa1VTXfNL0sBAae/xtG8wZo+R6TYxubk0ig7PdyaEzMEArM0ow+fs6HIfU+m
 qKpFuRC3EGUQ6vxnS4K2PXk/t+oUYjsf+m8ffnyD8i0V70HMxjAj6/SpdaBE2y5YWi3+
 O4yQcE47l/x6diRlzf9LUMRRki//PdfHusrM1Uw6DD/X19qC2H+7zmb8qm9LkHsgsORb
 eTRBgSzG+2Ts7HbjlBUF8F40GJKtTPQO3e53rAHpZJxzh6HEq0Z6ETtjqvQ/go8vEuLM
 UYSRBM8HoZMa9tifP1YFSKln/Jhcfps8cmr9g2wcyfOeXWYhzlSvd6MWOvAB/yw4WB21
 7UHQ==
X-Gm-Message-State: APjAAAV8Q++bxf38Yvpjnn/PDBP0yFdB5/HjBSqA4JkjncKVyCIOC3jt
 24YQafaTYlc0vwcKDTuTso8aa22PupoUSWyHmcw=
X-Google-Smtp-Source: APXvYqwf3qRUy4/jggKu2Gd0FlWIJkIveAyw4gTn56m1omeOEtidWHkeySQudMtW1+NGyb25Z3081VXE/oRywAPsmaM=
X-Received: by 2002:ac8:342a:: with SMTP id u39mr36030880qtb.7.1570545163402; 
 Tue, 08 Oct 2019 07:32:43 -0700 (PDT)
MIME-Version: 1.0
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
In-Reply-To: <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 8 Oct 2019 16:32:27 +0200
Message-ID: <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
To: Waiman Long <longman@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_073247_278313_49CA6993 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 3:36 PM Waiman Long <longman@redhat.com> wrote:
> On 10/8/19 7:42 AM, Arnd Bergmann wrote:
> > On Mon, Oct 7, 2019 at 11:45 PM Sebastian Andrzej Siewior <sebastian@breakpoint.cc> wrote:
> > I wonder if we can do something better here and make the
> > asm-generic/qspinlock.h implementation always degrade into an
> > equivalent of include/linux/spinlock_up.h when running on uniprocessor
> > systems, avoiding both the atomic cmpxchg and the slowpath.

I looked at the qspinlock implementation some more, and I think we can
get away with simply defining a special-case smp_xchg16_relaxed()
that is only used for the odd  configuration:

diff --git a/arch/arm/include/asm/cmpxchg.h b/arch/arm/include/asm/cmpxchg.h
index 8b701f8e175c..6bf4964c105c 100644
--- a/arch/arm/include/asm/cmpxchg.h
+++ b/arch/arm/include/asm/cmpxchg.h
@@ -114,6 +114,24 @@ static inline unsigned long __xchg(unsigned long
x, volatile void *ptr, int size
        return ret;
 }

+#ifdef CONFIG_CPU_V6
+static inline unsigned short smp_xchg16_relaxed(volatile unsigned
short *ptr, unsigned short x)
+{
+       unsigned short ret, tmp;
+       asm volatile("@ smp_xchg16_relaxed\n"
+       ".arch armv6k\n"
+       "1:     ldrexh  %0, [%3]\n"
+       "       strexh  %1, %2, [%3]\n"
+       "       teq     %1, #0\n"
+       "       bne     1b"
+               : "=&r" (ret), "=&r" (tmp)
+               : "r" (x), "r" (ptr)
+               : "memory", "cc");
+       return ret;
+}
+#define smp_xchg16_relaxed smp_xchg16_relaxed
+#endif
+
 #define xchg_relaxed(ptr, x) ({
         \
        (__typeof__(*(ptr)))__xchg((unsigned long)(x), (ptr),           \
                                   sizeof(*(ptr)));                     \
diff --git a/include/linux/atomic.h b/include/linux/atomic.h
index 4c0d009a46f0..4612e27e3330 100644
--- a/include/linux/atomic.h
+++ b/include/linux/atomic.h
@@ -71,6 +71,10 @@
        __ret;                                                          \
 })

+#ifndef smp_xchg16_relaxed
+#define smp_xchg16_relaxed(p, x) xchg_relaxed(p, x)
+#endif
+
 #include <linux/atomic-fallback.h>

 #include <asm-generic/atomic-long.h>
diff --git a/kernel/locking/qspinlock.c b/kernel/locking/qspinlock.c
index 2473f10c6956..af1473528edf 100644
--- a/kernel/locking/qspinlock.c
+++ b/kernel/locking/qspinlock.c
@@ -178,8 +178,8 @@ static __always_inline u32 xchg_tail(struct
qspinlock *lock, u32 tail)
         * We can use relaxed semantics since the caller ensures that the
         * MCS node is properly initialized before updating the tail.
         */
-       return (u32)xchg_relaxed(&lock->tail,
-                                tail >> _Q_TAIL_OFFSET) << _Q_TAIL_OFFSET;
+       return (u32)smp_xchg16_relaxed(&lock->tail,
+                                      tail >> _Q_TAIL_OFFSET) <<
_Q_TAIL_OFFSET;
 }

 #else /* _Q_PENDING_BITS == 8 */

> In x86, the lock instruction prefix is patched out when running on UP
> system. This downgrades the atomic cmpxchg to non-atomic one. We may do
> something similar in other architectures.

Unfortunately, the atomic macros cannot trivially be made cheaper
on non-SMP systems based on load-locked/store-conditional
based architectures, as there may be an interrupt in-between,
and disabling interrupts would likely be more expensive.

However, there might be a way to take a shortcut out of
queued_spin_lock() using asm-goto combined with the ARM
__ALT_SMP_ASM() macro.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
