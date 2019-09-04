Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36926A8050
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 12:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rn/pq7+hNDarLTFGDM4rPbKGBL+QQpHV2DGiunQlSuo=; b=rbk193Xd/Nvkq4
	HtPybbN20D17C4R8iyL5Epu3iepLVs4XPLpFTKdIUIneVAXxFvUMnCUTRq95v+Q/w/Um/kErgQT4U
	C1HHimEyOZy3eEb/NiSdhWzou68E1vuZ4vWVfXPQXfA3y1VPjQLQdE1nbiEsHDCgl8HmNwiJAg+hA
	sQ0UJ4HaIsbpvyICMbqx9YyUk0eD9hsSSyt5CkMsgJg9gv+kchTrcjyLIJurtSYd1vYoWvccJU50i
	XnZUcYjbXPQ/6OCjG4974NaYiP40QMs7TENBj47L0rgt1wyZ9mubgTcxDBXw78gnqsjrQYFeLo0Sc
	kb7TD4g9ElChSKz70Rtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5STu-0004sH-Ig; Wed, 04 Sep 2019 10:25:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5STi-0004ry-Ub
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 10:25:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C4A722CF7;
 Wed,  4 Sep 2019 10:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567592730;
 bh=rfWsnOUPgkutTE38JY/BCpgI9QMJXaEcBpUh9mBGwsE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VMqQAXni5qiX64ISFemaPfm08bGAYIisiGAm1Op/Lgqtv52f794fdiTk35mxlsBIX
 YBG+ycqI8KGSLES0FLsHoHeUPZV1IzTIs5CXG/QiJY/59vjNXX8ojNlspWdii4g4ES
 ++Y2pyIbS+F9W6VxkCVuVFFMR1IihiT66addx53I=
Date: Wed, 4 Sep 2019 11:25:26 +0100
From: Will Deacon <will@kernel.org>
To: zhong jiang <zhongjiang@huawei.com>
Subject: Re: [PATCH] crypto: arm64: Use PTR_ERR_OR_ZERO rather than its
 implementation.
Message-ID: <20190904102526.5vtdv5ofuezn7fre@willie-the-truck>
References: <1567493656-19916-1-git-send-email-zhongjiang@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567493656-19916-1-git-send-email-zhongjiang@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_032531_010098_4E9D7047 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: herbert@gondor.apana.org.au, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 02:54:16PM +0800, zhong jiang wrote:
> PTR_ERR_OR_ZERO contains if(IS_ERR(...)) + PTR_ERR. It is better to
> use it directly. hence just replace it.
> 
> Signed-off-by: zhong jiang <zhongjiang@huawei.com>
> ---
>  arch/arm64/crypto/aes-glue.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/crypto/aes-glue.c b/arch/arm64/crypto/aes-glue.c
> index ca0c84d..2a2e0a3 100644
> --- a/arch/arm64/crypto/aes-glue.c
> +++ b/arch/arm64/crypto/aes-glue.c
> @@ -409,10 +409,8 @@ static int essiv_cbc_init_tfm(struct crypto_skcipher *tfm)
>  	struct crypto_aes_essiv_cbc_ctx *ctx = crypto_skcipher_ctx(tfm);
>  
>  	ctx->hash = crypto_alloc_shash("sha256", 0, 0);
> -	if (IS_ERR(ctx->hash))
> -		return PTR_ERR(ctx->hash);
>  
> -	return 0;
> +	return PTR_ERR_OR_ZERO(ctx->hash);
>  }
>  
>  static void essiv_cbc_exit_tfm(struct crypto_skcipher *tfm)

Acked-by: Will Deacon <will@kernel.org>

Assuming this will go via Herbert.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
