Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4F0D2EB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 18:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlD0ojAQMPYdlKD6cZtBSuC4brGz+VgZYIRcdbFjSwo=; b=gj5sRQdUG0IqoI
	9nDf+UbN3DFFAAtTLo6iAl8KxxYmGqQo5/Vj0LYjsS0ca7LgcmlwiCahrS2YpKYvHI2g8+PYRIDd7
	WrHFM8MehrH/UZcUxw2f0gcDMjCzoJy/QwAlh2n4+S6iI31X4jYkQ5Fl8HGiCjfJSVGkqo8lLaf9W
	rpWfTfpHG3Yn+0tzEuLKX8iBKTC+MjWxpZBuSSMCyUEDW5a8peC32a0n0n2xwW5HddLrMB2bNrM+Z
	uxy8hoOvjtxi7hTJMiAR/HE9l1W/g/ifoplAy/zG2ssiL5UnG+LU9JLWMTf5p7TjRj5TuND4bxB3F
	302U0Fgs9QF5+pRFAtXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIbXC-0000N3-Dh; Thu, 10 Oct 2019 16:43:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIbX5-0000Me-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 16:43:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4C4C28;
 Thu, 10 Oct 2019 09:43:16 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 82A993F71A; Thu, 10 Oct 2019 09:43:14 -0700 (PDT)
Date: Thu, 10 Oct 2019 17:43:12 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v11 1/4] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Message-ID: <20191010164312.GB40923@arrakis.emea.arm.com>
References: <20191009084246.123354-1-justin.he@arm.com>
 <20191009084246.123354-2-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009084246.123354-2-justin.he@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_094319_274013_64A16386 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kaly Xin <Kaly.Xin@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 x86@kernel.org, hejianet@gmail.com, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 04:42:43PM +0800, Jia He wrote:
> We unconditionally set the HW_AFDBM capability and only enable it on
> CPUs which really have the feature. But sometimes we need to know
> whether this cpu has the capability of HW AF. So decouple AF from
> DBM by a new helper cpu_has_hw_af().
> 
> Signed-off-by: Jia He <justin.he@arm.com>
> Suggested-by: Suzuki Poulose <Suzuki.Poulose@arm.com>
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

I don't think I reviewed this version of the patch.

> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index 9cde5d2e768f..1a95396ea5c8 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -659,6 +659,20 @@ static inline u32 id_aa64mmfr0_parange_to_phys_shift(int parange)
>  	default: return CONFIG_ARM64_PA_BITS;
>  	}
>  }
> +
> +/* Check whether hardware update of the Access flag is supported */
> +static inline bool cpu_has_hw_af(void)
> +{
> +	if (IS_ENABLED(CONFIG_ARM64_HW_AFDBM)) {

Please just return early here to avoid unnecessary indentation:

	if (!IS_ENABLED(CONFIG_ARM64_HW_AFDBM))
		return false;

> +		u64 mmfr1 = read_cpuid(ID_AA64MMFR1_EL1);
> +
> +		return !!cpuid_feature_extract_unsigned_field(mmfr1,
> +						ID_AA64MMFR1_HADBS_SHIFT);

No need for !!, the return type is a bool already.

Anyway, apart from these nitpicks, the patch is fine you can keep my
reviewed-by.

If later we noticed a potential performance issue on this path, we can
turn it into a static label as with other CPU features.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
