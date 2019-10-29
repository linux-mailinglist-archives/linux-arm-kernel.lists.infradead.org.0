Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4ADE8320
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 09:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2icsGoQVebFZsnwn7HKJDSIzIapGqYyjjdzvWXq3tY=; b=TIXKwWUL483UCt
	sxjGNtL/qhqydhk1kmQLxLVL3dURLpRjSlMmApT8HZMIdWc8GER4Z9XlL9u16SKARhLo/2t0Lkl9i
	JhSZJteIFN4cpvh5MFBfhqYHFbr27wOy1+2fD5FjTYBn0anOmFgPpf+CGlYlNFi8+EMAxy/icEdZE
	dutZtAlhg9Cby+FrIKTIbofTYPbS5s9tkuVIl0f8AYvyVdPmX9TZv0pmmW9+CfnTw4rl8b4RrG2Qq
	ZNv/TfgPg5v2SRmzXrVoUUMg1jhj13X/imUfjR2nhb/ZnS8owaSUCZcKNbi2q4CZBbgDZAdVRZUz5
	V8ZHbMBoozuBpvHUhkpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPMkr-0001cU-6z; Tue, 29 Oct 2019 08:21:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPMkf-0001by-3S
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 08:21:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id n1so5107009wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 01:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LbGqWabkO+qsmDE6Dovu8KQsQ8ImSSqPf6QwQRVth5s=;
 b=i6xKbxwS8JScMMcfWs747aiWLNwFekNIEHU/F7et809rV0fTf2Z1etP2smdRIclPMa
 lhDElPf8v5ti/cVsD+at74gPj+57ePpHY3fNLUN0gidqm1w/D5T8/11fD7aJaNSIRMGI
 oVZhfCiO0XfG6E8Ht8f7ScI6dapi7d+rOzFagYFrDCEcdijn99gGrGp8bZGVf1UL0JUB
 TqBWqpQkCwC1zPXC6yj50TRQeTxTLqGspPZJeaI8A7ZkyROqnqwLoKnAVEIHL2stqE3B
 o6xh9qilu4XKU/bF8Fj7I36FoMpYauUPR8LgHu7wjhJoe4VGr7qwDm/0wrvw5VhuFFmR
 K/3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LbGqWabkO+qsmDE6Dovu8KQsQ8ImSSqPf6QwQRVth5s=;
 b=iTV8LCw+fOugteTj3MZVgCZn8AQg05vQShf/BadmQK7hNEDianDmQ18t7n7rD6SxDP
 9sbGdYeQaJ3ecC5pUjn9dLZcb1n27ZiabFG6vnG20jUoJ1XLVPQbhXi85q+wPHec4c8+
 76V42Jbp9Nw9NrofkcZbTT873uf+mSPWOXeG108kcdSu6noaRnPl5iE2EWHx+f9eLD+H
 1/DEARfEHkvUQr//4ie8xjahZoLcNdJnUgaSXgb1DaPUbN3UeSTd5QRLQMNxMFFvG1LS
 g8nvRNgyrR0LPA7m1sYzx09/sRWX1zqwvm++MWieEhZbBY33/2D5O9/6ixoESEE4k/jp
 4rYw==
X-Gm-Message-State: APjAAAVw4wOvUxYkGanGzBGYVUb2TEs7FFf6EB1oRXQhU487YQsK46EW
 K/cVW6sc5VA1yI36oCwW3hVwe3e1CcKCVYwWXmor8g==
X-Google-Smtp-Source: APXvYqxq7fhyaYGafFtbCO5SV4r6hSp9ssGtNlWV8f9IBcuiRL8birbPQx/oxQqtKKJJITJiIZPwCyiQWkaM9VdkHCE=
X-Received: by 2002:adf:fd88:: with SMTP id d8mr12239490wrr.200.1572337275488; 
 Tue, 29 Oct 2019 01:21:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191028210559.8289-1-rth@twiddle.net>
 <20191028210559.8289-2-rth@twiddle.net>
In-Reply-To: <20191028210559.8289-2-rth@twiddle.net>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 29 Oct 2019 09:21:03 +0100
Message-ID: <CAKv+Gu9iW341X8FLBedO1Lhr0H-XcA7jDp3bh3nQh7f7N_M0eA@mail.gmail.com>
Subject: Re: [PATCH 1/6] random: Mark CONFIG_ARCH_RANDOM functions __must_check
To: Richard Henderson <richard.henderson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_012117_177567_80786DD3 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
 linux-s390 <linux-s390@vger.kernel.org>, Kees Cook <keescook@chromium.org>,
 the arch/x86 maintainers <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019 at 22:06, Richard Henderson
<richard.henderson@linaro.org> wrote:
>
> We cannot use the pointer output without validating the
> success of the random read.
>
> Signed-off-by: Richard Henderson <rth@twiddle.net>
> ---
> Cc: Kees Cook <keescook@chromium.org>
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: linux-arch@vger.kernel.org
> ---
>  include/linux/random.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/include/linux/random.h b/include/linux/random.h
> index f189c927fdea..84947b489649 100644
> --- a/include/linux/random.h
> +++ b/include/linux/random.h
> @@ -167,11 +167,11 @@ static inline void prandom_seed_state(struct rnd_state *state, u64 seed)
>  #ifdef CONFIG_ARCH_RANDOM
>  # include <asm/archrandom.h>
>  #else
> -static inline bool arch_get_random_long(unsigned long *v)
> +static inline bool __must_check arch_get_random_long(unsigned long *v)
>  {
>         return 0;

For symmetry with the other cleanups, you should probably change these
into 'return false' as well

>  }
> -static inline bool arch_get_random_int(unsigned int *v)
> +static inline bool __must_check arch_get_random_int(unsigned int *v)
>  {
>         return 0;
>  }
> @@ -179,11 +179,11 @@ static inline bool arch_has_random(void)
>  {
>         return 0;
>  }
> -static inline bool arch_get_random_seed_long(unsigned long *v)
> +static inline bool __must_check arch_get_random_seed_long(unsigned long *v)
>  {
>         return 0;
>  }
> -static inline bool arch_get_random_seed_int(unsigned int *v)
> +static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
>  {
>         return 0;
>  }
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
