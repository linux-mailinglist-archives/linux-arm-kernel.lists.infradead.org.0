Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AA61E7C86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 14:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syYn+zABYAIoRgXYtIkcDmhKXDazE8TeRfSGg0cCNWw=; b=Vveb5i+yOUPnkj
	vWT1Eof8hxtwEdA5muRm5SF0VbWQjyufA7SpV4BaYqnWOU+Hn67dbIo4QFDeOS4c1DZECfOADn7xO
	UJsf5HoI62UAjujT/UpZv2dT9CuchVn1koMoiqDGFkU8FipuTNZp8ImeAWKwrwbpwFxtvUTcSmVDc
	aIBME+r1wZEKPrJwA0O4+1xZ8Sb6E1ri/rIO11krByBa1nnNM7SlFyfSSwJwHHgx25glvwj610Uej
	xJuWOyiQZ/R2Q4d6nAiHb1itUvzlvV+0JR1rrMToV2XWzLHVr3f1nIKidqhBlkhK/2eJ4DUhUrEFN
	j6AnbQpmDrKvkmI0/tpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedic-0002Wz-Ht; Fri, 29 May 2020 12:02:34 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jediQ-0002WV-Tt
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 12:02:24 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
 by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
 id 1jediK-00054o-R7; Fri, 29 May 2020 22:02:17 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 29 May 2020 22:02:16 +1000
Date: Fri, 29 May 2020 22:02:16 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
Message-ID: <20200529120216.GA3752@gondor.apana.org.au>
References: <20200519190211.76855-1-ardb@kernel.org>
 <20200528073349.GA32566@gondor.apana.org.au>
 <CAMj1kXGkvLP1YnDimdLOM6xMXSQKXPKCEBGRCGBRsWKAQR5Stg@mail.gmail.com>
 <20200529080508.GA2880@gondor.apana.org.au>
 <CAMj1kXE43VvEXyYQF=s5HybhF6Wq23wDTrvTfNV9d4fUVZZ8aw@mail.gmail.com>
 <20200529115126.GA3573@gondor.apana.org.au>
 <CAMj1kXFFPKWwwSpLnPmNa_Up1syMb7T5STG7Tw8mRuRqSzc9vw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXFFPKWwwSpLnPmNa_Up1syMb7T5STG7Tw8mRuRqSzc9vw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_050222_960018_3EEDAA46 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, May 29, 2020 at 02:00:14PM +0200, Ard Biesheuvel wrote:
>
> Even if this is the case, it requires that an skcipher implementation
> stores an output IV in the buffer that skcipher request's IV field
> points to. Currently, we only check whether this is the case for CBC
> implementations, and so it is quite likely that lots of h/w
> accelerators or arch code don't adhere to this today.

They are and have always been broken because algif_skcipher has
always relied on this.

> This might be feasible for the generic CTS driver wrapping h/w
> accelerated CBC. But how is this supposed to work, e.g., for the two
> existing h/w implementations of cts(cbc(aes)) that currently ignore
> this?

They'll have to disable chaining.

The way I'm doing this would allow some implementations to allow
chaining while others of the same algorithm can disable chaining
and require the whole request to be presented together.

Cheers,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
