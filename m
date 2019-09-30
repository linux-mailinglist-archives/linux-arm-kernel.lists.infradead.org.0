Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4955DC1A41
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 04:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3qwl8aO+f+7Cc/sSkmh5WyN1l8OjKbyyICHOIN/U/s=; b=FwLEtsIW7c1Ovv
	i7yxGtevaqlIfTfQje6APziuvoxbh3/I3ZxVs29s/5iwAiUjHiBKiTphGFZPtMelUopcH3/XZMSpO
	0uoDKxK7aQGMH4WOY1/2Uj35GTazDTeraGXq4Sy5KBq+aZoz/0vP6dWMZHRSZ+KGCiImqVBSd/N1m
	FyBOk6A4IpgaNKA8jKJfegnl8SMv2C9inVBzh0lOWSlvwmpeT/EJY46bzrd90sEFPnr4fLnniIwoy
	ej/I7GcVnmEC+KMh5EB/U/lDocH8d6EYlbhIeeNeOc3z6Bm7+WGhDP0bl8duGyVcDZiyqKLNptKQp
	+/5vOW2TMTORb39srLlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iElnW-000284-PZ; Mon, 30 Sep 2019 02:52:26 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iElnI-000258-Q5
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 02:52:14 +0000
Received: by mail-lf1-x143.google.com with SMTP id r134so5787111lff.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 19:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kSukY035Lf9VZ3+D0BgN3PlibSf+XC/ghSVonBEEL78=;
 b=Kxr9xyygU3xkRbfdMRzgfZaLfI7ZqnsHrZJ5IW7K1znbpgC5Bqu2bVWo3LrV1+CBfo
 50Y2EES3KsbUkrH6pCS+OGQ3ZimPAeHmTbD0nDhaN+8gNbI4xHImMCbY/T66QSikAIFL
 oINclApdbKU+XpnvaF55DjungYLphcQCnGzwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kSukY035Lf9VZ3+D0BgN3PlibSf+XC/ghSVonBEEL78=;
 b=b23MdqLlDFmxFMEBudwi1aGAbBWusp7FaZfXSn6l1GJGzo3wlvV00iTK4nQR+NO0to
 twvqy1gV2Zf0HvhbZfvq+VmQPQI2omyAlM0Z71furSKgWkIWTOp6mF1grKIHWGMWL2N7
 x8EX0gIMdye1puZ+QE8Hu7MbZzDITCoC0IpW9IrwUBPg6SbCaoX9c6O9+rRlFnatDFzT
 Sd3yCUwLRR0MpxcqCmx4sXwnGCiL3H+KcjE4COQsn2cHiEFykhl/bh0FRAX0/ARTUlHx
 1eA8qpeL/2pMRHw0nyuhebw1TSk/rz/bpq0HehyORY8CVemYr8clLsaqHaaJgs1orn6M
 EWxA==
X-Gm-Message-State: APjAAAVqfx8Hm5RsU3hG7Ityth2C4CNtndvQiHQPrF2xcOK+f6M3QdBn
 04Nef0M8vtnkUEUNeCVTZ4iFcKo47PU=
X-Google-Smtp-Source: APXvYqxFQf/Y3afqR7FJGw/FdUWtYdwqXxqvHLHu+6Pl+Or3yoii9oJcIGUfkMz2vESrBO6Cm759lQ==
X-Received: by 2002:a19:4912:: with SMTP id w18mr9405316lfa.93.1569811930016; 
 Sun, 29 Sep 2019 19:52:10 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com.
 [209.85.208.170])
 by smtp.gmail.com with ESMTPSA id h3sm2696472ljf.12.2019.09.29.19.52.08
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Sep 2019 19:52:09 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id b20so7765798ljj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 19:52:08 -0700 (PDT)
X-Received: by 2002:a2e:1208:: with SMTP id t8mr10053985lje.84.1569811928396; 
 Sun, 29 Sep 2019 19:52:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
 <20190929173850.26055-12-ard.biesheuvel@linaro.org>
 <CAHmME9q=72-iKnHh0nB2+mO3uNoUerOVoHDY=eBKSoPB32XSsA@mail.gmail.com>
In-Reply-To: <CAHmME9q=72-iKnHh0nB2+mO3uNoUerOVoHDY=eBKSoPB32XSsA@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 29 Sep 2019 19:51:52 -0700
X-Gmail-Original-Message-ID: <CAHk-=wh+8TpXFcQ96ouw1o1nznCzg2hNy2XGcV9H_h94u3D16A@mail.gmail.com>
Message-ID: <CAHk-=wh+8TpXFcQ96ouw1o1nznCzg2hNy2XGcV9H_h94u3D16A@mail.gmail.com>
Subject: Re: [RFC PATCH 11/20] crypto: BLAKE2s - x86_64 implementation
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_195212_952684_834FCD37 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Sebastian Siewior <bigeasy@linutronix.de>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Dan Carpenter <dan.carpenter@oracle.com>,
 Will Deacon <will@kernel.org>, David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 29, 2019 at 7:42 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> I had previously put quite some effort into the simd_get, simd_put,
> simd_relax mechanism, so that the simd state could be persisted during
> both several calls to the same function and within long loops like
> below, with simd_relax existing to reenable preemption briefly if
> things were getting out of hand. Ard got rid of this and has moved the
> kernel_fpu_begin and kernel_fpu_end calls into the inner loop:

Actually, that should be ok these days.

What has happened fairly recently (it got merged into 5.2 back in May)
is that we no longer do the FPU save/restore on each
kernel_fpu_begin/end.

Instead, we save it on kernel_fpu_begin(), and set a flag that it
needs to be restored when returning to user space.

So the kernel now on its own merges that FPU save/restore overhead
when you do it repeatedly.

The core change happened in

     5f409e20b794 ("x86/fpu: Defer FPU state load until return to userspace")

but there are a few commits around it for cleanups etc. The code was merged in

     8ff468c29e9a ("Merge branch 'x86-fpu-for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip")

if you want to see the whole series.

That said, it would be _lovely_ if you or somebody else actually
double-checked that it works as expected and that the numbers bear out
the improvements.

It should be superior to the old model of manually trying to merge FPU
use regions, both from a performance angle (because it will merge much
more), but also from a code simplicity angle and the whole preemption
latency worry also basically goes away.

             Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
