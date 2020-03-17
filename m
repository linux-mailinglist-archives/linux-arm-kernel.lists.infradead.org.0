Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2E8189135
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 23:18:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acnPkaU9ZpTP9/rZdYYFpxqIvHthxXtKNmzxVpjUOgw=; b=IVPmNZFrqsRCMD
	8CrcXTbplXEAAVFRe3gFJKr8MIwZGT0h2sBGVQ1bOzPpIiMmQd1horIEMgHK3wrZSDbBJUl1yFDKr
	rW0GaDUyh5V8EIkNszyru9hGXHg60rBe8FaQO0N7hirOhklnul3j0u/xC3gdoQ55v47WlQkQ3m2Sd
	24ya6iZMp7AwExIzbjoHRwu4nOq2iXQKWnSn1dCgrRdpPvKdOA1Nbfhuzzi/+0ygF6iTpYhS/riXV
	NiSAnT970+jRsVfvDwzR6eaboAVcVACFIb0yoqR/PYwZsmw+qfUs24Y7L1ROp6ioZEhta3Q1pNJRI
	i3I4muMtH8feO0+TqnfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEKX8-0001uE-4F; Tue, 17 Mar 2020 22:17:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEKWz-0001ti-1r
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 22:17:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15A73206EC;
 Tue, 17 Mar 2020 22:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584483468;
 bh=sY4cOhcMEMawFpaLftRkDuoAZYkzfT6Iq/pDMIVQ+QM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0QGP7zI9fM58OdTLqDxjLIcR2NDM+WwQ4MBisE/1SCYXBDjdNnC+PTF/305E5GyST
 kIqZVvbLlzYcUqBHggnCaCPlwSH7VtJqmiU8YuCYpkjEJG1LvNZnpjOCI11ZdmF4Ey
 0175SzJkfPb8KuTVROY2dRPony8hRwWy9EPhI0ys=
Date: Tue, 17 Mar 2020 22:17:43 +0000
From: Will Deacon <will@kernel.org>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [Patch][Fix] crypto: arm{,64} neon: memzero_explicit aes-cbc key
Message-ID: <20200317221743.GD20788@willie-the-truck>
References: <20200313110258.94A0668C4E@verein.lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313110258.94A0668C4E@verein.lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_151749_118079_0674F968 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, ardb@kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Ard]

On Fri, Mar 13, 2020 at 12:02:58PM +0100, Torsten Duwe wrote:
> From: Torsten Duwe <duwe@suse.de>
> 
> At function exit, do not leave the expanded key in the rk struct
> which got allocated on the stack.
> 
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> ---
> Another small fix from our FIPS evaluation. I hope you don't mind I merged
> arm32 and arm64 into one patch -- this is really simple.
> --- a/arch/arm/crypto/aes-neonbs-glue.c
> +++ b/arch/arm/crypto/aes-neonbs-glue.c
> @@ -138,6 +138,7 @@ static int aesbs_cbc_setkey(struct crypto_skcipher *tfm, const u8 *in_key,
>  	kernel_neon_begin();
>  	aesbs_convert_key(ctx->key.rk, rk.key_enc, ctx->key.rounds);
>  	kernel_neon_end();
> +	memzero_explicit(&rk, sizeof(rk));
>  
>  	return crypto_cipher_setkey(ctx->enc_tfm, in_key, key_len);
>  }
> diff --git a/arch/arm64/crypto/aes-neonbs-glue.c b/arch/arm64/crypto/aes-neonbs-glue.c
> index e3e27349a9fe..c0b980503643 100644
> --- a/arch/arm64/crypto/aes-neonbs-glue.c
> +++ b/arch/arm64/crypto/aes-neonbs-glue.c
> @@ -151,6 +151,7 @@ static int aesbs_cbc_setkey(struct crypto_skcipher *tfm, const u8 *in_key,
>  	kernel_neon_begin();
>  	aesbs_convert_key(ctx->key.rk, rk.key_enc, ctx->key.rounds);
>  	kernel_neon_end();
> +	memzero_explicit(&rk, sizeof(rk));
>  
>  	return 0;
>  }

I'm certainly not a crypto person, but this looks sensible to me and I
couldn't find any other similar stack variable usage under
arch/arm64/crypto/ at a quick glance.

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
