Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0417B5042C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:04:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckODyzH59piQhnLZCp+qqxVo041hUksFAAitQ9tyMHc=; b=Y0lQq1avmSABc5
	nk0u1/Rz7KKvxLdPhXlQzqcSSF2sSq/F8YS8Ps+P0DSwtsz21J8Rn5EOLc40O2QkKdkbu3VPm2I/1
	8hRKDm1CFraDMBAl/yIcPY7Vj/djzWYrxFuKTaNodAHHgiSQqiClidTPE9PdJQFWk9nhJXsBuzcya
	96Y+jq1A1KSsyXxYyB0W+3s//cUpi5wFz32J9gOzHBtXTLHykVH9kOl1zIVLiQ/yx/4P4NS3YS0Jv
	qnAVRnLwCVfdY9zzo1Nwku7/ZI5x1yMLQLQrLU2iT1iOu0bLH9+04g2xNRmCd6exZfD6KA7EQAITU
	3PdhvOJfOaM0uoELVTlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJxP-00051Y-ND; Mon, 24 Jun 2019 08:04:07 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJxC-00050s-Uu
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 08:03:56 +0000
Received: by mail-oi1-f195.google.com with SMTP id w196so9070825oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 01:03:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SQdKR3e6P3KOVxSzrChRiQwAOlZnuhWsgTUVY8GuX9M=;
 b=miyFECornaqSCQ6NOXZ5sgP+6ULI8ejdkX6teaS08gBsIbEQ+z+X+7Y1P34HAbPJOT
 q7qsKY0KUD67uKcg20xFWEZDnVsfnf8MEbZi5JnMT3Hbm+qGVehgr7Bzvp1fvC5Hvj+L
 RM7376yIeb+KWFE0CiKkEk4yKsRWFbGILk4Ta6DaZ+nG6QMLWhPxTMbyL1+UiyJXn6+Q
 lChweesQTOMSgY5GX1kx0tk8NghtH/cwGK5WlsG30vfz7JO8uNb5ZMqRoDSo/IhBU7+O
 LdQPasLtyC55oq9PGqwVx7QJFoBQTI6oADUCBovpK4WtKNb3tW4DlfKLbMUiAL/B6IsK
 AJsw==
X-Gm-Message-State: APjAAAXSqejYJ+ozgTK3MGM4GUYsl3ZrYLvYYTMA/vF5E+lzQMkmClRt
 z5IgJ33X8JGxJs0IBnNf7lBmOmbl0UUNw/Hf+C9v6g==
X-Google-Smtp-Source: APXvYqyqYjzo3ta2oUqyYLLNXRW4r3EL7WKEOqDGn111CcsOX3I3TFQcBNBkphIXTXILHk3S4HFm6Zrhaaz+G3dzguU=
X-Received: by 2002:aca:ab13:: with SMTP id u19mr10459881oie.127.1561363433876; 
 Mon, 24 Jun 2019 01:03:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
 <20190624073818.29296-3-ard.biesheuvel@linaro.org>
In-Reply-To: <20190624073818.29296-3-ard.biesheuvel@linaro.org>
From: Ondrej Mosnacek <omosnace@redhat.com>
Date: Mon, 24 Jun 2019 10:03:42 +0200
Message-ID: <CAFqZXNs5fm9eqowmHe--Ygw4qvOXVjYnq0jOQhn5O-4gsD0vgg@mail.gmail.com>
Subject: Re: [PATCH 2/6] crypto: aegis - drop empty TFM init/exit routines
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_010354_999947_D5C67645 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Steve Capper <steve.capper@arm.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Eric Biggers <ebiggers@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 9:38 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
> TFM init/exit routines are optional, so no need to provide empty ones.
>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Reviewed-by: Ondrej Mosnacek <omosnace@redhat.com>

> ---
>  crypto/aegis128.c  | 11 -----------
>  crypto/aegis128l.c | 11 -----------
>  crypto/aegis256.c  | 11 -----------
>  3 files changed, 33 deletions(-)
>
> diff --git a/crypto/aegis128.c b/crypto/aegis128.c
> index 125e11246990..4f8f1cdef129 100644
> --- a/crypto/aegis128.c
> +++ b/crypto/aegis128.c
> @@ -403,22 +403,11 @@ static int crypto_aegis128_decrypt(struct aead_request *req)
>         return crypto_memneq(tag.bytes, zeros, authsize) ? -EBADMSG : 0;
>  }
>
> -static int crypto_aegis128_init_tfm(struct crypto_aead *tfm)
> -{
> -       return 0;
> -}
> -
> -static void crypto_aegis128_exit_tfm(struct crypto_aead *tfm)
> -{
> -}
> -
>  static struct aead_alg crypto_aegis128_alg = {
>         .setkey = crypto_aegis128_setkey,
>         .setauthsize = crypto_aegis128_setauthsize,
>         .encrypt = crypto_aegis128_encrypt,
>         .decrypt = crypto_aegis128_decrypt,
> -       .init = crypto_aegis128_init_tfm,
> -       .exit = crypto_aegis128_exit_tfm,
>
>         .ivsize = AEGIS128_NONCE_SIZE,
>         .maxauthsize = AEGIS128_MAX_AUTH_SIZE,
> diff --git a/crypto/aegis128l.c b/crypto/aegis128l.c
> index 9bca3d619a22..ef5bc2297a2c 100644
> --- a/crypto/aegis128l.c
> +++ b/crypto/aegis128l.c
> @@ -467,22 +467,11 @@ static int crypto_aegis128l_decrypt(struct aead_request *req)
>         return crypto_memneq(tag.bytes, zeros, authsize) ? -EBADMSG : 0;
>  }
>
> -static int crypto_aegis128l_init_tfm(struct crypto_aead *tfm)
> -{
> -       return 0;
> -}
> -
> -static void crypto_aegis128l_exit_tfm(struct crypto_aead *tfm)
> -{
> -}
> -
>  static struct aead_alg crypto_aegis128l_alg = {
>         .setkey = crypto_aegis128l_setkey,
>         .setauthsize = crypto_aegis128l_setauthsize,
>         .encrypt = crypto_aegis128l_encrypt,
>         .decrypt = crypto_aegis128l_decrypt,
> -       .init = crypto_aegis128l_init_tfm,
> -       .exit = crypto_aegis128l_exit_tfm,
>
>         .ivsize = AEGIS128L_NONCE_SIZE,
>         .maxauthsize = AEGIS128L_MAX_AUTH_SIZE,
> diff --git a/crypto/aegis256.c b/crypto/aegis256.c
> index b47fd39595ad..b824ef4d1248 100644
> --- a/crypto/aegis256.c
> +++ b/crypto/aegis256.c
> @@ -418,22 +418,11 @@ static int crypto_aegis256_decrypt(struct aead_request *req)
>         return crypto_memneq(tag.bytes, zeros, authsize) ? -EBADMSG : 0;
>  }
>
> -static int crypto_aegis256_init_tfm(struct crypto_aead *tfm)
> -{
> -       return 0;
> -}
> -
> -static void crypto_aegis256_exit_tfm(struct crypto_aead *tfm)
> -{
> -}
> -
>  static struct aead_alg crypto_aegis256_alg = {
>         .setkey = crypto_aegis256_setkey,
>         .setauthsize = crypto_aegis256_setauthsize,
>         .encrypt = crypto_aegis256_encrypt,
>         .decrypt = crypto_aegis256_decrypt,
> -       .init = crypto_aegis256_init_tfm,
> -       .exit = crypto_aegis256_exit_tfm,
>
>         .ivsize = AEGIS256_NONCE_SIZE,
>         .maxauthsize = AEGIS256_MAX_AUTH_SIZE,
> --
> 2.20.1
>


-- 
Ondrej Mosnacek <omosnace at redhat dot com>
Software Engineer, Security Technologies
Red Hat, Inc.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
