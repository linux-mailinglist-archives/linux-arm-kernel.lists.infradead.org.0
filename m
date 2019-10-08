Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0481D030B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 23:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FlwrWOjU8+Go6XkY9zVQ0A5nL/D13Eq1giYSdOl6a8M=; b=olM98i2rkWBWeD
	975dL4qBnMxGINV9cbR9+cpl3sFq7g4/lVDhcEKaUqLk6BsAffCTxbk0euJi1BLhAOY//XWemS3oZ
	sHduAEd9jJzwTSatgurJu8mUkGmrJmrwUmVFIi7xClVbHobHBVhUUTEpmnBU+p5V3vDcdlZWfbzBM
	UDWG1WbWbGfmuK2Ub5QT+E3Yl+GCS8HW8rmgO4Bc7yAbUrTTo7wtrhfszEjDkSy7VuXmtQt3ES/xf
	Us+cCkm0Qnlj31vOlA4HqGaVyfIcwxmW5zDEN+FfY+5ZYj7Fddr19/05TOrPTaemvNjSWzSvkhknX
	oJJHPAwkXbtzfjaAqmPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHxKp-0001fw-Eq; Tue, 08 Oct 2019 21:47:59 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHxKg-0001fd-6j
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 21:47:51 +0000
Received: by mail-qt1-f194.google.com with SMTP id v52so389219qtb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 14:47:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K35XQBJjQCZ8MQlKJJq36YsTrLDGZ2PSz8vLmKPsiWA=;
 b=TZY3pCStdWNczMrCImgm9tYqzp2lawCfx0nfLVECqidsoRxT9oKRRMkRtkYvHEYGMZ
 RIKMLEcPbE1PPsnV+BVaL0ftivTYpHRxMYjjCpxFdCyfuzVO2Ao/PdZ77WLg4JlEOPNk
 HWTyxUgWm0JxlIETgZTV3PuEwU26X4lfrpnB2HEQf+UtOuhvovotarZwYr7aj8p99y0k
 DyovrI9mLRFsuoavFEZrtuD5Kc1+jGd3+0ctg1Nt2ABzpYw3a6YnGIwmAiSm5/BGwSQv
 CvCQBx8irAN26fRWEWAoz+HNtdGoYt1yaeQa16wA2FzKyw8VFzkqbThKeaOmN2i6RfZY
 SH4g==
X-Gm-Message-State: APjAAAUGqYjYrp1iDr4p20D+rz1ACkmgvAf9UYyOXTFj2lgxf91keLFC
 XBYvgsloe9JSS6rh78S5PP5gVsJ0cRlf2NRx5kzEhPPtkIE=
X-Google-Smtp-Source: APXvYqxHyVjVjwo1D7ktttqWA/ciKjh3SVWoucxPzOY9mtzDeZGn5D5bxHVkXhXrY6ycwAsSK7xBu4wKfTg3AiCwdPU=
X-Received: by 2002:aed:3c67:: with SMTP id u36mr95103qte.142.1570571267913;
 Tue, 08 Oct 2019 14:47:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
 <20191008194724.evlk3bnomcz3kxwg@flow>
In-Reply-To: <20191008194724.evlk3bnomcz3kxwg@flow>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 8 Oct 2019 23:47:31 +0200
Message-ID: <CAK8P3a182o64NfheNEYixDsi=mSZCNVSgg=_EDnwy+fZ1hrzLw@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_144750_245029_D15F99BA 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
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
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 9:47 PM Sebastian Andrzej Siewior
<sebastian@breakpoint.cc> wrote:
>
> On 2019-10-08 16:32:27 [+0200], Arnd Bergmann wrote:
> > On Tue, Oct 8, 2019 at 3:36 PM Waiman Long <longman@redhat.com> wrote:
> > > In x86, the lock instruction prefix is patched out when running on UP
> > > system. This downgrades the atomic cmpxchg to non-atomic one. We may do
> > > something similar in other architectures.
> >
> > Unfortunately, the atomic macros cannot trivially be made cheaper
> > on non-SMP systems based on load-locked/store-conditional
> > based architectures, as there may be an interrupt in-between,
> > and disabling interrupts would likely be more expensive.
> >
> > However, there might be a way to take a shortcut out of
> > queued_spin_lock() using asm-goto combined with the ARM
> > __ALT_SMP_ASM() macro.
>
> The smp_xchg16_relaxed() snippet above looked good. I would buy it :)
> Where are you heading with __ALT_SMP_ASM()?

I was thinking of something along the lines of this:

diff --git a/arch/arm/include/asm/spinlock.h b/arch/arm/include/asm/spinlock.h
index 2c595446cd73..1aa321b45f63 100644
--- a/arch/arm/include/asm/spinlock.h
+++ b/arch/arm/include/asm/spinlock.h
@@ -45,6 +45,19 @@ static inline void dsb_sev(void)
        __asm__(SEV);
 }

+static __always_inline bool smp_enabled(void)
+{
+       if (IS_ENABLED(CONFIG_SMP))
+               asm_volatile_goto(__ALT_SMP_ASM(WASM(b) "
%l[smp_on_up]", WASM(nop))
+                                 :::: smp_on_up);
+
+       return false;
+
+smp_on_up:
+       return true;
+}
+#define smp_enabled smp_enabled
+
 #include <asm/qrwlock.h>
 #include <asm/qspinlock.h>
 #define smp_mb__after_spinlock()       smp_mb()
diff --git a/include/asm-generic/qspinlock.h b/include/asm-generic/qspinlock.h
index fde943d180e0..3c456ad1661b 100644
--- a/include/asm-generic/qspinlock.h
+++ b/include/asm-generic/qspinlock.h
@@ -12,6 +12,10 @@

 #include <asm-generic/qspinlock_types.h>

+#ifndef smp_enabled
+#define smp_enabled (true)
+#endif
+
 /**
  * queued_spin_is_locked - is the spinlock locked?
  * @lock: Pointer to queued spinlock structure
@@ -75,6 +79,11 @@ static __always_inline void queued_spin_lock(struct
qspinlock *lock)
 {
        u32 val = 0;

+       if (!smp_enabled()) {
+               atomic_set(&lock->val, _Q_LOCKED_VAL);
+               return;
+       }
+
        if (likely(atomic_try_cmpxchg_acquire(&lock->val, &val, _Q_LOCKED_VAL)))
                return;

The above is likely incorrect, non-idiomatic or inefficient, but this
is a way to
avoid both a runtime check and the cmpxchg() in each spinlock.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
