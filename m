Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242BB16A9CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 16:19:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PbSGdY/wu4KEBBmSIwopcMDxM7AE/3vMME23xOnljFQ=; b=CVuRCBWuSUCkcN
	5j16tNa+YtPxO/MOu1od+SfKS70D9ExKeD3sRMv1vFIJTr932X7zvzW2MNREafOQ7eoH8i542hiyd
	HlTnIX8YHRr0arlYZffio7hBmGiMQsRji7NyzNrFDqZX+7AnFq0GoKr365AaKBJlQyI61nMT3X8nK
	ifuFeSHREhAxBGjnnuLsWgFZcM4/QVmvycsK7Ko8JANi4mfSbRyZyb+YfQNCtoEA3mRoFkxX8sabC
	2uOgE/ERANHIcxO7SkSCRJzsaJ7tTjOY3XZA57fKQeeNDmR9Rx3zldw0LDPkHY1xr7GntrS8FgRuT
	sQa0d5DY5MeKgUDKOsNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6FW1-0004eb-6R; Mon, 24 Feb 2020 15:19:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6FVo-0004dD-4G
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 15:19:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id b17so9825010wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 07:19:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p4JyKYMLcjkuhV880m1VVxSJ3o0/QSXYlmmHZLgGbBs=;
 b=UQK3K2Gl/itI8chGjYgrXBownF6wnW9i5V2SNuFZs/dNrGM09ZLSX64aMdnnzAgutA
 oKrfRbKXeF9+zXYd6vTkLgovyaOd/UvfhCcK2jz4u67rgtx3i7C5MF6xQmeeu8mLXw3T
 V/RfAUDa17bi8dtDDSuyWYIJs9Vo3e2Jjxg/tRAMlouup31lB5OU/n0CDDCpeg4bTO//
 RHbtjC8qHrmaa+oZzOgOG39hq5X36XK4oq/suw3ucXjuzlJMRpF88FmRjITsJO82QOZR
 sU7dYEbon/yAkTxssRVtqgRGXVGB13EW77sbti1/nnUn+Xk3rwiIg2iC2ahSTFPqaABV
 JHWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p4JyKYMLcjkuhV880m1VVxSJ3o0/QSXYlmmHZLgGbBs=;
 b=aKg+S+v20wagBkYYiZudkx7yVQmpWOso08qyHy49RLUViJ/M13QS0ZKsQs1EsOkHg5
 Sy76r53LQmJ3q4B+csWLL9r4gpbI1eOB1N3ddVpBVzmR9IDH9l4RRp7UgbIq/hud8/I2
 xo9Bkf6OrfRY3jXvFeR3zfiD3yB9XBDkmBkjtMvZxhjES9HX2spuefXWUQ92i8xYu7M6
 8vZxjdsw37CM6u+e68W7AneaKztPi9t0bQcevt3ILYtgjLx8L+F22QS8tqPZ8Yapkq26
 bPS1shSiPhSiHZOnOhQ8LJdJ9d/PMYTvOhHyUki0dGdAP2sQEcPiBB2uG1++ilLpNSBh
 2krg==
X-Gm-Message-State: APjAAAV4Ba5G2mO6X47NdoIFWZ3lTIm7yHcT26j8mQL6IVcSdxCteRtM
 mrMWjx3x/5DLcOmdVYwkGX+78xbtkUtKsRVVbgVtOw==
X-Google-Smtp-Source: APXvYqyNLkwLtxz573uyNilTmTW64flEKaMcDZCZ2l6skMIlgyJjf9Fo58D2tGc5jJ9ztdftX1d6XORKQphA8ltIw5A=
X-Received: by 2002:a1c:282:: with SMTP id 124mr21977917wmc.62.1582557549834; 
 Mon, 24 Feb 2020 07:19:09 -0800 (PST)
MIME-Version: 1.0
References: <1582555661-25737-1-git-send-email-clabbe@baylibre.com>
In-Reply-To: <1582555661-25737-1-git-send-email-clabbe@baylibre.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 24 Feb 2020 16:18:58 +0100
Message-ID: <CAKv+Gu9qyAov1mrOVH+fWizFk-a-MtbC4a95k21qG2cZaFD0Sg@mail.gmail.com>
Subject: Re: [PATCH v2] crypto: arm64: CE: implement export/import
To: Corentin Labbe <clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_071912_193755_51D32F49 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eric Biggers <ebiggers@kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 at 15:47, Corentin Labbe <clabbe@baylibre.com> wrote:
>
> When an ahash algorithm fallback to another ahash and that fallback is
> shaXXX-CE, doing export/import lead to error like this:
> alg: ahash: sha1-sun8i-ce export() overran state buffer on test vector 0, cfg=\"import/export\"
>
> This is due to the descsize of shaxxx-ce being larger than struct shaxxx_state
> off by an u32.
> For fixing this, let's implement export/import which rip the finalize
> variant instead of using generic export/import.
>
> Fixes: 6ba6c74dfc6b ("arm64/crypto: SHA-224/SHA-256 using ARMv8 Crypto Extensions")
> Fixes: 2c98833a42cd ("arm64/crypto: SHA-1 using ARMv8 Crypto Extensions")
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

> ---
> Changes since v1:
> - memcpy directly &sctx->sst instead of sctx. As suggested by Eric Biggers
>
>  arch/arm64/crypto/sha1-ce-glue.c | 20 ++++++++++++++++++++
>  arch/arm64/crypto/sha2-ce-glue.c | 23 +++++++++++++++++++++++
>  2 files changed, 43 insertions(+)
>
> diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
> index 63c875d3314b..565ef604ca04 100644
> --- a/arch/arm64/crypto/sha1-ce-glue.c
> +++ b/arch/arm64/crypto/sha1-ce-glue.c
> @@ -91,12 +91,32 @@ static int sha1_ce_final(struct shash_desc *desc, u8 *out)
>         return sha1_base_finish(desc, out);
>  }
>
> +static int sha1_ce_export(struct shash_desc *desc, void *out)
> +{
> +       struct sha1_ce_state *sctx = shash_desc_ctx(desc);
> +
> +       memcpy(out, &sctx->sst, sizeof(struct sha1_state));
> +       return 0;
> +}
> +
> +static int sha1_ce_import(struct shash_desc *desc, const void *in)
> +{
> +       struct sha1_ce_state *sctx = shash_desc_ctx(desc);
> +
> +       memcpy(&sctx->sst, in, sizeof(struct sha1_state));
> +       sctx->finalize = 0;
> +       return 0;
> +}
> +
>  static struct shash_alg alg = {
>         .init                   = sha1_base_init,
>         .update                 = sha1_ce_update,
>         .final                  = sha1_ce_final,
>         .finup                  = sha1_ce_finup,
> +       .import                 = sha1_ce_import,
> +       .export                 = sha1_ce_export,
>         .descsize               = sizeof(struct sha1_ce_state),
> +       .statesize              = sizeof(struct sha1_state),
>         .digestsize             = SHA1_DIGEST_SIZE,
>         .base                   = {
>                 .cra_name               = "sha1",
> diff --git a/arch/arm64/crypto/sha2-ce-glue.c b/arch/arm64/crypto/sha2-ce-glue.c
> index a8e67bafba3d..9450d19b9e6e 100644
> --- a/arch/arm64/crypto/sha2-ce-glue.c
> +++ b/arch/arm64/crypto/sha2-ce-glue.c
> @@ -109,12 +109,32 @@ static int sha256_ce_final(struct shash_desc *desc, u8 *out)
>         return sha256_base_finish(desc, out);
>  }
>
> +static int sha256_ce_export(struct shash_desc *desc, void *out)
> +{
> +       struct sha256_ce_state *sctx = shash_desc_ctx(desc);
> +
> +       memcpy(out, &sctx->sst, sizeof(struct sha256_state));
> +       return 0;
> +}
> +
> +static int sha256_ce_import(struct shash_desc *desc, const void *in)
> +{
> +       struct sha256_ce_state *sctx = shash_desc_ctx(desc);
> +
> +       memcpy(&sctx->sst, in, sizeof(struct sha256_state));
> +       sctx->finalize = 0;
> +       return 0;
> +}
> +
>  static struct shash_alg algs[] = { {
>         .init                   = sha224_base_init,
>         .update                 = sha256_ce_update,
>         .final                  = sha256_ce_final,
>         .finup                  = sha256_ce_finup,
> +       .export                 = sha256_ce_export,
> +       .import                 = sha256_ce_import,
>         .descsize               = sizeof(struct sha256_ce_state),
> +       .statesize              = sizeof(struct sha256_state),
>         .digestsize             = SHA224_DIGEST_SIZE,
>         .base                   = {
>                 .cra_name               = "sha224",
> @@ -128,7 +148,10 @@ static struct shash_alg algs[] = { {
>         .update                 = sha256_ce_update,
>         .final                  = sha256_ce_final,
>         .finup                  = sha256_ce_finup,
> +       .export                 = sha256_ce_export,
> +       .import                 = sha256_ce_import,
>         .descsize               = sizeof(struct sha256_ce_state),
> +       .statesize              = sizeof(struct sha256_state),
>         .digestsize             = SHA256_DIGEST_SIZE,
>         .base                   = {
>                 .cra_name               = "sha256",
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
