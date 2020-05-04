Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56111C39A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3gQkRqBf+K1lDNbojMhp6nJnIGjLGzsvkPXtKGJRBA=; b=ubi8sBbNM2/4Lw
	ZIAPjqT/tEbACf+NX3iqC0kGNSX5/ekNofZMTmoGo4adxvMYnFzMp3ZYr23FCt+Pr7wyug9yw7/CR
	gkgRXma86rVC8B3V8WjCu0ObjPAlYwgZnaFd1xJW3BfyWFBHm3AvcO2X111v5tVxO1FvXQtLvBZ0e
	8v2E9p0wtAiW0m6kR2i/ixzoEPfdAmVQX4JRP+xwh43O7ChRmzjNaX5j9moqB+IwAXex3OoaiBoS7
	g2Du+fDQ80UrvkGxFuTlROplZKUEzEAgoZYYKR1XdGQet7TKPytCG/ozg11btP6DGPvGen7h/RJZt
	1olElRHz3cWNPxbOpujA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaRg-0002C0-PN; Mon, 04 May 2020 12:43:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaRX-0002Aq-KF
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:43:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61B061FB;
 Mon,  4 May 2020 05:43:28 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.4.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2C3803F71F;
 Mon,  4 May 2020 05:43:27 -0700 (PDT)
Date: Mon, 4 May 2020 13:43:21 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/cpuinfo: Drop boot_cpu_data
Message-ID: <20200504124321.GA73375@C02TD0UTHF1T.local>
References: <1588595400-4560-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588595400-4560-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_054331_784194_7E6175EB 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Suzuki Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 06:00:00PM +0530, Anshuman Khandual wrote:
> A global boot_cpu_data is not really required. Lets drop this.

I don't think it's true that this isn't required today.

One reason that we have both boot_cpu_data and a cpu_data variable for
CPU0 is that CPU0 itself can be hotplugged out then back in, and this
allows us to detect if CPU0's features have changed (e.g. due to FW
failing to configure it appropriately, or real physical hotplug
occurring).

So NAK to the patch as it stands. If we're certain we capture all of
those details even without boot_cpu_data, then we should make other
changes to make that clear (e.g. removing it as an argument to
update_cpu_features()).

Thanks,
Mark.

> While here, rename the local variable as boot_cpu_info when it is
> fetched for the boot cpu.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
> Based on 5.7-rc4
> 
>  arch/arm64/kernel/cpuinfo.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
> index a515d8f3639e..dabcdc132e56 100644
> --- a/arch/arm64/kernel/cpuinfo.c
> +++ b/arch/arm64/kernel/cpuinfo.c
> @@ -31,7 +31,6 @@
>   * values depending on configuration at or after reset.
>   */
>  DEFINE_PER_CPU(struct cpuinfo_arm64, cpu_data);
> -static struct cpuinfo_arm64 boot_cpu_data;
>  
>  static const char *icache_policy_str[] = {
>  	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN",
> @@ -393,15 +392,16 @@ static void __cpuinfo_store_cpu(struct cpuinfo_arm64 *info)
>  void cpuinfo_store_cpu(void)
>  {
>  	struct cpuinfo_arm64 *info = this_cpu_ptr(&cpu_data);
> +	struct cpuinfo_arm64 *boot_cpu_info = &per_cpu(cpu_data, 0);
> +
>  	__cpuinfo_store_cpu(info);
> -	update_cpu_features(smp_processor_id(), info, &boot_cpu_data);
> +	update_cpu_features(smp_processor_id(), info, boot_cpu_info);
>  }
>  
>  void __init cpuinfo_store_boot_cpu(void)
>  {
> -	struct cpuinfo_arm64 *info = &per_cpu(cpu_data, 0);
> -	__cpuinfo_store_cpu(info);
> +	struct cpuinfo_arm64 *boot_cpu_info = &per_cpu(cpu_data, 0);
>  
> -	boot_cpu_data = *info;
> -	init_cpu_features(&boot_cpu_data);
> +	__cpuinfo_store_cpu(boot_cpu_info);
> +	init_cpu_features(boot_cpu_info);
>  }
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
