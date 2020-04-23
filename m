Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 348991B604D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 18:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofrYpr14y2OoL6iPymaf0ObCi9HJNQNVNyGd6dugPZQ=; b=R4K9M1X5rbshlM
	z7HNtZQbhaFFL+MUbvj5+I1Do9jSnKLyz79FUtJIfBYDwDqJZhLZkv1+Scx34s0HGYKBRjZ2q/pHi
	3+uoOee+0C7PBeF9jS0nlN6kQE3LfUnMptw1KMwhF7bKzoC41XSWeDaA84fqnJ3EHWoeCVtJRm0xa
	C6bwXHJSqMM60Ffy2K5sV6DJf0j1zc4dLGYGDg+urrdUZaxFQfgSi8tmHIyE5Rcos92UrGGJLoTnu
	MSqHtdCxg5fnmcyrLjVJq0wAfNeyUQWuIphPRlJ/U8xd09V1UTgXGlHI2eg66kqIjQMpYUsOVPysN
	b/iEKx0xfI/EIKoskRHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jReMt-0002eA-2A; Thu, 23 Apr 2020 16:06:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jReMj-0002c8-Ov
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 16:06:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DB2230E;
 Thu, 23 Apr 2020 09:06:12 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.95])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B1CD03F68F;
 Thu, 23 Apr 2020 09:06:10 -0700 (PDT)
Date: Thu, 23 Apr 2020 17:06:07 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH 2/2] arm64: simplify ptrauth initialization
Message-ID: <20200423160607.GC46455@C02TD0UTHF1T.local>
References: <20200423101606.37601-1-mark.rutland@arm.com>
 <20200423101606.37601-3-mark.rutland@arm.com>
 <d169e82f-1064-8af4-c385-b1c3cb1206e7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d169e82f-1064-8af4-c385-b1c3cb1206e7@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_090617_851878_FAC1D54B 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 08:05:42PM +0530, Amit Kachhap wrote:
> Hi,
> 
> On 4/23/20 3:46 PM, Mark Rutland wrote:
> > Currently __cpu_setup conditionally initializes the address
> > authentication keys and enables them in SCTLR_EL1, doing so differently
> > for the primary CPU and secondary CPUs, and skipping this work for CPUs
> > returning from an idle state. For the latter case, cpu_do_resume
> > restores the keys and SCTLR_EL1 value after the MMU has been enabled.
> > 
> > This flow is rather difficult to follow, so instead let's move the
> > primary and secondary CPU initialization into their respective boot
> > paths. By following the example of cpu_do_resume and doing so once the
> > MMU is enabled, we can always initialize the keys from the values in
> > thread_struct, and avoid the machinery necessary to pass the keys in
> > secondary_data or open-coding initialization for the boot CPU.
> > 
> > This means we perform an additional RMW of SCTLR_EL1, but we already do
> > this in the cpu_do_resume path, and for other features in cpufeature.c,
> > so this isn't a major concern in a bringup path. Note that even while
> > the enable bits are clear, the key registers are accessible.
> > 
> > As this now renders the argument to __cpu_setup redundant, let's also
> > remove that entirely. Future extensions can follow a similar approach to
> > initialize values that differ for primary/secondary CPUs.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> 
> The code changes look good. I couldn't find any problem while testing it.
> 
> Tested-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> Reviewed-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

Thanks; that's much appreciated!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
