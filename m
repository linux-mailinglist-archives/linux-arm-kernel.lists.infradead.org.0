Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9770DFDC4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 12:32:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5PNHXVO/vORbM9JxHp/6GYKMNvOY5H9sTnY81Wfduc=; b=c7LzaeVFJ/mdpn
	8euXi6GcKotpqAGYMEND1x1/lyHtIcjbPXG5pFmpuC6OC5PKSFgvul6ZTfvgDmwPFrcUfbFwyk5xX
	huNXYezE0wXtwUex0FGW7OAU0VW9ASHbB+fJJKC/RN4NTqAKUSVkWaDb96qG70FX8tXnesPQKSnTx
	kx7leGXGzWOuQp1PyzY9pBIA4m4o2ZcQWmhH3aEPLPiUsO9TBbvFltH54qbG/JPNcg/N67ZCekaUE
	iPI1Mr5vpr0xw0SSCek8Rg5q3V7Dnu360LUCY8TIAGcoP/oAlMEt4VpWgEtAjV4xZo3Yb5usJ+FWi
	g+75Mr1dQwgiPWd3iBKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZqI-00057E-Rv; Fri, 15 Nov 2019 11:32:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZq5-000564-LD
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 11:32:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id b17so10012177wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 03:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EbyPL8sD3PdrXer26nTPqwpkCln8AicPZfVsETHDNoo=;
 b=EreKvAPhl3BdSzt1q1jtAvfCXgteeYNhfoDR3nGvsBCKDiihmQy3Ov77KZjIOJZbBw
 /BD1IkOax+QUinqoKskaMdMfR1CXWlXUqiV/gA5fjRVAIZzJp9lHe9tzHop84SxuH5Ti
 g4TllEY9mK/H1YQTAoSsBVKCL0pR/iYjZR0z8tRPd8kn9f/tVsgpliL2RhnKtfe71Qo0
 2PGUAooXus9NKW9BXOipEYJ1dHaJJdr6jknxt0YGWuNcMX6Yd2Bv35sVMdu5jqS1z779
 BTxGTDlDSaeeG/aJ1qveztAT8btnh6WE0CDJmkAfE1+eFnqJjfqbgfXcwOQ2sqQhZR+v
 Zt6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EbyPL8sD3PdrXer26nTPqwpkCln8AicPZfVsETHDNoo=;
 b=ETS/mAZPn7vz53J2iiWUGDCYxDWpnnFcpVQPHaR4fbBJ0Jd11p8d57rcweZ0Jb5sFC
 EpT+Ht8n7w2FZLH+fnoWxQalIAGZD2rf4TACF0BaR0lLGvKxp+ifQkrhS+f7aH0K4+P+
 t9WSQJDExipcVe1ePn7xtanLmFF9tgq9UkCYp1c1oLh2FE8/rznyJVuajipCGWpXnXZk
 cdDz+JubZ8/ZtmGXBB+0HKnoK4VkdkoDp5G1T7GBpun8P72Sa9VGvrQ0aA6GuZ/9XNoF
 xGVuwc4KoX2V2EiRUvX2aZ+pEQikYsJiMAxscoWDpjjWIWHA+EhRfOSBBir42mikRT3x
 4GNg==
X-Gm-Message-State: APjAAAW0vANbHlDcBX+q5/vC9S6jTsWYv0Ek/a+aPgu5i+lcQGhxXnQo
 5ihLcftWiWeodUlM6y78I0D30qVTLWnw07Ol8BIt8B+rH6sg0Q==
X-Google-Smtp-Source: APXvYqz+zx5uW0o3xOZmZwmpqV554auqXSNIGVl4LwW5UXuqw3kzGxLKiGLuREvDKKDPlO+Afa6Sad8RF2MppEj2UK4=
X-Received: by 2002:a1c:64d6:: with SMTP id
 y205mr12941215wmb.136.1573817551365; 
 Fri, 15 Nov 2019 03:32:31 -0800 (PST)
MIME-Version: 1.0
References: <20191112223046.176097-1-samitolvanen@google.com>
 <20191114225113.155143-1-samitolvanen@google.com>
In-Reply-To: <20191114225113.155143-1-samitolvanen@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 15 Nov 2019 11:32:23 +0000
Message-ID: <CAKv+Gu98uOZz7ZrG66gQerBq+hmwHmL4ebz5oDL16hxg=Y_YvA@mail.gmail.com>
Subject: Re: [PATCH v2] crypto: arm64/sha: fix function types
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_033233_837988_0B522DCB 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 Nov 2019 at 22:51, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Instead of casting pointers to callback functions, add C wrappers
> to avoid type mismatch failures with Control-Flow Integrity (CFI)
> checking.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/crypto/sha1-ce-glue.c   | 17 +++++++++------
>  arch/arm64/crypto/sha2-ce-glue.c   | 34 ++++++++++++++++++------------
>  arch/arm64/crypto/sha256-glue.c    | 32 +++++++++++++++++-----------
>  arch/arm64/crypto/sha512-ce-glue.c | 26 ++++++++++++-----------
>  arch/arm64/crypto/sha512-glue.c    | 15 ++++++++-----
>  5 files changed, 76 insertions(+), 48 deletions(-)
>
> diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
> index bdc1b6d7aff7..76a951ce2a7b 100644
> --- a/arch/arm64/crypto/sha1-ce-glue.c
> +++ b/arch/arm64/crypto/sha1-ce-glue.c
> @@ -28,6 +28,13 @@ struct sha1_ce_state {
>  asmlinkage void sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
>                                   int blocks);
>
> +static inline void __sha1_ce_transform(struct sha1_state *sst, u8 const *src,
> +                                      int blocks)

Nit: making a function inline when all we ever do is take its address
is rather pointless, so please drop that (below as well)

With that fixed (and assuming that the crypto selftests still pass -
please confirm that you've tried that)

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>


> +{
> +       return sha1_ce_transform(container_of(sst, struct sha1_ce_state, sst),
> +                                src, blocks);
> +}
> +
>  const u32 sha1_ce_offsetof_count = offsetof(struct sha1_ce_state, sst.count);
>  const u32 sha1_ce_offsetof_finalize = offsetof(struct sha1_ce_state, finalize);
>
> @@ -41,8 +48,7 @@ static int sha1_ce_update(struct shash_desc *desc, const u8 *data,
>
>         sctx->finalize = 0;
>         kernel_neon_begin();
> -       sha1_base_do_update(desc, data, len,
> -                           (sha1_block_fn *)sha1_ce_transform);
> +       sha1_base_do_update(desc, data, len, __sha1_ce_transform);
>         kernel_neon_end();
>
>         return 0;
> @@ -64,10 +70,9 @@ static int sha1_ce_finup(struct shash_desc *desc, const u8 *data,
>         sctx->finalize = finalize;
>
>         kernel_neon_begin();
> -       sha1_base_do_update(desc, data, len,
> -                           (sha1_block_fn *)sha1_ce_transform);
> +       sha1_base_do_update(desc, data, len, __sha1_ce_transform);
>         if (!finalize)
> -               sha1_base_do_finalize(desc, (sha1_block_fn *)sha1_ce_transform);
> +               sha1_base_do_finalize(desc, __sha1_ce_transform);
>         kernel_neon_end();
>         return sha1_base_finish(desc, out);
>  }
> @@ -81,7 +86,7 @@ static int sha1_ce_final(struct shash_desc *desc, u8 *out)
>
>         sctx->finalize = 0;
>         kernel_neon_begin();
> -       sha1_base_do_finalize(desc, (sha1_block_fn *)sha1_ce_transform);
> +       sha1_base_do_finalize(desc, __sha1_ce_transform);
>         kernel_neon_end();
>         return sha1_base_finish(desc, out);
>  }
> diff --git a/arch/arm64/crypto/sha2-ce-glue.c b/arch/arm64/crypto/sha2-ce-glue.c
> index 604a01a4ede6..6042555517b0 100644
> --- a/arch/arm64/crypto/sha2-ce-glue.c
> +++ b/arch/arm64/crypto/sha2-ce-glue.c
> @@ -28,6 +28,13 @@ struct sha256_ce_state {
>  asmlinkage void sha2_ce_transform(struct sha256_ce_state *sst, u8 const *src,
>                                   int blocks);
>
> +static inline void __sha2_ce_transform(struct sha256_state *sst, u8 const *src,
> +                                      int blocks)
> +{
> +       return sha2_ce_transform(container_of(sst, struct sha256_ce_state, sst),
> +                                src, blocks);
> +}
> +
>  const u32 sha256_ce_offsetof_count = offsetof(struct sha256_ce_state,
>                                               sst.count);
>  const u32 sha256_ce_offsetof_finalize = offsetof(struct sha256_ce_state,
> @@ -35,6 +42,12 @@ const u32 sha256_ce_offsetof_finalize = offsetof(struct sha256_ce_state,
>
>  asmlinkage void sha256_block_data_order(u32 *digest, u8 const *src, int blocks);
>
> +static inline void __sha256_block_data_order(struct sha256_state *sst,
> +                                            u8 const *src, int blocks)
> +{
> +       return sha256_block_data_order(sst->state, src, blocks);
> +}
> +
>  static int sha256_ce_update(struct shash_desc *desc, const u8 *data,
>                             unsigned int len)
>  {
> @@ -42,12 +55,11 @@ static int sha256_ce_update(struct shash_desc *desc, const u8 *data,
>
>         if (!crypto_simd_usable())
>                 return sha256_base_do_update(desc, data, len,
> -                               (sha256_block_fn *)sha256_block_data_order);
> +                               __sha256_block_data_order);
>
>         sctx->finalize = 0;
>         kernel_neon_begin();
> -       sha256_base_do_update(desc, data, len,
> -                             (sha256_block_fn *)sha2_ce_transform);
> +       sha256_base_do_update(desc, data, len, __sha2_ce_transform);
>         kernel_neon_end();
>
>         return 0;
> @@ -62,9 +74,8 @@ static int sha256_ce_finup(struct shash_desc *desc, const u8 *data,
>         if (!crypto_simd_usable()) {
>                 if (len)
>                         sha256_base_do_update(desc, data, len,
> -                               (sha256_block_fn *)sha256_block_data_order);
> -               sha256_base_do_finalize(desc,
> -                               (sha256_block_fn *)sha256_block_data_order);
> +                               __sha256_block_data_order);
> +               sha256_base_do_finalize(desc, __sha256_block_data_order);
>                 return sha256_base_finish(desc, out);
>         }
>
> @@ -75,11 +86,9 @@ static int sha256_ce_finup(struct shash_desc *desc, const u8 *data,
>         sctx->finalize = finalize;
>
>         kernel_neon_begin();
> -       sha256_base_do_update(desc, data, len,
> -                             (sha256_block_fn *)sha2_ce_transform);
> +       sha256_base_do_update(desc, data, len, __sha2_ce_transform);
>         if (!finalize)
> -               sha256_base_do_finalize(desc,
> -                                       (sha256_block_fn *)sha2_ce_transform);
> +               sha256_base_do_finalize(desc, __sha2_ce_transform);
>         kernel_neon_end();
>         return sha256_base_finish(desc, out);
>  }
> @@ -89,14 +98,13 @@ static int sha256_ce_final(struct shash_desc *desc, u8 *out)
>         struct sha256_ce_state *sctx = shash_desc_ctx(desc);
>
>         if (!crypto_simd_usable()) {
> -               sha256_base_do_finalize(desc,
> -                               (sha256_block_fn *)sha256_block_data_order);
> +               sha256_base_do_finalize(desc, __sha256_block_data_order);
>                 return sha256_base_finish(desc, out);
>         }
>
>         sctx->finalize = 0;
>         kernel_neon_begin();
> -       sha256_base_do_finalize(desc, (sha256_block_fn *)sha2_ce_transform);
> +       sha256_base_do_finalize(desc, __sha2_ce_transform);
>         kernel_neon_end();
>         return sha256_base_finish(desc, out);
>  }
> diff --git a/arch/arm64/crypto/sha256-glue.c b/arch/arm64/crypto/sha256-glue.c
> index e273faca924f..bb0f89382d70 100644
> --- a/arch/arm64/crypto/sha256-glue.c
> +++ b/arch/arm64/crypto/sha256-glue.c
> @@ -27,14 +27,26 @@ asmlinkage void sha256_block_data_order(u32 *digest, const void *data,
>                                         unsigned int num_blks);
>  EXPORT_SYMBOL(sha256_block_data_order);
>
> +static inline void __sha256_block_data_order(struct sha256_state *sst,
> +                                            u8 const *src, int blocks)
> +{
> +       return sha256_block_data_order(sst->state, src, blocks);
> +}
> +
>  asmlinkage void sha256_block_neon(u32 *digest, const void *data,
>                                   unsigned int num_blks);
>
> +static inline void __sha256_block_neon(struct sha256_state *sst,
> +                                      u8 const *src, int blocks)
> +{
> +       return sha256_block_neon(sst->state, src, blocks);
> +}
> +
>  static int crypto_sha256_arm64_update(struct shash_desc *desc, const u8 *data,
>                                       unsigned int len)
>  {
>         return sha256_base_do_update(desc, data, len,
> -                               (sha256_block_fn *)sha256_block_data_order);
> +                                    __sha256_block_data_order);
>  }
>
>  static int crypto_sha256_arm64_finup(struct shash_desc *desc, const u8 *data,
> @@ -42,9 +54,8 @@ static int crypto_sha256_arm64_finup(struct shash_desc *desc, const u8 *data,
>  {
>         if (len)
>                 sha256_base_do_update(desc, data, len,
> -                               (sha256_block_fn *)sha256_block_data_order);
> -       sha256_base_do_finalize(desc,
> -                               (sha256_block_fn *)sha256_block_data_order);
> +                                     __sha256_block_data_order);
> +       sha256_base_do_finalize(desc, __sha256_block_data_order);
>
>         return sha256_base_finish(desc, out);
>  }
> @@ -87,7 +98,7 @@ static int sha256_update_neon(struct shash_desc *desc, const u8 *data,
>
>         if (!crypto_simd_usable())
>                 return sha256_base_do_update(desc, data, len,
> -                               (sha256_block_fn *)sha256_block_data_order);
> +                               __sha256_block_data_order);
>
>         while (len > 0) {
>                 unsigned int chunk = len;
> @@ -103,8 +114,7 @@ static int sha256_update_neon(struct shash_desc *desc, const u8 *data,
>                                 sctx->count % SHA256_BLOCK_SIZE;
>
>                 kernel_neon_begin();
> -               sha256_base_do_update(desc, data, chunk,
> -                                     (sha256_block_fn *)sha256_block_neon);
> +               sha256_base_do_update(desc, data, chunk, __sha256_block_neon);
>                 kernel_neon_end();
>                 data += chunk;
>                 len -= chunk;
> @@ -118,15 +128,13 @@ static int sha256_finup_neon(struct shash_desc *desc, const u8 *data,
>         if (!crypto_simd_usable()) {
>                 if (len)
>                         sha256_base_do_update(desc, data, len,
> -                               (sha256_block_fn *)sha256_block_data_order);
> -               sha256_base_do_finalize(desc,
> -                               (sha256_block_fn *)sha256_block_data_order);
> +                               __sha256_block_data_order);
> +               sha256_base_do_finalize(desc, __sha256_block_data_order);
>         } else {
>                 if (len)
>                         sha256_update_neon(desc, data, len);
>                 kernel_neon_begin();
> -               sha256_base_do_finalize(desc,
> -                               (sha256_block_fn *)sha256_block_neon);
> +               sha256_base_do_finalize(desc, __sha256_block_neon);
>                 kernel_neon_end();
>         }
>         return sha256_base_finish(desc, out);
> diff --git a/arch/arm64/crypto/sha512-ce-glue.c b/arch/arm64/crypto/sha512-ce-glue.c
> index 2369540040aa..076fcae454e0 100644
> --- a/arch/arm64/crypto/sha512-ce-glue.c
> +++ b/arch/arm64/crypto/sha512-ce-glue.c
> @@ -29,16 +29,21 @@ asmlinkage void sha512_ce_transform(struct sha512_state *sst, u8 const *src,
>
>  asmlinkage void sha512_block_data_order(u64 *digest, u8 const *src, int blocks);
>
> +static inline void __sha512_block_data_order(struct sha512_state *sst,
> +                                            u8 const *src, int blocks)
> +{
> +       return sha512_block_data_order(sst->state, src, blocks);
> +}
> +
>  static int sha512_ce_update(struct shash_desc *desc, const u8 *data,
>                             unsigned int len)
>  {
>         if (!crypto_simd_usable())
>                 return sha512_base_do_update(desc, data, len,
> -                               (sha512_block_fn *)sha512_block_data_order);
> +                                            __sha512_block_data_order);
>
>         kernel_neon_begin();
> -       sha512_base_do_update(desc, data, len,
> -                             (sha512_block_fn *)sha512_ce_transform);
> +       sha512_base_do_update(desc, data, len, sha512_ce_transform);
>         kernel_neon_end();
>
>         return 0;
> @@ -50,16 +55,14 @@ static int sha512_ce_finup(struct shash_desc *desc, const u8 *data,
>         if (!crypto_simd_usable()) {
>                 if (len)
>                         sha512_base_do_update(desc, data, len,
> -                               (sha512_block_fn *)sha512_block_data_order);
> -               sha512_base_do_finalize(desc,
> -                               (sha512_block_fn *)sha512_block_data_order);
> +                                             __sha512_block_data_order);
> +               sha512_base_do_finalize(desc, __sha512_block_data_order);
>                 return sha512_base_finish(desc, out);
>         }
>
>         kernel_neon_begin();
> -       sha512_base_do_update(desc, data, len,
> -                             (sha512_block_fn *)sha512_ce_transform);
> -       sha512_base_do_finalize(desc, (sha512_block_fn *)sha512_ce_transform);
> +       sha512_base_do_update(desc, data, len, sha512_ce_transform);
> +       sha512_base_do_finalize(desc, sha512_ce_transform);
>         kernel_neon_end();
>         return sha512_base_finish(desc, out);
>  }
> @@ -67,13 +70,12 @@ static int sha512_ce_finup(struct shash_desc *desc, const u8 *data,
>  static int sha512_ce_final(struct shash_desc *desc, u8 *out)
>  {
>         if (!crypto_simd_usable()) {
> -               sha512_base_do_finalize(desc,
> -                               (sha512_block_fn *)sha512_block_data_order);
> +               sha512_base_do_finalize(desc, __sha512_block_data_order);
>                 return sha512_base_finish(desc, out);
>         }
>
>         kernel_neon_begin();
> -       sha512_base_do_finalize(desc, (sha512_block_fn *)sha512_ce_transform);
> +       sha512_base_do_finalize(desc, sha512_ce_transform);
>         kernel_neon_end();
>         return sha512_base_finish(desc, out);
>  }
> diff --git a/arch/arm64/crypto/sha512-glue.c b/arch/arm64/crypto/sha512-glue.c
> index d915c656e5fe..125aac89c3c4 100644
> --- a/arch/arm64/crypto/sha512-glue.c
> +++ b/arch/arm64/crypto/sha512-glue.c
> @@ -20,15 +20,21 @@ MODULE_LICENSE("GPL v2");
>  MODULE_ALIAS_CRYPTO("sha384");
>  MODULE_ALIAS_CRYPTO("sha512");
>
> -asmlinkage void sha512_block_data_order(u32 *digest, const void *data,
> +asmlinkage void sha512_block_data_order(u64 *digest, const void *data,
>                                         unsigned int num_blks);
>  EXPORT_SYMBOL(sha512_block_data_order);
>
> +static inline void __sha512_block_data_order(struct sha512_state *sst,
> +                                            u8 const *src, int blocks)
> +{
> +       return sha512_block_data_order(sst->state, src, blocks);
> +}
> +
>  static int sha512_update(struct shash_desc *desc, const u8 *data,
>                          unsigned int len)
>  {
>         return sha512_base_do_update(desc, data, len,
> -                       (sha512_block_fn *)sha512_block_data_order);
> +                                    __sha512_block_data_order);
>  }
>
>  static int sha512_finup(struct shash_desc *desc, const u8 *data,
> @@ -36,9 +42,8 @@ static int sha512_finup(struct shash_desc *desc, const u8 *data,
>  {
>         if (len)
>                 sha512_base_do_update(desc, data, len,
> -                       (sha512_block_fn *)sha512_block_data_order);
> -       sha512_base_do_finalize(desc,
> -                       (sha512_block_fn *)sha512_block_data_order);
> +                                     __sha512_block_data_order);
> +       sha512_base_do_finalize(desc, __sha512_block_data_order);
>
>         return sha512_base_finish(desc, out);
>  }
>
> base-commit: 96b95eff4a591dbac582c2590d067e356a18aacb
> --
> 2.24.0.432.g9d3f5f5b63-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
