Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9C311E7D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:12:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdiGrkcgpUMW27yocZ80XanTevlVAX+IlH8sZlZg+G4=; b=cM+BnSX46ADAxb
	OVF4nBl1bimslanil7E5vp6SLkmoYBtHLfdngFLPLwt4QNTDu/PtA69/+SAHlsmMhkX7YNtmu5JZ6
	Reiukj4sojuGXWhPIzNCm9ESzfdq1ettPlfPNi4jS24NRGsfpMk/A6y0v0/LPaKL78/GSJYqeVnAE
	CDHTgD7URLeXNBLWsRJiK3UpVD2n0vsxDtJt0rNIiEvmNs4AatbCIzxJlfIRT0+89ZTWFHoGS/yPk
	pPNFtpGT3QDgDLc1FK1Q6NijuyzJ2l+fe1JYvgSBzkSeqMJ3rMJYEBnRXZpHdwzhVMSWElk3Q9bnB
	RaVIzMGUrZvVGXF8Nalg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnYV-0008Qo-HC; Fri, 13 Dec 2019 16:12:39 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnYK-0008P2-Is
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:12:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id c9so7234862wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SrVo+ZIc/NfSFRgawxAVcQf2YAkFHM22jdPAUHR72UA=;
 b=g4B6xNwWYBi+29SOTVWrsdyi/gow01ov9XktmDorS1/8eYtIPzylUZRy0cRCfWYbAZ
 Mwn6I/i3VQq+DnNHlIBxfJ4r7S5pgX4IHe0T4ZoULYSNFpUZd9Cl/fhRHAWKbRt0jaXQ
 ozHiGzxIhQrHp0Xc+YTrmVV8t1z0O6Fh30roZ9EWynK/fUHxWjrtwq/lEBHmsE8KriB1
 LbUsYlT7hJHQlz5JxmNSeEMi+44S2o8Y05pqtlwF0L8rwha5DLod8h1fx0H0vN46EU26
 rzZ3FhrLI+L6d4EbmNsZk6CRWN01QV3vPqhLgdLsnxhEqUUxEqHb5NgdQDjUi8zZgR7a
 WQRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SrVo+ZIc/NfSFRgawxAVcQf2YAkFHM22jdPAUHR72UA=;
 b=H7r90I8wAJrSvF0bvAnPJOQ1KxDFyX96V1yundHIqt6HyRjev91SpudCaXc0SrsD68
 dLlTI8oxgX5/bBLQ3SS1Q4ms5LSYZojcwNN4IJeBzyn6d2RTqS3csDwXvS4ikae9cyAe
 ig/s7LL0e217ilLpP/eKCByoPZV8jKDCRRqmakv8v91jvT7uC3AQCJqPAdjwOF/y4nIh
 RHa3TMLSz7UDjwwqD0kmeOkHAz2NTdZom+GrP1nYsci4yYbs4yaqDQET5JBJzV9FgCaa
 ahb1gQ+qoscxm30iiC/QiK6rkXhlIr/2P1nerfKdPQGWdkVJDWsuuW/alrCHlPS3dBzv
 NFbw==
X-Gm-Message-State: APjAAAW/aghbzxzJFO5aPJKIQjpHk+NSpm/P6Igou8b7/YGoPvG3eDO+
 9GplkpnLBFv89qvIkGJsA3fmtuk5RUMmiQM7qrHR8g==
X-Google-Smtp-Source: APXvYqxK5IJhD/Op+d93+5Ov25lg6j1e5zUY1ZV+Xa+0NDae0NVxLi4JFbEsAa8izXynyeovdr00Kh/NJ4EY8SHJ9R4=
X-Received: by 2002:adf:cf0a:: with SMTP id o10mr13048391wrj.325.1576253545861; 
 Fri, 13 Dec 2019 08:12:25 -0800 (PST)
MIME-Version: 1.0
References: <20191213154910.32479-1-broonie@kernel.org>
In-Reply-To: <20191213154910.32479-1-broonie@kernel.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 13 Dec 2019 17:12:14 +0100
Message-ID: <CAKv+Gu_V2wAwkRMHh1EaBSQozAAFL3x=MKtmnhY03evEaEKiCQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: crypto: Use modern annotations for assembly
 functions
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_081228_677671_E344A821 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 at 16:49, Mark Brown <broonie@kernel.org> wrote:
>
> In an effort to clarify and simplify the annotation of assembly functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC and also add a new annotation for static functions which previously
> had no ENTRY equivalent. Update the annotations in the crypto code to the
> new macros.
>
> There are a small number of files imported from OpenSSL where the assembly
> is generated using perl programs, these are not currently annotated at all
> and have not been modified.
>
> Signed-off-by: Mark Brown <broonie@kernel.org>

Seems straightforward enough.

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>
> I'm intending to do this for all the rest of the asm too, this is the
> simplest directory and there's no direct interdependencies so starting
> here.
>

It will also go through another tree, so good to keep this separate.


>  arch/arm64/crypto/aes-ce-ccm-core.S   | 16 +++++------
>  arch/arm64/crypto/aes-ce-core.S       | 16 +++++------
>  arch/arm64/crypto/aes-ce.S            |  4 +--
>  arch/arm64/crypto/aes-cipher-core.S   |  8 +++---
>  arch/arm64/crypto/aes-modes.S         | 16 +++++------
>  arch/arm64/crypto/aes-neon.S          |  4 +--
>  arch/arm64/crypto/aes-neonbs-core.S   | 40 +++++++++++++--------------
>  arch/arm64/crypto/chacha-neon-core.S  | 16 +++++------
>  arch/arm64/crypto/crct10dif-ce-core.S | 12 ++++----
>  arch/arm64/crypto/ghash-ce-core.S     |  8 +++---
>  arch/arm64/crypto/nh-neon-core.S      |  4 +--
>  arch/arm64/crypto/sha1-ce-core.S      |  4 +--
>  arch/arm64/crypto/sha2-ce-core.S      |  4 +--
>  arch/arm64/crypto/sha3-ce-core.S      |  4 +--
>  arch/arm64/crypto/sha512-ce-core.S    |  4 +--
>  arch/arm64/crypto/sm3-ce-core.S       |  4 +--
>  arch/arm64/crypto/sm4-ce-core.S       |  4 +--
>  17 files changed, 84 insertions(+), 84 deletions(-)
>
> diff --git a/arch/arm64/crypto/aes-ce-ccm-core.S b/arch/arm64/crypto/aes-ce-ccm-core.S
> index 9add9bbc48d8..99a028e298ed 100644
> --- a/arch/arm64/crypto/aes-ce-ccm-core.S
> +++ b/arch/arm64/crypto/aes-ce-ccm-core.S
> @@ -15,7 +15,7 @@
>          * void ce_aes_ccm_auth_data(u8 mac[], u8 const in[], u32 abytes,
>          *                           u32 *macp, u8 const rk[], u32 rounds);
>          */
> -ENTRY(ce_aes_ccm_auth_data)
> +SYM_FUNC_START(ce_aes_ccm_auth_data)
>         ldr     w8, [x3]                        /* leftover from prev round? */
>         ld1     {v0.16b}, [x0]                  /* load mac */
>         cbz     w8, 1f
> @@ -81,13 +81,13 @@ ENTRY(ce_aes_ccm_auth_data)
>         st1     {v0.16b}, [x0]
>  10:    str     w8, [x3]
>         ret
> -ENDPROC(ce_aes_ccm_auth_data)
> +SYM_FUNC_END(ce_aes_ccm_auth_data)
>
>         /*
>          * void ce_aes_ccm_final(u8 mac[], u8 const ctr[], u8 const rk[],
>          *                       u32 rounds);
>          */
> -ENTRY(ce_aes_ccm_final)
> +SYM_FUNC_START(ce_aes_ccm_final)
>         ld1     {v3.4s}, [x2], #16              /* load first round key */
>         ld1     {v0.16b}, [x0]                  /* load mac */
>         cmp     w3, #12                         /* which key size? */
> @@ -121,7 +121,7 @@ ENTRY(ce_aes_ccm_final)
>         eor     v0.16b, v0.16b, v1.16b          /* en-/decrypt the mac */
>         st1     {v0.16b}, [x0]                  /* store result */
>         ret
> -ENDPROC(ce_aes_ccm_final)
> +SYM_FUNC_END(ce_aes_ccm_final)
>
>         .macro  aes_ccm_do_crypt,enc
>         ldr     x8, [x6, #8]                    /* load lower ctr */
> @@ -212,10 +212,10 @@ CPU_LE(   rev     x8, x8                  )
>          *                         u8 const rk[], u32 rounds, u8 mac[],
>          *                         u8 ctr[]);
>          */
> -ENTRY(ce_aes_ccm_encrypt)
> +SYM_FUNC_START(ce_aes_ccm_encrypt)
>         aes_ccm_do_crypt        1
> -ENDPROC(ce_aes_ccm_encrypt)
> +SYM_FUNC_END(ce_aes_ccm_encrypt)
>
> -ENTRY(ce_aes_ccm_decrypt)
> +SYM_FUNC_START(ce_aes_ccm_decrypt)
>         aes_ccm_do_crypt        0
> -ENDPROC(ce_aes_ccm_decrypt)
> +SYM_FUNC_END(ce_aes_ccm_decrypt)
> diff --git a/arch/arm64/crypto/aes-ce-core.S b/arch/arm64/crypto/aes-ce-core.S
> index 76a30fe4ba8b..e52e13eb8fdb 100644
> --- a/arch/arm64/crypto/aes-ce-core.S
> +++ b/arch/arm64/crypto/aes-ce-core.S
> @@ -8,7 +8,7 @@
>
>         .arch           armv8-a+crypto
>
> -ENTRY(__aes_ce_encrypt)
> +SYM_FUNC_START(__aes_ce_encrypt)
>         sub             w3, w3, #2
>         ld1             {v0.16b}, [x2]
>         ld1             {v1.4s}, [x0], #16
> @@ -34,9 +34,9 @@ ENTRY(__aes_ce_encrypt)
>         eor             v0.16b, v0.16b, v3.16b
>         st1             {v0.16b}, [x1]
>         ret
> -ENDPROC(__aes_ce_encrypt)
> +SYM_FUNC_END(__aes_ce_encrypt)
>
> -ENTRY(__aes_ce_decrypt)
> +SYM_FUNC_START(__aes_ce_decrypt)
>         sub             w3, w3, #2
>         ld1             {v0.16b}, [x2]
>         ld1             {v1.4s}, [x0], #16
> @@ -62,23 +62,23 @@ ENTRY(__aes_ce_decrypt)
>         eor             v0.16b, v0.16b, v3.16b
>         st1             {v0.16b}, [x1]
>         ret
> -ENDPROC(__aes_ce_decrypt)
> +SYM_FUNC_END(__aes_ce_decrypt)
>
>  /*
>   * __aes_ce_sub() - use the aese instruction to perform the AES sbox
>   *                  substitution on each byte in 'input'
>   */
> -ENTRY(__aes_ce_sub)
> +SYM_FUNC_START(__aes_ce_sub)
>         dup             v1.4s, w0
>         movi            v0.16b, #0
>         aese            v0.16b, v1.16b
>         umov            w0, v0.s[0]
>         ret
> -ENDPROC(__aes_ce_sub)
> +SYM_FUNC_END(__aes_ce_sub)
>
> -ENTRY(__aes_ce_invert)
> +SYM_FUNC_START(__aes_ce_invert)
>         ld1             {v0.4s}, [x1]
>         aesimc          v1.16b, v0.16b
>         st1             {v1.4s}, [x0]
>         ret
> -ENDPROC(__aes_ce_invert)
> +SYM_FUNC_END(__aes_ce_invert)
> diff --git a/arch/arm64/crypto/aes-ce.S b/arch/arm64/crypto/aes-ce.S
> index c132c49c89a8..45062553467f 100644
> --- a/arch/arm64/crypto/aes-ce.S
> +++ b/arch/arm64/crypto/aes-ce.S
> @@ -9,8 +9,8 @@
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
>
> -#define AES_ENTRY(func)                ENTRY(ce_ ## func)
> -#define AES_ENDPROC(func)      ENDPROC(ce_ ## func)
> +#define AES_ENTRY(func)                SYM_FUNC_START(ce_ ## func)
> +#define AES_ENDPROC(func)      SYM_FUNC_END(ce_ ## func)
>
>         .arch           armv8-a+crypto
>
> diff --git a/arch/arm64/crypto/aes-cipher-core.S b/arch/arm64/crypto/aes-cipher-core.S
> index 423d0aebc570..c9d6955f8404 100644
> --- a/arch/arm64/crypto/aes-cipher-core.S
> +++ b/arch/arm64/crypto/aes-cipher-core.S
> @@ -122,11 +122,11 @@ CPU_BE(   rev             w7, w7          )
>         ret
>         .endm
>
> -ENTRY(__aes_arm64_encrypt)
> +SYM_FUNC_START(__aes_arm64_encrypt)
>         do_crypt        fround, crypto_ft_tab, crypto_ft_tab + 1, 2
> -ENDPROC(__aes_arm64_encrypt)
> +SYM_FUNC_END(__aes_arm64_encrypt)
>
>         .align          5
> -ENTRY(__aes_arm64_decrypt)
> +SYM_FUNC_START(__aes_arm64_decrypt)
>         do_crypt        iround, crypto_it_tab, crypto_aes_inv_sbox, 0
> -ENDPROC(__aes_arm64_decrypt)
> +SYM_FUNC_END(__aes_arm64_decrypt)
> diff --git a/arch/arm64/crypto/aes-modes.S b/arch/arm64/crypto/aes-modes.S
> index 131618389f1f..8a2faa42b57e 100644
> --- a/arch/arm64/crypto/aes-modes.S
> +++ b/arch/arm64/crypto/aes-modes.S
> @@ -22,26 +22,26 @@
>  #define ST5(x...) x
>  #endif
>
> -aes_encrypt_block4x:
> +SYM_FUNC_START_LOCAL(aes_encrypt_block4x)
>         encrypt_block4x v0, v1, v2, v3, w3, x2, x8, w7
>         ret
> -ENDPROC(aes_encrypt_block4x)
> +SYM_FUNC_END(aes_encrypt_block4x)
>
> -aes_decrypt_block4x:
> +SYM_FUNC_START_LOCAL(aes_decrypt_block4x)
>         decrypt_block4x v0, v1, v2, v3, w3, x2, x8, w7
>         ret
> -ENDPROC(aes_decrypt_block4x)
> +SYM_FUNC_END(aes_decrypt_block4x)
>
>  #if MAX_STRIDE == 5
> -aes_encrypt_block5x:
> +SYM_FUNC_START_LOCAL(aes_encrypt_block5x)
>         encrypt_block5x v0, v1, v2, v3, v4, w3, x2, x8, w7
>         ret
> -ENDPROC(aes_encrypt_block5x)
> +SYM_FUNC_END(aes_encrypt_block5x)
>
> -aes_decrypt_block5x:
> +SYM_FUNC_START_LOCAL(aes_decrypt_block5x)
>         decrypt_block5x v0, v1, v2, v3, v4, w3, x2, x8, w7
>         ret
> -ENDPROC(aes_decrypt_block5x)
> +SYM_FUNC_END(aes_decrypt_block5x)
>  #endif
>
>         /*
> diff --git a/arch/arm64/crypto/aes-neon.S b/arch/arm64/crypto/aes-neon.S
> index 22d9b110cf78..247d34ddaab0 100644
> --- a/arch/arm64/crypto/aes-neon.S
> +++ b/arch/arm64/crypto/aes-neon.S
> @@ -8,8 +8,8 @@
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
>
> -#define AES_ENTRY(func)                ENTRY(neon_ ## func)
> -#define AES_ENDPROC(func)      ENDPROC(neon_ ## func)
> +#define AES_ENTRY(func)                SYM_FUNC_START(neon_ ## func)
> +#define AES_ENDPROC(func)      SYM_FUNC_END(neon_ ## func)
>
>         xtsmask         .req    v7
>         cbciv           .req    v7
> diff --git a/arch/arm64/crypto/aes-neonbs-core.S b/arch/arm64/crypto/aes-neonbs-core.S
> index 65982039fa36..b357164379f6 100644
> --- a/arch/arm64/crypto/aes-neonbs-core.S
> +++ b/arch/arm64/crypto/aes-neonbs-core.S
> @@ -380,7 +380,7 @@ ISRM0:      .octa           0x0306090c00070a0d01040b0e0205080f
>         /*
>          * void aesbs_convert_key(u8 out[], u32 const rk[], int rounds)
>          */
> -ENTRY(aesbs_convert_key)
> +SYM_FUNC_START(aesbs_convert_key)
>         ld1             {v7.4s}, [x1], #16              // load round 0 key
>         ld1             {v17.4s}, [x1], #16             // load round 1 key
>
> @@ -425,10 +425,10 @@ ENTRY(aesbs_convert_key)
>         eor             v17.16b, v17.16b, v7.16b
>         str             q17, [x0]
>         ret
> -ENDPROC(aesbs_convert_key)
> +SYM_FUNC_END(aesbs_convert_key)
>
>         .align          4
> -aesbs_encrypt8:
> +SYM_FUNC_START_LOCAL(aesbs_encrypt8)
>         ldr             q9, [bskey], #16                // round 0 key
>         ldr             q8, M0SR
>         ldr             q24, SR
> @@ -488,10 +488,10 @@ aesbs_encrypt8:
>         eor             v2.16b, v2.16b, v12.16b
>         eor             v5.16b, v5.16b, v12.16b
>         ret
> -ENDPROC(aesbs_encrypt8)
> +SYM_FUNC_END(aesbs_encrypt8)
>
>         .align          4
> -aesbs_decrypt8:
> +SYM_FUNC_START_LOCAL(aesbs_decrypt8)
>         lsl             x9, rounds, #7
>         add             bskey, bskey, x9
>
> @@ -553,7 +553,7 @@ aesbs_decrypt8:
>         eor             v3.16b, v3.16b, v12.16b
>         eor             v5.16b, v5.16b, v12.16b
>         ret
> -ENDPROC(aesbs_decrypt8)
> +SYM_FUNC_END(aesbs_decrypt8)
>
>         /*
>          * aesbs_ecb_encrypt(u8 out[], u8 const in[], u8 const rk[], int rounds,
> @@ -621,21 +621,21 @@ ENDPROC(aesbs_decrypt8)
>         .endm
>
>         .align          4
> -ENTRY(aesbs_ecb_encrypt)
> +SYM_FUNC_START(aesbs_ecb_encrypt)
>         __ecb_crypt     aesbs_encrypt8, v0, v1, v4, v6, v3, v7, v2, v5
> -ENDPROC(aesbs_ecb_encrypt)
> +SYM_FUNC_END(aesbs_ecb_encrypt)
>
>         .align          4
> -ENTRY(aesbs_ecb_decrypt)
> +SYM_FUNC_START(aesbs_ecb_decrypt)
>         __ecb_crypt     aesbs_decrypt8, v0, v1, v6, v4, v2, v7, v3, v5
> -ENDPROC(aesbs_ecb_decrypt)
> +SYM_FUNC_END(aesbs_ecb_decrypt)
>
>         /*
>          * aesbs_cbc_decrypt(u8 out[], u8 const in[], u8 const rk[], int rounds,
>          *                   int blocks, u8 iv[])
>          */
>         .align          4
> -ENTRY(aesbs_cbc_decrypt)
> +SYM_FUNC_START(aesbs_cbc_decrypt)
>         frame_push      6
>
>         mov             x19, x0
> @@ -720,7 +720,7 @@ ENTRY(aesbs_cbc_decrypt)
>
>  2:     frame_pop
>         ret
> -ENDPROC(aesbs_cbc_decrypt)
> +SYM_FUNC_END(aesbs_cbc_decrypt)
>
>         .macro          next_tweak, out, in, const, tmp
>         sshr            \tmp\().2d,  \in\().2d,   #63
> @@ -736,7 +736,7 @@ ENDPROC(aesbs_cbc_decrypt)
>          * aesbs_xts_decrypt(u8 out[], u8 const in[], u8 const rk[], int rounds,
>          *                   int blocks, u8 iv[])
>          */
> -__xts_crypt8:
> +SYM_FUNC_START_LOCAL(__xts_crypt8)
>         mov             x6, #1
>         lsl             x6, x6, x23
>         subs            w23, w23, #8
> @@ -789,7 +789,7 @@ __xts_crypt8:
>  0:     mov             bskey, x21
>         mov             rounds, x22
>         br              x7
> -ENDPROC(__xts_crypt8)
> +SYM_FUNC_END(__xts_crypt8)
>
>         .macro          __xts_crypt, do8, o0, o1, o2, o3, o4, o5, o6, o7
>         frame_push      6, 64
> @@ -854,13 +854,13 @@ ENDPROC(__xts_crypt8)
>         ret
>         .endm
>
> -ENTRY(aesbs_xts_encrypt)
> +SYM_FUNC_START(aesbs_xts_encrypt)
>         __xts_crypt     aesbs_encrypt8, v0, v1, v4, v6, v3, v7, v2, v5
> -ENDPROC(aesbs_xts_encrypt)
> +SYM_FUNC_END(aesbs_xts_encrypt)
>
> -ENTRY(aesbs_xts_decrypt)
> +SYM_FUNC_START(aesbs_xts_decrypt)
>         __xts_crypt     aesbs_decrypt8, v0, v1, v6, v4, v2, v7, v3, v5
> -ENDPROC(aesbs_xts_decrypt)
> +SYM_FUNC_END(aesbs_xts_decrypt)
>
>         .macro          next_ctr, v
>         mov             \v\().d[1], x8
> @@ -874,7 +874,7 @@ ENDPROC(aesbs_xts_decrypt)
>          * aesbs_ctr_encrypt(u8 out[], u8 const in[], u8 const rk[],
>          *                   int rounds, int blocks, u8 iv[], u8 final[])
>          */
> -ENTRY(aesbs_ctr_encrypt)
> +SYM_FUNC_START(aesbs_ctr_encrypt)
>         frame_push      8
>
>         mov             x19, x0
> @@ -1002,4 +1002,4 @@ CPU_LE(   rev             x8, x8          )
>  7:     cbz             x25, 8b
>         st1             {v5.16b}, [x25]
>         b               8b
> -ENDPROC(aesbs_ctr_encrypt)
> +SYM_FUNC_END(aesbs_ctr_encrypt)
> diff --git a/arch/arm64/crypto/chacha-neon-core.S b/arch/arm64/crypto/chacha-neon-core.S
> index 706c4e10e9e2..e90386a7db8e 100644
> --- a/arch/arm64/crypto/chacha-neon-core.S
> +++ b/arch/arm64/crypto/chacha-neon-core.S
> @@ -36,7 +36,7 @@
>   *
>   * Clobbers: w3, x10, v4, v12
>   */
> -chacha_permute:
> +SYM_FUNC_START_LOCAL(chacha_permute)
>
>         adr_l           x10, ROT8
>         ld1             {v12.4s}, [x10]
> @@ -104,9 +104,9 @@ chacha_permute:
>         b.ne            .Ldoubleround
>
>         ret
> -ENDPROC(chacha_permute)
> +SYM_FUNC_END(chacha_permute)
>
> -ENTRY(chacha_block_xor_neon)
> +SYM_FUNC_START(chacha_block_xor_neon)
>         // x0: Input state matrix, s
>         // x1: 1 data block output, o
>         // x2: 1 data block input, i
> @@ -143,9 +143,9 @@ ENTRY(chacha_block_xor_neon)
>
>         ldp             x29, x30, [sp], #16
>         ret
> -ENDPROC(chacha_block_xor_neon)
> +SYM_FUNC_END(chacha_block_xor_neon)
>
> -ENTRY(hchacha_block_neon)
> +SYM_FUNC_START(hchacha_block_neon)
>         // x0: Input state matrix, s
>         // x1: output (8 32-bit words)
>         // w2: nrounds
> @@ -163,7 +163,7 @@ ENTRY(hchacha_block_neon)
>
>         ldp             x29, x30, [sp], #16
>         ret
> -ENDPROC(hchacha_block_neon)
> +SYM_FUNC_END(hchacha_block_neon)
>
>         a0              .req    w12
>         a1              .req    w13
> @@ -183,7 +183,7 @@ ENDPROC(hchacha_block_neon)
>         a15             .req    w28
>
>         .align          6
> -ENTRY(chacha_4block_xor_neon)
> +SYM_FUNC_START(chacha_4block_xor_neon)
>         frame_push      10
>
>         // x0: Input state matrix, s
> @@ -845,7 +845,7 @@ CPU_BE(       rev           a15, a15        )
>         eor             v31.16b, v31.16b, v3.16b
>         st1             {v28.16b-v31.16b}, [x1]
>         b               .Lout
> -ENDPROC(chacha_4block_xor_neon)
> +SYM_FUNC_END(chacha_4block_xor_neon)
>
>         .section        ".rodata", "a", %progbits
>         .align          L1_CACHE_SHIFT
> diff --git a/arch/arm64/crypto/crct10dif-ce-core.S b/arch/arm64/crypto/crct10dif-ce-core.S
> index e545b42e6a46..5a95c2628fbf 100644
> --- a/arch/arm64/crypto/crct10dif-ce-core.S
> +++ b/arch/arm64/crypto/crct10dif-ce-core.S
> @@ -131,7 +131,7 @@
>         tbl             bd4.16b, {\bd\().16b}, perm4.16b
>         .endm
>
> -__pmull_p8_core:
> +SYM_FUNC_START_LOCAL(__pmull_p8_core)
>  .L__pmull_p8_core:
>         ext             t4.8b, ad.8b, ad.8b, #1                 // A1
>         ext             t5.8b, ad.8b, ad.8b, #2                 // A2
> @@ -194,7 +194,7 @@ __pmull_p8_core:
>         eor             t4.16b, t4.16b, t5.16b
>         eor             t6.16b, t6.16b, t3.16b
>         ret
> -ENDPROC(__pmull_p8_core)
> +SYM_FUNC_END(__pmull_p8_core)
>
>         .macro          __pmull_p8, rq, ad, bd, i
>         .ifnc           \bd, fold_consts
> @@ -488,9 +488,9 @@ CPU_LE(     ext             v7.16b, v7.16b, v7.16b, #8      )
>  //
>  // Assumes len >= 16.
>  //
> -ENTRY(crc_t10dif_pmull_p8)
> +SYM_FUNC_START(crc_t10dif_pmull_p8)
>         crc_t10dif_pmull        p8
> -ENDPROC(crc_t10dif_pmull_p8)
> +SYM_FUNC_END(crc_t10dif_pmull_p8)
>
>         .align          5
>  //
> @@ -498,9 +498,9 @@ ENDPROC(crc_t10dif_pmull_p8)
>  //
>  // Assumes len >= 16.
>  //
> -ENTRY(crc_t10dif_pmull_p64)
> +SYM_FUNC_START(crc_t10dif_pmull_p64)
>         crc_t10dif_pmull        p64
> -ENDPROC(crc_t10dif_pmull_p64)
> +SYM_FUNC_END(crc_t10dif_pmull_p64)
>
>         .section        ".rodata", "a"
>         .align          4
> diff --git a/arch/arm64/crypto/ghash-ce-core.S b/arch/arm64/crypto/ghash-ce-core.S
> index a791c4adf8e6..084c6a30b03a 100644
> --- a/arch/arm64/crypto/ghash-ce-core.S
> +++ b/arch/arm64/crypto/ghash-ce-core.S
> @@ -350,13 +350,13 @@ CPU_LE(   rev64           T1.16b, T1.16b  )
>          * void pmull_ghash_update(int blocks, u64 dg[], const char *src,
>          *                         struct ghash_key const *k, const char *head)
>          */
> -ENTRY(pmull_ghash_update_p64)
> +SYM_FUNC_START(pmull_ghash_update_p64)
>         __pmull_ghash   p64
> -ENDPROC(pmull_ghash_update_p64)
> +SYM_FUNC_END(pmull_ghash_update_p64)
>
> -ENTRY(pmull_ghash_update_p8)
> +SYM_FUNC_START(pmull_ghash_update_p8)
>         __pmull_ghash   p8
> -ENDPROC(pmull_ghash_update_p8)
> +SYM_FUNC_END(pmull_ghash_update_p8)
>
>         KS0             .req    v8
>         KS1             .req    v9
> diff --git a/arch/arm64/crypto/nh-neon-core.S b/arch/arm64/crypto/nh-neon-core.S
> index e05570c38de7..51c0a534ef87 100644
> --- a/arch/arm64/crypto/nh-neon-core.S
> +++ b/arch/arm64/crypto/nh-neon-core.S
> @@ -62,7 +62,7 @@
>   *
>   * It's guaranteed that message_len % 16 == 0.
>   */
> -ENTRY(nh_neon)
> +SYM_FUNC_START(nh_neon)
>
>         ld1             {K0.4s,K1.4s}, [KEY], #32
>           movi          PASS0_SUMS.2d, #0
> @@ -100,4 +100,4 @@ ENTRY(nh_neon)
>         addp            T1.2d, PASS2_SUMS.2d, PASS3_SUMS.2d
>         st1             {T0.16b,T1.16b}, [HASH]
>         ret
> -ENDPROC(nh_neon)
> +SYM_FUNC_END(nh_neon)
> diff --git a/arch/arm64/crypto/sha1-ce-core.S b/arch/arm64/crypto/sha1-ce-core.S
> index c2ce1f820706..92d0d2753e81 100644
> --- a/arch/arm64/crypto/sha1-ce-core.S
> +++ b/arch/arm64/crypto/sha1-ce-core.S
> @@ -65,7 +65,7 @@
>          * void sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
>          *                        int blocks)
>          */
> -ENTRY(sha1_ce_transform)
> +SYM_FUNC_START(sha1_ce_transform)
>         frame_push      3
>
>         mov             x19, x0
> @@ -160,4 +160,4 @@ CPU_LE(     rev32           v11.16b, v11.16b        )
>         str             dgb, [x19, #16]
>         frame_pop
>         ret
> -ENDPROC(sha1_ce_transform)
> +SYM_FUNC_END(sha1_ce_transform)
> diff --git a/arch/arm64/crypto/sha2-ce-core.S b/arch/arm64/crypto/sha2-ce-core.S
> index 6f728a419009..3f9d0f326987 100644
> --- a/arch/arm64/crypto/sha2-ce-core.S
> +++ b/arch/arm64/crypto/sha2-ce-core.S
> @@ -75,7 +75,7 @@
>          *                        int blocks)
>          */
>         .text
> -ENTRY(sha2_ce_transform)
> +SYM_FUNC_START(sha2_ce_transform)
>         frame_push      3
>
>         mov             x19, x0
> @@ -166,4 +166,4 @@ CPU_LE(     rev32           v19.16b, v19.16b        )
>  4:     st1             {dgav.4s, dgbv.4s}, [x19]
>         frame_pop
>         ret
> -ENDPROC(sha2_ce_transform)
> +SYM_FUNC_END(sha2_ce_transform)
> diff --git a/arch/arm64/crypto/sha3-ce-core.S b/arch/arm64/crypto/sha3-ce-core.S
> index a7d587fa54f6..1cfb768df350 100644
> --- a/arch/arm64/crypto/sha3-ce-core.S
> +++ b/arch/arm64/crypto/sha3-ce-core.S
> @@ -40,7 +40,7 @@
>          * sha3_ce_transform(u64 *st, const u8 *data, int blocks, int dg_size)
>          */
>         .text
> -ENTRY(sha3_ce_transform)
> +SYM_FUNC_START(sha3_ce_transform)
>         frame_push      4
>
>         mov     x19, x0
> @@ -218,7 +218,7 @@ ENTRY(sha3_ce_transform)
>         st1     {v24.1d}, [x19]
>         frame_pop
>         ret
> -ENDPROC(sha3_ce_transform)
> +SYM_FUNC_END(sha3_ce_transform)
>
>         .section        ".rodata", "a"
>         .align          8
> diff --git a/arch/arm64/crypto/sha512-ce-core.S b/arch/arm64/crypto/sha512-ce-core.S
> index ce65e3abe4f2..cde606c0323e 100644
> --- a/arch/arm64/crypto/sha512-ce-core.S
> +++ b/arch/arm64/crypto/sha512-ce-core.S
> @@ -106,7 +106,7 @@
>          *                        int blocks)
>          */
>         .text
> -ENTRY(sha512_ce_transform)
> +SYM_FUNC_START(sha512_ce_transform)
>         frame_push      3
>
>         mov             x19, x0
> @@ -216,4 +216,4 @@ CPU_LE(     rev64           v19.16b, v19.16b        )
>  3:     st1             {v8.2d-v11.2d}, [x19]
>         frame_pop
>         ret
> -ENDPROC(sha512_ce_transform)
> +SYM_FUNC_END(sha512_ce_transform)
> diff --git a/arch/arm64/crypto/sm3-ce-core.S b/arch/arm64/crypto/sm3-ce-core.S
> index d50d187906cb..ef97d3187cb7 100644
> --- a/arch/arm64/crypto/sm3-ce-core.S
> +++ b/arch/arm64/crypto/sm3-ce-core.S
> @@ -73,7 +73,7 @@
>          *                       int blocks)
>          */
>         .text
> -ENTRY(sm3_ce_transform)
> +SYM_FUNC_START(sm3_ce_transform)
>         /* load state */
>         ld1             {v8.4s-v9.4s}, [x0]
>         rev64           v8.4s, v8.4s
> @@ -131,7 +131,7 @@ CPU_LE(     rev32           v3.16b, v3.16b          )
>         ext             v9.16b, v9.16b, v9.16b, #8
>         st1             {v8.4s-v9.4s}, [x0]
>         ret
> -ENDPROC(sm3_ce_transform)
> +SYM_FUNC_END(sm3_ce_transform)
>
>         .section        ".rodata", "a"
>         .align          3
> diff --git a/arch/arm64/crypto/sm4-ce-core.S b/arch/arm64/crypto/sm4-ce-core.S
> index af3bfbc3f4d4..4ac6cfbc5797 100644
> --- a/arch/arm64/crypto/sm4-ce-core.S
> +++ b/arch/arm64/crypto/sm4-ce-core.S
> @@ -15,7 +15,7 @@
>          * void sm4_ce_do_crypt(const u32 *rk, u32 *out, const u32 *in);
>          */
>         .text
> -ENTRY(sm4_ce_do_crypt)
> +SYM_FUNC_START(sm4_ce_do_crypt)
>         ld1             {v8.4s}, [x2]
>         ld1             {v0.4s-v3.4s}, [x0], #64
>  CPU_LE(        rev32           v8.16b, v8.16b          )
> @@ -33,4 +33,4 @@ CPU_LE(       rev32           v8.16b, v8.16b          )
>  CPU_LE(        rev32           v8.16b, v8.16b          )
>         st1             {v8.4s}, [x1]
>         ret
> -ENDPROC(sm4_ce_do_crypt)
> +SYM_FUNC_END(sm4_ce_do_crypt)
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
