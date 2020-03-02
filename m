Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CEB17646D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 20:57:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cw7KNZmb4HmkpV2ZiTI0I0WsNEJftHJaTrw7vnr53xo=; b=b9mGQD0Nx7kzYB
	cAeOO5YhWPya8uvPL3kvJKmMb4McaaLfSL4Esa6b5GRIWbN2C3eIG0P8LkGgm0g4naY4bga4tj9um
	0WMjRm8XM+W7Gz1mUoy2/8LhMkIXvsHa+RJSxAwvCongRjwZsMdZrnmreY+1Vkj+n8hTxIIJBSUMN
	7yL3iC1R6IlT1c/3aL0/bnrG5BrHyspGMgWiXvkxu38tLP8gO/I0FlSqJ6Xt0XgaTFlJkiuPm3k7+
	1F1CU1tPz2BDSN43hEMC5+JhO34bA8VxjGjEZipL/ByqryZzmh1XzwHd8H5817pQUbRS+9zYUeRmT
	yY87wRsKlwHt+Ikep8dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8rC8-0005VV-RM; Mon, 02 Mar 2020 19:57:40 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8rC2-0005UO-Fa
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 19:57:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1583179050;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=jW1b+aV7X/tdSJT5uvSfVzTq5rxfiSvkhTy2solsqU8=;
 b=bWd//boRQVowVG1m13hmSDWcXMyesgzoo80bMt3sCeTEKUNVm4Xg32hH0WBILwF54V
 b0lC21SgtEFR1qbLDJTTUDC1UQcQQjvn7DFeRtuYPX35H3PlCKyywop8kL8zGbJLErRy
 RSLCjQxpIbdJqR1CylxaO035UkOgLS5cTQXluPrj/ldd5n3YmKPEPOcfGzVFIuXURCph
 AWIvYqVPc8idbC5YD0zAZRN1k9+Xt/Ulj4g2Kz553ehLSmK4Nq4kjiOLBATwf2mJBB/I
 X8NU5bYa0xpCPEjUHZkawGmaI7mhSMok285ccbTBzB4n1c0apQcmGPYyhgrmSlfYkBxE
 mHCQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u26zEodhPgRDZ8f+IcrABg=="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 46.2.0 DYNA|AUTH)
 with ESMTPSA id c04535w22JvSEbI
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Mon, 2 Mar 2020 20:57:28 +0100 (CET)
Date: Mon, 2 Mar 2020 20:57:23 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] iommu/io-pgtable-arm: Fix IOVA validation for 32-bit
Message-ID: <20200302195723.GA73742@gerhold.net>
References: <dd330453ed31099b5b3b76db02fe79d55aa9bce3.1582899080.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd330453ed31099b5b3b76db02fe79d55aa9bce3.1582899080.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_115735_114437_9E7BB6C7 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:12 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: joro@8bytes.org, will@kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Fri, Feb 28, 2020 at 02:18:55PM +0000, Robin Murphy wrote:
> Since we ony support the TTB1 quirk for AArch64 contexts, and
> consequently only for 64-bit builds, the sign-extension aspect of the
> "are all bits above IAS consistent?" check should implicitly only apply
> to 64-bit IOVAs. Change the type of the cast to ensure that 32-bit longs
> don't inadvertently get sign-extended, and thus considered invalid, if
> they happen to be above 2GB in the TTB0 region.
> 
> Reported-by: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> 

Thanks for the patch!

Just wanted to report that this patch does indeed fix the problem
I had with qcom-venus on ARM32.

It's probably too late now, but FWIW:
Tested-by: Stephan Gerhold <stephan@gerhold.net>

> ---
> 
> Logically there may also have been a UBSAN "shift greater than size of
> type" warning too, but arch/arm doesn't support UBSAN_SANITIZE_ALL,
> and that's now my only easy "spin up a 32-bit VM" option to hand :)
> 
>  drivers/iommu/io-pgtable-arm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 983b08477e64..04fbd4bf0ff9 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -468,7 +468,7 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>  	arm_lpae_iopte *ptep = data->pgd;
>  	int ret, lvl = data->start_level;
>  	arm_lpae_iopte prot;
> -	long iaext = (long)iova >> cfg->ias;
> +	long iaext = (s64)iova >> cfg->ias;
>  
>  	/* If no access, then nothing to do */
>  	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
> @@ -645,7 +645,7 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
>  	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
>  	struct io_pgtable_cfg *cfg = &data->iop.cfg;
>  	arm_lpae_iopte *ptep = data->pgd;
> -	long iaext = (long)iova >> cfg->ias;
> +	long iaext = (s64)iova >> cfg->ias;
>  
>  	if (WARN_ON(!size || (size & cfg->pgsize_bitmap) != size))
>  		return 0;
> -- 
> 2.23.0.dirty
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
