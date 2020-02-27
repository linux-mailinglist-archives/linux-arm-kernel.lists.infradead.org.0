Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7672E17165E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:50:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iw+iIFTTKhaYJOjPDFnlecJrqWyMad+uVBjBHnF/EE0=; b=LMqfP4+rZOmKFw
	oLgTzSegJ5Z6oKvzVrizD54+1ggmmpqN2k/YiZfFh15q9vmFhHmzrHvwIMWXZzv+tzHQ05Lns/qFF
	ZQQYFf4Rx5vGnnRMQ4lWPu31q0UmBb3INGOg9Zex9isHsNBHIa5AvDpvQe4lD7uW7yz6sz9uO3bMz
	X5CBsLF33YV7NYifYAUt9qNyj8UZyfdSbIS9zN/IU24WHNIlIVsfgetK9kCROQr2woMV2AlznhItM
	8PJ91JVA2fUqy+EZV7nH07l2vCqoSlKYIhJFmjJzJeAPs2O7nljkEYxsiDvd/fgeeCyvJ6/OxwFGc
	b4a28cqEekY1PmwcFzrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Hgi-0005Aj-QK; Thu, 27 Feb 2020 11:50:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7HgZ-0005AD-FS
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:50:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B003D1FB;
 Thu, 27 Feb 2020 03:50:34 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5F1E73F73B; Thu, 27 Feb 2020 03:50:33 -0800 (PST)
Date: Thu, 27 Feb 2020 11:50:31 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 10/19] arm64: mte: Handle synchronous and asynchronous
 tag check faults
Message-ID: <20200227115031.GC3281767@arrakis.emea.arm.com>
References: <20200226180526.3272848-1-catalin.marinas@arm.com>
 <20200226180526.3272848-11-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226180526.3272848-11-catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_035035_564665_58579880 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 06:05:17PM +0000, Catalin Marinas wrote:
> diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
> index fc6488660f64..d4a378bc0a60 100644
> --- a/arch/arm64/kernel/Makefile
> +++ b/arch/arm64/kernel/Makefile
> @@ -63,6 +63,7 @@ obj-$(CONFIG_CRASH_CORE)		+= crash_core.o
>  obj-$(CONFIG_ARM_SDE_INTERFACE)		+= sdei.o
>  obj-$(CONFIG_ARM64_SSBD)		+= ssbd.o
>  obj-$(CONFIG_ARM64_PTR_AUTH)		+= pointer_auth.o
> +obj-$(CONFIG_ARM64_MTE)			+= mte.o
>  
>  obj-y					+= vdso/ probes/
>  obj-$(CONFIG_COMPAT_VDSO)		+= vdso32/
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 9461d812ae27..9338b340e869 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
[...]
> @@ -738,6 +763,8 @@ work_pending:
>   */
>  ret_to_user:
>  	disable_daif
> +	/* Check for asynchronous tag check faults in the uaccess routines */
> +	check_mte_async_tcf x1, x2
>  	gic_prio_kentry_setup tmp=x3
>  	ldr	x1, [tsk, #TSK_TI_FLAGS]
>  	and	x2, x1, #_TIF_WORK_MASK

I got this wrong, check_mte_async expects the flags as the first
argument (one may experience weird behaviour with overriding the TIF
flags; thanks to Kevin for debugging). The diff below should fix it:

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 9338b340e869..6e7f315911e8 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -764,9 +764,9 @@ work_pending:
 ret_to_user:
 	disable_daif
 	/* Check for asynchronous tag check faults in the uaccess routines */
-	check_mte_async_tcf x1, x2
 	gic_prio_kentry_setup tmp=x3
 	ldr	x1, [tsk, #TSK_TI_FLAGS]
+	check_mte_async_tcf x1, x2
 	and	x2, x1, #_TIF_WORK_MASK
 	cbnz	x2, work_pending
 finish_ret_to_user:

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
