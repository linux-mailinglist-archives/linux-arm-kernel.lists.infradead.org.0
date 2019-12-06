Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2691155DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:56:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5MreGKvBRq0eUdtozAlM7yjvjTiJATjgj0/8NmPigA=; b=iZ4eefRfXDko0N
	4s2yByWAP5xSxXSFGheMy/d1ds8I7sd5IU23ULS/jNEYOpXL/sMKRwrRCGFe1h4d3TzksAZy7DPw+
	sDvkw9c7V0WrsBN/FrJtEqCYZ1qxjtIzdrNc6Inf65fDByGTDe9vX3j/f6hHyF2NrUhocnC1uEsYY
	Ul0JzZOtTlmMleAVe6jHrgH2VdrqPWH0P+fOpdXWETMEcO3FhIafxAmK1qUEXf6E9UxmYhL3JpSyS
	OtSKhtRvPd7t8CYDlReeJk1276jRiN5tciqASNgXfWqXXnRxl38ULYgVt7ioEk8qYhpd0iko6zcyw
	clIyfsxeCnSror+SNy9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGtm-0001L8-7D; Fri, 06 Dec 2019 16:56:10 +0000
Received: from [2601:1c0:6280:3f0::3deb]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGtf-0001K3-PA; Fri, 06 Dec 2019 16:56:03 +0000
Subject: Re: [PATCH 1/3] cpuinfo: add sysfs based arch independent cpuinfo
 framework
To: Thomas Renninger <trenn@suse.de>, linux-kernel@vger.kernel.org
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206162421.15050-2-trenn@suse.de>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <65a20b22-8cc9-4492-25d5-4f03727086e8@infradead.org>
Date: Fri, 6 Dec 2019 08:56:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191206162421.15050-2-trenn@suse.de>
Content-Language: en-US
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, gregkh@linuxfoundation.org,
 x86@kernel.org, will.deacon@arm.com, linux@armlinux.org.uk,
 fschnitzlein@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/6/19 8:24 AM, Thomas Renninger wrote:
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 48b5e103bdb0..39015570b1ca 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -882,6 +882,17 @@ config STRICT_MODULE_RWX
>  	  and non-text memory will be made non-executable. This provides
>  	  protection against certain security exploits (e.g. writing to text)
>  
> +config CPUINFO_SYSFS
> +	bool "Provides processor information in sysfs. Successor of /proc/cpuinfo"

	      Provide

> +	def_bool y
> +	depends on HAVE_CPUINFO_SYSFS
> +	help
> +	  Provides architecture specific processor information in /sys/devices/system/cpu/info> +	  Use this instead of /proc/cpuinfo

End those 2 sentences with periods (full stop), please.

> +
> +config HAVE_CPUINFO_SYSFS
> +	bool
> +
>  # select if the architecture provides an asm/dma-direct.h header
>  config ARCH_HAS_PHYS_TO_DMA
>  	bool


-- 
~Randy


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
