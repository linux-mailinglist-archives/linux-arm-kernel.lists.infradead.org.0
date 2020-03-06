Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B218417B3F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 02:49:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOkatM24wOKUNUFP+4V9YrlMUGDilMeaS092ZTkc7fs=; b=lAE3uz6y8WWdrn
	M1hYrRlab58c3y/R9/iC5Fzf5cf0XjzUWW0N1Bl+0tpFrl/YqTEMkNzTgyKVUOc61mxQEXWD1CbFS
	2BKnWwT1opTJcwWQUP/PT7acppRoZNZe/jcmdfHUw+/9Rb197iiSoZFgMnzmAStW42MPJErgNeiPR
	h9hLlJeqHVWxQLhVTFevvi0x8nxD7UAQN/zm31TDDWxaV4kwFaCAgI4hCtUTBUrWQuRxUKgFOI4iU
	NFW+L4GWYsBm3mwGtUv6jwmDEcN68kJv47TuYtpSFjHHKdnHRDoYTVjOvuA9UcE1bLd/OFXXAltCZ
	iKsqynXOWfNNRpzmTD7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA27B-0005mZ-Be; Fri, 06 Mar 2020 01:49:25 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA26p-0005eb-AK
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 01:49:05 +0000
Received: from gwarestrin.me.apana.org.au ([192.168.0.7]
 helo=gwarestrin.arnor.me.apana.org.au)
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1jA26D-0005ix-9t; Fri, 06 Mar 2020 12:48:26 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 06 Mar 2020 12:48:25 +1100
Date: Fri, 6 Mar 2020 12:48:25 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v2] crypto: arm64: CE: implement export/import
Message-ID: <20200306014825.GB30653@gondor.apana.org.au>
References: <1582555661-25737-1-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582555661-25737-1-git-send-email-clabbe@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_174903_639650_C1A30AEC 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, ebiggers@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 02:47:41PM +0000, Corentin Labbe wrote:
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
> ---
> Changes since v1:
> - memcpy directly &sctx->sst instead of sctx. As suggested by Eric Biggers
> 
>  arch/arm64/crypto/sha1-ce-glue.c | 20 ++++++++++++++++++++
>  arch/arm64/crypto/sha2-ce-glue.c | 23 +++++++++++++++++++++++
>  2 files changed, 43 insertions(+)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
