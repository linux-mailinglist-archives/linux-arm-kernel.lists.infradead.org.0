Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 329EA187E49
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:29:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqLoFGsn1Ycr0Ts/4lqsBcVXSpOnTA4RYmlqh7N5v7w=; b=ugqTRMlrPZ2lDG
	ZS+eykYXuKZClgmaZnct3c0m4+xGYNv+1jx6wJFlPUU5SBmI3vUPog5xHR2Ki0Sxc4IHdi9RxGXIz
	6+UQkxD3cSXGHX6/hCRmlyeLIaeWw4EIuFryVBGS8AAgr9ScJh+l7oB2520WyYtgiH3uyUSzzrPhm
	XSDHjaf89pB8t/ub/Tpao3xIEGws26PM/9rhOjqek26k4mNm3gLHJGJv/eEDYswhjtcE31/UlImf9
	DZLcShl0boez+uvHEixhlBaotaCbGG4EKki1lK8yvm5SxYbGJYehSj5X/GCgjAJ+N0yrOxuVHKm90
	sfPN8jeShUECXkEp5hpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE9TB-0000QB-5H; Tue, 17 Mar 2020 10:29:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE9Sv-0000Nv-NJ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:28:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4BFB51FB;
 Tue, 17 Mar 2020 03:28:49 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 313923F52E;
 Tue, 17 Mar 2020 03:28:48 -0700 (PDT)
Date: Tue, 17 Mar 2020 10:28:46 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH v4 1/5] arm64: Declare ACPI parking protocol CPU
 operation if needed
Message-ID: <20200317102845.GD8831@lakrids.cambridge.arm.com>
References: <20200226002356.86986-1-gshan@redhat.com>
 <20200226002356.86986-2-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226002356.86986-2-gshan@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_032853_805595_0C7BD57D 
X-CRM114-Status: GOOD (  11.53  )
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 11:23:52AM +1100, Gavin Shan wrote:
> It's obvious we needn't declare the corresponding CPU operation when
> CONFIG_ARM64_ACPI_PARKING_PROTOCOL is disabled.
> 
> Signed-off-by: Gavin Shan <gshan@redhat.com>

Is there a problem leaving this as-is, e.g. a compiler warning? If so,
it'd be nice to mention that in the commit message.

We don't always bother placing declartions under ifdefs where the use
would result in a link-time error.

No strong feelings form me either way, so FWIW:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/cpu_ops.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
> index 7e07072757af..2082cfb1be86 100644
> --- a/arch/arm64/kernel/cpu_ops.c
> +++ b/arch/arm64/kernel/cpu_ops.c
> @@ -15,7 +15,9 @@
>  #include <asm/smp_plat.h>
>  
>  extern const struct cpu_operations smp_spin_table_ops;
> +#ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
>  extern const struct cpu_operations acpi_parking_protocol_ops;
> +#endif
>  extern const struct cpu_operations cpu_psci_ops;
>  
>  const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
