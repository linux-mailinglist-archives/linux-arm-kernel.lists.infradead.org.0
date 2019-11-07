Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF758F3138
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:19:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iIjVX2ebVNJ3TO2JA6HWIEpf+MWqZcKSzVhiUXo9B8E=; b=Flv/P2skg8HtbQ3gEIDKpxLr4
	esNxxT4ZQ6aQmgcTJR/5dHcRJtvFLRnEXHfzo6BVqkPytL7f6V5lauABAq6Js+hOvXo0PFtCeEfcR
	X++fDTEEQuYGvNfYZn8xDdHZwB2T4C21ZvMzv0pgAdTUZuc9kSpeveb+FowdV+H8yZHjv5s2zFapR
	jLqH3TeaGzWNthvSnSdNQ6ZGW1VQe1u3+sK2Az6HU9xK76dlL30555zqOGcjyxjUmqGzPU8H96UTn
	KTEH/gyjUkeT3/7dqXDqv0k4FM/g3rhiVoAyC5wHC+g1Pf6AR35dmY3vy2b9cwog82lPEK8u0xGjd
	+fqYWkfZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSidV-0004Eb-6R; Thu, 07 Nov 2019 14:19:45 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSidK-0004De-Rc
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:19:36 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iSidE-0006pE-M7; Thu, 07 Nov 2019 15:19:28 +0100
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v5 3/8] arm64: hyperv: Add memory alloc/free functions for
 Hyper-V size pages
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 07 Nov 2019 15:28:49 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1570129355-16005-4-git-send-email-mikelley@microsoft.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-4-git-send-email-mikelley@microsoft.com>
Message-ID: <43d53ebd2637bd9106137103028a4f0e@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: mikelley@microsoft.com, will@kernel.org,
 catalin.marinas@arm.com, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org,
 devel@linuxdriverproject.org, olaf@aepfle.de, apw@canonical.com,
 vkuznets@redhat.com, jasowang@redhat.com, marcelo.cerri@canonical.com,
 kys@microsoft.com, sunilmut@microsoft.com, boqun.feng@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_061935_041228_7593C40D 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, linux-hyperv@vger.kernel.org,
 "boqun.feng" <boqun.feng@gmail.com>, catalin.marinas@arm.com,
 jasowang@redhat.com, linux-kernel@vger.kernel.org, marcelo.cerri@canonical.com,
 olaf@aepfle.de, gregkh@linuxfoundation.org, apw@canonical.com,
 devel@linuxdriverproject.org, vkuznets <vkuznets@redhat.com>,
 KY Srinivasan <kys@microsoft.com>, will@kernel.org,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-03 20:12, Michael Kelley wrote:
> Add ARM64-specific code to allocate memory with HV_HYP_PAGE_SIZE
> size and alignment. These are for use when pages need to be shared
> with Hyper-V. Separate functions are needed as the page size used
> by Hyper-V may not be the same as the guest page size.  Free
> operations are rarely done, so no attempt is made to combine
> freed pages into larger chunks.
>
> This code is built only when CONFIG_HYPERV is enabled.
>
> Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> ---
>  arch/arm64/hyperv/hv_init.c    | 68
> ++++++++++++++++++++++++++++++++++++++++++
>  include/asm-generic/mshyperv.h |  5 ++++
>  2 files changed, 73 insertions(+)
>
> diff --git a/arch/arm64/hyperv/hv_init.c 
> b/arch/arm64/hyperv/hv_init.c
> index 6808bc8..9c294f6 100644
> --- a/arch/arm64/hyperv/hv_init.c
> +++ b/arch/arm64/hyperv/hv_init.c
> @@ -15,10 +15,78 @@
>  #include <linux/export.h>
>  #include <linux/mm.h>
>  #include <linux/hyperv.h>
> +#include <linux/spinlock.h>
> +#include <linux/list.h>
> +#include <linux/string.h>
>  #include <asm-generic/bug.h>
>  #include <asm/hyperv-tlfs.h>
>  #include <asm/mshyperv.h>
>
> +
> +/*
> + * Functions for allocating and freeing memory with size and
> + * alignment HV_HYP_PAGE_SIZE. These functions are needed because
> + * the guest page size may not be the same as the Hyper-V page
> + * size. And while kalloc() could allocate the memory, it does not
> + * guarantee the required alignment. So a separate small memory
> + * allocator is needed.  The free function is rarely used, so it
> + * does not try to combine freed pages into larger chunks.

Is this still needed now that kmalloc has alignment guarantees
(see 59bb47985c1d)?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
