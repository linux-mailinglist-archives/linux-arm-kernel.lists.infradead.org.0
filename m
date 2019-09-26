Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE6EBF318
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 14:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KO2iNUjxXUBWa14qTErVxqmFPjFNOnEDZ6vVZRddjPY=; b=Z+/Ycm95+KfBsT
	V2waybLywT5LXUJ1N3sz+OxgsW7UiQrOf+oODKz/hWDiHAXsqdwXgAoWtxK1Tr8/QgIQlGYARB38T
	8QTvFSXUXwyXVBJI6Pk5arP6jLg068mDfvmSWLL1rLb/ehIzIGsbSz+iCFI4CsjJJHiTo1R6UOMwX
	RnMNmFBdDTZKwNbb5Oa3PsRJv24xKWUZZOkWE+lxcG2pD56eC3he3FV2gSw/FFG1q6RuryX3e9eQo
	GLTtssRjdlypPnzzKwUy5YpOzayaJyaNnV3gsxfVrGZPBbH8xFGv9g0G6uK5W5+lIPI0h8mnxP4dg
	ttuqj0ZHn3OJarWs1dmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDSzT-0001Q9-9K; Thu, 26 Sep 2019 12:35:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDSzM-0001Pn-PG
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 12:35:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id b9so2580954wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 05:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ireY1yMCPk29SNDGqM5QiuQBHqF0oJp5y0+v+RNIhtA=;
 b=gKZY6OH5LIkgVMOtNK+O5JyGGQ8XxAbRa90jbbI0RFUyuVkx9+6rOCCjXPQ/WNQoGM
 ic+a9U03U5v8G5b9INspx9IF5jVh2l8UN8uoJEAKRRmILw+7XfSAMEAFMmFn06RbidLG
 8lXmYacZ13j/F4cMBnxTEtNwri7BuilbhmSmSMP1Mjl6y3QOKoU1J4BvOr1Lq2I4E3pF
 1X4ECecESJwu5ANhALxm64LejzMLeWTWXEJVYEh9up7PXTn3CHDjDOtlsM4BYy+uMrlI
 iQjsrv9u3P7j4W3BIRasmG4wiqNekFfnTD9DYrARfLLfYmwX2YlrMOOg1QTX6KsrB7Hm
 YUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ireY1yMCPk29SNDGqM5QiuQBHqF0oJp5y0+v+RNIhtA=;
 b=sVKkRpLjQg9YJicfko2NUwPeZ6tC4GcJCv+Yp8FaHdmrq+zuSrE+GEYnv9+wG+kdvg
 HPPMZn58ZmbIzyEAgVdUHiM+vKvTzzxLkTLs1zOcCSA47f/nCefuYQYZN060a8MODhXf
 Lk2eO+dvNmyecGbn55JFCxe+zono2I/03Dv0CM2rWrEl7+d+pD02lGemJx9G+28VS46U
 7xvGZVyEChQ0OjNUlvK8AQbQPABFt10a3f96qSgG/a1N2HswxGBZ3yBUMQdZ9dIdSwZJ
 /q2/9RsD9X2mlK77EfOEq5ImTkq08rHFwyyVWdmbWRSTU40d9gMW84kyoyfNvIqg/lUA
 aHdA==
X-Gm-Message-State: APjAAAW1ri/hG2bBdKccqYebaHUea8qSFHRCzOmS0dczFI0sj5Cb1l31
 G6C0iXWQ1eI4dgs7BiB1rcJ3U1SHjO93bYYUqXHDLg==
X-Google-Smtp-Source: APXvYqxSAFn3hpu7g5o1mCuFFiuYM++BftjSOklvARmfgvUNocjxi4xwNIC60YPTkP9aTyIb9AE1yukHr0va/jLxvMk=
X-Received: by 2002:a5d:6a81:: with SMTP id s1mr2392154wru.246.1569501307760; 
 Thu, 26 Sep 2019 05:35:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CAKv+Gu_YOqvqJ4YC=ixBh-v4fiFTFNpEagHiTRU7Oq4PrhJPkw@mail.gmail.com>
In-Reply-To: <CAKv+Gu_YOqvqJ4YC=ixBh-v4fiFTFNpEagHiTRU7Oq4PrhJPkw@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 26 Sep 2019 14:34:56 +0200
Message-ID: <CAKv+Gu8JxmU_8byEun17B2d9LjQpR0wRJktUfr-Oax0q4if6Dg@mail.gmail.com>
Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_053516_852772_487DDE11 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biggers <ebiggers@google.com>, Greg KH <gregkh@linuxfoundation.org>,
 Samuel Neves <sneves@dei.uc.pt>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Sep 2019 at 13:06, Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> On Thu, 26 Sep 2019 at 00:15, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Wed, Sep 25, 2019 at 9:14 AM Ard Biesheuvel
> > <ard.biesheuvel@linaro.org> wrote:
> > >
> > > Replace the chacha20poly1305() library calls with invocations of the
> > > RFC7539 AEAD, as implemented by the generic chacha20poly1305 template.
> >
> > Honestly, the other patches look fine to me from what I've seen (with
> > the small note I had in a separate email for 11/18), but this one I
> > consider just nasty, and a prime example of why people hate those
> > crypto lookup routines.
> >
> > Some of it is just the fundamental and pointless silly indirection,
> > that just makes things harder to read, less efficient, and less
> > straightforward.
> >
> > That's exemplified by this part of the patch:
> >
> > >  struct noise_symmetric_key {
> > > -       u8 key[NOISE_SYMMETRIC_KEY_LEN];
> > > +       struct crypto_aead *tfm;
> >
> > which is just one of those "we know what we want and we just want to
> > use it directly" things, and then the crypto indirection comes along
> > and makes that simple inline allocation of a small constant size
> > (afaik it is CHACHA20POLY1305_KEY_SIZE, which is 32) be another
> > allocation entirely.
> >
> > And it's some random odd non-typed thing too, so then you have that
> > silly and stupid dynamic allocation using a name lookup:
> >
> >    crypto_alloc_aead("rfc7539(chacha20,poly1305)", 0, CRYPTO_ALG_ASYNC);
> >
> > to create what used to be (and should be) a simple allocation that was
> > has a static type and was just part of the code.
> >
>
> That crypto_alloc_aead() call does a lot of things under the hood:
> - use an existing instantiation of rfc7539(chacha20,poly1305) if available,
> - look for modules that implement the whole transformation directly,
> - if none are found, instantiate the rfc7539 template, which will
> essentially do the above for chacha20 and poly1305, potentially using
> per-arch accelerated implementations if available (for either), or
> otherwise, fall back to the generic versions.
>
> What *I* see as the issue here is not that we need to do this at all,
> but that we have to do it for each value of the key. IMO, it would be
> much better to instantiate this thing only once, and have a way of
> passing a per-request key into it, permitting us to hide the whole
> thing behind the existing library interface.
>

Note that we don't have to do the whole dance for each new value of
the key: subsequent invocations will all succeed at step #1, and grab
the existing instantiation, but allocate a new TFM structure that
refers to it. It is this step that we should be able to omit as well
if the API is changed to allow per-request keys to be passed in via
the request structure.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
