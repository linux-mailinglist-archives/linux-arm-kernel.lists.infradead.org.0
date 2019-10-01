Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08094C34F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wg9SsUPwKWf2OVmPRFhsdEnzGAOHSdkcJs3JrtaKT/U=; b=PkIlbIJeZBCS+u
	lnR2ZZfwuNQPHMaPByt7/bXEg68lKXsOSQDZJ0nup1OGLVHsh/qjzpG8NbpXJCm8b823XAgsCSHvV
	nfyeO4HRAS4BkVDVrw5XI0IUoIXRplt6ucB0gUcaxAYm6LRhInQQoU/s6Q9c4EmlcYJUa/XRDFBqD
	j77aExPtgAQcko0pUzuqj/5DMK2Ww2GpYZhNHGK8ywkZHrolJDcDe6M+zXkuSja1DKxAmvw1toGHc
	LBVir2MRdBUk2yv4yVuzesJMJJ2PmzXGFaGtrgHFWBZuMJaTyusGHh6zIhwqaiz8uLWwUbFLSgt50
	vsFGRjGPI3ZhAdq693rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHhF-0008Vz-JC; Tue, 01 Oct 2019 12:56:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHg5-0006Ko-Pf
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:54:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1ADF21872;
 Tue,  1 Oct 2019 12:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569934493;
 bh=4ZwqNMkLAQ6qVgwcsq/kPtYCFF46wZLCtAuZ+J9bA0E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BOXfnlLNBAeHH+AHjQ/kdaxE6JUJFThHEvZ5AnHpcIJhKyHJiF59b0Nb3ywQH8RE5
 78jm9cqaDGZLNS11Hdl09X2vIhhg0UGjXDBMZZPluuea7beLK4hgB694ALgyVuezxZ
 JS/+Y+lD4qfJINQObM0tYmWz7zzM3Gy1feo1XRN0=
Date: Tue, 1 Oct 2019 13:54:47 +0100
From: Will Deacon <will@kernel.org>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v10 1/3] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Message-ID: <20191001125446.gknoofnm7az4wqf5@willie-the-truck>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-2-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930015740.84362-2-justin.he@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_055453_858093_E6A5E384 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 hejianet@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 09:57:38AM +0800, Jia He wrote:
> We unconditionally set the HW_AFDBM capability and only enable it on
> CPUs which really have the feature. But sometimes we need to know
> whether this cpu has the capability of HW AF. So decouple AF from
> DBM by new helper cpu_has_hw_af().
> 
> Signed-off-by: Jia He <justin.he@arm.com>
> Suggested-by: Suzuki Poulose <Suzuki.Poulose@arm.com>
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/include/asm/cpufeature.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index 9cde5d2e768f..949bc7c85030 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -659,6 +659,16 @@ static inline u32 id_aa64mmfr0_parange_to_phys_shift(int parange)
>  	default: return CONFIG_ARM64_PA_BITS;
>  	}
>  }
> +
> +/* Check whether hardware update of the Access flag is supported */
> +static inline bool cpu_has_hw_af(void)
> +{
> +	if (IS_ENABLED(CONFIG_ARM64_HW_AFDBM))
> +		return read_cpuid(ID_AA64MMFR1_EL1) & 0xf;

0xf? I think we should have a mask in sysreg.h for this constant.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
