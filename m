Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1BA1E7C7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 14:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9kIHXReWpmHs0C93rO2B1x5b4TmMEtZ0rIStri8Hu8=; b=Yyllo15em2sutw
	jyhMfuCoD3pvnLr+wvlqy45mlo37aH+Jp0A1WSH2SCGzLlPvajIm+vnjuQzZgKhF5sl3ZMd1DePoe
	bhHD1/RhPJeAnybRn+hSd9Phc/IyXo61BZQZasFuud+FdIQINqeyDZcyry5Ratq7DuJjvsskqSrCh
	rdW12TOXn18O2KPQTFiVgetx8VfXPo13GLnrAL9oQC8MAMyjeR2RT30YMd09obWwVLYwtDBzo1ibD
	X7HXr/j63Z60/ccJ+cqb6IVzQ18x8nCLJDP9R7RoZ2GUobcnjDHNJD+1G+jpy6DLvk8Tk53KLG7yY
	mVsDE4mmj9eYJxzSrRdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedgm-00027d-I0; Fri, 29 May 2020 12:00:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedgZ-00026F-DI
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 12:00:28 +0000
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
 [209.85.166.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5EDA20DD4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 12:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590753626;
 bh=bx/0rENky0xYxtckxv/+DIl6VrrnMCAkBaTV2a5azo4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=eJ+NZH20I3Rkp0wHzZL22t35STNLvsmOaQFINjFbXP3gaxH3whA6+G4R/W2jbjdBz
 f68apPn6ou5GxsVPDYoBKE88jIZO3/GBQ78Rh0F09wUYO4T6MUKkkdc4siPnskM5/2
 XIQkwgneXPkDV5/3b63NrKvWWAbzhD29u6nuIJQ4=
Received: by mail-io1-f52.google.com with SMTP id d7so2010410ioq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 05:00:26 -0700 (PDT)
X-Gm-Message-State: AOAM533p05v2bnEMnsvUOHJe+Gl0kxukDEMv7+bAOYZbj+Hh/+SADsYD
 osAVheBJVhgzu4XtB0TGFZzw2sskWPO5pDo/IRg=
X-Google-Smtp-Source: ABdhPJzpX4auNPdZ+cI8NDL1W30V/wsHV1VShKXDqxvwqwVlVUjFyyiZ5t7YFglBVNDADKmcy1z3+W+eAuV2iewsTfQ=
X-Received: by 2002:a05:6602:2dcd:: with SMTP id
 l13mr6215873iow.203.1590753625984; 
 Fri, 29 May 2020 05:00:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200519190211.76855-1-ardb@kernel.org>
 <20200528073349.GA32566@gondor.apana.org.au>
 <CAMj1kXGkvLP1YnDimdLOM6xMXSQKXPKCEBGRCGBRsWKAQR5Stg@mail.gmail.com>
 <20200529080508.GA2880@gondor.apana.org.au>
 <CAMj1kXE43VvEXyYQF=s5HybhF6Wq23wDTrvTfNV9d4fUVZZ8aw@mail.gmail.com>
 <20200529115126.GA3573@gondor.apana.org.au>
In-Reply-To: <20200529115126.GA3573@gondor.apana.org.au>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 29 May 2020 14:00:14 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFFPKWwwSpLnPmNa_Up1syMb7T5STG7Tw8mRuRqSzc9vw@mail.gmail.com>
Message-ID: <CAMj1kXFFPKWwwSpLnPmNa_Up1syMb7T5STG7Tw8mRuRqSzc9vw@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
To: Herbert Xu <herbert@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_050027_472695_D0BC306A 
X-CRM114-Status: GOOD (  17.09  )
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

On Fri, 29 May 2020 at 13:51, Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Fri, May 29, 2020 at 10:20:27AM +0200, Ard Biesheuvel wrote:
> >
> > But many implementation do not return an output IV at all. The only
> > mode that requires it (for the selftests to pass) is CBC.
>
> Most modes can be chained, e.g., CBC, PCBC, OFB, CFB and CTR.
> As it stands algif_skcipher requres all algorithms to support
> chaining.
>

Even if this is the case, it requires that an skcipher implementation
stores an output IV in the buffer that skcipher request's IV field
points to. Currently, we only check whether this is the case for CBC
implementations, and so it is quite likely that lots of h/w
accelerators or arch code don't adhere to this today.


> > For XTS, we would have to carry some metadata around that tells you
> > whether the initial encryption of the IV has occurred or not. In the
>
> You're right, XTS in its current form cannot be chained.  So we
> do need a way to mark that for algif_skcipher.
>
> > CTS case, you need two swap the last two blocks of ciphertext at the
> > very end.
>
> CTS can be easily chained.  You just need to always keep two blocks
> from being processed until you reach the end.
>

This might be feasible for the generic CTS driver wrapping h/w
accelerated CBC. But how is this supposed to work, e.g., for the two
existing h/w implementations of cts(cbc(aes)) that currently ignore
this?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
