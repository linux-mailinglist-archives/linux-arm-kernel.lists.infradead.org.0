Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4B22DB05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VeH83n0ZYBjm9EEdGdZW0N1g2L/5UnGAVB1CMa81K4w=; b=T4nX3HMWOfRZDH
	52+vntuNqGYZGCvVgqMbBBPwo96BDh3PsUgL0RjGq7Un6re8252JOBFTu5Ucfr0Sy7XB6TmIw8Ull
	X6qzApHlkMjkQhZlKjdHeF/fIMixErdEa3rxo0jFZClUxCAwPMm2Z5ikuHO9he1sjpvC/IfRIAjoC
	gdPjVaouiKIj0U8HgqSu6OLnWqu8zUOuggl47NfIzpNoHQYWHVSFWLJMp8FVV0iNYcrNDZs0gRBiI
	pmgmwccWEdHz5/J3S8jKjxTIDrG0NbLVcAS80Xc//WkcQFDO3K9gF1Fkp4XuN4njOyLCP5rw63g6W
	29SUKmBzeXs3Idg+reDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVw8e-0001DE-3R; Wed, 29 May 2019 10:48:56 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVw89-0001BU-8g; Wed, 29 May 2019 10:48:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A32A341;
 Wed, 29 May 2019 03:48:16 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 333153F59C;
 Wed, 29 May 2019 03:48:12 -0700 (PDT)
Date: Wed, 29 May 2019 11:48:01 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [RFT PATCH v5 3/5] cpu-topology: Move cpu topology code to
 common code.
Message-ID: <20190529104801.GA13155@e107155-lin>
References: <20190524000653.13005-1-atish.patra@wdc.com>
 <20190524000653.13005-4-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524000653.13005-4-atish.patra@wdc.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_034829_243961_F07EA639 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, linux-riscv@lists.infradead.org,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Andreas Schwab <schwab@suse.de>,
 Ingo Molnar <mingo@kernel.org>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Sudeep Holla <sudeep.holla@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 05:06:50PM -0700, Atish Patra wrote:
> Both RISC-V & ARM64 are using cpu-map device tree to describe
> their cpu topology. It's better to move the relevant code to
> a common place instead of duplicate code.
>

I couldn't test this on any ARM64 server platforms, tested on Juno
and other embedded platforms.

Tested-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Tested-by: Jeffrey Hugo <jhugo@codeaurora.org>
> ---
>  arch/arm64/include/asm/topology.h |  23 ---
>  arch/arm64/kernel/topology.c      | 303 +-----------------------------
>  drivers/base/arch_topology.c      | 296 +++++++++++++++++++++++++++++
>  include/linux/arch_topology.h     |  28 +++
>  include/linux/topology.h          |   1 +
>  5 files changed, 329 insertions(+), 322 deletions(-)
>

[...]

> diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
> index 0825c4a856e3..6b95c91e7d67 100644
> --- a/arch/arm64/kernel/topology.c
> +++ b/arch/arm64/kernel/topology.c
>

[...]

> -static int __init parse_cluster(struct device_node *cluster, int depth)
> -{
> -	char name[10];
> -	bool leaf = true;
> -	bool has_cores = false;
> -	struct device_node *c;
> -	static int package_id __initdata;
> -	int core_id = 0;

[Ultra minor nit]: you seem to have reordered the above declaration when
you moved, just noticed as it showed up when comparing.

> diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
> index 1739d7e1952a..20a960131bee 100644
> --- a/drivers/base/arch_topology.c
> +++ b/drivers/base/arch_topology.c

[...]

> +
> +static int __init parse_cluster(struct device_node *cluster, int depth)
> +{
> +	char name[10];
> +	bool leaf = true;
> +	bool has_cores = false;
> +	int core_id = 0;
> +	static int package_id __initdata;
> +	struct device_node *c;
> +	int i, ret;
> +

[...]

> +#if defined(CONFIG_ARM64) || defined(CONFIG_RISCV)
> +void update_siblings_masks(unsigned int cpu);
> +#endif
> +void remove_cpu_topology(unsigned int cpuid);
> +

Another thing(not a block and we can do it once this is merged) is to
remove these #ifdefs

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
