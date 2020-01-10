Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAB7137000
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DN0X3Kwz/qt6lgM4pYNFI8hXh66UHlmfLUh+Tf2duFs=; b=UT+A8kQJm0lpHY
	RtW1b07fIQ7hpWIcxhkF/06hpPxAixkO+80oc/x75V2EEYDXRe2esLKgx5EZ+yJ9DUFXkQuSbLzxO
	P+RNoFXC/f35jT1Y2w/rcyXQS+nifriQhSpJlKGM1umCjfS+VClmBpO3HdJZQXC0R52qcK1HG4N2T
	SrCKkNiRu3Byf78nbEq0CR2LOslUeRVJrQHLALrB6/OJHV60lYK0UehppjpWfl61BxtT59Iq0qnlI
	yyiuy5dejWSdWd4ojRK3bRrBQOjb/D8+Bd5R7UOQI9hJn0WvVSctuUwSQrHkbQSXU0WdYQzTdT9KD
	97mmBweXiPAhwJ2WhGHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvcx-0002Wx-FZ; Fri, 10 Jan 2020 14:51:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvcq-0002W5-8m
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 14:51:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F0FB30E;
 Fri, 10 Jan 2020 06:50:59 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 1C3BF3F6C4; Fri, 10 Jan 2020 06:50:58 -0800 (PST)
Date: Fri, 10 Jan 2020 14:50:56 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 3/7] arm64: cpufeature: Fix the type of no FP/SIMD
 capability
Message-ID: <20200110145055.GE8786@arrakis.emea.arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-4-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217183402.2259904-4-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_065100_351701_29E25FD6 
X-CRM114-Status: GOOD (  12.64  )
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 linux-kernel@vger.kernel.org, christoffer.dall@arm.com, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 06:33:58PM +0000, Suzuki K Poulose wrote:
> The NO_FPSIMD capability is defined with scope SYSTEM, which implies
> that the "absence" of FP/SIMD on at least one CPU is detected only
> after all the SMP CPUs are brought up. However, we use the status
> of this capability for every context switch. So, let us change
> the scope to LOCAL_CPU to allow the detection of this capability
> as and when the first CPU without FP is brought up.
> 
> Also, the current type allows hotplugged CPU to be brought up without
> FP/SIMD when all the current CPUs have FP/SIMD and we have the userspace
> up. Fix both of these issues by changing the capability to
> BOOT_RESTRICTED_LOCAL_CPU_FEATURE.
> 
> Fixes: 82e0191a1aa11abf ("arm64: Support systems without FP/ASIMD")
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
