Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3531E7824
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 10:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lleRMT28wnqw1Chv9dQTiqLBzOp5ZGNVp3TWxMg6hkg=; b=WVNzIbQ5YYumF2
	p/JpU0tIoG7S/wN3Hs7HGXICZkszqepz0I63g8xRGNv48/JoDTCABy47JHGIUby5Jy+jqA47Xaxn5
	6SACEmU+on2YoDP+FvyYz5clKeRaK9smATyI54gv3scZFttTtffZ5Yw5Rd03fDMs1GFqhfM+Z+O0o
	5rccVsM21VKqUZLDorlqccGgloypk8ydV0IGqJUoNbM1jVmDe3a3gKVQtO+03K+zmrkueLOgXXaOs
	YVQh2w5mDbR0hgkPQ69FB5PmNuwRGpLie8MqM23sfVsJpdA7NfuHyzX4y7KRCTUj5wAnKrArtAFQc
	mizVt2NO0HxoEt5XYiNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeaGB-0006k5-Pv; Fri, 29 May 2020 08:20:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeaFs-0006j9-0X
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 08:20:41 +0000
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
 [209.85.166.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8ACB42075A
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 08:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590740439;
 bh=JTAYp8cwsGEAWE/e9SeXZyS0wQGEvpQa7xc0cDYqMzo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=tI1pkgNHylSXYyP4Dq0XRQzI8TJxq9EMFzKJZyby995N4XPSKTYq9Q3RkdIwhCA9l
 myou2+EXU5m85yc2EAkgle5hLlgfB4P2YThMIlchNRf3IPZxy93sfI5FZJ35k6ZtYy
 c+YlhP2J+lZHR/kj1cPUYeWwAzrOf4E8jbuQS5gc=
Received: by mail-io1-f54.google.com with SMTP id p20so1396208iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 01:20:39 -0700 (PDT)
X-Gm-Message-State: AOAM5314UikXlzC5n4h0B1AyO/0HrPc5EEahUMH4JKLTqLkkNmjqulrL
 pxoZ4iY7mZJjQsTwBxeBfiJy6qUs2AvaKvG8lsI=
X-Google-Smtp-Source: ABdhPJyCSIQExnvtGY4/9BZN6drHOpsFdJFI8IINpxyV3I+gPfPkhnq8dRBBRDIk3aoiXN/yzFLRk7IbCr9rkg/HpIU=
X-Received: by 2002:a6b:5b02:: with SMTP id v2mr5660075ioh.161.1590740438929; 
 Fri, 29 May 2020 01:20:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200519190211.76855-1-ardb@kernel.org>
 <20200528073349.GA32566@gondor.apana.org.au>
 <CAMj1kXGkvLP1YnDimdLOM6xMXSQKXPKCEBGRCGBRsWKAQR5Stg@mail.gmail.com>
 <20200529080508.GA2880@gondor.apana.org.au>
In-Reply-To: <20200529080508.GA2880@gondor.apana.org.au>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 29 May 2020 10:20:27 +0200
X-Gmail-Original-Message-ID: <CAMj1kXE43VvEXyYQF=s5HybhF6Wq23wDTrvTfNV9d4fUVZZ8aw@mail.gmail.com>
Message-ID: <CAMj1kXE43VvEXyYQF=s5HybhF6Wq23wDTrvTfNV9d4fUVZZ8aw@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
To: Herbert Xu <herbert@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_012040_091736_85A48BC0 
X-CRM114-Status: GOOD (  21.32  )
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

On Fri, 29 May 2020 at 10:05, Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Thu, May 28, 2020 at 10:33:25AM +0200, Ard Biesheuvel wrote:
> >
> > The reason we return output IVs for CBC is because our generic
> > implementation of CTS can wrap any CBC implementation, and relies on
> > this output IV rather than grabbing it from the ciphertext directly
> > (which may be tricky and is best left up to the CBC code)
>
> No that's not the main reason.  The main user of chaining is
> algif_skcipher.
>

But many implementation do not return an output IV at all. The only
mode that requires it (for the selftests to pass) is CBC.

> > So if you are saying that we should never split up algif_skcipher
> > requests into multiple calls into the underlying skcipher, then I
> > agree with you. Even if the generic CTS seems to work more or less as
> > expected by, e.g., the NIST validation tool, this is unspecified
> > behavior, and definitely broken in various other places.
>
> I was merely suggesting that requests to CTS/XTS shouldn't be
> split up.  Doing it for others would be a serious regression.
>

Given that in these cases, doing so will give incorrect results even
if the input size is a whole multiple of the block size, I agree that
adding this restriction will not break anything that is working
consistently at the moment.

But could you elaborate on the serious regression for other cases? Do
you have anything particular in mind?

> However, having looked at this it would seem that the effort
> in marking CTS/XTS is not that different to just adding support
> to hold the last two blocks of data so that CTS/XTS can support
> chaining.
>

For XTS, we would have to carry some metadata around that tells you
whether the initial encryption of the IV has occurred or not. In the
CTS case, you need two swap the last two blocks of ciphertext at the
very end.

So does that mean some kind of init/update/final model for skcipher? I
can see how that could address these issues (init() would encrypt the
IV for XTS, and final() would do the final block handling for CTS).
Just holding two blocks of data does not seem sufficient to me to
handle these issues.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
