Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1888719B605
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 20:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzIJ2UYfjtUurvc9slM+kuPBUoFm/GwJiNdtUwLibvQ=; b=s3V8U9upqgeiUy
	BjXtU7n5MCdWKKuFF8DDWhu2w29eswUtupBTSO3OFp4tmPAqq/J4u++ugAGwc3VS6diRDwvMesvTI
	s9lqxH8vWUGQSKxpcq3Fbuf7quxCjEClgHBTUYEm7raaFdY6txTTYIW91Ayqk/DW+lo3nAeYu8i9g
	ZN3cZMkUpZQlletVEqHGWxt+ukYu3nu+gSMj6IPqEDRMpcGJimbMVcGpV1kxiCjOe2rQrxjz0ylwO
	eok6+vbWk3E3O+nMv0gHFZieFHSNEoHU4fA+35GZ2yRH5qqwJcD/pFz457cP8F1mfGq1Q8BhNGlDl
	/Tzc8vT1ujM6nQwM3IBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJiWD-0005zh-GY; Wed, 01 Apr 2020 18:55:17 +0000
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJiVz-0003u7-Lp; Wed, 01 Apr 2020 18:55:03 +0000
Subject: Re: [PATCH v2 4/4] hugetlbfs: clean up command line processing
To: Mike Kravetz <mike.kravetz@oracle.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20200401183819.20647-1-mike.kravetz@oracle.com>
 <20200401183819.20647-5-mike.kravetz@oracle.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <a80f530d-e803-3952-e714-705a8589f50a@infradead.org>
Date: Wed, 1 Apr 2020 11:55:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200401183819.20647-5-mike.kravetz@oracle.com>
Content-Language: en-US
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mina Almasry <almasrymina@google.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Andrew Morton <akpm@linux-foundation.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Mackerras <paulus@samba.org>, Thomas Gleixner <tglx@linutronix.de>,
 Longpeng <longpeng2@huawei.com>, Will Deacon <will@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/1/20 11:38 AM, Mike Kravetz wrote:
> With all hugetlb page processing done in a single file clean up code.
> - Make code match desired semantics
>   - Update documentation with semantics
> - Make all warnings and errors messages start with 'HugeTLB:'.
> - Consistently name command line parsing routines.
> - Check for hugepages_supported() before processing parameters.
> - Add comments to code
>   - Describe some of the subtle interactions
>   - Describe semantics of command line arguments
> 
> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> ---

Hi Mike,
One nit, please see below:

>  .../admin-guide/kernel-parameters.txt         | 35 ++++---
>  Documentation/admin-guide/mm/hugetlbpage.rst  | 44 +++++++++
>  mm/hugetlb.c                                  | 96 +++++++++++++++----
>  3 files changed, 142 insertions(+), 33 deletions(-)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 1bd5454b5e5f..de653cfe1726 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -832,12 +832,15 @@
>  			See also Documentation/networking/decnet.txt.
>  
>  	default_hugepagesz=
> -			[same as hugepagesz=] The size of the default
> -			HugeTLB page size. This is the size represented by
> -			the legacy /proc/ hugepages APIs, used for SHM, and
> -			default size when mounting hugetlbfs filesystems.
> -			Defaults to the default architecture's huge page size
> -			if not specified.
> +			[HW] The size of the default HugeTLB page size. This

			Drop one "size" above?

> +			is the size represented by the legacy /proc/ hugepages
> +			APIs.  In addition, this is the default hugetlb size
> +			used for shmget(), mmap() and mounting hugetlbfs
> +			filesystems.  If not specified, defaults to the
> +			architecture's default huge page size.  Huge page
> +			sizes are architecture dependent.  See also
> +			Documentation/admin-guide/mm/hugetlbpage.rst.
> +			Format: size[KMG]



-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
