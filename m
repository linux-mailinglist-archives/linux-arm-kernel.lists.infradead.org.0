Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1054C187E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 11:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A22+gN28RbX8InkMvlipq9GF9/7LswyHjjDle1zrwfo=; b=s7oNq1VvVZWMDv
	Xa46vQwdIq8ZnVKnsbPzhD60ESONFfNlL+KX+QxU9xPIN3jxWtw8wiCVBvM6Aol2BEpGH2bcJ0kAE
	+L5pVhovpGCLVkpH8cTYSLLdQey/bo0uzFjzfThUYEya49zs/liUKGWfkiyFCi5hdBYNGUsBa7aTT
	+/UD5seLOb270V9TJ8dIWRlh6EIBZ9I2aqgxOgQLn2H5qmbtaZrQz7fCH/nFxzDIbfzVZ2gRID4SE
	PUfSP1UIN0W1o3Q82QtwkaMQNLwlBoURDDurrLzsc/JF89wxtVb66jO2GEeo86MJ6eSYbOcScXjGN
	koFu3rUQ+Its+kr8o6Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfY6-0002Fo-4d; Thu, 09 May 2019 09:41:10 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfXp-0002F6-Ns
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 09:40:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2805374;
 Thu,  9 May 2019 02:40:51 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2150C3F575;
 Thu,  9 May 2019 02:40:49 -0700 (PDT)
Date: Thu, 9 May 2019 10:40:44 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Prasad Sodagudi <psodagud@codeaurora.org>
Subject: Re: [PATCH] kernel/panic: Use SYSTEM_RESET2 command for warm reset
Message-ID: <20190509094021.GA8239@e107155-lin>
References: <ce0b66f5d00e760f87ddeeacbc40b956@codeaurora.org>
 <1557366432-352469-1-git-send-email-psodagud@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557366432-352469-1-git-send-email-psodagud@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_024053_787220_04630166 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, julien.thierry@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 06:47:12PM -0700, Prasad Sodagudi wrote:
> Some platforms may need warm reboot support when kernel crashed
> for post mortem analysis instead of cold reboot. So use config
> CONFIG_WARM_REBOOT_ON_PANIC and SYSTEM_RESET2 psci command
> support for warm reset.
>

Please drop all the references to PSCI and SYSTEM_RESET2 including
in subject. This is more generic and PSCIv1.1 with SYSTEM_RESET2 can
make use of it.

> Signed-off-by: Prasad Sodagudi <psodagud@codeaurora.org>
> ---
>  kernel/panic.c    |  4 ++++
>  lib/Kconfig.debug | 10 ++++++++++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/kernel/panic.c b/kernel/panic.c
> index c1fcaad..6ab6675 100644
> --- a/kernel/panic.c
> +++ b/kernel/panic.c
> @@ -198,6 +198,10 @@ void panic(const char *fmt, ...)
>  
>  	console_verbose();
>  	bust_spinlocks(1);
> +#ifdef CONFIG_WARM_REBOOT_ON_PANIC
> +	/* Configure for warm reboot instead of cold reboot. */
> +	reboot_mode = REBOOT_WARM;
> +#endif
>  	va_start(args, fmt);
>  	len = vscnprintf(buf, sizeof(buf), fmt, args);
>  	va_end(args);
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index d695ec1..2a727d8 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -1000,6 +1000,16 @@ config PANIC_TIMEOUT
>  	  value n > 0 will wait n seconds before rebooting, while a timeout
>  	  value n < 0 will reboot immediately.
>  
> +config WARM_REBOOT_ON_PANIC
> +	bool "Warm reboot instead of cold reboot for panic"
> +	default n
> +	help
> +	  Some vendor platform may need warm reboot instead of cold reboot
> +	  for debugging. Before vendor specific power off driver is
> +	  probed, platform always gets cold reset. By setting Y here and
> +	  support for PSCI V1.1 is present from firmware, platform would
> +	  get warm reset instead of cold reset.
> +

Ditto here, drop PSCI reference. Since it's being pushed as generic
solution, expecting anyone reading this to understand what is this PSCI
makes no sense and may be even confusing.

--
Regards,
Sudeep


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
