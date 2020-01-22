Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B6A144E76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 10:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYtdpnF4KvQ3d3H2l7xI1WcqVsHX6LavcEVIeOj/k34=; b=OBmkAzphdvarNN
	322eWcCGhPKnyEDEaykh9fDFLQ3wtM9aW07Uc58Rllh1WGpnrrSE9KRISBIqSMpUgjnzLqmYHOvC0
	F6eHcrYl+ZejKDsbc61HZgZVgmzv0AbQ9v07oX5ISzR3YwnCQeP7dLjPFixcUUPJWLrwrdu8c392u
	ac49oByg1SqP+AyVM/Ddny/krB7/LHJilM2UMMHGWfZ+xBsx4NKKc4PxlnVKy1kjxNVc1PtMouc8l
	hFsH/VtLREjyLiHcxzEA4NVrW6B4AxPUaFwUR3OBGdULryxnsiS0ZgjOzLN3F1uOSV0v+iFH34gGD
	uN2oJVjjcQ4HEAJo2rvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuC7L-0002Yi-8y; Wed, 22 Jan 2020 09:16:07 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuC7D-0002YK-Ew
 for linux-arm-kernel@bombadil.infradead.org; Wed, 22 Jan 2020 09:15:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=de9Krq9WPfYisRqIZvIrOmUj6iWBtQLyqA73nPcoF8w=; b=l9JX2nkNY2fxHyIdZU7hasx5C
 PBAR9hJawsYgfFkrmRqc/Rjh1IZYJO9JKWNA/kTgBrTBI6NJYM1mVz+5892V502NDKCzWe+a/cedz
 IgBMO7Lak5koQUkdc6XRGW+Cxgx1IFlGMhxK/BDZHDEqSp+VIgX8KoG+Q98hR69t91IxUo8mH6ICV
 QdbYVrcxHkR7rxlE9HZKz8cX2eIjfOEg1Jla68Zfw8fLDY8bhsUfe8uqKlNmrBU+fVsNKRpsWJCnC
 3VLMaxDYrVEZeFvBf9Wy6GOW/953cYk8n8ZDqUzwmfq/SUg9RjFEsy13DG2O3uC7fXfzf8eaW2eDb
 Uhla+mRVA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuC73-0002ue-Uc; Wed, 22 Jan 2020 09:15:50 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D3ADD305D3F;
 Wed, 22 Jan 2020 10:14:07 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 5E84920983E34; Wed, 22 Jan 2020 10:15:47 +0100 (CET)
Date: Wed, 22 Jan 2020 10:15:47 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Alex Kogan <alex.kogan@oracle.com>
Subject: Re: [PATCH v7 1/5] locking/qspinlock: Rename mcs lock/unlock macros
 and make them more generic
Message-ID: <20200122091547.GU14879@hirez.programming.kicks-ass.net>
References: <20191125210709.10293-1-alex.kogan@oracle.com>
 <20191125210709.10293-2-alex.kogan@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125210709.10293-2-alex.kogan@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, steven.sistare@oracle.com,
 linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, longman@redhat.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 04:07:05PM -0500, Alex Kogan wrote:

> --- a/arch/arm/include/asm/mcs_spinlock.h
> +++ b/arch/arm/include/asm/mcs_spinlock.h
> @@ -6,7 +6,7 @@
>  #include <asm/spinlock.h>
>  
>  /* MCS spin-locking. */
> -#define arch_mcs_spin_lock_contended(lock)				\
> +#define arch_mcs_spin_lock(lock)				\
>  do {									\
>  	/* Ensure prior stores are observed before we enter wfe. */	\
>  	smp_mb();							\
> @@ -14,9 +14,9 @@ do {									\
>  		wfe();							\
>  } while (0)								\
>  
> -#define arch_mcs_spin_unlock_contended(lock)				\
> +#define arch_mcs_pass_lock(lock, val)					\
>  do {									\
> -	smp_store_release(lock, 1);					\
> +	smp_store_release((lock), (val));				\
>  	dsb_sev();							\
>  } while (0)

So I hate those names; it used to be clear this was the contended path,
not so anymore. arch_mcs_spin_lock() in particular is grossly misnamed
now.

's/arch_mcs_spin_lock/arch_mcs_spin_wait/g' could perhaps work, if you
really want to get rid of the _contended suffix.

Also, pass_lock seems unfortunately named...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
