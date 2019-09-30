Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EE9C1A3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 04:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTDF+kAYZiHgvScHchULXNVOmQEiWlJhe9ZkqOABFG4=; b=pksDIOouOkqxfn
	8+ixC1ni1xIOd+9bEpVVgnzF4MBRX/cpZeUIZLVXWcGXIh7rO3uqBmKbfTeuH7CM3e5DvsiZtAOV8
	dsSEQ63WBFHIsuBTUszCZp+9pDZJcQU1BuZL8H1uwtC1GL5drrl3qPC49TCOdVtF4RgU9strCzpxK
	BvwEeeDDqKC+/OObqNGwW5BB1qy/k5086OF3ECkgpmPEYp/+hhKF07UrfnBXUJ0FjAl8dpvXC+nbs
	aF+tnawFSOwI8mcyNgFHfoZKGzVbGkwuGH3d2xxujjUZCdq2wrk/xs/YttDzsQK8iBlIfN3dNvw2s
	Bnj9eZKUa3YZJgMDQd7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEle5-0007LQ-En; Mon, 30 Sep 2019 02:42:41 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEldx-0007Kx-36
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 02:42:34 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id a9974c4e
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 01:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=5Vsj6EXf0jjuUV8wzSrKzacZD/I=; b=Ly8deA
 0hY4MSQuTheWCk3bmmN21Sjy3I48IOn71+eHa55jX16q+7HZt7tbFKc4z96WzkOu
 zGWhPv2JO3nUhxxL+hO6JmfDMS2xTWdS821s5IKBZfkVeCSBmbtlawmn8P5viXp6
 PT6yFj62EHLORtVyPjTWGYHETLRcSTTYJ/6Y3YMcdQCOnF2ngiUQ0+9yTq+yUXMu
 BL28GyI1sLi/GlUzg2r4JUA2B++BYQeIpnhj3mgLfkROB+D568HTC0Sfk+FO7fPr
 w2Xjz5QYMKLjyceyr+1gSkuSoKxgHkyJVR+f1Z3QCZVFOxRyjg0BGB/QOqwWE3UC
 JvDHwerwmpBxE9Ww==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 0e27eef1
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 01:55:59 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id t84so9787240oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 19:42:18 -0700 (PDT)
X-Gm-Message-State: APjAAAWDSV0PUJyOaaPh7kziied0fLTzC+4bMMke2ZfpqBBxV+4FZ81R
 rY5b+fY1g6AB5rjvOW4QHFezvGikneCp6geBQ8Y=
X-Google-Smtp-Source: APXvYqwLF+Z7w3gXasKuLLqyupaAjaq1ZtsrS9U+xQ2bzeQ6aNm4VKt/omJ+RR9Jb1U8RiIeyWwI0yDKS/koJ/s8VBY=
X-Received: by 2002:a54:4807:: with SMTP id j7mr15044988oij.122.1569811337466; 
 Sun, 29 Sep 2019 19:42:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
 <20190929173850.26055-12-ard.biesheuvel@linaro.org>
In-Reply-To: <20190929173850.26055-12-ard.biesheuvel@linaro.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 30 Sep 2019 04:42:06 +0200
X-Gmail-Original-Message-ID: <CAHmME9q=72-iKnHh0nB2+mO3uNoUerOVoHDY=eBKSoPB32XSsA@mail.gmail.com>
Message-ID: <CAHmME9q=72-iKnHh0nB2+mO3uNoUerOVoHDY=eBKSoPB32XSsA@mail.gmail.com>
Subject: Re: [RFC PATCH 11/20] crypto: BLAKE2s - x86_64 implementation
To: Sebastian Siewior <bigeasy@linutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_194233_345272_15CD42F9 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Eric Biggers <ebiggers@google.com>, Samuel Neves <sneves@dei.uc.pt>,
 Will Deacon <will@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sebastian, Thomas,

Take a look at the below snippet from this patch.

I had previously put quite some effort into the simd_get, simd_put,
simd_relax mechanism, so that the simd state could be persisted during
both several calls to the same function and within long loops like
below, with simd_relax existing to reenable preemption briefly if
things were getting out of hand. Ard got rid of this and has moved the
kernel_fpu_begin and kernel_fpu_end calls into the inner loop:

On Sun, Sep 29, 2019 at 7:39 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
> +       for (;;) {
> +               const size_t blocks = min_t(size_t, nblocks,
> +                                           PAGE_SIZE / BLAKE2S_BLOCK_SIZE);
> +
> +               kernel_fpu_begin();
> +               if (IS_ENABLED(CONFIG_AS_AVX512) && blake2s_use_avx512)
> +                       blake2s_compress_avx512(state, block, blocks, inc);
> +               else
> +                       blake2s_compress_avx(state, block, blocks, inc);
> +               kernel_fpu_end();
> +
> +               nblocks -= blocks;
> +               if (!nblocks)
> +                       break;
> +               block += blocks * BLAKE2S_BLOCK_SIZE;
> +       }
> +       return true;
> +}

I'm wondering if on modern kernels this is actually fine and whether
my simd_get/put/relax thing no longer has a good use case.
Specifically, I recall last year there were a lot of patches and
discussions about doing FPU register restoration lazily -- on context
switch or the like. Did those land? Did the theory of action work out
in the end?

Regards,
Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
