Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9B4428F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqazYoDsY8kGlXRu8JInm4/KvsQOeFaD58gn0EhUUSY=; b=o8K6qM1wROZ/+S
	6Om0MFyZtCZTnXjV0i1XiLUswlpQglusVEMTV27Oz8I8YMaMNo7QjmpvEh0Doq3CSLnHcdDGgjEpO
	ZXNkcj1cFzqSgywyx9WP1KK2NpjJzY5TurJjM2IT3Xvp3r1zhzWyAB707MU4fnQjgUtzmGsLCOWP0
	JvnvEKx/tmyBi+IFnCXN8zRZTDNI6rjpIc6pIqXEEQ2vvghauFiIrjLtmh3QCxEBJz0kBySz0AqDZ
	r10sh+hS8as3eh6xF1KLYoXugOVxBrGTi+4cNDNvVAqSQmCr2QjFAXLOpd3qxV+ol5PlMAZ1wxrpE
	GBlAE+FM4nKdNcMRSO9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4FA-0006Lo-EA; Wed, 12 Jun 2019 14:28:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4DR-0005Gq-79
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:27:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1BAA2B;
 Wed, 12 Jun 2019 07:27:04 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3DCE73F557;
 Wed, 12 Jun 2019 07:26:59 -0700 (PDT)
Subject: Re: [PATCH v17 01/15] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
To: Andrey Konovalov <andreyknvl@google.com>,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org,
 linux-media@vger.kernel.org, kvm@vger.kernel.org,
 linux-kselftest@vger.kernel.org
References: <cover.1560339705.git.andreyknvl@google.com>
 <9ed583c1a3acf014987e3aef12249506c1c69146.1560339705.git.andreyknvl@google.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <52e93b24-3302-e890-5799-6502042ea5c9@arm.com>
Date: Wed, 12 Jun 2019 15:26:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <9ed583c1a3acf014987e3aef12249506c1c69146.1560339705.git.andreyknvl@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072705_395957_23808FE8 
X-CRM114-Status: GOOD (  23.44  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, Jacob Bramley <Jacob.Bramley@arm.com>,
 Leon Romanovsky <leon@kernel.org>, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/06/2019 12:43, Andrey Konovalov wrote:
> This patch is a part of a series that extends arm64 kernel ABI to allow to
> pass tagged user pointers (with the top byte set to something else other
> than 0x00) as syscall arguments.
> 
> copy_from_user (and a few other similar functions) are used to copy data
> from user memory into the kernel memory or vice versa. Since a user can
> provided a tagged pointer to one of the syscalls that use copy_from_user,
> we need to correctly handle such pointers.
> 
> Do this by untagging user pointers in access_ok and in __uaccess_mask_ptr,
> before performing access validity checks.
> 
> Note, that this patch only temporarily untags the pointers to perform the
> checks, but then passes them as is into the kernel internals.
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> ---
>  arch/arm64/include/asm/uaccess.h | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index e5d5f31c6d36..df729afca0ba 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -73,6 +73,8 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
>  {
>  	unsigned long ret, limit = current_thread_info()->addr_limit;
>  
> +	addr = untagged_addr(addr);
> +
>  	__chk_user_ptr(addr);
>  	asm volatile(
>  	// A + B <= C + 1 for all A,B,C, in four easy steps:
> @@ -226,7 +228,8 @@ static inline void uaccess_enable_not_uao(void)
>  
>  /*
>   * Sanitise a uaccess pointer such that it becomes NULL if above the
> - * current addr_limit.
> + * current addr_limit. In case the pointer is tagged (has the top byte set),
> + * untag the pointer before checking.
>   */
>  #define uaccess_mask_ptr(ptr) (__typeof__(ptr))__uaccess_mask_ptr(ptr)
>  static inline void __user *__uaccess_mask_ptr(const void __user *ptr)
> @@ -234,10 +237,11 @@ static inline void __user *__uaccess_mask_ptr(const void __user *ptr)
>  	void __user *safe_ptr;
>  
>  	asm volatile(
> -	"	bics	xzr, %1, %2\n"
> +	"	bics	xzr, %3, %2\n"
>  	"	csel	%0, %1, xzr, eq\n"
>  	: "=&r" (safe_ptr)
> -	: "r" (ptr), "r" (current_thread_info()->addr_limit)
> +	: "r" (ptr), "r" (current_thread_info()->addr_limit),
> +	  "r" (untagged_addr(ptr))
>  	: "cc");
>  
>  	csdb();
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
