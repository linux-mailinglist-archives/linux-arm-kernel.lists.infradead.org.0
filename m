Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8811285A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zq8V69FyVP9BmqaKjclKfjBAZz1lOd4jbwLVYwwW9Yk=; b=Kue7ADz3w2TCsEyFAoP66AATJ
	LIZVMdoNaABxKx6t+kvctx3sW5A588VY3O/9bZAmnTU0NXBcIgyZSaYc5QZ18EWhRphj8yE8AKOrP
	Ma8h5k5RZZ4CbFOaPU0fdU9IpT8tToSRx9wYnw6fCzw7IeDgWavIE4ootJkBIErDZ3955kUaQMTep
	Jdg7iAMLtq+4jldx0Wmjq+mTgNbvNcLchDhRYmS7rcMeGzCNi0W/TQVyTx21Wer4ALx3DoyR2Ij7R
	jpAgAea/swxlaCFa9Lrgt3svYo1SfNH7/HUTWJWHKUbCUfNiMiyKjw6f+i9aaTZduJevVQntsZSFV
	gccT96XRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMSDY-00060M-8C; Fri, 03 May 2019 07:02:48 +0000
Received: from icp-osb-irony-out6.external.iinet.net.au ([203.59.1.106])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMSDQ-0005zr-KB
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:02:42 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AHAABU5stc/zXSMGcNWBkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgVMCAQEBAQELAYQlhBCTYwEBAQEBAQaBNYNehW6PBoF?=
 =?us-ascii?q?7hH0Chlc2Bw4BAwEBAQQBAQEBAoZfAQEBAQIBIwQRQQULCw0LAgImAgJXBg0?=
 =?us-ascii?q?GAgEBgx6BdwWtGXF8MxqFLYMqgUWBCycBgV2KBXiBB4E4gms+h06CWASLE4c?=
 =?us-ascii?q?mUJQkCYILkj4hjCcDiRyifwqBfTMaCCgIgyeCGxeOMWCTCQEB?=
X-IPAS-Result: =?us-ascii?q?A2AHAABU5stc/zXSMGcNWBkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgVMCAQEBAQELAYQlhBCTYwEBAQEBAQaBNYNehW6PBoF7hH0Chlc2Bw4BA?=
 =?us-ascii?q?wEBAQQBAQEBAoZfAQEBAQIBIwQRQQULCw0LAgImAgJXBg0GAgEBgx6BdwWtG?=
 =?us-ascii?q?XF8MxqFLYMqgUWBCycBgV2KBXiBB4E4gms+h06CWASLE4cmUJQkCYILkj4hj?=
 =?us-ascii?q?CcDiRyifwqBfTMaCCgIgyeCGxeOMWCTCQEB?=
X-IronPort-AV: E=Sophos;i="5.60,424,1549900800"; d="scan'208";a="157783043"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out6.iinet.net.au with ESMTP; 03 May 2019 15:02:26 +0800
Subject: Re: [PATCH 1/6] ARM: ks8695: watchdog: stop using mach/*.h
To: Arnd Bergmann <arnd@arndb.de>
References: <20190415202501.941196-1-arnd@arndb.de>
From: Greg Ungerer <gerg@uclinux.org>
Message-ID: <2424c672-e3fb-4c32-4c24-fafc59d03a96@uclinux.org>
Date: Fri, 3 May 2019 17:02:23 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190415202501.941196-1-arnd@arndb.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_000240_916347_A9A5C9F8 
X-CRM114-Status: GOOD (  24.93  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [203.59.1.106 listed in list.dnswl.org]
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;
 id=gerg%40uclinux.org; ip=203.59.1.106; r=bombadil.infradead.org]
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
Cc: linux-watchdog@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, arm@kernel.org,
 Guenter Roeck <linux@roeck-us.net>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On 16/4/19 6:24 am, Arnd Bergmann wrote:
> drivers should not rely on machine specific headers but
> get their information from the platform device.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I dug out some old ks8695 based hardware to try this out.
I had a lot of trouble getting anything modern working on it.
In the end I still don't have a reliable test bed to test this properly.

Your patch series works as well as the kernel before the changes,
so I am happy enough to ack them as they are.

Acked-by: Greg Ungerer <gerg@kernel.org>

Ultimately though I am left wondering if the ks8695 support in the
kernel is useful to anyone the way it is at the moment. With a minimal
kernel configuration I can boot up to a shell - but the system is
really unreliable if you try to interactively use it. I don't think
it is the hardware - it seems to run reliably with the old code
it has running from flash on it. I am only testing the new kernel,
running with the existing user space root filesystem on it (which
dates from 2004 :-)

Regards
Greg



>   arch/arm/mach-ks8695/devices.c | 13 ++++++++++++-
>   drivers/watchdog/Kconfig       |  2 +-
>   drivers/watchdog/ks8695_wdt.c  | 30 +++++++++++++++++-------------
>   3 files changed, 30 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm/mach-ks8695/devices.c b/arch/arm/mach-ks8695/devices.c
> index 61cf20beb45f..57766817d86f 100644
> --- a/arch/arm/mach-ks8695/devices.c
> +++ b/arch/arm/mach-ks8695/devices.c
> @@ -169,11 +169,22 @@ void __init ks8696_add_device_hpna(void)
>   /* --------------------------------------------------------------------
>    *  Watchdog
>    * -------------------------------------------------------------------- */
> +#define KS8695_TMR_OFFSET      (0xF0000 + 0xE400)
> +#define KS8695_TMR_PA          (KS8695_IO_PA + KS8695_TMR_OFFSET)
> +static struct resource ks8695_wdt_resources[] = {
> +	[0] = {
> +		.name	= "tmr",
> +		.start	= KS8695_TMR_PA,
> +		.end	= KS8695_TMR_PA + 0xf,
> +		.flags	= IORESOURCE_MEM,
> +	},
> +};
>   
>   static struct platform_device ks8695_wdt_device = {
>   	.name		= "ks8695_wdt",
>   	.id		= -1,
> -	.num_resources	= 0,
> +	.resource	= ks8695_wdt_resources,
> +	.num_resources	= ARRAY_SIZE(ks8695_wdt_resources),
>   };
>   
>   static void __init ks8695_add_device_watchdog(void)
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 242eea859637..046e01daef57 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -397,7 +397,7 @@ config IXP4XX_WATCHDOG
>   
>   config KS8695_WATCHDOG
>   	tristate "KS8695 watchdog"
> -	depends on ARCH_KS8695
> +	depends on ARCH_KS8695 || COMPILE_TEST
>   	help
>   	  Watchdog timer embedded into KS8695 processor. This will reboot your
>   	  system when the timeout is reached.
> diff --git a/drivers/watchdog/ks8695_wdt.c b/drivers/watchdog/ks8695_wdt.c
> index 1e41818a44bc..87c542c2f912 100644
> --- a/drivers/watchdog/ks8695_wdt.c
> +++ b/drivers/watchdog/ks8695_wdt.c
> @@ -23,10 +23,8 @@
>   #include <linux/watchdog.h>
>   #include <linux/io.h>
>   #include <linux/uaccess.h>
> -#include <mach/hardware.h>
>   
> -#define KS8695_TMR_OFFSET	(0xF0000 + 0xE400)
> -#define KS8695_TMR_VA		(KS8695_IO_VA + KS8695_TMR_OFFSET)
> +#define KS8695_CLOCK_RATE  25000000
>   
>   /*
>    * Timer registers
> @@ -57,6 +55,7 @@ MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
>   
>   static unsigned long ks8695wdt_busy;
>   static DEFINE_SPINLOCK(ks8695_lock);
> +static void __iomem *tmr_reg;
>   
>   /* ......................................................................... */
>   
> @@ -69,8 +68,8 @@ static inline void ks8695_wdt_stop(void)
>   
>   	spin_lock(&ks8695_lock);
>   	/* disable timer0 */
> -	tmcon = __raw_readl(KS8695_TMR_VA + KS8695_TMCON);
> -	__raw_writel(tmcon & ~TMCON_T0EN, KS8695_TMR_VA + KS8695_TMCON);
> +	tmcon = __raw_readl(tmr_reg + KS8695_TMCON);
> +	__raw_writel(tmcon & ~TMCON_T0EN, tmr_reg + KS8695_TMCON);
>   	spin_unlock(&ks8695_lock);
>   }
>   
> @@ -84,15 +83,15 @@ static inline void ks8695_wdt_start(void)
>   
>   	spin_lock(&ks8695_lock);
>   	/* disable timer0 */
> -	tmcon = __raw_readl(KS8695_TMR_VA + KS8695_TMCON);
> -	__raw_writel(tmcon & ~TMCON_T0EN, KS8695_TMR_VA + KS8695_TMCON);
> +	tmcon = __raw_readl(tmr_reg + KS8695_TMCON);
> +	__raw_writel(tmcon & ~TMCON_T0EN, tmr_reg + KS8695_TMCON);
>   
>   	/* program timer0 */
> -	__raw_writel(tval | T0TC_WATCHDOG, KS8695_TMR_VA + KS8695_T0TC);
> +	__raw_writel(tval | T0TC_WATCHDOG, tmr_reg + KS8695_T0TC);
>   
>   	/* re-enable timer0 */
> -	tmcon = __raw_readl(KS8695_TMR_VA + KS8695_TMCON);
> -	__raw_writel(tmcon | TMCON_T0EN, KS8695_TMR_VA + KS8695_TMCON);
> +	tmcon = __raw_readl(tmr_reg + KS8695_TMCON);
> +	__raw_writel(tmcon | TMCON_T0EN, tmr_reg + KS8695_TMCON);
>   	spin_unlock(&ks8695_lock);
>   }
>   
> @@ -105,9 +104,9 @@ static inline void ks8695_wdt_reload(void)
>   
>   	spin_lock(&ks8695_lock);
>   	/* disable, then re-enable timer0 */
> -	tmcon = __raw_readl(KS8695_TMR_VA + KS8695_TMCON);
> -	__raw_writel(tmcon & ~TMCON_T0EN, KS8695_TMR_VA + KS8695_TMCON);
> -	__raw_writel(tmcon | TMCON_T0EN, KS8695_TMR_VA + KS8695_TMCON);
> +	tmcon = __raw_readl(tmr_reg + KS8695_TMCON);
> +	__raw_writel(tmcon & ~TMCON_T0EN, tmr_reg + KS8695_TMCON);
> +	__raw_writel(tmcon | TMCON_T0EN, tmr_reg + KS8695_TMCON);
>   	spin_unlock(&ks8695_lock);
>   }
>   
> @@ -238,6 +237,11 @@ static struct miscdevice ks8695wdt_miscdev = {
>   static int ks8695wdt_probe(struct platform_device *pdev)
>   {
>   	int res;
> +	struct resource *resource = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +
> +	tmr_reg = devm_ioremap_resource(&pdev->dev, resource);
> +	if (!tmr_reg)
> +		return -ENXIO;
>   
>   	if (ks8695wdt_miscdev.parent)
>   		return -EBUSY;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
