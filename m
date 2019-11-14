Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3741EFC8DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 15:25:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFfkhOv52Tulp4Ui7XsK/QjyNpz45eNYEj7DJ6PYwaY=; b=ajHUXKOe1AYr0W
	1JYeIbDrQbP817xzO1/gMiUajWLDniz7E2bTn0bsBFdsydDR2qyDrn8mTzbM5JRSdHvkKF2zHWkKS
	Fdh0SL1PFPxHqu5oVYhHd2wwLN3QPBca2vuthRgC76tAAG4RudVFBLDbUwEsFMUMpW6bS0WBvH2vW
	nRJMv87s2R1hCcunnwIHsyJc8RbB2m0/FwDm0o5wq8H8wuutqTATROEVZjYC8qdCvHKyhvq70JcLf
	iyqsECADqmJraKXs+M9oXKyYHkiYYCjqYTz1QYoojjqtos9lUALi7aP3LzV3m5zomZHtpmKbewGs4
	G3da+Txc70iPG1CMkPbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVG3p-00016a-Fy; Thu, 14 Nov 2019 14:25:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVG3h-000164-A2
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 14:25:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F453328;
 Thu, 14 Nov 2019 06:25:15 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BD79B3F52E;
 Thu, 14 Nov 2019 06:25:14 -0800 (PST)
Date: Thu, 14 Nov 2019 14:25:12 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: richard.henderson@linaro.org
Subject: Re: [PATCH v7] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20191114142512.GC37865@lakrids.cambridge.arm.com>
References: <20191114113932.26186-1-richard.henderson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114113932.26186-1-richard.henderson@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_062517_392998_CAB5C20E 
X-CRM114-Status: GOOD (  12.36  )
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
Cc: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 12:39:32PM +0100, richard.henderson@linaro.org wrote:
> +bool arch_get_random_seed_long(unsigned long *v)
> +{
> +	bool ok;
> +
> +	if (static_branch_likely(&arm64_const_caps_ready)) {
> +		if (__cpus_have_const_cap(ARM64_HAS_RNG))
> +			return arm64_rndr(v);
> +		return false;
> +	}
> +
> +	/*
> +	 * Before const_caps_ready, check the current cpu.
> +	 * This will generally be the boot cpu for rand_initialize().
> +	 */
> +	preempt_disable_notrace();
> +	ok = this_cpu_has_cap(ARM64_HAS_RNG) && arm64_rndr(v);
> +	preempt_enable_notrace();
> +
> +	return ok;
> +}

As I asked previously, please separate the common case and the boot-cpu
init-time case into separate functions.

The runtime function should just check the RNG cap before using the
instruction, without any preemption check or explicit check of
arm64_const_caps_ready. i.e.

static bool arm64_rndr(unsigned long *v)
{
	bool ok;

	if (!cpus_have_const_cap(ARM64_HAS_RNG))
		return false;

	/*
	 * Reads of RNDR set PSTATE.NZCV to 0b0000 on success,
	 * and set PSTATE.NZCV to 0b0100 otherwise.
	 */
	asm volatile(
		__mrs_s("%0", SYS_RNDR_EL0) "\n"
	"       cset %w1, ne\n"
	: "=r" (*v), "=r" (ok)
	:
	: "cc");

	return ok;
}

Any boot-time seeding should be in a separate function that external
callers cannot invoke at runtime. Either have an arch function that the
common random code calls at init time on the boot CPU, or have some
arch_add_foo_entropy() function that the arm64 code can call somewhere
around setup_arch().

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
