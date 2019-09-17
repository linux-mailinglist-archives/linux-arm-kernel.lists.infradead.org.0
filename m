Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29298B477F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 08:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9wIe4Oj4zaxWrVE2PkYNKw7k2MXoMV67JBt5SHlPKc=; b=KPVVG/51C2RvmQ
	3X0Zq4kslVE/UQ+FFn80vU7CQUTh2MbGtxe7RV0WV0xGl51Ok5j6DLy3TBOSCzWxezXBn4mBnPn8b
	Xnwvu5YXOiSBRRzJHr6QpioYOE2mXFM53O+QtFdfMvUVxMjCkxb2C3PLKGfZTJYxWNCj7eA82dwow
	pwtF9BWSsut00SUeuVR0Dukn5dQZWWnxBb8tRkXnUmWGaHaSKAIVUWP/B1/S1a30LXicizmvNSZYq
	vGhheVyve6vDsQGnva+RQVnKS7egSu0GOTBbA3WInvxgye/KNjBfCqYP74x8X/0nX729H9wQYFP9w
	a1zrfDWRxxSgizR6Mslw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA6wk-00018r-U1; Tue, 17 Sep 2019 06:26:43 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA6wA-00017r-EW
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 06:26:07 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8630A4953779977C334E;
 Tue, 17 Sep 2019 14:25:55 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Tue, 17 Sep 2019
 14:25:51 +0800
Subject: Re: [PATCH v4 1/5] locking/qspinlock: Rename
 arch_mcs_spin_unlock_contended to arch_mcs_pass_lock and make it more generic
To: Alex Kogan <alex.kogan@oracle.com>, <linux@armlinux.org.uk>,
 <peterz@infradead.org>, <mingo@redhat.com>, <will.deacon@arm.com>,
 <arnd@arndb.de>, <longman@redhat.com>, <linux-arch@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <tglx@linutronix.de>, <bp@alien8.de>, <hpa@zytor.com>, <x86@kernel.org>,
 <jglauber@marvell.com>
References: <20190906142541.34061-1-alex.kogan@oracle.com>
 <20190906142541.34061-2-alex.kogan@oracle.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <22a45ca4-fcae-c805-596e-67f1809eb1dd@huawei.com>
Date: Tue, 17 Sep 2019 14:25:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190906142541.34061-2-alex.kogan@oracle.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_232606_677987_6DC71AA4 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: rahul.x.yadav@oracle.com, dave.dice@oracle.com, steven.sistare@oracle.com,
 daniel.m.jordan@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alex,

On 2019/9/6 22:25, Alex Kogan wrote:
> The new macro should accept the value to be stored into the lock argument
> as another argument. This allows using the same macro in cases where the
> value to be stored when passing the lock is different from 1.
> 
> Signed-off-by: Alex Kogan <alex.kogan@oracle.com>
> Reviewed-by: Steve Sistare <steven.sistare@oracle.com>
> ---
>  arch/arm/include/asm/mcs_spinlock.h | 4 ++--
>  kernel/locking/mcs_spinlock.h       | 6 +++---
>  kernel/locking/qspinlock.c          | 2 +-
>  3 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/include/asm/mcs_spinlock.h b/arch/arm/include/asm/mcs_spinlock.h
> index 529d2cf4d06f..f3f9efdcd2ca 100644
> --- a/arch/arm/include/asm/mcs_spinlock.h
> +++ b/arch/arm/include/asm/mcs_spinlock.h
> @@ -14,9 +14,9 @@ do {									\
>  		wfe();							\
>  } while (0)								\
>  
> -#define arch_mcs_spin_unlock_contended(lock)				\
> +#define arch_mcs_pass_lock(lock, val)					\

arch_mcs_spin_unlock_contended() has a matching function arch_mcs_spin_lock_contended(),
please see include/asm-generic/mcs_spinlock.h, so if we update this function name,
should we update the matching one as well? and update the relevant comments as well?

>  do {									\
> -	smp_store_release(lock, 1);					\
> +	smp_store_release((lock), (val));				\
>  	dsb_sev();							\
>  } while (0)
>  
> diff --git a/kernel/locking/mcs_spinlock.h b/kernel/locking/mcs_spinlock.h
> index 5e10153b4d3c..84327ca21650 100644
> --- a/kernel/locking/mcs_spinlock.h
> +++ b/kernel/locking/mcs_spinlock.h
> @@ -41,8 +41,8 @@ do {									\
>   * operations in the critical section has been completed before
>   * unlocking.
>   */
> -#define arch_mcs_spin_unlock_contended(l)				\

Before this line of the code, there is:

#ifndef arch_mcs_spin_lock_contended

...

#define arch_mcs_spin_lock_contended(l)                 \

So #ifndef should be updated too.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
