Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E320BE6CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 23:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELuINtgtLGU1EKD1XfZ73cpHus4CwN9oNRgzrf1DiXE=; b=Mr7TPoTyIHfE3i
	iPafqleXNO3n6i8qA/x+mCl5gaIV56YSSThtNwWhd374xgnmV7eRBqr70endw3AbJhvTSKVyK9kZl
	kPPpKh1YDNdwBMobVDZoB0Iy7KPS6UwrMNUrl9Oq3T03TAB1Qv9oaLpwdiYtZI8fgJKXYLq6q3vjd
	rw86Sv2DGpBxbiMirf47LrrVxCu01novoXRslQjtFNll/L7xBqRWeccjALU2Y6HlvbEbuzoyfjinZ
	73X36jHZWvLSz2dhG/ba542yEno3025h9TtDYdkhtraYLaFMnDChTt06eneN8KDxFN0852O9kYnBX
	o3w3DVoe9JOOA870Le2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDEQI-0005ZA-3S; Wed, 25 Sep 2019 21:02:06 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDEQ7-0005Yj-5Z
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 21:01:56 +0000
Received: by mail-lj1-x242.google.com with SMTP id y3so7151933ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 14:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y4WwKMmfBss6jCT8sswdSW8XG9WNLoHbSfuw/zcQnv4=;
 b=XSKk1k0mpU0UMH+Zcok2JKeL1jHtU9jXhTOXZTQLNoPC/tSNq4KHOihGeNblVsloZw
 Tjqp4BgW8O21/Z9FlMga7c8GZcxgjFqu+MgvyTCRXh18WIAGOjsbAeQjSInnJzj0uqdh
 C1lWhBJiJ/IwD3KYacmToe044cXx+wZjlPIXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y4WwKMmfBss6jCT8sswdSW8XG9WNLoHbSfuw/zcQnv4=;
 b=SYQANcCrn6McXu1428ANS2vE+MapPNlePfq4wsucpRkLlaaLCbzFXfrcux8KmsEMi9
 bbrwSV5p8aEeL4fAEtJoWcMY8H1hwiUQ0MoG77eTudGa6tTrzTYAd8e5L6A0Y+VccNk2
 iN9hK+AFSIZ9Etvhpke9vYqTRuJUDyGO1Mb+P+6Zy1eolBAITkxyrkpmjgTSuyBmZFYm
 ynCY52Kw8BB3IKRhUt2w318QRljs7rSKgZmOLMluyPfCQH0kTCe8FYS3CpMog0B8H1QW
 7E5Rg/o9jG9nGLOk3tIPKJx/jgmbqfSVb3xCm7MokI7+I+TNIU94aPBiFPXrZDcPSTP3
 mOdQ==
X-Gm-Message-State: APjAAAUCsSnH37adSgaqz7diIOKPGNCENuTxgy8JgxepipvPOKPG4qg6
 YLnjqXH8xD4HUC4yzbURafjRROotC58=
X-Google-Smtp-Source: APXvYqzPTPEzhrMwRicsqIGaiIOHvUA+QHryyQAxls0QmGr2cY+dcWSw6rgSYejA/4+MYzi+P8nBAg==
X-Received: by 2002:a2e:1bc4:: with SMTP id c65mr202792ljf.130.1569445311454; 
 Wed, 25 Sep 2019 14:01:51 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
 [209.85.208.172])
 by smtp.gmail.com with ESMTPSA id g3sm1497650ljj.59.2019.09.25.14.01.50
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Sep 2019 14:01:50 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id m13so7137066ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 14:01:50 -0700 (PDT)
X-Received: by 2002:a2e:9854:: with SMTP id e20mr218041ljj.72.1569445309746;
 Wed, 25 Sep 2019 14:01:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-12-ard.biesheuvel@linaro.org>
In-Reply-To: <20190925161255.1871-12-ard.biesheuvel@linaro.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 25 Sep 2019 14:01:33 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi8+MHz8xGtx_mUZPBsRT6qkptGW7a_pOrK=SnTRAiecA@mail.gmail.com>
Message-ID: <CAHk-=wi8+MHz8xGtx_mUZPBsRT6qkptGW7a_pOrK=SnTRAiecA@mail.gmail.com>
Subject: Re: [RFC PATCH 11/18] int128: move __uint128_t compiler test to
 Kconfig
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_140155_231308_CDC978C6 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biggers <ebiggers@google.com>, Greg KH <gregkh@linuxfoundation.org>,
 Samuel Neves <sneves@dei.uc.pt>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 9:14 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
>  config ARCH_SUPPORTS_INT128
>         bool
> +       depends on !$(cc-option,-D__SIZEOF_INT128__=0)

Hmm. Does this actually work?

If that "depends on" now ends up being 'n', afaik the people who
_enable_ it just do a

       select ARCH_SUPPORTS_INT128

and now you'll end up with the Kconfig erroring out with

   WARNING: unmet direct dependencies detected for ARCH_SUPPORTS_INT128

and then you end up with CONFIG_ARCH_SUPPORTS_INT128 anyway, instead
of the behavior you _want_ to get, which is to not get that CONFIG
defined at all.

So I heartily agree with your intent, but I don't think that model
works. I think you need to change the cases that currently do

       select ARCH_SUPPORTS_INT128

to instead have that cc-option test.

And take all the above with a pinch of salt. Maybe what you are doing
works, and I am just missing some piece of the puzzle. But I _think_
it's broken, and you didn't test with a compiler that doesn't support
that thing properly.

             Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
