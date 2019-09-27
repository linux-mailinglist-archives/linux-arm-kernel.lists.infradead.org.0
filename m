Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA40BFFFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 09:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNUFqht3ekaFQ5agEDbxW200yip1HY4ui9VuxI4rVAo=; b=QQ/o7YX916QGen
	eKGoHL8Zbhzs62wWA3W0fpybfpLf4SXyEe/WvAbyIftIoPuDOGMVMjUoD6n/1jEiGicEmjBK2/sgu
	2Q1hBimxt7T2i3YfmVr/MaNfWgXwfylbUGjj5sIBZDaZEBYJQKqNrbqFO5nWAtsYBlfO/7MScXn26
	9x+uSv0gaOK9lUcNNXowEBP6n8ohQYBCipWqMkk9mcVFMXr2cxEtkITIklR68Db+B4Q3539fwefyj
	IWgxL4ALeJsdLlxoTE5gxIlz+zORbqMn/gArSeuikxeGRwqW/B5zsqM9zjgDXa2XnHm3IzVFK6DTg
	M8pXkPnYM6BeYnNQhtjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDkdn-0001MD-H0; Fri, 27 Sep 2019 07:26:11 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDkdc-0001Lh-F8
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 07:26:02 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id ce0d5b99
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 06:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=1LvK4z4bebYeyRy2NWOqt/mYcs8=; b=KL9ayU
 zJc/qfmEI7nz+58bPgK9TifZviMg+DCK4yEz8hJKofLlQ3l0QZYwkZDaiuDWFXph
 JG9cPXitjtRxboN0da4MIPy0346bdNibRKo83z90mSLXDEOmgWHrztvkc/Af4bAR
 Cw6eDWJZ9b7bJndUiMtdy3p06lpwj3QlEkb5KKYKTqF5kV9xDUezWEQxnY260tar
 yLRHzqWGdR/eWpgqW1bjww634aDigrE6OTbLe/etR1xOBnwi1hQyZrkHoiZ9P46g
 QExWXor2Go0MAVSnmxQT7yra4ZlR8corlP3igk1RZqglSAq67oksZVOOiO1WZVvy
 inK1MY53z3oGuqww==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 48559965
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 06:39:58 +0000 (UTC)
Received: by mail-oi1-x232.google.com with SMTP id w17so4364321oiw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 00:25:56 -0700 (PDT)
X-Gm-Message-State: APjAAAXq27xRfbYGknUGPpTHA4A8zFkpP4txM9Em0/BL2Jt8dWVzR0t0
 DWROsP8XaCMdFQaR/SRSNh5dhniLC/XKqSEdSog=
X-Google-Smtp-Source: APXvYqwcUARmfyTwGS11cAsoNqWQhvZOTa+gXf/AbSx4BtYYIfTtEzP1YhJ3t2Kw2eJChwVE8O0CKAY+w40vgYaV5Kw=
X-Received: by 2002:a54:4807:: with SMTP id j7mr5461378oij.122.1569568856212; 
 Fri, 27 Sep 2019 00:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <CAKv+Gu-RLRhwDahgvfvr2J9R+3GPM6vh4mjO73VcekusdzbuMA@mail.gmail.com>
 <CAHmME9rKFUvsQ6hhsKjxxVSnyNQsTaqBKGABoHibCiCBmfxCOA@mail.gmail.com>
 <CALCETrUrbSGNfo=g=PS4=t1zzXqGAHSs5oUL46LwMgu+2aVh1Q@mail.gmail.com>
In-Reply-To: <CALCETrUrbSGNfo=g=PS4=t1zzXqGAHSs5oUL46LwMgu+2aVh1Q@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Fri, 27 Sep 2019 09:20:43 +0200
X-Gmail-Original-Message-ID: <CAHmME9pgrCY4MHcJ0Or+-5h+k3fWCjrbY50sUjNY4TdfeyBFxg@mail.gmail.com>
Message-ID: <CAHmME9pgrCY4MHcJ0Or+-5h+k3fWCjrbY50sUjNY4TdfeyBFxg@mail.gmail.com>
Subject: Re: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
To: Andy Lutomirski <luto@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_002600_720848_BC43EEFE 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Marc Zyngier <maz@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Andy,

Thanks for weighing in.

> inlining.  I'd be surprised for chacha20.  If you really want inlining
> to dictate the overall design, I think you need some real numbers for
> why it's necessary.  There also needs to be a clear story for how
> exactly making everything inline plays with the actual decision of
> which implementation to use.

Take a look at my description for the MIPS case: when on MIPS, the
arch code is *always* used since it's just straight up scalar
assembly. In this case, the chacha20_arch function *never* returns
false [1], which means it's always included [2], so the generic
implementation gets optimized out, saving disk and memory, which I
assume MIPS people care about.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/zx2c4/linux.git/tree/lib/zinc/chacha20/chacha20-mips-glue.c?h=jd/wireguard#n13
[2] https://git.kernel.org/pub/scm/linux/kernel/git/zx2c4/linux.git/tree/lib/zinc/chacha20/chacha20.c?h=jd/wireguard#n118

I'm fine with considering this a form of "premature optimization",
though, and ditching the motivation there.

On Thu, Sep 26, 2019 at 11:37 PM Andy Lutomirski <luto@kernel.org> wrote:
> My suggestion from way back, which is at
> least a good deal of the way toward being doable, is to do static
> calls.  This means that the common code will call out to the arch code
> via a regular CALL instruction and will *not* inline the arch code.
> This means that the arch code could live in its own module, it can be
> selected at boot time, etc.

Alright, let's do static calls, then, to deal with the case of going
from the entry point implementation in lib/zinc (or lib/crypto, if you
want, Ard) to the arch-specific implementation in arch/${ARCH}/crypto.
And then within each arch, we can keep it simple, since everything is
already in the same directory.

Sound good?

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
