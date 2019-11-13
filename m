Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B9DFB956
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 21:04:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JVRZfU6hUmq8/2hj8XllOp67f20g6biLYPtZI+BCmI=; b=NhDzK5c2Y/ahr1
	nVeBB4kS1+Rfmo3nteYw3ZfJ4Pls46RZkRdpM3LX6NJSWiwsWKTTe+GG6VqHk9S6ofJflxm8I63aN
	ZShfFSRVJMtDNW19z0atl/pvXUk43pJhRzPiczY5IXBeyjve/0Dm6aGdH8Bt0Ot9byOxxCpvgEl4b
	O4ODAAJft/DzZ5t6hETgsdCtoz11nBDju17Mgx57p71OTPT2Cif6/f7H43F2ecZ2jpoTWOotavjpn
	LAEkaw4v60EJeImsOsxtkWv/DomAgAFUbjwRVjZ24I1819pgMOtEaXwDiAhVwegK1fq8yh2/HRZFQ
	T9FznWaEgWku4x9SDQdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUysQ-0003IZ-22; Wed, 13 Nov 2019 20:04:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUysI-0003I2-Rt
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 20:04:24 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 64D7B206E5;
 Wed, 13 Nov 2019 20:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573675462;
 bh=LZIwwPqo6cGSYYo3omBkRDVFip05Z5LaeW4j2tDTV2g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lhnZFjvlbtfVvcPSF1Xz2bXxwpvSyQKGXcs/DZmH2Yq6Qo5X6zS2xMotyjpkxZx6x
 CBBLyub/I93WCDLJkqQlz+qJKMDdR92ckWE9aeoZS0KU0JuiLO68+Z8tcNS1zd10Pw
 SXhtQGMI7Ad6ZHKdgaQ60mOoZNuf6k6cAqaMMnN4=
Date: Wed, 13 Nov 2019 12:04:20 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] crypto: arm64/sha: fix function types
Message-ID: <20191113200419.GE221701@gmail.com>
Mail-Followup-To: Sami Tolvanen <samitolvanen@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Kees Cook <keescook@chromium.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191112223046.176097-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112223046.176097-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_120422_922273_2002B0E9 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -4.6 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.6 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 02:30:46PM -0800, Sami Tolvanen wrote:
> Declare assembly functions with the expected function type
> instead of casting pointers in C to avoid type mismatch failures
> with Control-Flow Integrity (CFI) checking.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/crypto/sha1-ce-glue.c   | 12 +++++-------
>  arch/arm64/crypto/sha2-ce-glue.c   | 26 +++++++++++---------------
>  arch/arm64/crypto/sha256-glue.c    | 30 ++++++++++++------------------
>  arch/arm64/crypto/sha512-ce-glue.c | 23 ++++++++++-------------
>  arch/arm64/crypto/sha512-glue.c    | 13 +++++--------
>  5 files changed, 43 insertions(+), 61 deletions(-)
> 
> diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
> index bdc1b6d7aff7..3153a9bbb683 100644
> --- a/arch/arm64/crypto/sha1-ce-glue.c
> +++ b/arch/arm64/crypto/sha1-ce-glue.c
> @@ -25,7 +25,7 @@ struct sha1_ce_state {
>  	u32			finalize;
>  };
>  
> -asmlinkage void sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
> +asmlinkage void sha1_ce_transform(struct sha1_state *sst, u8 const *src,
>  				  int blocks);

Please update the comments in the corresponding assembly files too.

Also, this change doesn't really make sense because the assembly functions still
expect struct sha1_ce_state, and they access sha1_ce_state::finalize which is
not present in struct sha1_state.  There should either be wrapper functions that
explicitly do the cast from sha1_state to sha1_ce_state, or there should be
comments in the assembly files that very clearly explain that although the
function prototype takes sha1_state, it's really assumed to be a sha1_ce_state.

Likewise for SHA-256 and SHA-512.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
