Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565F61E5ADC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 10:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ACPXJdENgLBU90vZljmACzEzMvTqYXlUuZoRtMVVu0=; b=tipEHngxplTFD4
	KQacc8XMBN0zTrPQ6Rc2smp+hWgSDmtSm7mTR1hP8alvUWSYRmj5RaqmBXWf1iI4kV+JgVpWxhChp
	hIFWdwDryVnZy+RcumnAccLR4xY+utEN5Mh3mmbfRvVHHCfbtTVe5lKkN60/S4A6o2M+LxLe/GYY7
	7DS/kN3mSDz+VXUAnLyFxDWXkrPd25B3HLPsnaR/Z4w7a0isqBhozfN3m93xIiW6JJFJVa3wP4nLz
	TgfEMglPxXF1FejBHl+yrfxBmV+9QtLP5cgzApbCr+FK8AlXvMlaM9m3o0S1h06u+kSH3rXUZoLZf
	iXg0bEGH8008EbFLbjpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDz1-0004vo-6s; Thu, 28 May 2020 08:33:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeDys-0004vN-5K
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 08:33:39 +0000
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com
 [209.85.166.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 305C920B80
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 08:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590654817;
 bh=b+hkukDcY3wWk9NH35StsAnbduxjzZHjk4n+pej6zbw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dIrnLYB08icfW3kCSZhdd+bb0oSS+P9AMTTN4xVZS7SuesUvd0OLff51bKrZYEvK7
 +DOcWEklgz7KfQBf06VqGrioJuVSTjvpkg7k0IDgO1RrgICN5rftQ5N6I7XZPnSJth
 rgwBE1OyxGkA5q/ZK6jv8UUQbFGDvo16pjQ7cANQ=
Received: by mail-il1-f177.google.com with SMTP id q18so5660947ilm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 01:33:37 -0700 (PDT)
X-Gm-Message-State: AOAM532TBGKfM0fhvNRe26E/MQMg6ZNNPc6oYiw2VxW81pE+9bAoUJ2B
 tEhFoj0oHN3uIwaG+2odo/dkKQlUyn50OmUkXRY=
X-Google-Smtp-Source: ABdhPJzawasqG9FnG8TXHOfTl5s51OwBCi0grn7gov6n541LBI049v30JprQgzKLv5HeW1opilBExT5IteQrvMbadoo=
X-Received: by 2002:a92:bb55:: with SMTP id w82mr1838867ili.211.1590654816584; 
 Thu, 28 May 2020 01:33:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200519190211.76855-1-ardb@kernel.org>
 <20200528073349.GA32566@gondor.apana.org.au>
In-Reply-To: <20200528073349.GA32566@gondor.apana.org.au>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 28 May 2020 10:33:25 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGkvLP1YnDimdLOM6xMXSQKXPKCEBGRCGBRsWKAQR5Stg@mail.gmail.com>
Message-ID: <CAMj1kXGkvLP1YnDimdLOM6xMXSQKXPKCEBGRCGBRsWKAQR5Stg@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
To: Herbert Xu <herbert@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_013338_239701_C5B68DA0 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Eric Biggers <ebiggers@kernel.org>, Stephan Mueller <smueller@chronox.de>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 at 09:33, Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> Ard Biesheuvel <ardb@kernel.org> wrote:
> > Stephan reports that the arm64 implementation of cts(cbc(aes)) deviates
> > from the generic implementation in what it returns as the output IV. So
> > fix this, and add some test vectors to catch other non-compliant
> > implementations.
> >
> > Stephan, could you provide a reference for the NIST validation tool and
> > how it flags this behaviour as non-compliant? Thanks.
>
> I think our CTS and XTS are both broken with respect to af_alg.
>
> The reason we use output IVs in general is to support chaining
> which is required by algif_skcipher to break up large requests
> into smaller ones.
>
> For CTS and XTS that simply doesn't work.  So we should fix this
> by changing algif_skcipher to not do chaining (and hence drop
> support for large requests like algif_aead) for algorithms like
> CTS/XTS.
>

The reason we return output IVs for CBC is because our generic
implementation of CTS can wrap any CBC implementation, and relies on
this output IV rather than grabbing it from the ciphertext directly
(which may be tricky and is best left up to the CBC code)

For CTS itself, as well as XTS, returning an output IV is meaningless,
given that
a) the implementations rely on the skcipher_walk infrastructure to
present all input except the last bit in chunks that are a multiple of
the block size,
b) neither specification defines how chaining of inputs should work,
regardless of whether the preceding input was a multiple of the block
size or not.

The CS3 mode that we implement for CTS swaps the final two blocks
unconditionally. So even if the input is a whole multiple of the block
size, the preceding ciphertext will turn out differently if any output
happens to follow.

For XTS, the IV is encrypted before processing the first block, so
even if you do return an output IV, the subsequent invocations of the
skcipher need to omit the encryption, which we don't implement
currently.

So if you are saying that we should never split up algif_skcipher
requests into multiple calls into the underlying skcipher, then I
agree with you. Even if the generic CTS seems to work more or less as
expected by, e.g., the NIST validation tool, this is unspecified
behavior, and definitely broken in various other places.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
