Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485E711B041
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:21:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dI7FQDPIsZ0gfW1NZ0+zpWtJlkuW3QRwQW9pcqWUtjQ=; b=rDOSsMhGsXiGQZlrznK9Wf8Kh
	9Q0vHfTmILZxjSzFcs3IBG93+FJkWtQgzQ9SZCTxLbZ8DZrA0kqrWVJKkXU++xeVPG2eEkuGHu7iz
	pr4Zc+zq3sqooivArcJRcdD6OdEyUfFiWd3+m0j6D2rS1cIsxJUCUM6T5UiYmJR7ah93/kcasGIrY
	HWKg//TQXtI0Cg09hPUe8HqAL9YCBG1cqNEi3rIfgvFo3nSd0InGET0zFGuO8YuBz3AFFzlL70Krd
	PIZMVDTNfklTHm5kY81izclSEIq6rTbPVnEeeRotzla2aQJHMdAQuJJ3MVDSPZzFbojxLAA7R5YKy
	c0EGZ5EKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3nW-0000GT-5D; Wed, 11 Dec 2019 15:21:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3nM-0000Fi-40
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:20:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CCBB730E;
 Wed, 11 Dec 2019 07:20:54 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E6E3D3F52E;
 Wed, 11 Dec 2019 07:20:53 -0800 (PST)
Subject: Re: [PATCH v2 1/3] arm64: cpufeature: Extract capped fields
To: Andrew Murray <andrew.murray@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20191210120146.2942-1-andrew.murray@arm.com>
 <20191210120146.2942-2-andrew.murray@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <b5c9e6dd-b7eb-2f93-4a7f-456af07b3dd7@arm.com>
Date: Wed, 11 Dec 2019 15:20:52 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191210120146.2942-2-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_072056_204766_C585E647 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On 10/12/2019 12:01, Andrew Murray wrote:
> When emulating ID registers there is often a need to cap the version
> bits of a feature such that the guest will not use features that do
> not yet exist.
> 
> Let's add a helper that extracts a field and caps the version to a
> given value.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>   arch/arm64/include/asm/cpufeature.h | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index 4261d55e8506..19f051ec1610 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -447,6 +447,21 @@ cpuid_feature_extract_unsigned_field(u64 features, int field)
>   	return cpuid_feature_extract_unsigned_field_width(features, field, 4);
>   }
>   
> +static inline u64 __attribute_const__
> +cpuid_feature_cap_signed_field_width(u64 features, int field, int width,
> +				     s64 cap)
> +{
> +	s64 val = cpuid_feature_extract_signed_field_width(features, field,
> +							   width);
> +
> +	if (val > cap) {
> +		features &= ~GENMASK_ULL(field + width - 1, field);
> +		features |= cap << field;

Please could we make sure that the "cap" is masked to "width" bits. 
Otherwise looks good to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
