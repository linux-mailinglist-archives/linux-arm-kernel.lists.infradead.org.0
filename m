Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F222088090
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jNDnofnnXg/rK3VM4lvnldwE7hk50PZJe4ku6wfcToE=; b=BQ+/Z2ooBUkmsS
	bcjWPu1LZhQVf6JO+YU82GqnfjeO+ybFDIx63yyuyVkxXQVU/k6f1FdR1bZG5MbXFKAJm+JGaQYWl
	d4y61ahh16oc/XJzS3xEebnSKkQnKHhOaBk4IW28E26TuEdA8yAZgTmjZdDgOss/82dWe8R+m4vGa
	Dp4Ppmoky45DJrk96htGk8+ssX3ipaNwEgoAHwaBwErNwfro6AoZFY7zWz5OWVFZW9Tkt7LlxSoWd
	PLeXSiA4GfdXoMCeKRhQw0MDrKinJEyK3iYKqCjXi1M2JZO0VpyUiFJGOXc9xDDUpt5PfzD49sDId
	YSCYatwCRKedmnXQR3+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw89N-0004Pl-Ff; Fri, 09 Aug 2019 16:53:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw89E-0004PL-Uu
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:53:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C199C2086A;
 Fri,  9 Aug 2019 16:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565369628;
 bh=9wbSn6LJh7acT2h7wInsGRfEhL2mf1j4PDVBbYpUZnA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z+srWe8CDYXXEzb9TFTXCqDeHrWV4CWVX3KBcTABLraCCx7n+HYqnsqA+PU/2qDoh
 gb4cvYdg/raT4ftzZNKqAJOoJ3EihmmMgv0RP6qaudGl7djUrhQuka4e34HJakWMnJ
 Qioe7WDnzlhyk7NxU0E86I+cgyy/ndf9faPSpuMM=
Date: Fri, 9 Aug 2019 17:53:43 +0100
From: Will Deacon <will@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH v2 7/8] arm64: defconfig: Enable the PSCI CPUidle driver
Message-ID: <20190809165343.5qg3nwgwy6ybms3k@willie-the-truck>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <cover.1565348376.git.lorenzo.pieralisi@arm.com>
 <58d9677db3510ed106fe23118090c84f78a44102.1565348376.git.lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58d9677db3510ed106fe23118090c84f78a44102.1565348376.git.lorenzo.pieralisi@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_095349_011841_136D96FC 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-pm@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 12:03:13PM +0100, Lorenzo Pieralisi wrote:
> Enable the PSCI CPUidle driver to replace the functionality
> previously provided by the generic ARM CPUidle driver through
> CPU operations.
> 
> Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0e58ef02880c..c0a7cfe3aebd 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -72,6 +72,7 @@ CONFIG_RANDOMIZE_BASE=y
>  CONFIG_HIBERNATION=y
>  CONFIG_WQ_POWER_EFFICIENT_DEFAULT=y
>  CONFIG_ARM_CPUIDLE=y
> +CONFIG_ARM_PSCI_CPUIDLE=y
>  CONFIG_CPU_FREQ=y
>  CONFIG_CPU_FREQ_STAT=y
>  CONFIG_CPU_FREQ_GOV_POWERSAVE=m

I'll queue the first 6 patches in this series, but please route this one
via arm-soc to avoid conflicts:

Acked-by: Will Deacon <will@kernel.org>

Failing that, I'm happy to take it at -rc1.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
