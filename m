Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94757FC2E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 10:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bE3o1GXlyiyNzwlA0x8gWwj8s7F/rKuiqV0qPsB7a/s=; b=fVry8PQPV99Qo9
	Jq7NRI2uPpQbgQBKzKxPdYZiHUm5YnyrYdTRHuuBNzv+gS+EnlC4mao9OEbeuOm0PxaVnSeB2nyaT
	/0rKcBndjaqY+X+bP+c9sMVx7QN1tO7bfNGfTQNJkHhcZKh6zxic367K/yha0Z9QcHs6nABzkWfdq
	osMY/Cl+qQVK6XQvmt6mUuVPuvLSuCSV6wDAkRKKLI7DQtNzyxwxgnPoRkzgmZzAItiLvqgxMI4/Q
	WVI6oT2uqUWE0bS6r8AYGtqoKXttMU6ot6h2XTVm9egCVppfqu6gl0CYDdc679csfVxUzc1VPogfN
	Ha1WY2kFyPOy1OTTyBYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBgs-0003I7-Jl; Thu, 14 Nov 2019 09:45:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBgj-0003Hc-3k
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 09:45:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id i10so5656153wrs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 01:45:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bhvzp5b+Q4a3/0oVBXiXpioibMrQjz/TpooATE3bWZA=;
 b=FRq3dG1d6Uc9go+BHE9dRYlgxm27TAnBxLKzGjuZ3yaZVQcY47huQPCgrKiEA+vQyZ
 gnkCiCD6RsSG+sOD5K7C88cYC7VTN5SNn/gFYioXG1S7mBIoK55zINU57SmF133BB5SB
 T5IIjsBXNZJwZwmzfSDyKgCR9i9MPBxkZ5EHRkof1ydCBQ3WzaY1ZWS26GU218U7RbZe
 V47xLggJ3QJ7sEzKDBFHTsKxVV9yagwoN4oWqADLFcsYLQQT/sVXb2hXdzOkRPvgCLa/
 Fk9rN4bVSNvqxTpqPpXu4A6yfnxnW1/ywsO5+FW/Payabj6CngpZg/41xWpl0hZeAN6a
 QvLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bhvzp5b+Q4a3/0oVBXiXpioibMrQjz/TpooATE3bWZA=;
 b=sKbLFtiJoNd6qJyoX5WanxSqXxmKhsuGsW3tH4uMFDjZxkBG3GJpQjZtD23mOjJcHf
 186Rgnh3pgn4H7Lvy00FtUboqwjP21UqMt9i3zAzjrjlsCsTcNxkzRa2V4ZwglEEEKPu
 d6tlj5HIYYVCKR5j9Wg2Uh5hdoz0HqKQTnUPNnABRri+5X8B9dkRLzr5lqZ2EvEawxkG
 CkBTgijqNxDAkQtaWBo9wZGzHk6/Jk8/KZDQvaA0Klzw2a2upCq0mzc8uiPIBeoy/S+D
 CbvVswD7ez9gb5rOL6aQ/kdud4p/gWBaRvuK/VurQy5gaKmmSPIxRRGuUNMOvYaLwlN9
 An7A==
X-Gm-Message-State: APjAAAVh45JhaB5OMnUXsjAiOdpzd1Re7iQvB+7gCS5ExAPyQvNKOf7q
 EeBV6y3jvMAclTR+BNJliguAvbN6jxROPG/oZ8q/TQ==
X-Google-Smtp-Source: APXvYqxyGDZLLSdO7iFFPhCbyuFwYfQ2O45xwAZvkApwZrLzKIl7bERQR2BXJZAlRkzAJg02ZY/qIbP0G6b7FHE6kC0=
X-Received: by 2002:adf:f743:: with SMTP id z3mr6981129wrp.200.1573724714881; 
 Thu, 14 Nov 2019 01:45:14 -0800 (PST)
MIME-Version: 1.0
References: <20191112223046.176097-1-samitolvanen@google.com>
 <20191113200419.GE221701@gmail.com>
 <CABCJKudoBHo6rZoGMFproXjmexu16gonVKDPdnq9XDCmO2J2cw@mail.gmail.com>
In-Reply-To: <CABCJKudoBHo6rZoGMFproXjmexu16gonVKDPdnq9XDCmO2J2cw@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 14 Nov 2019 09:45:05 +0000
Message-ID: <CAKv+Gu85PY+A_XxB9DcmcoV8+nAJZGfAc59sj6XnOGyhDedNQA@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm64/sha: fix function types
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_014517_181664_DD2B51B2 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-crypto <linux-crypto@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019 at 22:28, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Wed, Nov 13, 2019 at 12:04 PM Eric Biggers <ebiggers@kernel.org> wrote:
> >
> > On Tue, Nov 12, 2019 at 02:30:46PM -0800, Sami Tolvanen wrote:
> > > Declare assembly functions with the expected function type
> > > instead of casting pointers in C to avoid type mismatch failures
> > > with Control-Flow Integrity (CFI) checking.
> > >
> > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > ---
> > >  arch/arm64/crypto/sha1-ce-glue.c   | 12 +++++-------
> > >  arch/arm64/crypto/sha2-ce-glue.c   | 26 +++++++++++---------------
> > >  arch/arm64/crypto/sha256-glue.c    | 30 ++++++++++++------------------
> > >  arch/arm64/crypto/sha512-ce-glue.c | 23 ++++++++++-------------
> > >  arch/arm64/crypto/sha512-glue.c    | 13 +++++--------
> > >  5 files changed, 43 insertions(+), 61 deletions(-)
> > >
> > > diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
> > > index bdc1b6d7aff7..3153a9bbb683 100644
> > > --- a/arch/arm64/crypto/sha1-ce-glue.c
> > > +++ b/arch/arm64/crypto/sha1-ce-glue.c
> > > @@ -25,7 +25,7 @@ struct sha1_ce_state {
> > >       u32                     finalize;
> > >  };
> > >
> > > -asmlinkage void sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
> > > +asmlinkage void sha1_ce_transform(struct sha1_state *sst, u8 const *src,
> > >                                 int blocks);
> >
> > Please update the comments in the corresponding assembly files too.
> >
> > Also, this change doesn't really make sense because the assembly functions still
> > expect struct sha1_ce_state, and they access sha1_ce_state::finalize which is
> > not present in struct sha1_state.  There should either be wrapper functions that
> > explicitly do the cast from sha1_state to sha1_ce_state, or there should be
> > comments in the assembly files that very clearly explain that although the
> > function prototype takes sha1_state, it's really assumed to be a sha1_ce_state.
>
> Agreed, this needs a comment explaining the type mismatch. I'm also
> fine with using wrapper functions and explicitly casting the
> parameters instead of changing function declarations. Herbert, Ard,
> any preferences?
>

I guess the former would be cleaner, using container_of() rather than
a blind cast to make the code more self-documenting. The extra branch
shouldn't really matter.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
