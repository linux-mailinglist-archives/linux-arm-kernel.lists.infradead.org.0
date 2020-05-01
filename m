Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0835B1C1AA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 18:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGJn/OL5n+rBApYB/bVwgb72HHgoigdEO2lJncPnBLI=; b=C4952DXo+abCcL
	1ezE53mTx0pGFFqCcZcv0T01Ux/W79stPL6/C1BSB2GiB9xXgJ8ZEcEm3S+dhOTuUkHFoE7Cd+Adv
	WNkIU7VqAqYoKtc2AV2pz8xsFJ8uOQm+QrhAhSoxa4iXOMMUDl7OqllOXYHfApevVoMR3Jb0ZU6LP
	7A4dHSnE6hm1FHqfJfdfWR8cgkrhV7SUedJjjZ40s6V/8TnMhN6fOj4vgtIRkBpznO3tioN9pWCSE
	b5Q/YUiruMXPhiNcPbRPuhi2UVt7iLgl4OOvQOUGz2pYGUM6U/A+MT4tHdHa+KieS7tr+gSoYKBSE
	sgz9MTq0YfVnYNECYvnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUYau-0000bF-2e; Fri, 01 May 2020 16:32:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUYal-0000Zl-NL
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 16:32:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8FFE930E;
 Fri,  1 May 2020 09:32:46 -0700 (PDT)
Received: from bogus (unknown [10.37.12.80])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D52B43F68F;
 Fri,  1 May 2020 09:32:42 -0700 (PDT)
Date: Fri, 1 May 2020 17:32:39 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 05/16] clk: versatile: Only enable SP810 on 32-bit by
 default
Message-ID: <20200501163239.GB14018@bogus>
References: <20200429205825.10604-1-robh@kernel.org>
 <20200429205825.10604-6-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429205825.10604-6-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_093247_807437_D289CAC6 
X-CRM114-Status: GOOD (  15.67  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 03:58:14PM -0500, Rob Herring wrote:
> While 64-bit Arm reference platforms have SP810 for clocks for SP804
> timers, they are not needed since the arch timers are used instead.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>

With a note below for sake of information,

Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Acked-by: Liviu Dudau <liviu.dudau@arm.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/clk/versatile/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
> index df0d50bb846c..a47dd6c86d2e 100644
> --- a/drivers/clk/versatile/Kconfig
> +++ b/drivers/clk/versatile/Kconfig
> @@ -17,7 +17,7 @@ config ICST
>  
>  config CLK_SP810
>  	bool "Clock driver for ARM SP810 System Controller"
> -	default y if ARCH_VEXPRESS
> +	default y if (ARCH_VEXPRESS && ARM)

Just note that SP804 is selected by ARCH_HISILICON and ARCH_BRCM or
something for Raspberry Pi. So, this will result in the warnings on
Juno like:

sp804: timer clock not found: -517
sp804: arm,sp804 clock not found: -2
sp804: timer clock not found: -517
sp804: arm,sp804 clock not found: -2

This can be ignored as we rely on arch-timers and they are just there
in DT for completion. We can disable them in DT if that's fine ?

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
