Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90EF1E7E11
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 15:11:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMy6SV9mYCf7xj5xt1TyyzU7qyaGTYIgKREx/2W+QkQ=; b=vD+UQDv7zRjmWd
	vf4KvuH0WArgp/VoGx3iDVUvY/xo0Qshv1VSALV3e31FENJcgLmjybNUsAc3RidGKHa8jqfhazjfl
	T07fufqPqeDePPZcWfCDizGwyHTvHwW/eyocyeVZKWeJmwyQ1vH+2QFE4+KRP5YN+rE6ewsR2wBED
	IyivAwrXApUji3AkYT1x54iqveIXcQxU/JY3XNKIOKWzARZW20rJTfPRtZRoxdUuQdRTI2KWjZI2m
	ifIaI2SnG+86m8TOSacUI3QgtZCTjpeyZb01/n5s9Q+Lz8Yy+xVReDtvWkiykfLg+hLLXJdVmfKwh
	r6sbxouHpVlOdbCgp9wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeemw-0006ML-IN; Fri, 29 May 2020 13:11:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeeml-0006M2-JD
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 13:10:57 +0000
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B0EE207BC
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 13:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590757855;
 bh=fpqVd2S6sw1KSq77Y2DVJhgyP64rnlywDZYYuZ+bqz0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eyRv3lIf3nxOiFUyHfQJOkkCF749DBt8NILeq+Jgngy9UVmPvm3I40r6vL/31mJx/
 J5XjucqOBosTU96NxUq31/pw9bhedn3Gn19rP26AojfMwpXY0/uHGmFJEqNBbXLMuQ
 xm+Xml7hLNLNp5SnjbHXKcuVMC87stHOG7biVwu0=
Received: by mail-io1-f47.google.com with SMTP id q8so2223607iow.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 06:10:55 -0700 (PDT)
X-Gm-Message-State: AOAM532o1kWNn/aZz2Y9a0Qg9R0SrEW4hD0vPgnm7TDn+iW4xOvaGe1n
 6OyI1WgubgkgNwOalhIA7JccsZ5Gq2Eaa7ZiVRU=
X-Google-Smtp-Source: ABdhPJxrjkBcfs0Pwb8hm9j6Z8KfUMTzH62EGj9Zul7v3MunXRuE7aVAAm7CDPLbyG0PafBWgbNWcL0q0mVGSBLO7Ws=
X-Received: by 2002:a05:6638:a50:: with SMTP id
 16mr6709322jap.71.1590757854581; 
 Fri, 29 May 2020 06:10:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200519190211.76855-1-ardb@kernel.org>
 <20200528073349.GA32566@gondor.apana.org.au>
 <CAMj1kXGkvLP1YnDimdLOM6xMXSQKXPKCEBGRCGBRsWKAQR5Stg@mail.gmail.com>
 <20200529080508.GA2880@gondor.apana.org.au>
 <CAMj1kXE43VvEXyYQF=s5HybhF6Wq23wDTrvTfNV9d4fUVZZ8aw@mail.gmail.com>
 <20200529115126.GA3573@gondor.apana.org.au>
 <CAMj1kXFFPKWwwSpLnPmNa_Up1syMb7T5STG7Tw8mRuRqSzc9vw@mail.gmail.com>
 <20200529120216.GA3752@gondor.apana.org.au>
In-Reply-To: <20200529120216.GA3752@gondor.apana.org.au>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 29 May 2020 15:10:43 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF2-jJ6yGh9m759V2858_c45txoUBgKirvR-4z4GOHUfQ@mail.gmail.com>
Message-ID: <CAMj1kXF2-jJ6yGh9m759V2858_c45txoUBgKirvR-4z4GOHUfQ@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
To: Herbert Xu <herbert@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_061055_660880_1F9CEFFE 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, 29 May 2020 at 14:02, Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Fri, May 29, 2020 at 02:00:14PM +0200, Ard Biesheuvel wrote:
> >
> > Even if this is the case, it requires that an skcipher implementation
> > stores an output IV in the buffer that skcipher request's IV field
> > points to. Currently, we only check whether this is the case for CBC
> > implementations, and so it is quite likely that lots of h/w
> > accelerators or arch code don't adhere to this today.
>
> They are and have always been broken because algif_skcipher has
> always relied on this.
>

OK, so the undocumented assumption is that algif_skcipher requests are
delineated by ALG_SET_IV commands, and that anything that gets sent to
the socket in between should be treated as a single request, right? I
think that makes sense, but do note that this deviates from Stephan's
use case, where the ciphertext stealing block swap was applied after
every call into af_alg, with the IV being inherited from one request
to the next. I think that case was invalid to begin with, I just hope
no other use cases exist where this unspecified behavior is being
relied upon.

> > This might be feasible for the generic CTS driver wrapping h/w
> > accelerated CBC. But how is this supposed to work, e.g., for the two
> > existing h/w implementations of cts(cbc(aes)) that currently ignore
> > this?
>
> They'll have to disable chaining.
>
> The way I'm doing this would allow some implementations to allow
> chaining while others of the same algorithm can disable chaining
> and require the whole request to be presented together.
>

Fair enough.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
