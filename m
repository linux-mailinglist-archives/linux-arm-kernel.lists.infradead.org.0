Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31A0CFD22
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6nFtCirJl9JdbxvXITjAGmYEs5Tg6h8ldt5+kTMXrw=; b=EwfBV6BOKHHdBL
	qf3V2GmLHCD/LLBKJ6JgRpl5EdvhVVPiu3Ora9MUEaK0o4xVFhpgjfWfu2XgYvyK870wETF8B98jg
	z2hBqTfA5+GrXnVzgJEbSGKxXXmf/s/n/yKbU4EHC7UhusDU9YHrTbdakDy7my3goP7w0zJw2rSVS
	oFgrmetmbK6Ap0J59eVbiIXPGY6QPx18R+eCqm2sOtvGT50SSmrQiVFIHa5Y66VuvCYf6GoXRJlYL
	GD2SFb6A2YDYiJio9pCoWLJibMOKOlle2aRnwXCOH7XOJM+vckAviY7eEwL0VZP1iqAZ9wpJ/qc+v
	ezVYS+GHFbunsVFZEA/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHr3H-0001LM-TD; Tue, 08 Oct 2019 15:05:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHr2y-0000qK-Bq
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:05:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B6FF15BF;
 Tue,  8 Oct 2019 08:05:07 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A628D3F68E;
 Tue,  8 Oct 2019 08:05:05 -0700 (PDT)
Date: Tue, 8 Oct 2019 16:05:03 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC/RFT PATCH 11/16] arm64: Always enable spectre-v2
 vulnerability detection
Message-ID: <20191008150503.GB14523@lakrids.cambridge.arm.com>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
 <20191004120430.11929-12-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004120430.11929-12-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_080508_509013_4CFEFF57 
X-CRM114-Status: GOOD (  16.29  )
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 02:04:25PM +0200, Ard Biesheuvel wrote:
> From: Jeremy Linton <jeremy.linton@arm.com>
> 
> Ensure we are always able to detect whether or not the CPU is affected
> by Spectre-v2, so that we can later advertise this to userspace.
> 
> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> (cherry picked from commit 8c1e3d2bb44cbb998cb28ff9a18f105fee7f1eb3)
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  arch/arm64/kernel/cpu_errata.c | 47 ++++----------------
>  1 file changed, 8 insertions(+), 39 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
> index def847873d21..ae7d6761262f 100644
> --- a/arch/arm64/kernel/cpu_errata.c
> +++ b/arch/arm64/kernel/cpu_errata.c

> -/*
> - * Generic helper for handling capabilties with multiple (match,enable) pairs
> - * of call backs, sharing the same capability bit.
> - * Iterate over each entry to see if at least one matches.
> - */
> -static bool __maybe_unused
> -multi_entry_cap_matches(const struct arm64_cpu_capabilities *entry, int scope)
> -{
> -	const struct arm64_cpu_capabilities *caps;
> -
> -	for (caps = entry->match_list; caps->matches; caps++)
> -		if (caps->matches(caps, scope))
> -			return true;
> -
> -	return false;
> -}
> -
> -/*
> - * Take appropriate action for all matching entries in the shared capability
> - * entry.
> - */
> -static void __maybe_unused
> -multi_entry_cap_cpu_enable(const struct arm64_cpu_capabilities *entry)
> -{
> -	const struct arm64_cpu_capabilities *caps;
> -
> -	for (caps = entry->match_list; caps->matches; caps++)
> -		if (caps->matches(caps, SCOPE_LOCAL_CPU) &&
> -		    caps->cpu_enable)
> -			caps->cpu_enable(caps);
> -}
> -

Bad rebase? These weren't removed in the upstream commit, and I can't
spot a reason to do so here.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
