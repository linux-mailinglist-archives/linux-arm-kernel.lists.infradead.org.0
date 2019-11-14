Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 770CFFCD50
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 19:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6xtntQxBc6k0Yz6uMdHEczU7+lFAmoBNpQkVTVm0mM=; b=M0uoCit4R609he
	6H+Y3vmA6b396NX7Jtt7zgBFtsF2BXRGRy/GzmV9GERLVpsrY4poLMbqG44miISVguWMmEsnRRJ1U
	22rbvQD060yYbf2unx8XkoP49NkKmuVnrFk1ULRnf103aXztgeBr8E825GBB0+8bYg33ugMFcb9q4
	+7ZbGU08p5y0o7QH9o5Wwvi0z4WrD2rj2w3kpGYIu6Bdcius4Il8/wBb9WGv8GLGNo+S78jeoB0uX
	IhIKR42bqUF2vLVjbCMpEewZoSePHxU+51ZFMpQrHUodEWr3RHI3syO2VuCO0LMCriPY5bY+gdi8L
	krneppELOe+qxVJhs14A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJkw-0006nd-NL; Thu, 14 Nov 2019 18:22:10 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJkm-0006ms-Or
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 18:22:02 +0000
Received: by mail-vk1-xa42.google.com with SMTP id d10so1720103vke.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 10:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+VmC0KbxXRLmjlMOB0/4aEHZOiDqNhhGvntSX5Ejh5I=;
 b=i3GWEGWzJoezpcuBDQQnlQIoJ+Rv+jSVSok9hmyrDnxtqt29OyhbbtJA/BshvyJ0A+
 xQHroDFiea8vnXV5pDykoN5dMiwmOr370jtxqYTkPulHU2uPmqNHn0Y0bdT1r0ZVnBlS
 T2AFQQUWhBYmf3HiqpDxsDJm1TuozHGfYl4zVe0KbiR+t0ApNOPZj9V3Hd1sjCaoALiv
 fUjmMBfQfH9Jl5MFqHJ1TgDLqhpp+zuhMmjfygnYWexjSfBGhw3XIu0vyYBE5DxvRUkX
 1zUvQ9EidQToL3IbY2wUfRHA6WTAYCPlNFGfIhivzPV2RhF/5o/FJbT9aGP4HQrS+dCV
 5gJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+VmC0KbxXRLmjlMOB0/4aEHZOiDqNhhGvntSX5Ejh5I=;
 b=cxofcXR9EZhjAEck3uxkB23D7lbRhw7rg8na4XMiSw6UxQU4MIUjoE1eXx+206N56M
 VAOQFyh5h5IdK1iayFyqhs8G/hPZGheSyCdbC1SG3/lFoI5N7rYwn0IRsQGsKqktWHAJ
 HvjY8pEIU4t8NROtutYtOwUFNSHZd+9kNguCVHStRa/0Hp3GVDOFD0mIyuzdd5CLGPBt
 j6C92iA+tp2Ec3WSM8nMi2cltZ1C3PVNDh1LS5vk5gzSUIq+TGRhf024gT/DnsyH/61Z
 RRrmIRsBPj247kO6Xq9klNvSK1pDWXyVADsKBPSgvrcSwUfXF/zOfQfMPbDc5Kcy83SF
 H0gg==
X-Gm-Message-State: APjAAAWB5LLl/y9auyWgk8ng0p9VE9JOe1kUZ36fDlDQh8zqYSo6PWWV
 zYmshlr2zuz2GtFCCAedGLTd9OnrpMlE9e0jtFI8Vw==
X-Google-Smtp-Source: APXvYqw2NIH+2yA3HN+TDprRqlq2TcrmfjkaRKWSAwLb7M4Vw9kp9ssltTe9lpDGejjqT6dY+zc0U+thx75uMkNYkNc=
X-Received: by 2002:a1f:7d88:: with SMTP id y130mr6044142vkc.71.1573755717967; 
 Thu, 14 Nov 2019 10:21:57 -0800 (PST)
MIME-Version: 1.0
References: <20191112223046.176097-1-samitolvanen@google.com>
 <20191113200419.GE221701@gmail.com>
 <CABCJKudoBHo6rZoGMFproXjmexu16gonVKDPdnq9XDCmO2J2cw@mail.gmail.com>
 <CAKv+Gu85PY+A_XxB9DcmcoV8+nAJZGfAc59sj6XnOGyhDedNQA@mail.gmail.com>
In-Reply-To: <CAKv+Gu85PY+A_XxB9DcmcoV8+nAJZGfAc59sj6XnOGyhDedNQA@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Thu, 14 Nov 2019 10:21:46 -0800
Message-ID: <CABCJKudGdwmshFynZQZsPg4JJ+Yu0-GNp+aEjXdJAwu6zU5vtw@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm64/sha: fix function types
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_102200_832974_43484FB9 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-crypto <linux-crypto@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 1:45 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Wed, 13 Nov 2019 at 22:28, Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Wed, Nov 13, 2019 at 12:04 PM Eric Biggers <ebiggers@kernel.org> wrote:
> > >
> > > On Tue, Nov 12, 2019 at 02:30:46PM -0800, Sami Tolvanen wrote:
> > > > Declare assembly functions with the expected function type
> > > > instead of casting pointers in C to avoid type mismatch failures
> > > > with Control-Flow Integrity (CFI) checking.
> > > >
> > > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > > ---
> > > >  arch/arm64/crypto/sha1-ce-glue.c   | 12 +++++-------
> > > >  arch/arm64/crypto/sha2-ce-glue.c   | 26 +++++++++++---------------
> > > >  arch/arm64/crypto/sha256-glue.c    | 30 ++++++++++++------------------
> > > >  arch/arm64/crypto/sha512-ce-glue.c | 23 ++++++++++-------------
> > > >  arch/arm64/crypto/sha512-glue.c    | 13 +++++--------
> > > >  5 files changed, 43 insertions(+), 61 deletions(-)
> > > >
> > > > diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
> > > > index bdc1b6d7aff7..3153a9bbb683 100644
> > > > --- a/arch/arm64/crypto/sha1-ce-glue.c
> > > > +++ b/arch/arm64/crypto/sha1-ce-glue.c
> > > > @@ -25,7 +25,7 @@ struct sha1_ce_state {
> > > >       u32                     finalize;
> > > >  };
> > > >
> > > > -asmlinkage void sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
> > > > +asmlinkage void sha1_ce_transform(struct sha1_state *sst, u8 const *src,
> > > >                                 int blocks);
> > >
> > > Please update the comments in the corresponding assembly files too.
> > >
> > > Also, this change doesn't really make sense because the assembly functions still
> > > expect struct sha1_ce_state, and they access sha1_ce_state::finalize which is
> > > not present in struct sha1_state.  There should either be wrapper functions that
> > > explicitly do the cast from sha1_state to sha1_ce_state, or there should be
> > > comments in the assembly files that very clearly explain that although the
> > > function prototype takes sha1_state, it's really assumed to be a sha1_ce_state.
> >
> > Agreed, this needs a comment explaining the type mismatch. I'm also
> > fine with using wrapper functions and explicitly casting the
> > parameters instead of changing function declarations. Herbert, Ard,
> > any preferences?
> >
>
> I guess the former would be cleaner, using container_of() rather than
> a blind cast to make the code more self-documenting. The extra branch
> shouldn't really matter.

Sure, using container_of() sounds like a better option, I'll use that
in v2. Thanks!

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
