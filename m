Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBE01A346D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 14:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2UtNeSNFpcNvBrVcouCkqdO33DPTV3wIwE22Rw/fVA=; b=uGtaec6UJlyJpZ
	S/DRfehPyBCAWAPK/iRqtR0HMzGaa5n9quK8TA2xZd6GQGnndECUX8c/p5AdLLElVufkEsLeZTslw
	BbJOYxbuHLYQ7TsdoHRS+r/0Na4ybd2xz9yMvT02+M128+ilMCgOB5PSjiolr+qwkILn8JyB9DCFX
	4F5Uf/SA8Rs1hLyFzFVhalLgEuQgpCAVxqRLdd1LXpfFZD+AldWKNYx9Uxa+IgQe774Z7Foxe6E9n
	SGXs7QyjPQgcKvfKUKr7fIfn+afpQM9tDSLkiq5DmluwJ4VYtOaSQlpLrlvdUId7TUMzCvZjGwID6
	jo/jsVVIEbRf9wmXINnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMWiY-0005OR-Pd; Thu, 09 Apr 2020 12:55:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMWiQ-0005Nz-TZ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 12:55:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EECF20B1F;
 Thu,  9 Apr 2020 12:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586436930;
 bh=ouqY93umzCgNrgbre1T56T3qF+4V8KNH3EWaJaSL00Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dAsFkmOCqOEblMO+YurrQIDGlK+ibLPqbQH6IgSjK7cSFtOpljw13l1iBvg4FtfEE
 tHkZMSReJ+q3n5pAX3qgKzxG+1AvCFOOehg+3hYSfFrU7RQMNj2LQQDTjN9iovbeXD
 sKSd0caPqkuyr8Ke4ssonZdwoT1LRCYyUfWD7ufU=
Date: Thu, 9 Apr 2020 13:55:26 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 2/6] arm64/cpufeature: Add DIT and CSV2 feature bits in
 ID_PFR0 register
Message-ID: <20200409125526.GC13078@willie-the-truck>
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-3-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580215149-21492-3-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_055530_973395_74EC1B4F 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 06:09:05PM +0530, Anshuman Khandual wrote:
> Enable DIT and CSV2 feature bits in ID_PFR0 register as per ARM DDI 0487E.a
> specification. Except RAS and AMU, all other feature bits are now enabled.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/include/asm/sysreg.h | 3 +++
>  arch/arm64/kernel/cpufeature.c  | 2 ++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 054aab7ebf1b..469d61c8fabf 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -718,6 +718,9 @@
>  #define ID_ISAR6_DP_SHIFT		4
>  #define ID_ISAR6_JSCVT_SHIFT		0
>  
> +#define ID_PFR0_DIT_SHIFT		24
> +#define ID_PFR0_CSV2_SHIFT		16
> +
>  #define ID_PFR2_SSBS_SHIFT		4
>  #define ID_PFR2_CSV3_SHIFT		0
>  
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index c1e837fc8f97..9e4dab15c608 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -341,6 +341,8 @@ static const struct arm64_ftr_bits ftr_id_isar6[] = {
>  };
>  
>  static const struct arm64_ftr_bits ftr_id_pfr0[] = {
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_DIT_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_PFR0_CSV2_SHIFT, 4, 0),

Same comment as CSV3 here. Why is CSV2 being treated as strict here, but not
in the aa64* register?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
