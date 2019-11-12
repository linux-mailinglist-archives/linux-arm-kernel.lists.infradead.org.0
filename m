Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C7DF8C3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 10:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCeNhsFRjNnq6MqV6nfioMB3HJo4TTch1clzEgU1UeE=; b=fxCrfGjLUIay+N
	HJFHAMr+jw65oEO0qFd0tGcq2PtlcdszMIhLSRcLnuBZ1xJj6ENuwvU1HWsQes3xEzHtNj8QlBSoq
	g/Qn3dZfAT8NpoALKJnnpYuJdQR7YlqhgxRUj2zfdSd2SKlM7HapW8sHZkI7tHyc/usYlWKUfn18X
	xY374ItwFus8jF4vCO2nMME3QnlH+MKy1NnhDwq9dzvT36j/mop7GwWlesPb2Mu0N9Lmz+zsMqfvV
	XuNzis0+8kUPssKdwa8kgL/CwbZvfQhCBWH/L5t8/I/1rzngkjoVlBPO/sZHVT1KTOPNXqwytP3xB
	XS02YjwpTDdZvrCQExZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUSqw-0004N6-R1; Tue, 12 Nov 2019 09:52:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSqo-0004Mn-QA
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 09:52:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB94D1FB;
 Tue, 12 Nov 2019 01:52:41 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 44FD03F534;
 Tue, 12 Nov 2019 01:52:41 -0800 (PST)
Date: Tue, 12 Nov 2019 09:52:39 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH v5] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20191112095238.GB32269@lakrids.cambridge.arm.com>
References: <20191108135751.3218-1-rth@twiddle.net>
 <20191108143025.GD11465@lakrids.cambridge.arm.com>
 <846ba15f-b777-c0c9-6720-32b96d6c45ed@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <846ba15f-b777-c0c9-6720-32b96d6c45ed@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_015242_934341_5F8C5575 
X-CRM114-Status: GOOD (  27.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 09, 2019 at 10:04:28AM +0100, Richard Henderson wrote:
> On 11/8/19 3:30 PM, Mark Rutland wrote:
> > On Fri, Nov 08, 2019 at 02:57:51PM +0100, Richard Henderson wrote:
> >> From: Richard Henderson <richard.henderson@linaro.org>
> >>
> >> Expose the ID_AA64ISAR0.RNDR field to userspace, as the
> >> RNG system registers are always available at EL0.
> >>
> >> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> >> ---
> >> v2: Use __mrs_s and fix missing cc clobber (Mark),
> >>     Log rng failures with pr_warn (Mark),
> > 
> > When I suggested this, I meant in the probe path.
> > 
> > Since it can legitimately fail at runtime, I don't think it's worth
> > logging there. Maybe it's worth recording stats, but the generic wrapper
> > could do that.
> 
> Ah, ok, dropped.
> 
> >> +#ifdef CONFIG_ARCH_RANDOM
> >> +	{
> >> +		.desc = "Random Number Generator",
> >> +		.capability = ARM64_HAS_RNG,
> >> +		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
> > 
> > As above, if we're advertisting this to userspace and/or VMs, this must
> > be a system-wide feature, and cannot be a weak local feature.
> 
> Could you draw me the link between struct arm64_cpu_capabilities, as seen here,
> and struct arm64_ftr_bits, which exposes the system registers to userspace/vms?
> 
> AFAICS, ARM64_HAS_RNG is private to the kernel; there is no ELF HWCAP value
> exposed to userspace by this.

The cap is kernel-private, but in arm64_ftr_bits the field was marked
FTR_VISIBLE, which means the field is exposed to userspace and VMs via
ID register emulation.

> The adjustment of ID_AA64ISAR0.RNDR is FTR_LOWER_SAFE, which means the minimum
> value of all online cpus.  (Which seems to generate a pr_warn in
> check_update_ftr_reg for hot-plug secondaries that do not match.)

You're right that we'll warn (due to the STRICT mask), but I think that
given we're fairly certain we'll see mismatched systems, we should
handle that now rather than punt it a few months down the line.

> > We don't bother with special-casing local handling mismatch like this
> > for other features. I'd ratehr that:
> > 
> > * On the boot CPU, prior to detecting secondaries, we can seed the usual
> >   pool with the RNG if the boot CPU has it.
> > 
> > * Once secondaries are up, if the feature is present system-wide, we can
> >   make use of the feature as a system-wide feature. If not, we don't use
> >   the RNG.
> 
> Unless I'm mis-reading things, there is not a setting for ARM64_CPUCAP_* that
> allows exactly this.  If I use ARM64_CPUCAP_SYSTEM_FEATURE, then the feature is
> not detected early enough for the boot cpu.

Early in the boot process you can use this_cpu_has_cap(). My suggestion
was to have an explicit point (e.g. somewhere in setup_arch(), or an
initcall), were we check that and seed entropy on the boot CPU if
possible.

> I can change this to ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE.  That way it is
> system-wide, and also detected early enough to be used for rand_initialize().
> However, it has the side effect that secondaries are not allowed to omit RNG if
> the boot cpu has RNG.

Can we refactor things so that early-on (at rand_initialize() time), we
call a different arch helper, e.g. a new arch_get_early_random*()?

Then that could do the this_cpu_has_cap() check to initialize things,
and at runtime we cna rely on the system-wide cap.

> Is there some setting that I've missed?  Is it ok to kick the problem down the
> road until someone actually builds mis-matched hardware?

As above, I think that we an be fairly certain we're going to encounter
such systems, and it's going to be more painful to retrofit support
later (e.g. as we'll have to backport that), so I'd rather we handle
that up-front.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
