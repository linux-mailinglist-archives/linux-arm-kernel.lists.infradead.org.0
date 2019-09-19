Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B458B7F41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 18:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LywwLddk3Pv3vw4E3OAEVE+/oE+vl4tE3rgJkaEN7r8=; b=FR3ojEZkpHvTqL
	sCAtIu6VHUJho/n2GhrIcFckIDCgEYMnoprvb/wOTWbHE4S3VH4B8i/NN/a2BT+U0IF26fNTlByq4
	5ldmMvoGONfx1YccE647WnEMAOxoQL8isym0GpR3sF1Fccv9uXAjRlPSJhWfpotBq0fV69UPZTRFb
	Ls/r8sfHcS+41D0K7IZW35MSg6qXKz1z4RFLc5eaCjXusAQULam6AXobAUMJexqHV3JrLSTdSYmJ+
	8miYNN1kUWiB64Tds6rDYMlmscClsA+OgfDjz6Y0e6/bKi8eWZuOdxp0JAKlvbiBuIkWlvLimc9l1
	y76DeXZfWPgNUZ5f+aZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAzQY-0000ov-F3; Thu, 19 Sep 2019 16:37:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAzQI-0000ny-1o
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 16:36:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 683B228;
 Thu, 19 Sep 2019 09:36:49 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D0C8F3F575; Thu, 19 Sep 2019 09:36:46 -0700 (PDT)
Date: Thu, 19 Sep 2019 17:36:44 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v5 1/3] arm64: cpufeature: introduce helper cpu_has_hw_af()
Message-ID: <20190919163644.GD6472@arrakis.emea.arm.com>
References: <20190919161204.142796-1-justin.he@arm.com>
 <20190919161204.142796-2-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919161204.142796-2-justin.he@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_093650_142872_AF50CF26 
X-CRM114-Status: GOOD (  12.25  )
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
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, hejianet@gmail.com,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 12:12:02AM +0800, Jia He wrote:
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index b1fdc486aed8..fb0e9425d286 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1141,6 +1141,16 @@ static bool has_hw_dbm(const struct arm64_cpu_capabilities *cap,
>  	return true;
>  }
>  
> +/* Decouple AF from AFDBM. */
> +bool cpu_has_hw_af(void)
> +{
> +	return (read_cpuid(ID_AA64MMFR1_EL1) & 0xf);
> +}
> +#else /* CONFIG_ARM64_HW_AFDBM */
> +bool cpu_has_hw_af(void)
> +{
> +	return false;
> +}
>  #endif

Please place this function in cpufeature.h directly, no need for an
additional function call. Something like:

static inline bool cpu_has_hw_af(void)
{
	if (IS_ENABLED(CONFIG_ARM64_HW_AFDBM))
		return read_cpuid(ID_AA64MMFR1_EL1) & 0xf;
	return false;
}

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
