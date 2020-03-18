Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B41A418A391
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 21:14:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8/7wbHvH7bOCKvGa0nkW/xo42Gc1/EPo1CnYYRJ5d4=; b=sJ2F7LUKOVSQ44
	easrQkXIrDS78qb84zKWf5D8camT6JzsB4+MFjcdvSLkKN/a5/Lv/vUIjk9sjmCyMPgm84GLPoKHW
	1jKmbx4xYpM9U6xLOstjWE6HJuMNKoha8P25BoR7TrSzg+eby1zzCMHz5/tDKQcHCmLzbTZj0JscI
	o1C/kk6pRXcPd31Gfg8UkS+uoPXj4LHsEZztA1225kp2AxE6y0T1BZjQUYY109kcWulL8nzTRGAkM
	YrcBnQ46VzQaols83qClMEmE+sXyIPNua068dHwc6trqbofBqm8Ppidjfb4ww3bJCAT4Euwrku/Ex
	oP2zlKbmeAwl196F2Z+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEf4m-0006tr-PB; Wed, 18 Mar 2020 20:14:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEf4U-0006r4-OM
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 20:13:48 +0000
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08CFD2077A
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 20:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584562426;
 bh=4COnoFw4zZTTnD0icQvz2MrvlZlhqnrg/n8Iz1/EMx4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hG3NmuBEg/VNJF/IzasJRv+KrhKn+chfwwim8Zb9QBC6PEP9RK7WhXO6Ozcvpoajp
 o2uT+sbqXtoNk9wLw4UdvfiYnCrwx6H8PzyQgeaPmwR321fVuj+8CQWqgSHLDO71Kn
 CsyL8chkBDdoLaUByLk+zYQ6P3dQ0+H8ur6eIKAc=
Received: by mail-qk1-f181.google.com with SMTP id f3so41120681qkh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 13:13:45 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3BL9OIHp3D6MzRCfz9tHS3FPrUevh0cnZNMAopNP3vvXwiziUm
 tysIuOAsarH6WJ1qYwSRhOctxM1q+kki3U1K6dM74Q==
X-Google-Smtp-Source: ADFU+vv74xrkhSks5Z1lN+CW1yz6xICk4LN6UCwfLkqXNiod5pEmiZcGPF75Cr+JQKJXgdsr8mOh0nXsoF/xtGiZ/nA=
X-Received: by 2002:a37:634d:: with SMTP id x74mr6249300qkb.254.1584562425124; 
 Wed, 18 Mar 2020 13:13:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200313110258.94A0668C4E@verein.lst.de>
 <20200317221743.GD20788@willie-the-truck>
In-Reply-To: <20200317221743.GD20788@willie-the-truck>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 18 Mar 2020 16:13:33 -0400
X-Gmail-Original-Message-ID: <CAKv+Gu9_gV0aVwa2QG7jgaR71bTz12vs386R9uPjdQTtm0HcUw@mail.gmail.com>
Message-ID: <CAKv+Gu9_gV0aVwa2QG7jgaR71bTz12vs386R9uPjdQTtm0HcUw@mail.gmail.com>
Subject: Re: [Patch][Fix] crypto: arm{,64} neon: memzero_explicit aes-cbc key
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_131346_821148_2EB92E4C 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Torsten Duwe <duwe@lst.de>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Mar 2020 at 18:17, Will Deacon <will@kernel.org> wrote:
>
> [+Ard]
>
> On Fri, Mar 13, 2020 at 12:02:58PM +0100, Torsten Duwe wrote:
> > From: Torsten Duwe <duwe@suse.de>
> >
> > At function exit, do not leave the expanded key in the rk struct
> > which got allocated on the stack.
> >
> > Signed-off-by: Torsten Duwe <duwe@suse.de>
> > ---
> > Another small fix from our FIPS evaluation. I hope you don't mind I merged
> > arm32 and arm64 into one patch -- this is really simple.
> > --- a/arch/arm/crypto/aes-neonbs-glue.c
> > +++ b/arch/arm/crypto/aes-neonbs-glue.c
> > @@ -138,6 +138,7 @@ static int aesbs_cbc_setkey(struct crypto_skcipher *tfm, const u8 *in_key,
> >       kernel_neon_begin();
> >       aesbs_convert_key(ctx->key.rk, rk.key_enc, ctx->key.rounds);
> >       kernel_neon_end();
> > +     memzero_explicit(&rk, sizeof(rk));
> >
> >       return crypto_cipher_setkey(ctx->enc_tfm, in_key, key_len);
> >  }
> > diff --git a/arch/arm64/crypto/aes-neonbs-glue.c b/arch/arm64/crypto/aes-neonbs-glue.c
> > index e3e27349a9fe..c0b980503643 100644
> > --- a/arch/arm64/crypto/aes-neonbs-glue.c
> > +++ b/arch/arm64/crypto/aes-neonbs-glue.c
> > @@ -151,6 +151,7 @@ static int aesbs_cbc_setkey(struct crypto_skcipher *tfm, const u8 *in_key,
> >       kernel_neon_begin();
> >       aesbs_convert_key(ctx->key.rk, rk.key_enc, ctx->key.rounds);
> >       kernel_neon_end();
> > +     memzero_explicit(&rk, sizeof(rk));
> >
> >       return 0;
> >  }
>
> I'm certainly not a crypto person, but this looks sensible to me and I
> couldn't find any other similar stack variable usage under
> arch/arm64/crypto/ at a quick glance.
>
> Acked-by: Will Deacon <will@kernel.org>
>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
