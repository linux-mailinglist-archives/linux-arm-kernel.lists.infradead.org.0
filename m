Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0866D10FC02
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 11:48:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ee2ijiEK8nXpI4ZPiP+SDKgNSlupPYODiyHE2x9+2es=; b=nLUfnvnFZIV2iP
	fG02Ebx39DEVfnxot7RF39tOyMkyk9STgGjuOWerYTmqHpHQqRuw8ex4gpFLYt1fCTObTK64Ov448
	XmmIV+l0mcjgCZYYzAJYEcM1yq7cGFjLBDI8IKQPmwxzlT6YDhXBIQGg3sepg1+AxyzCDEW/OFbjE
	jZbEMIXg9VQzMqSfBbDQNhssBRRKMp6eI5/G5/AFXD5iG2R5p/EDJK4DySRKyMuyeN5F0KDoIFVY/
	AEomz7Bi4Cde+PfnrIIlPrJFI+NsqF+gStxRIZtvid+Th3dyOhXJT3OEBSbBpwbdybyeVfPIWC4PN
	UwjK4YpRgeoQ7mHeAAIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic5jX-0004Ec-WA; Tue, 03 Dec 2019 10:48:44 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic5jQ-0004EH-TD
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 10:48:38 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 02:48:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,272,1571727600"; d="scan'208";a="412139875"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 03 Dec 2019 02:48:31 -0800
Received: from andy by smile with local (Exim 4.93-RC1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1ic5jL-0006Hs-7A; Tue, 03 Dec 2019 12:48:31 +0200
Date: Tue, 3 Dec 2019 12:48:31 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: pxa: Fix resource properties
Message-ID: <20191203104831.GN32742@smile.fi.intel.com>
References: <20191203104117.85517-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203104117.85517-1-linus.walleij@linaro.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_024836_987009_CB8C8E0F 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: soc@kernel.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 11:41:17AM +0100, Linus Walleij wrote:
> The conversion to properties changed one assignment and
> missed three other assignments in the same file, fix it
> up so the platform compiles.
> 
> The bug was reported by a few build bots but noone noticed.
> I noticed it when making other changes to the PXA platforms.

Ah, indeed, I compiled it on x86.
Thanks!

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

> 
> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Fixes: 50ec88120ea1 ("can: mcp251x: get rid of legacy platform data")
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ARM SoC folks: please apply this directly for fixes.
> ---
>  arch/arm/mach-pxa/icontrol.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-pxa/icontrol.c b/arch/arm/mach-pxa/icontrol.c
> index 0474a4b1394d..151e26ec0696 100644
> --- a/arch/arm/mach-pxa/icontrol.c
> +++ b/arch/arm/mach-pxa/icontrol.c
> @@ -89,7 +89,7 @@ static struct spi_board_info mcp251x_board_info[] = {
>  		.max_speed_hz    = 6500000,
>  		.bus_num         = 3,
>  		.chip_select     = 1,
> -		.platform_data   = &mcp251x_info,
> +		.properties      = mcp251x_properties,
>  		.controller_data = &mcp251x_chip_info2,
>  		.irq             = PXA_GPIO_TO_IRQ(ICONTROL_MCP251x_nIRQ2)
>  	},
> @@ -98,7 +98,7 @@ static struct spi_board_info mcp251x_board_info[] = {
>  		.max_speed_hz    = 6500000,
>  		.bus_num         = 4,
>  		.chip_select     = 0,
> -		.platform_data   = &mcp251x_info,
> +		.properties      = mcp251x_properties,
>  		.controller_data = &mcp251x_chip_info3,
>  		.irq             = PXA_GPIO_TO_IRQ(ICONTROL_MCP251x_nIRQ3)
>  	},
> @@ -107,7 +107,7 @@ static struct spi_board_info mcp251x_board_info[] = {
>  		.max_speed_hz    = 6500000,
>  		.bus_num         = 4,
>  		.chip_select     = 1,
> -		.platform_data   = &mcp251x_info,
> +		.properties      = mcp251x_properties,
>  		.controller_data = &mcp251x_chip_info4,
>  		.irq             = PXA_GPIO_TO_IRQ(ICONTROL_MCP251x_nIRQ4)
>  	}
> -- 
> 2.23.0
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
