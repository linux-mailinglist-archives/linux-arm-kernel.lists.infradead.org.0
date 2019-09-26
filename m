Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB4EBFAFA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 23:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPgnJTHwDvzaKlqIm0s0i+J1dorwd+lu/2hqz8ya8Cg=; b=Z8vT4tTz1u641c
	jEPmoRLmbUIL3dEzDd4kOb/zvYk09VdmFg5oS5+Ro25wd6iL2AbmdXHvqjeLeBve0du8hTTSy2wqa
	qg//MWg5Kl3edBHat12C7C7kIt+9vcb/mrDiUA3cVh3pwNk924v1xe9IK+vnlLG6AiNr2J6YfdQE2
	gYbgLXkA5fbyL763TpZQ98dYs9N0vUJNXds5QScp/Bqcu3Y+35T+3gFZwsiIOD2+4/lHyk35Y11Zp
	ny9fn0h6GyhlykoasWrSof51DHnu57ETuQtyG4vSnkdRZkeO8wBJbM8MI7X22FYLeIwBKCOjpOQMk
	dEo6DiL88zsP31mBv7zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDbS2-0004jM-JB; Thu, 26 Sep 2019 21:37:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDbRc-0004g7-JA
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 21:37:01 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C3CB2246A
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 21:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569533818;
 bh=OyZSdjbLBMhgPOUk+Mr6qz+tKzwnie60KWYmwf3kT3g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kGEOUXDO6eeyHW1Xmw7tTs3P94vmlGnuWYD1Q1UDfmQKO/DhLPvkWkC4NDxHOWRag
 RgGpPieSue/d8FN0Ds4rk1iWlcMNBeFhdZlAoK81J3SN1S/I7brj1kgVJL5ixnlvKO
 RfLM0pBg0iCZAsRkzSoauN4SUw9bNOAfQiqWQOCU=
Received: by mail-wr1-f47.google.com with SMTP id b9so435461wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 14:36:58 -0700 (PDT)
X-Gm-Message-State: APjAAAUKnoef0P2rs4g8dBfDdAj4pIRRlmtc/XNreMhW8Bcqf6EQ/ybB
 D/nm4ko2Zj/fWvQWm1Pkf1aq0DVMPucF4e0eAFOdBg==
X-Google-Smtp-Source: APXvYqxlURCWSp4HCUsNoCx7QmBbg/9ouN3KolYysgQ1vXlxVhLH+OslMHbI7BBC9R7Ed9Bg/H7yvYJXwf00AFpsrFA=
X-Received: by 2002:adf:cc0a:: with SMTP id x10mr348170wrh.195.1569533816729; 
 Thu, 26 Sep 2019 14:36:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <CAKv+Gu-RLRhwDahgvfvr2J9R+3GPM6vh4mjO73VcekusdzbuMA@mail.gmail.com>
 <CAHmME9rKFUvsQ6hhsKjxxVSnyNQsTaqBKGABoHibCiCBmfxCOA@mail.gmail.com>
In-Reply-To: <CAHmME9rKFUvsQ6hhsKjxxVSnyNQsTaqBKGABoHibCiCBmfxCOA@mail.gmail.com>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 26 Sep 2019 14:36:45 -0700
X-Gmail-Original-Message-ID: <CALCETrUrbSGNfo=g=PS4=t1zzXqGAHSs5oUL46LwMgu+2aVh1Q@mail.gmail.com>
Message-ID: <CALCETrUrbSGNfo=g=PS4=t1zzXqGAHSs5oUL46LwMgu+2aVh1Q@mail.gmail.com>
Subject: Re: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_143700_679946_C8E02F92 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
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

On Thu, Sep 26, 2019 at 1:52 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Hi Ard,
>
>
> Our goals are that chacha20_arch() from each of these arch glues gets
> included in the lib/crypto/chacha20.c compilation unit. The reason why
> we want it in its own unit is so that the inliner can get rid of
> unreached code and more tightly integrate the branches. For the MIPS
> case, the advantage is clear.

IMO this needs numbers.  My suggestion from way back, which is at
least a good deal of the way toward being doable, is to do static
calls.  This means that the common code will call out to the arch code
via a regular CALL instruction and will *not* inline the arch code.
This means that the arch code could live in its own module, it can be
selected at boot time, etc.  For x86, inlining seems a but nuts to
avoid a whole mess of:

if (use avx2)
  do_avx2_thing();
else if (use avx1)
  do_avx1_thing();
else
  etc;

On x86, direct calls are pretty cheap.  Certainly for operations like
curve25519, I doubt you will ever see a real-world effect from
inlining.  I'd be surprised for chacha20.  If you really want inlining
to dictate the overall design, I think you need some real numbers for
why it's necessary.  There also needs to be a clear story for how
exactly making everything inline plays with the actual decision of
which implementation to use.  I think it's also worth noting that LTO
is coming.

--Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
