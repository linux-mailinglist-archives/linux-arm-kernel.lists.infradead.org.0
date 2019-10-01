Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6349C2F62
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hzz3pot/3lv2fruqk5qrCtsBSaJyeXBHQbKcqtW8Lek=; b=VwznUT5Rwnjv+5
	pK995ZCa+VJtW4/ELt7oED5jMAtA86h7lQVK79Yro9hVei9LAhgoWN5+kv8mYuoCdOxWmwHQibQVL
	z9XGWKB8aU1KCRBNwOuGdGrYWepRnbM4vn/+T3xB6JknvjtJdqt00YMScE7saGfCBAUOAylbulfcn
	bSZhG3QKHlAr6Byx6obgWXRbffoWHiWv++lY47CixT8IZ30s5T1TfCjarIdORXMuFCqgtz8nSLOCp
	UnNpUXHzeZs0ljJG11nOy0Lk8N0jyj0dAhswZ73bKeNBl/gbKLt2/5/f9n0GOf7LrSMaC4T7zLIFl
	vHDmDoXNUAEcOYECUUNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDxf-0002cK-Dh; Tue, 01 Oct 2019 08:56:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDxV-0002bu-PX
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:56:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id h7so14448733wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 01:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rveAeMH6nUFyX5FAstmiBHjqBY6vb+FrCceaPqrZxk4=;
 b=y+iE/NUt/TozRmqNM2IRjQjT0A9MNjIyxcU4CVljJRq18FbRdjN6KbsQwjS0n9JXir
 XYoB9mrKTgiurrdZaubQnqtQmwVpJsDB+YUHfJmH+LmFrZ8QFtifXmroC4+isLCfUQWS
 6LPYIl+EOEFSuBE0cYDZkpDOBdZa3L1QtyOLb9/juFyIgwjRZJWKvAhcwSsLwWw8ErLF
 idbV3P9PujoXG8LnEzDPWPwCjRTAiUXJPNBhzXlCBx1XmBi0t2uV2nSRXRCYsrH1PnSB
 Cb6dCg/3UoHlwyIKbciCosAVBQemhPQVTmHNbIGOvo6WsH3WY5dRcgtl+btGFHPDjbiS
 KtzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rveAeMH6nUFyX5FAstmiBHjqBY6vb+FrCceaPqrZxk4=;
 b=NSGRZywCo0DYiuqzxmSBLUtiyb5l+41TxWQOd7Er3Df8g+t4L/Oy3TyHj8A49hooZP
 qiVlt+GxnvrqmADbFn7TWVn7XRpIXFp4O380gSQuOFzyAjFtKa3xljU6bsGXycVVscVM
 ze4oW7L6Z6iADdaehWpq9+09m/xcgsfhSnFqr+CWC4Qk835BHXH2w7J+/ExGbl1jYiD7
 6uhLUQy19KVD7+P3wxhvMgGUIShLfW4LqmHCBMAUClkCvfYU7AvvzmB/iGm0wY08SPd5
 m07KQ67Cvqfz97K8scoe3ElvZgyEana1roU0fSS2g0JrPNNUvFZLlX83l1hpl028mI3y
 2mjA==
X-Gm-Message-State: APjAAAWb1REsCyx8587vmSqfFKK9bvXUlcGM1V3K9lE/u5EG+c8Y9EBU
 k5lNuNLPE6dXRctAU4z7X4whwWcvrcyXPKQR7E8ULw==
X-Google-Smtp-Source: APXvYqyiIxZQ9hatqsRWZAC4sogQuwH4+ap5++pQOwScsiA/n19BN11oN8HPJfsRAP9IkQMd1fMra26mUgXSffr9SPk=
X-Received: by 2002:adf:f406:: with SMTP id g6mr16011124wro.325.1569920195413; 
 Tue, 01 Oct 2019 01:56:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <CAKv+Gu-RLRhwDahgvfvr2J9R+3GPM6vh4mjO73VcekusdzbuMA@mail.gmail.com>
 <CAHmME9rKFUvsQ6hhsKjxxVSnyNQsTaqBKGABoHibCiCBmfxCOA@mail.gmail.com>
 <CALCETrUrbSGNfo=g=PS4=t1zzXqGAHSs5oUL46LwMgu+2aVh1Q@mail.gmail.com>
 <CAHmME9pgrCY4MHcJ0Or+-5h+k3fWCjrbY50sUjNY4TdfeyBFxg@mail.gmail.com>
In-Reply-To: <CAHmME9pgrCY4MHcJ0Or+-5h+k3fWCjrbY50sUjNY4TdfeyBFxg@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 1 Oct 2019 10:56:23 +0200
Message-ID: <CAKv+Gu95AT7HQGYbwzRK307axPO93zYuB7wsZb_-59TbycbPMA@mail.gmail.com>
Subject: Re: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_015637_843590_5F5351D3 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Eric Biggers <ebiggers@google.com>, Greg KH <gregkh@linuxfoundation.org>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
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

On Fri, 27 Sep 2019 at 09:21, Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Hey Andy,
>
> Thanks for weighing in.
>
> > inlining.  I'd be surprised for chacha20.  If you really want inlining
> > to dictate the overall design, I think you need some real numbers for
> > why it's necessary.  There also needs to be a clear story for how
> > exactly making everything inline plays with the actual decision of
> > which implementation to use.
>
> Take a look at my description for the MIPS case: when on MIPS, the
> arch code is *always* used since it's just straight up scalar
> assembly. In this case, the chacha20_arch function *never* returns
> false [1], which means it's always included [2], so the generic
> implementation gets optimized out, saving disk and memory, which I
> assume MIPS people care about.
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/zx2c4/linux.git/tree/lib/zinc/chacha20/chacha20-mips-glue.c?h=jd/wireguard#n13
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/zx2c4/linux.git/tree/lib/zinc/chacha20/chacha20.c?h=jd/wireguard#n118
>
> I'm fine with considering this a form of "premature optimization",
> though, and ditching the motivation there.
>
> On Thu, Sep 26, 2019 at 11:37 PM Andy Lutomirski <luto@kernel.org> wrote:
> > My suggestion from way back, which is at
> > least a good deal of the way toward being doable, is to do static
> > calls.  This means that the common code will call out to the arch code
> > via a regular CALL instruction and will *not* inline the arch code.
> > This means that the arch code could live in its own module, it can be
> > selected at boot time, etc.
>
> Alright, let's do static calls, then, to deal with the case of going
> from the entry point implementation in lib/zinc (or lib/crypto, if you
> want, Ard) to the arch-specific implementation in arch/${ARCH}/crypto.
> And then within each arch, we can keep it simple, since everything is
> already in the same directory.
>
> Sound good?
>

Yup.

I posted something to this effect - I am ironing out some wrinkles
doing randconfig builds (with Arnd's help) but the general picture
shouldn't change.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
