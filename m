Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F4F1BC7A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 20:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zwjgya1E33JMbIwVi+MdizMvg+DMuMzcejMzhNiY/P0=; b=lusBidAdw2pPnn4hEHGZedsev
	MV6cxTZgyye4a+hHN7SHY98XRhO9zg5Zm0TdzmAAiVUTxPBAkb217BtTldXP+jhHh15neYeqh+VnW
	RzDgU5YM+c8TZGsoPtihyBUeKlMuZd7xuUZdWRAZfh8oRE7+hexczdd9fKQSMhtn0w9xa2Gb4BLEq
	Wxv5fGrw/KuDUniCsL2qXx3I1O4cnNETIo+K66BgXDtF4TJXPVHl3YLF6ojZQSStaFFKENjWXa+7V
	z45SV019QHYdg4a1xwm6HnGEtmAneWjnlw/tiVWGPiWVx1NuGSHSkGrSyiD+LEAhPSUvrZXZzkJnj
	kQoO7xkQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTUmm-0002BT-2Z; Tue, 28 Apr 2020 18:16:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTUmZ-00029z-Lu
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 18:16:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CFA7DC14;
 Tue, 28 Apr 2020 11:16:32 -0700 (PDT)
Received: from [192.168.178.25] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 560853F305;
 Tue, 28 Apr 2020 11:16:31 -0700 (PDT)
Subject: Re: [PATCH v3 20/23] fs: Allow copy_mount_options() to access
 user-space in a single pass
To: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-21-catalin.marinas@arm.com>
From: Kevin Brodsky <kevin.brodsky@arm.com>
Message-ID: <9544d86b-d445-3497-fbbf-56c590400f83@arm.com>
Date: Tue, 28 Apr 2020 19:16:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200421142603.3894-21-catalin.marinas@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_111635_810495_8C089508 
X-CRM114-Status: GOOD (  27.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/04/2020 15:26, Catalin Marinas wrote:
> The copy_mount_options() function takes a user pointer argument but not
> a size. It tries to read up to a PAGE_SIZE. However, copy_from_user() is
> not guaranteed to return all the accessible bytes if, for example, the
> access crosses a page boundary and gets a fault on the second page. To
> work around this, the current copy_mount_options() implementations
> performs to copy_from_user() passes, first to the end of the current
> page and the second to what's left in the subsequent page.
>
> Some architectures like arm64 can guarantee an exact copy_from_user()
> depending on the size (since the arch function performs some alignment
> on the source register). Introduce an arch_has_exact_copy_from_user()
> function and allow copy_mount_options() to perform the user access in a
> single pass.
>
> While this function is not on a critical path, the single-pass behaviour
> is required for arm64 MTE (memory tagging) support where a uaccess can
> trigger intra-page faults (tag not matching). With the current
> implementation, if this happens during the first page, the function will
> return -EFAULT.
>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Alexander Viro <viro@zeniv.linux.org.uk>
> Cc: Will Deacon <will@kernel.org>
> ---
>
> Notes:
>      New in v3.
>
>   arch/arm64/include/asm/uaccess.h | 11 +++++++++++
>   fs/namespace.c                   |  7 +++++--
>   include/linux/uaccess.h          |  8 ++++++++
>   3 files changed, 24 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index 32fc8061aa76..566da441eba2 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -416,6 +416,17 @@ extern unsigned long __must_check __arch_copy_in_user(void __user *to, const voi
>   #define INLINE_COPY_TO_USER
>   #define INLINE_COPY_FROM_USER
>   
> +static inline bool arch_has_exact_copy_from_user(unsigned long n)
> +{
> +	/*
> +	 * copy_from_user() aligns the source pointer if the size is greater
> +	 * than 15. Since all the loads are naturally aligned, they can only
> +	 * fail on the first byte.
> +	 */
> +	return n > 15;
> +}
> +#define arch_has_exact_copy_from_user
> +
>   extern unsigned long __must_check __arch_clear_user(void __user *to, unsigned long n);
>   static inline unsigned long __must_check __clear_user(void __user *to, unsigned long n)
>   {
> diff --git a/fs/namespace.c b/fs/namespace.c
> index a28e4db075ed..8febc50dfc5d 100644
> --- a/fs/namespace.c
> +++ b/fs/namespace.c
> @@ -3025,13 +3025,16 @@ void *copy_mount_options(const void __user * data)
>   	if (!copy)
>   		return ERR_PTR(-ENOMEM);
>   
> -	size = PAGE_SIZE - offset_in_page(data);
> +	size = PAGE_SIZE;
> +	if (!arch_has_exact_copy_from_user(size))
> +		size -= offset_in_page(data);
>   
> -	if (copy_from_user(copy, data, size)) {
> +	if (copy_from_user(copy, data, size) == size) {
>   		kfree(copy);
>   		return ERR_PTR(-EFAULT);
>   	}
>   	if (size != PAGE_SIZE) {
> +		WARN_ON(1);

I'm not sure I understand the rationale here. If we don't have exact copy_from_user 
for size, then we will attempt to copy up to the end of the page. Assuming this 
doesn't fault, we then want to carry on copying from the start of the next page, 
until we reach a total size of up to 4K. Why would we warn in that case? AIUI, if you 
don't have exact copy_from_user, there are 3 cases:
1. copy_from_user() returns size, we bail out.
2. copy_from_user() returns 0, we carry on copying from the next page.
3. copy_from_user() returns anything else, we return immediately.

I think you're not handling case 3 here.

Kevin

>   		if (copy_from_user(copy + size, data + size, PAGE_SIZE - size))
>   			memset(copy + size, 0, PAGE_SIZE - size);
>   	}
> diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
> index 67f016010aad..00e097a9e8d6 100644
> --- a/include/linux/uaccess.h
> +++ b/include/linux/uaccess.h
> @@ -152,6 +152,14 @@ copy_to_user(void __user *to, const void *from, unsigned long n)
>   		n = _copy_to_user(to, from, n);
>   	return n;
>   }
> +
> +#ifndef arch_has_exact_copy_from_user
> +static inline bool arch_has_exact_copy_from_user(unsigned long n)
> +{
> +	return false;
> +}
> +#endif
> +
>   #ifdef CONFIG_COMPAT
>   static __always_inline unsigned long __must_check
>   copy_in_user(void __user *to, const void __user *from, unsigned long n)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
