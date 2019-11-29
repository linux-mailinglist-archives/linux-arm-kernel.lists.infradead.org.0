Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D929210D4DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 12:30:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAHvTetsn0cpAJc/W8QI/NBzgaAfHCeTITaAgnGp1Jk=; b=HCf3dNa+7OqPa9
	G9D9qr2OAsVGXivqJaztMaCvH/NPIy09yY7nLDji589cha0gVnJKxWxMtJFzbQw3GCbp3iKi7e3KW
	e4vOII6I9SGEcVWUOx1B6whhhznqS7ijhdHU6BD3S3aW2IcovyVT8wko6leppu+cTzc8yAisrLzBe
	lvjgMGV/bfzw0exTwEhMTVRlblvBcgDjchQYvi6HOBzhEdno5wIuJlmFcN82ZTn6c401gLJijXTkN
	pl2neaO6rQLrnSOJpfmD/HxE8ubMt6kaStOgjlBk67zSKUQaDzM8+ORCSQbDA3grgqPsm3eo7Dm5m
	npHab4XqPJGay4RJvo5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaeU9-0002rN-IM; Fri, 29 Nov 2019 11:30:53 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaeU2-0002qr-Uu
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 11:30:48 +0000
Received: from 79.184.255.242.ipv4.supernova.orange.pl (79.184.255.242) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.320)
 id edf759f14a6c300f; Fri, 29 Nov 2019 12:30:42 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH] cpuidle: minor Kconfig help text fixes
Date: Fri, 29 Nov 2019 12:30:42 +0100
Message-ID: <13585617.HsJz9ZEzGy@kreacher>
In-Reply-To: <b0e9d1df-8bb9-9eee-f433-c7a8e8269e06@infradead.org>
References: <b0e9d1df-8bb9-9eee-f433-c7a8e8269e06@infradead.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_033047_156367_F279F080 
X-CRM114-Status: GOOD (  10.02  )
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 Linux PM list <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday, November 28, 2019 11:38:03 PM CET Randy Dunlap wrote:
> From: Randy Dunlap <rdunlap@infradead.org>
> 
> End sentences in help text with a period (aka full stop).
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: linux-pm@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/cpuidle/Kconfig.arm |    6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> --- lnx-54.orig/drivers/cpuidle/Kconfig.arm
> +++ lnx-54/drivers/cpuidle/Kconfig.arm
> @@ -65,21 +65,21 @@ config ARM_U8500_CPUIDLE
>  	bool "Cpu Idle Driver for the ST-E u8500 processors"
>  	depends on ARCH_U8500 && !ARM64
>  	help
> -	  Select this to enable cpuidle for ST-E u8500 processors
> +	  Select this to enable cpuidle for ST-E u8500 processors.
>  
>  config ARM_AT91_CPUIDLE
>  	bool "Cpu Idle Driver for the AT91 processors"
>  	default y
>  	depends on ARCH_AT91 && !ARM64
>  	help
> -	  Select this to enable cpuidle for AT91 processors
> +	  Select this to enable cpuidle for AT91 processors.
>  
>  config ARM_EXYNOS_CPUIDLE
>  	bool "Cpu Idle Driver for the Exynos processors"
>  	depends on ARCH_EXYNOS && !ARM64
>  	select ARCH_NEEDS_CPU_IDLE_COUPLED if SMP
>  	help
> -	  Select this to enable cpuidle for Exynos processors
> +	  Select this to enable cpuidle for Exynos processors.
>  
>  config ARM_MVEBU_V7_CPUIDLE
>  	bool "CPU Idle Driver for mvebu v7 family processors"
> 

Applied as 5.5 material, thanks!




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
