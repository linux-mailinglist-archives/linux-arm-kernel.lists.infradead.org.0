Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8B5164D85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:17:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQs2+2KpbWWAq21St6ASFvRQcpt9zu2dxfiaQe+2EPc=; b=Wg6WPi0h7YWm4L
	Up9JtwMs11gbn04uoE1KVm/jamRtd1A53gcmY+iC6Mhe3yXxTy66Nbkh5rZxj2qrCoBJ146kU+8bI
	TEiL6Kighlsao5m2M0URtGKSmumCv2JyxBrTDsuTkNDhwPyOnr+OZLP5WQTpxeFXgDkskokeR9fZ0
	MvB8X5yVNqb+81alShI1P9H5IgiP8jcgfhP0B+FUL4Ymca+uSR5WjxV4E4xJNzJxSp1+fLqusdaxD
	wdrVZKaO5xBWmdUe3HIfy+Aab8P1f7TzYW8zcTq1ghgTVV2qoZeH2m8ff0ygeUgtNHbSlJrucsssp
	KZeTmkEXyHVT1St9V+zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4TuD-0004lP-Cu; Wed, 19 Feb 2020 18:17:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Tu4-0004kY-Rw
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:16:58 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D420C24656;
 Wed, 19 Feb 2020 18:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582136216;
 bh=7crgeJqOXjvpVZqlMX7ni5vWNV3EHF/0EQ0glLP1wVo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YFYds0gXOo7Pn45RvT16No9BzJ28dvhr3iXd/o2uMXprsiGXz884d33e7lTxiY3dC
 gLCnwsKGTPCUCHv2+Aip38hTuA80WHAhboMjTMzPJIRRfcTH5ZQ1BpNmxIjAfJI+NG
 PMPXhfcnpxUpDfHsf5Y+nOzoXzYrl0OCqJ6CNItw=
Date: Wed, 19 Feb 2020 10:16:54 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] crypto: arm64: CE: implement export/import
Message-ID: <20200219181654.GB2312@sol.localdomain>
References: <1582128037-18644-1-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582128037-18644-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_101656_922061_C529C3A4 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 04:00:37PM +0000, Corentin Labbe wrote:
> When an ahash algorithm fallback to another ahash and that fallback is
> shaXXX-CE, doing export/import lead to error like this:
> alg: ahash: sha1-sun8i-ce export() overran state buffer on test vector 0, cfg=\"import/export\"
> 
> This is due to the descsize of shaxxx-ce larger than struct shaxxx_state off by an u32.
> For fixing this, let's implement export/import which rip the finalize
> variant instead of using generic export/import.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  arch/arm64/crypto/sha1-ce-glue.c | 20 ++++++++++++++++++++
>  arch/arm64/crypto/sha2-ce-glue.c | 23 +++++++++++++++++++++++
>  2 files changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
> index 63c875d3314b..dc44d48415cd 100644
> --- a/arch/arm64/crypto/sha1-ce-glue.c
> +++ b/arch/arm64/crypto/sha1-ce-glue.c
> @@ -91,12 +91,32 @@ static int sha1_ce_final(struct shash_desc *desc, u8 *out)
>  	return sha1_base_finish(desc, out);
>  }
>  
> +static int sha1_ce_export(struct shash_desc *desc, void *out)
> +{
> +	struct sha1_ce_state *sctx = shash_desc_ctx(desc);
> +
> +	memcpy(out, sctx, sizeof(struct sha1_state));
> +	return 0;
> +}
> +
> +static int sha1_ce_import(struct shash_desc *desc, const void *in)
> +{
> +	struct sha1_ce_state *sctx = shash_desc_ctx(desc);
> +
> +	memcpy(sctx, in, sizeof(struct sha1_state));
> +	sctx->finalize = 0;
> +	return 0;
> +}

Can you use '&sctx->sst' instead of 'sctx' so that we aren't relying on the
'struct sha1_state' being located at the beginning of the struct?

Likewise for SHA-2.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
