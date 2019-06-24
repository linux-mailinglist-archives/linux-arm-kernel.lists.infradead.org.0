Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACEF5044D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=so/UMn2mA04NPJL9pCeUE7i2hKp4sXAbIxT4vMZ2Dp0=; b=fhqLuS/2zXsFGR
	mOeq/DrHGyJlcUMYgICOBEoGMy4HgR8ZFhsXrgspULRaZsVsdfUrMxKz405PJN/2RaAQKwU9ihWun
	3WYcYbYUttTfyO1nsUkJZ9b6KQLBLxZjsALXcfN08dg/Hg05lwDMWx9CJrK8EKHqlxHLEx+vm8TkA
	eou0sn64L5heKAPp4tnkpD8c0VBh7P5Tx5sRggD34XzVA+jZz5ym/kG/4ZtYwWxo+R0pTrhcZK3X+
	wYHUT9+kzx7or2zbvgvevtDsqV89XI8oEKhGjxmauZhhEibwvYWrQdlH4rtkCBfFgEtyG8rguUI7m
	jRKcRqRbvcixExKAhDrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfK6S-0000l3-Ud; Mon, 24 Jun 2019 08:13:28 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfK6F-0000kQ-4g
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 08:13:16 +0000
Received: by mail-ot1-f67.google.com with SMTP id n5so12659515otk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 01:13:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tgtglqVI+yhp3Ca/jYEFLBUnBPDfmJrS3TB1QtUe6wk=;
 b=GRw7Dn6dRTJDDc+/ZW1QrU+kvq0o+clLDoQ3gA1o8n0fJncD5oIYprAr2UDpZ69JLC
 1KMzCUbR2CUIXdXAqV+v+eEBfAlBq0sOxFyW3jGgdUtII3BwaucsKo/+BPtoT58mvWfe
 mY7cDN3BCnicfWMAKtbryqDyJqZljm/1PBumQ9q1g7vufSqK+UfCbZ+TC9VxQN4tAEx+
 ebQawaFnMzJjHkM4aofLw36zQLd+VYnvrz6EQBOKFiHEOMP+gdp8bkXWi64QGflTfjOQ
 uktmZO8jrKxHXGz6VDBOEOYe9Q3YZkG4kWTDHw5Qjl+CTovh7VE+gGnK8VdBxG7FRcP1
 KmPw==
X-Gm-Message-State: APjAAAU4LogDDo1GSICF4MRgNXtgoZ4TJDmGXxGvfFMFedORrz6Huval
 6ON2nq4FZT0Gqday7su78399Hg+DhFieAYjBJ78+pbg+
X-Google-Smtp-Source: APXvYqyjjtHL7kuAGvGg1Taus+PBf+IeqW8IdvXqNYnVch4/4XwsLD4daZcwXJaUEgGgnfnMoQvjq7+bXd0qLS7+4Z4=
X-Received: by 2002:a9d:73cd:: with SMTP id m13mr7847700otk.43.1561363993191; 
 Mon, 24 Jun 2019 01:13:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
 <20190624073818.29296-4-ard.biesheuvel@linaro.org>
In-Reply-To: <20190624073818.29296-4-ard.biesheuvel@linaro.org>
From: Ondrej Mosnacek <omosnace@redhat.com>
Date: Mon, 24 Jun 2019 10:13:02 +0200
Message-ID: <CAFqZXNvC=0pDgo9fAujiun2u79SPettvcTKQVhd=Yzq-NT_q-Q@mail.gmail.com>
Subject: Re: [PATCH 3/6] crypto: aegis - avoid prerotated AES tables
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_011315_202510_577C54A6 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
> The generic AES code provides four sets of lookup tables, where each
> set consists of four tables containing the same 32-bit values, but
> rotated by 0, 8, 16 and 24 bits, respectively. This makes sense for
> CISC architectures such as x86 which support memory operands, but
> for other architectures, the rotates are quite cheap, and using all
> four tables needlessly thrashes the D-cache, and actually hurts rather
> than helps performance.
>
> Since x86 already has its own implementation of AEGIS based on AES-NI
> instructions, let's tweak the generic implementation towards other
> architectures, and avoid the prerotated tables, and perform the
> rotations inline. On ARM Cortex-A53, this results in a ~8% speedup.
>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

I'm not an expert on low-level performance, but the rationale sounds reasonable.

Acked-by: Ondrej Mosnacek <omosnace@redhat.com>

> ---
>  crypto/aegis.h | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
>
> diff --git a/crypto/aegis.h b/crypto/aegis.h
> index 41a3090cda8e..3308066ddde0 100644
> --- a/crypto/aegis.h
> +++ b/crypto/aegis.h
> @@ -10,6 +10,7 @@
>  #define _CRYPTO_AEGIS_H
>
>  #include <crypto/aes.h>
> +#include <linux/bitops.h>
>  #include <linux/types.h>
>
>  #define AEGIS_BLOCK_SIZE 16
> @@ -53,16 +54,13 @@ static void crypto_aegis_aesenc(union aegis_block *dst,
>                                 const union aegis_block *key)
>  {
>         const u8  *s  = src->bytes;
> -       const u32 *t0 = crypto_ft_tab[0];
> -       const u32 *t1 = crypto_ft_tab[1];
> -       const u32 *t2 = crypto_ft_tab[2];
> -       const u32 *t3 = crypto_ft_tab[3];
> +       const u32 *t = crypto_ft_tab[0];
>         u32 d0, d1, d2, d3;
>
> -       d0 = t0[s[ 0]] ^ t1[s[ 5]] ^ t2[s[10]] ^ t3[s[15]];
> -       d1 = t0[s[ 4]] ^ t1[s[ 9]] ^ t2[s[14]] ^ t3[s[ 3]];
> -       d2 = t0[s[ 8]] ^ t1[s[13]] ^ t2[s[ 2]] ^ t3[s[ 7]];
> -       d3 = t0[s[12]] ^ t1[s[ 1]] ^ t2[s[ 6]] ^ t3[s[11]];
> +       d0 = t[s[ 0]] ^ rol32(t[s[ 5]], 8) ^ rol32(t[s[10]], 16) ^ rol32(t[s[15]], 24);
> +       d1 = t[s[ 4]] ^ rol32(t[s[ 9]], 8) ^ rol32(t[s[14]], 16) ^ rol32(t[s[ 3]], 24);
> +       d2 = t[s[ 8]] ^ rol32(t[s[13]], 8) ^ rol32(t[s[ 2]], 16) ^ rol32(t[s[ 7]], 24);
> +       d3 = t[s[12]] ^ rol32(t[s[ 1]], 8) ^ rol32(t[s[ 6]], 16) ^ rol32(t[s[11]], 24);
>
>         dst->words32[0] = cpu_to_le32(d0) ^ key->words32[0];
>         dst->words32[1] = cpu_to_le32(d1) ^ key->words32[1];
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
