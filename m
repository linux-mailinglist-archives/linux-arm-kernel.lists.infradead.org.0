Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBB2BF54E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 16:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qEHBNNqCx/TuIVEyM3clc/GXpUQ1VClxEo4K3v3gyF8=; b=c7eBpvseNbrJYB
	c3ho70YIdJT3Llw86liRgDn2KSpezBF1syXqwWqFa7zui2RszDy74DOGup/n05ai5lVADzzsD/QTf
	nX7nG3m9Q+vYzYNfdkuyWJwdNhVUjKj3kIn+EsnrvjHpxZKmj//u0IFQ23T/9gB6OwCJm6ZouyU31
	+Wem//g9uKmB0ibDOu88lsD0sH3u34dBnVnXNoZjbsYQA8J5hLpjorWSbV3KRw+POvMomhGvuiUON
	Ie3cCzQ1IUMox7EVrrqYNdy5p9GVZnX2JSNwGq3VWmDcWU2l6U/enhaB4ac2brdBWF2j4GVUj95Ar
	inMNayNPXe0NEYmY4JRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDV8q-0001T5-L8; Thu, 26 Sep 2019 14:53:12 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDV8f-0001Sd-L3
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 14:53:03 +0000
Received: by mail-wm1-x341.google.com with SMTP id f22so2916223wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 07:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0L51IWSSTfk/ZgR589XaHykPl4YJGMDUDTMAzq4FuKw=;
 b=zJ+8+Mu9e9sQfXzWkDgdVOFboQmUWwf/E/zxLwUo8GPnNrov9tfjb1ao+KG6uD0Di8
 7vbyMnj1Sh0KxxA2HT3B5Hlbs+yB8h4M5KnWnZ7/1sAe52ax4ZzrJMxF6yRfmNqjMvR+
 o54CiGYKc4MsZdPmXjQzh5TC4GGVrH02B4dEWjdv+v+PHN6jPnIT/XeOYwRVs27UZxmV
 jDxrL8iFf7Lld6Tx6+fhYJZvuhcLk6IYV7To3o/1bqyDaPrsQHJE/SGpY7Z4w3nfQPR8
 1FS8sAQoocQBtDGRFqyKj1cdsPV4Pbi52pimuLJdjQB8LgqJ7zncySww/irR4Dqa10Q2
 cDGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0L51IWSSTfk/ZgR589XaHykPl4YJGMDUDTMAzq4FuKw=;
 b=Ts1iRGYP4PAJI+LMphNq81DGluDNf0D/3gRG4wvwNGJp0rffqw6OzjjTThYUisBXLF
 YaIJix6Zcw9wyHyz2tyBHYxO0/zO4tbDuRsn+woPoLGhC6Bu3i9LLx2Dg/Od3/62auj7
 UkEfc6fRCRnc0yf3rYQytHg9/KqiINruvYf1rSt6jWMMaP4/lb5bef3P+3ry/Cixr6KU
 YLBOxxGnfXHW3elrftggf88/g3TClhctCy6+FEnWwpJ+pcXGnLJrWc8sb9irG8ji3N/5
 wC6TPVFR2a2wgD4f4TaihZubXGhTs/9k6FpCjdYEZxT8Ayar+Uc9D/jb8zr0V32Sxahq
 tH7A==
X-Gm-Message-State: APjAAAVezG47qVRiYug8zgu5F9gKk34snVV++4VHTUgtosj2dYckkomP
 mJkgTQC22c+dzTtpQXrdp59ZyFDcZ5wRhj/cahrqRQ==
X-Google-Smtp-Source: APXvYqxcWxypHYHisklhmMNNuyFYUMuqTzC/ZaBeHUfpWnFabBoUGaC/VDYPFS5uBqgwKlPi2JJYpJovMI+mXBXpVPo=
X-Received: by 2002:a7b:c451:: with SMTP id l17mr3039573wmi.61.1569509578884; 
 Thu, 26 Sep 2019 07:52:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <CAKv+Gu-RLRhwDahgvfvr2J9R+3GPM6vh4mjO73VcekusdzbuMA@mail.gmail.com>
 <MN2PR20MB29731267C4670FBD46D6C743CA860@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAKv+Gu_eNK1HFxTY379kpCpF8FQQFHEdC1Th=s5f7Fy3bebOjQ@mail.gmail.com>
 <MN2PR20MB297313B598D8EBBE06477B1CCA860@MN2PR20MB2973.namprd20.prod.outlook.com>
In-Reply-To: <MN2PR20MB297313B598D8EBBE06477B1CCA860@MN2PR20MB2973.namprd20.prod.outlook.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 26 Sep 2019 16:52:47 +0200
Message-ID: <CAKv+Gu-P58Uar2jUNdN5VvG1g45=V_+3FMXCD+0sFY7y2RPeag@mail.gmail.com>
Subject: Re: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_075301_754182_C26CB0DF 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
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

On Thu, 26 Sep 2019 at 16:03, Pascal Van Leeuwen
<pvanleeuwen@verimatrix.com> wrote:
>
> > -----Original Message-----
> > From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Sent: Thursday, September 26, 2019 3:16 PM
> > To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
> > Cc: Jason A. Donenfeld <Jason@zx2c4.com>; Linux Crypto Mailing List <linux-
> > crypto@vger.kernel.org>; linux-arm-kernel <linux-arm-kernel@lists.infradead.org>;
> > Herbert Xu <herbert@gondor.apana.org.au>; David Miller <davem@davemloft.net>; Greg KH
> > <gregkh@linuxfoundation.org>; Linus Torvalds <torvalds@linux-foundation.org>; Samuel
> > Neves <sneves@dei.uc.pt>; Dan Carpenter <dan.carpenter@oracle.com>; Arnd Bergmann
> > <arnd@arndb.de>; Eric Biggers <ebiggers@google.com>; Andy Lutomirski <luto@kernel.org>;
> > Will Deacon <will@kernel.org>; Marc Zyngier <maz@kernel.org>; Catalin Marinas
> > <catalin.marinas@arm.com>
> > Subject: Re: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
> >
> > On Thu, 26 Sep 2019 at 15:06, Pascal Van Leeuwen
> > <pvanleeuwen@verimatrix.com> wrote:
> > ...
> > > >
> > > > My preference would be to address this by permitting per-request keys
> > > > in the AEAD layer. That way, we can instantiate the transform only
> > > > once, and just invoke it with the appropriate key on the hot path (and
> > > > avoid any per-keypair allocations)
> > > >
> > > This part I do not really understand. Why would you need to allocate a
> > > new transform if you change the key? Why can't you just call setkey()
> > > on the already allocated transform?
> > >
> >
> > Because the single transform will be shared between all users running
> > on different CPUs etc, and so the key should not be part of the TFM
> > state but of the request state.
> >
> So you need a transform per user, such that each user can have his own
> key. But you shouldn't need to reallocate it when the user changes his
> key. I also don't see how the "different CPUs" is relevant here? I can
> share a single key across multiple CPUs here just fine ...
>

We need two transforms per connection, one for each direction. That is
how I currently implemented it, and it seems to me that, if
allocating/freeing those on the same path as where the keypair object
itself is allocated is too costly, I wonder why allocating the keypair
object itself is fine.

But what I am suggesting is to use a single TFM which gets shared by
all the connections, where the key for each operation is provided
per-request. That TFM cannot have a key set, because each user may use
a different key.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
