Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEE230BDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 11:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+3ZeeksbD6043qgxJ7fuJiHeLzeE+gmw61BZ7b84is=; b=VM5OwvGVIjOhgF
	I3W/gL5WSv9ZF5OtpQ/oHeqT0GWIxf+jnSnj1sJMjbYm/2frRegrN9RcuCPuD/Nuz2MiIC+ZUbkBS
	lCrGdHPRHrLfXjBvqeLqT1jAU0rxtaIuf4ZCZu1osZL2b15qUyFcDuCCYw/35UsLljP0+hOw9kaiS
	SVl6q2UbBXdR8Rax0lq+v9UfqRcj5zfwheiKfzE03bGQrY0BKDDnLMy9ZdJdys7pEjn7uThYvGh8C
	aMLT3X0ylaP6+O3IEZ99ytKFQuwtVJ8R8XNsKiuyiV8l9IST04EW1UoD10DYgd3ias9gO8ORiU1Ti
	+7eHyOVMRaA9eVvzIUiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWe3W-0005iP-RA; Fri, 31 May 2019 09:42:34 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWe3O-0005i3-Kz
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 09:42:27 +0000
Received: by mail-it1-x142.google.com with SMTP id j204so8899485ite.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 02:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HhL4osx7ESpBduYF2Unw1uRF9bT1OgVQDPJAu+S7bbM=;
 b=mqRL7pQSlFTZGtxyeO3wy/9cmrkU/33+hQAmkFIq9NbunOA3bsL30A/mMJHoxDDlnl
 A+3S/kWB6G+hh/IEjY/gpipUAduje+pGUpBEsgmW/toXllExNcw6LZSCKwKeMRNOBvr9
 H4U1lPEbHlGp2CsFaAcMNMKFUbaedBleqJZ5pwVtZWuyHhrBJdMRuRsizplltzvbf1Nr
 SsfP7ah1F857CFixN1g+IDRGRtiBl5tjghOtIS+f1E42g7cv13msnsbSOPLhy9i9wetk
 g7ATnlILwIPVbjDjVPYhr8PVXKhWYJgXlVv7B54pA/gvNu0UaQIQEzSPI0lDnP5di+Ma
 /sfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HhL4osx7ESpBduYF2Unw1uRF9bT1OgVQDPJAu+S7bbM=;
 b=drxM/ppyte5PBpncHgNpfZj6+cssbVhSw5cN/v7sMJgcHf9XVJlCO/mKraRxNTfs6S
 DMThAj/7TEmyPf6Hhtg6nNEoYfwzTLaaXKv6b9mV2k9rL/UUTAVqGXcX8wHSd649xkBA
 ypuLs1H5htmd4Q2HW3v9BWL3MipRxhGUG5rkGVNhByrHC0uXPePApvahhzh7DQsi8pSL
 Npkdw3yNwL2UqSHDJWwHrTta1gVfuGQcDgmVpm1zbjMYjTW6CBMiQu0a9Bq6aLrl1/J9
 wUaalZNBRIQN3txQ/NHJ3dKPsC9NtYqPzzd2L4waVnMMY+oEwU8wm2ASJr+YPCRKJnag
 t4mQ==
X-Gm-Message-State: APjAAAX/gNNzVtlI+Apisr0VlR3n/YZPQIl23x+ql0qx9lkeX+fTHvd8
 hnX2nwuT29R7YjPY1Aej4N8el40a5br5hw8hW/g=
X-Google-Smtp-Source: APXvYqwkiJMj34/oANfH3YW9bzF/NQr+5I6NBsmtVf0A0U7Jfn7/2fd88CsHM5mvSyEBPrLAmzwQFYu8LP3gfpzWYaw=
X-Received: by 2002:a24:b8c2:: with SMTP id m185mr6253209ite.0.1559295744959; 
 Fri, 31 May 2019 02:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190530175039.195574-1-ebiggers@kernel.org>
In-Reply-To: <20190530175039.195574-1-ebiggers@kernel.org>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Fri, 31 May 2019 10:42:13 +0100
Message-ID: <CALeDE9PL0q7wGj6rJO03fzJZ4m5dnkLxvu4xgMhG0dNKWxxW2A@mail.gmail.com>
Subject: Re: [PATCH] crypto: ghash - fix unaligned memory access in
 ghash_setkey()
To: Eric Biggers <ebiggers@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_024226_709684_122D8A55 
X-CRM114-Status: GOOD (  20.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pbrobinson[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stable@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 6:51 PM Eric Biggers <ebiggers@kernel.org> wrote:
>
> From: Eric Biggers <ebiggers@google.com>
>
> Changing ghash_mod_init() to be subsys_initcall made it start running
> before the alignment fault handler has been installed on ARM.  In kernel
> builds where the keys in the ghash test vectors happened to be
> misaligned in the kernel image, this exposed the longstanding bug that
> ghash_setkey() is incorrectly casting the key buffer (which can have any
> alignment) to be128 for passing to gf128mul_init_4k_lle().
>
> Fix this by memcpy()ing the key to a temporary buffer.
>
> Don't fix it by setting an alignmask on the algorithm instead because
> that would unnecessarily force alignment of the data too.
>
> Fixes: 2cdc6899a88e ("crypto: ghash - Add GHASH digest algorithm for GCM")
> Reported-by: Peter Robinson <pbrobinson@gmail.com>
Tested-by: Peter Robinson <pbrobinson@gmail.com>

That fixes the problems I was seeing, thanks for the quick response/fix.

Peter

> Cc: stable@vger.kernel.org
> Signed-off-by: Eric Biggers <ebiggers@google.com>
> ---
>  crypto/ghash-generic.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/crypto/ghash-generic.c b/crypto/ghash-generic.c
> index e6307935413c1..c8a347798eae6 100644
> --- a/crypto/ghash-generic.c
> +++ b/crypto/ghash-generic.c
> @@ -34,6 +34,7 @@ static int ghash_setkey(struct crypto_shash *tfm,
>                         const u8 *key, unsigned int keylen)
>  {
>         struct ghash_ctx *ctx = crypto_shash_ctx(tfm);
> +       be128 k;
>
>         if (keylen != GHASH_BLOCK_SIZE) {
>                 crypto_shash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
> @@ -42,7 +43,12 @@ static int ghash_setkey(struct crypto_shash *tfm,
>
>         if (ctx->gf128)
>                 gf128mul_free_4k(ctx->gf128);
> -       ctx->gf128 = gf128mul_init_4k_lle((be128 *)key);
> +
> +       BUILD_BUG_ON(sizeof(k) != GHASH_BLOCK_SIZE);
> +       memcpy(&k, key, GHASH_BLOCK_SIZE); /* avoid violating alignment rules */
> +       ctx->gf128 = gf128mul_init_4k_lle(&k);
> +       memzero_explicit(&k, GHASH_BLOCK_SIZE);
> +
>         if (!ctx->gf128)
>                 return -ENOMEM;
>
> --
> 2.22.0.rc1.257.g3120a18244-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
