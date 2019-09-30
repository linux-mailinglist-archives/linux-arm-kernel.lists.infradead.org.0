Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC88C1C26
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 09:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+ae0qEgoURg2JiwjwLJ04Du5nvuYMkmHzsGEm6w4N4=; b=Df6FlRxE807K8P
	94pI70rLT80upxMXmcJO+Zx0M6uGKZVnbU9H9EHorwhZXXP8wnbpbgqTh+sSqdYG2VNeF8nmjbHAp
	uGdZSorxDJ2xGzkb10CBT9fp10sa+/Cu6YAE9+iTdQXuTqBL+yXyhZyxdlS3wucPzDyG5M9zJN9on
	gUI/GnGJNbE4xh7mT//iifzRpklP6AFH8UYP+azD0p4IaUAMeubDdOpLO+OtjDyEGznPchmSkbVqd
	pJsXJ+0iMvISDkiYSbPEbjXzJnrs6HPfc7FxxhAoiVBozviQ7tvjhhJ2tL2+zP5f6Y6ewhVTPs2Fk
	QJysFDAy/25AWgelIDmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqEM-00043w-3m; Mon, 30 Sep 2019 07:36:26 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqE8-00042F-I9
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 07:36:14 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iEqDp-0001nY-P4; Mon, 30 Sep 2019 09:35:53 +0200
Date: Mon, 30 Sep 2019 09:35:53 +0200
From: Sebastian Siewior <bigeasy@linutronix.de>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: Re: [RFC PATCH 11/20] crypto: BLAKE2s - x86_64 implementation
Message-ID: <20190930073553.xy57e75nteiakjyp@linutronix.de>
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
 <20190929173850.26055-12-ard.biesheuvel@linaro.org>
 <CAHmME9q=72-iKnHh0nB2+mO3uNoUerOVoHDY=eBKSoPB32XSsA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHmME9q=72-iKnHh0nB2+mO3uNoUerOVoHDY=eBKSoPB32XSsA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_003612_740274_F31E9682 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Martin Willi <martin@strongswan.org>, Greg KH <gregkh@linuxfoundation.org>,
 Eric Biggers <ebiggers@google.com>, Samuel Neves <sneves@dei.uc.pt>,
 Will Deacon <will@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-30 04:42:06 [+0200], Jason A. Donenfeld wrote:
> Hi Sebastian, Thomas,
Hi Jason,

> On Sun, Sep 29, 2019 at 7:39 PM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> > +       for (;;) {
> > +               const size_t blocks = min_t(size_t, nblocks,
> > +                                           PAGE_SIZE / BLAKE2S_BLOCK_SIZE);
> > +
> > +               kernel_fpu_begin();
> > +               if (IS_ENABLED(CONFIG_AS_AVX512) && blake2s_use_avx512)
> > +                       blake2s_compress_avx512(state, block, blocks, inc);
> > +               else
> > +                       blake2s_compress_avx(state, block, blocks, inc);
> > +               kernel_fpu_end();
> > +
> > +               nblocks -= blocks;
> > +               if (!nblocks)
> > +                       break;
> > +               block += blocks * BLAKE2S_BLOCK_SIZE;
> > +       }
> > +       return true;
> > +}
> 
> I'm wondering if on modern kernels this is actually fine and whether
> my simd_get/put/relax thing no longer has a good use case.
> Specifically, I recall last year there were a lot of patches and
> discussions about doing FPU register restoration lazily -- on context
> switch or the like. Did those land? Did the theory of action work out
> in the end?

That optimisation landed in v5.2. With that change (on x86)
kernel_fpu_end() does almost nothing (and so the following
kernel_fpu_begin()) and the FPU context will be restored once the task
returns to user land. (Note that this counts only for user-tasks because
we don't save the FPU state of a kernel thread.)
I haven't look at crypto code since that change was merged but looking
at the snippet from Ard is actually what I was aiming for.

> Regards,
> Jason

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
