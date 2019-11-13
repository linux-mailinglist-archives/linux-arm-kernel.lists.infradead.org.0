Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5C8FBB9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 23:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mHxKlyryfBzmrHIePb1WNUJlRwiM0I1ksJJl/ku5UlE=; b=PVF1XzIRuGLesA/m6DKddqCUrn
	PBF4F4GNOyRh55VwaDsDl/UeZREnuNuSzsO5fno4LlAda4O4DW98SZKLfL3ioynE3Y822ckCmcjeK
	zsMdm1gOYltoSbMGa3ldS/mTE1O8ybVcFQ54nJyoWAQgXqQ+nOlGO3FBKUTUkI0qVWqyUZbMVHSxy
	wizBJAqWqZSTUnt9IHGW0CrnsamTGhn4L/bf6a9YDAqhNB6jl5Y3mDhQmLwHcw/C0G6MZEGbc/L9b
	JwhH9X3H6D8lDYx16fKeadDSjOlHNrg9rQ66ig+vYWd8u1ldx7ylvnHikEObMH2wMO24uAAkRd1gZ
	2wXaAn1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV181-0005JZ-57; Wed, 13 Nov 2019 22:28:45 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV17u-0005It-Be
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 22:28:39 +0000
Received: by mail-vs1-xe44.google.com with SMTP id c25so2515077vsp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 14:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=df+DaKSym2F9N38LbwQBau3uyVIjwZlwEI4gpy1fPE4=;
 b=dZb5uR28WtYmsIGQUl7x9pIgxS9KCCtdlUs9VoItFY5+c1+CApd8HbmkRUyerPpjHO
 gv+ogesx6Ikklix2lZMfqiwnJqGFYKybH2NcArccBFnXRMyJtTBobVjX2j3X3AvJhFlN
 9AcGprpxGi6mMOsBsVvcl0XYhdP5V2Ruf+wPdwgRvEtHXksnGjqVuioxHg6oX0MAgyGS
 O6e9uN/vo4c/x2u7XiDMhCWfzS4QslstYQYB4fu76AkptLbmn2qqu57heYwEhbMgtPH9
 MQaDP5Jy6GFzLHQIK1QKUN8YLZvx/m59XTd6leHo14UcJ4n880Yi2KQwPbPEAmJFIJfs
 +i5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=df+DaKSym2F9N38LbwQBau3uyVIjwZlwEI4gpy1fPE4=;
 b=Ho9VIv7JpP3+4H31S2bjFcsD2GxmixDpgnS8HAMSDtjAzR5nu09oGfhRQ8hIkSDWbH
 tF0GiZr9q2hxYzfT6HPRJen2nqmiNRMD5s1ScuPnb2xr9QBnRTI5W6sllMbxEgJeXQks
 S0uCO7voiioZn+D9aUsTrqmT10ir27T/TJVzOczDpOQ49dwJE4J0i6pZrQW4YoZby/fm
 Ta+kwN1O3E8q5oZRYmu2ivbmlNg78dbKWS0I5PsGD/HhxbKZnokGRZao7JDuMDXy/l8P
 co8GriOzd3WiZgvFgj5aM+pLe4ffTVLW4t0+eeT2O7hiAbBOvA47M+u8uMIlFgM8oCLB
 fORA==
X-Gm-Message-State: APjAAAWflzH+ctFwGDF7ui5j6lHAKVk/LYZuiJb94gaAL9QGDix417OK
 Ao7BgPdPkpic7lA41pi3iepjOSyM5N8yNoXaNrf1Lg==
X-Google-Smtp-Source: APXvYqxfpgw1bAj534p0frCXIEt+l0yG7RkVd1Sj5Hvf+PUYmwQzQTLAWLYEMRDZVRNouwEoi67rVA5OIosex2sZLnI=
X-Received: by 2002:a67:c58e:: with SMTP id h14mr3590395vsk.104.1573684112019; 
 Wed, 13 Nov 2019 14:28:32 -0800 (PST)
MIME-Version: 1.0
References: <20191112223046.176097-1-samitolvanen@google.com>
 <20191113200419.GE221701@gmail.com>
In-Reply-To: <20191113200419.GE221701@gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Wed, 13 Nov 2019 14:28:20 -0800
Message-ID: <CABCJKudoBHo6rZoGMFproXjmexu16gonVKDPdnq9XDCmO2J2cw@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm64/sha: fix function types
To: Sami Tolvanen <samitolvanen@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Kees Cook <keescook@chromium.org>, 
 linux-crypto <linux-crypto@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_142838_398395_0E4AEDE6 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 12:04 PM Eric Biggers <ebiggers@kernel.org> wrote:
>
> On Tue, Nov 12, 2019 at 02:30:46PM -0800, Sami Tolvanen wrote:
> > Declare assembly functions with the expected function type
> > instead of casting pointers in C to avoid type mismatch failures
> > with Control-Flow Integrity (CFI) checking.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  arch/arm64/crypto/sha1-ce-glue.c   | 12 +++++-------
> >  arch/arm64/crypto/sha2-ce-glue.c   | 26 +++++++++++---------------
> >  arch/arm64/crypto/sha256-glue.c    | 30 ++++++++++++------------------
> >  arch/arm64/crypto/sha512-ce-glue.c | 23 ++++++++++-------------
> >  arch/arm64/crypto/sha512-glue.c    | 13 +++++--------
> >  5 files changed, 43 insertions(+), 61 deletions(-)
> >
> > diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
> > index bdc1b6d7aff7..3153a9bbb683 100644
> > --- a/arch/arm64/crypto/sha1-ce-glue.c
> > +++ b/arch/arm64/crypto/sha1-ce-glue.c
> > @@ -25,7 +25,7 @@ struct sha1_ce_state {
> >       u32                     finalize;
> >  };
> >
> > -asmlinkage void sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
> > +asmlinkage void sha1_ce_transform(struct sha1_state *sst, u8 const *src,
> >                                 int blocks);
>
> Please update the comments in the corresponding assembly files too.
>
> Also, this change doesn't really make sense because the assembly functions still
> expect struct sha1_ce_state, and they access sha1_ce_state::finalize which is
> not present in struct sha1_state.  There should either be wrapper functions that
> explicitly do the cast from sha1_state to sha1_ce_state, or there should be
> comments in the assembly files that very clearly explain that although the
> function prototype takes sha1_state, it's really assumed to be a sha1_ce_state.

Agreed, this needs a comment explaining the type mismatch. I'm also
fine with using wrapper functions and explicitly casting the
parameters instead of changing function declarations. Herbert, Ard,
any preferences?

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
