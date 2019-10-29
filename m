Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C84E8323
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 09:22:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f59l0mIfadtow9Ai6GOJ1Nwv2S+am13hSc7LK/Yesys=; b=ozZmNaQ7TEXmie
	kdcwVNjaMVF0p8FzpLlxShL04rZPBre2q1aLpHmhCo8BAaeh+ISfw3nd5xJO7ndkK74D08OvRwgGe
	iOBjkHVG9U7lld/yWBBssub/nedJN1f27b2L0OCKAc8Yfbx8QgYCI1DjUPAKoAsdKGGtQ71a8Gudg
	5BE/rCxCM+ls4+i/9+ugHDcpiXsJhvl7nhqITgZGgg3n4vSLaLOw80umOOnnd1TY2MM4EamLhfW4H
	+CennH2iwJjY5NTsBdHdR0x3wLmse6WNJjVOmCIuUQFfQjRFLn+I9BD0DlLAz1vKyXPSpWjNnUSGw
	cQrTCwQrlfjPbQgMLDLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMm1-000218-Ow; Tue, 29 Oct 2019 08:22:41 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMlp-00020P-Ow
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 08:22:31 +0000
Received: by mail-wr1-x444.google.com with SMTP id o28so12571943wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 01:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dc5k5cS+lEX1SYr8UJULwUVDCp6mopnMnZfWYmGBCQo=;
 b=A4gHFXApxerLrfS/58BvoK//1y1mARGLUGD1wXl13PVjUkYphztL0q3I9iFgWYQGSP
 zrEjaLHDqHIsSXVnDwW8dI4GZmEfCJOKudCdIPzQM1Nh4qb0xIbNAD/naX5+pVK+5ZEn
 ZXPjBDwmR6IOqN/inZwk3UH0Oxo/+KGG01hKggDCr/5OJeRlACGTwthTragNkLJVR9qW
 P6U4Y7tpOEeAd0WTdtbAh7gk2izzk+2OniLv0UhtkKnHilz5Dr/h4WMeOHHcWLu8okVB
 t8YoEOrcTUon7n2Yeb8VbwLXLy64SbWNSYyOYE8zsamK8Fh85H/tugKYuE7BDTW3e8A9
 H3sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dc5k5cS+lEX1SYr8UJULwUVDCp6mopnMnZfWYmGBCQo=;
 b=WQVvcjk0XEQ0JQ4vUABBxjONggAMJgQ0blhQDpoeO4+XfpKxeCoe0qy2Z7V0VxNSWs
 PztgIrkbzyapHZT+prOHZQjA857Z1fAzxfKwIsrYcRWss6uz7yjtawWRukU5Bv2b8sz0
 UMiGCP7S0mHH33Wb/5tY3QHl0PcbSVAAtrIbdzLSsfQj/nBTIP6tRTiNOOLYsP6tUwY5
 gcA50jRUGRXGHAHqsd7/Sc3Sw1uUfwUVFvYe+UzFxo3YQOZW9SvHuut5K1EBe7zsGcmx
 NAJ6saVW5pz/f8svol0nOGUAWlHie43O/cqze/YYeMoUuc0rEfGMG7DiOyaIqkXkQPBz
 gLQQ==
X-Gm-Message-State: APjAAAUAhBMO8ntYIRc+5N+tp5Fx5lJaRldQzquqDxxzyzw25TRKyMWS
 27N+MfsDSdxpzGVrHkiF1EmzK7fF1bQBVQnMF9J+mQ==
X-Google-Smtp-Source: APXvYqwN10D6LbfAXatOlZBrdKFI55fFKfkyB9LhxhsiVOFM0KEsohYgu7zOVPU91eDRAYF9dPJl1fNLY1QpmxWEcrI=
X-Received: by 2002:adf:f685:: with SMTP id v5mr19497461wrp.246.1572337348180; 
 Tue, 29 Oct 2019 01:22:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191028210559.8289-1-rth@twiddle.net>
In-Reply-To: <20191028210559.8289-1-rth@twiddle.net>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 29 Oct 2019 09:22:16 +0100
Message-ID: <CAKv+Gu-mnyKK_0s7fF_8C0aq1ur+RoHscVwTfd31quEVqZhefw@mail.gmail.com>
Subject: Re: [PATCH 0/6] Improvements for random.h/archrandom.h
To: Richard Henderson <richard.henderson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_012229_812471_E9DA107E 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019 at 22:06, Richard Henderson
<richard.henderson@linaro.org> wrote:
>
> During patch review for an addition of archrandom.h for arm64,
> it was suggeted that the arch_random_get_* functions should be
> marked __must_check.  Which does sound like a good idea, since
> the by-reference integer output may be uninitialized when the
> boolean result is false.
>
> In addition, I noticed a few other minor inconsistencies between
> the different architectures: x86 defines some functional macros
> outside CONFIG_ARCH_RANDOM, and powerpc isn't using bool.
>
>
> r~
>
>
> Richard Henderson (6):
>   random: Mark CONFIG_ARCH_RANDOM functions __must_check
>   x86: Move arch_has_random* inside CONFIG_ARCH_RANDOM
>   x86: Mark archrandom.h functions __must_check
>   powerpc: Use bool in archrandom.h
>   powerpc: Mark archrandom.h functions __must_check
>   s390x: Mark archrandom.h functions __must_check
>

Modulo the nit in reply to 1/6:

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>


>  arch/powerpc/include/asm/archrandom.h | 24 +++++++++++++-----------
>  arch/s390/include/asm/archrandom.h    |  8 ++++----
>  arch/x86/include/asm/archrandom.h     | 24 ++++++++++++------------
>  include/linux/random.h                |  8 ++++----
>  4 files changed, 33 insertions(+), 31 deletions(-)
>
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
