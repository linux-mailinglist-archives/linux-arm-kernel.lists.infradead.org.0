Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADBA7EABDF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 09:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cd1q0iZfEGTZSUp9mL1nfs57PJkWfQBmsVYiG2DtSuE=; b=Ljm535moGIxw/3
	o27nlIEmUZj9PUpgXcFoGSjf60R0ZsIGGCb+wzyy88KVf0qTa0cHSD7bfT+bfvYPl1hJl7tJ1F0w2
	iaDMRt1U1aNK5Br3fpa54x2Rg8e+xhE7xYrTNKi2RQWeAlB6AenN0yQi395zf64FZEpPQtGpW9cAP
	9nqYeygonihiIEvjB0cxqnM7MdNLEC5nAk36AjHJkRiwOc67FeJbqKfZflNrzIVwW6mphWOtrwSxV
	blky0gMTnShTpb/XIz0JItXHkMSBURPiyqG88s7TOIZMuQEFuVHKGWy/b+yShk8m0aiqsFn8ZafyT
	oGBAdxUwhzBcEd1y8NGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ6D7-0004mr-FQ; Thu, 31 Oct 2019 08:53:41 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ6Cp-0004i5-Hp
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 08:53:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id D61DE510EE;
 Thu, 31 Oct 2019 09:53:17 +0100 (CET)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 2g3NbNrl0SBN; Thu, 31 Oct 2019 09:53:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id D1F5D5110B;
 Thu, 31 Oct 2019 09:53:10 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id irFsFW2-MEAC; Thu, 31 Oct 2019 09:53:09 +0100 (CET)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 53528510EE;
 Thu, 31 Oct 2019 09:53:09 +0100 (CET)
Message-ID: <337419a4102e58780cfd5b497908d4eeaaa56525.camel@v3.sk>
Subject: Re: [PATCH 45/46] ARM: mmp: rename pxa_register_device
From: Lubomir Rintel <lkundrak@v3.sk>
To: Arnd Bergmann <arnd@arndb.de>, Daniel Mack <daniel@zonque.org>, Haojian
 Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 31 Oct 2019 09:53:07 +0100
In-Reply-To: <20191018154201.1276638-45-arnd@arndb.de>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-45-arnd@arndb.de>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_015323_919395_C0BAA84E 
X-CRM114-Status: GOOD (  17.35  )
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-10-18 at 17:42 +0200, Arnd Bergmann wrote:
> In a multiplatform kernel that includes both pxa and mmp, we get a link
> failure from the clash of two pxa_register_device functions.
> 
> Rename the one in mach-mmp to mmp_register_device, along with with the
> rename of pxa_device_desc.
> 
> Cc: Lubomir Rintel <lkundrak@v3.sk>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Lubomir Rintel <lkundrak@v3.sk>

> ---
>  arch/arm/mach-mmp/devices.c |  2 +-
>  arch/arm/mach-mmp/devices.h | 10 +++----
>  arch/arm/mach-mmp/mmp2.h    | 48 ++++++++++++++---------------
>  arch/arm/mach-mmp/pxa168.h  | 60 ++++++++++++++++++-------------------
>  arch/arm/mach-mmp/pxa910.h  | 38 +++++++++++------------
>  arch/arm/mach-mmp/ttc_dkb.c |  6 ++--
>  6 files changed, 82 insertions(+), 82 deletions(-)
> 
> diff --git a/arch/arm/mach-mmp/devices.c b/arch/arm/mach-mmp/devices.c
> index 130c1a603ba2..a9e6fd8d390d 100644
> --- a/arch/arm/mach-mmp/devices.c
> +++ b/arch/arm/mach-mmp/devices.c
> @@ -14,7 +14,7 @@
>  #include "cputype.h"
>  #include "regs-usb.h"
>  
> -int __init pxa_register_device(struct pxa_device_desc *desc,
> +int __init mmp_register_device(struct mmp_device_desc *desc,
>  				void *data, size_t size)
>  {
>  	struct platform_device *pdev;
> diff --git a/arch/arm/mach-mmp/devices.h b/arch/arm/mach-mmp/devices.h
> index 4df596c5c201..d4920ebfebc5 100644
> --- a/arch/arm/mach-mmp/devices.h
> +++ b/arch/arm/mach-mmp/devices.h
> @@ -7,7 +7,7 @@
>  #define MAX_RESOURCE_DMA	2
>  
>  /* structure for describing the on-chip devices */
> -struct pxa_device_desc {
> +struct mmp_device_desc {
>  	const char	*dev_name;
>  	const char	*drv_name;
>  	int		id;
> @@ -18,7 +18,7 @@ struct pxa_device_desc {
>  };
>  
>  #define PXA168_DEVICE(_name, _drv, _id, _irq, _start, _size, _dma...)	\
> -struct pxa_device_desc pxa168_device_##_name __initdata = {		\
> +struct mmp_device_desc pxa168_device_##_name __initdata = {		\
>  	.dev_name	= "pxa168-" #_name,				\
>  	.drv_name	= _drv,						\
>  	.id		= _id,						\
> @@ -29,7 +29,7 @@ struct pxa_device_desc pxa168_device_##_name __initdata = {		\
>  };
>  
>  #define PXA910_DEVICE(_name, _drv, _id, _irq, _start, _size, _dma...)	\
> -struct pxa_device_desc pxa910_device_##_name __initdata = {		\
> +struct mmp_device_desc pxa910_device_##_name __initdata = {		\
>  	.dev_name	= "pxa910-" #_name,				\
>  	.drv_name	= _drv,						\
>  	.id		= _id,						\
> @@ -40,7 +40,7 @@ struct pxa_device_desc pxa910_device_##_name __initdata = {		\
>  };
>  
>  #define MMP2_DEVICE(_name, _drv, _id, _irq, _start, _size, _dma...)	\
> -struct pxa_device_desc mmp2_device_##_name __initdata = {		\
> +struct mmp_device_desc mmp2_device_##_name __initdata = {		\
>  	.dev_name	= "mmp2-" #_name,				\
>  	.drv_name	= _drv,						\
>  	.id		= _id,						\
> @@ -50,7 +50,7 @@ struct pxa_device_desc mmp2_device_##_name __initdata = {		\
>  	.dma		= { _dma },					\
>  }
>  
> -extern int pxa_register_device(struct pxa_device_desc *, void *, size_t);
> +extern int mmp_register_device(struct mmp_device_desc *, void *, size_t);
>  extern int pxa_usb_phy_init(void __iomem *phy_reg);
>  extern void pxa_usb_phy_deinit(void __iomem *phy_reg);
>  
> diff --git a/arch/arm/mach-mmp/mmp2.h b/arch/arm/mach-mmp/mmp2.h
> index adafc4fba8f4..3ebc1bb13f71 100644
> --- a/arch/arm/mach-mmp/mmp2.h
> +++ b/arch/arm/mach-mmp/mmp2.h
> @@ -15,28 +15,28 @@ extern void mmp2_clear_pmic_int(void);
>  
>  #include "devices.h"
>  
> -extern struct pxa_device_desc mmp2_device_uart1;
> -extern struct pxa_device_desc mmp2_device_uart2;
> -extern struct pxa_device_desc mmp2_device_uart3;
> -extern struct pxa_device_desc mmp2_device_uart4;
> -extern struct pxa_device_desc mmp2_device_twsi1;
> -extern struct pxa_device_desc mmp2_device_twsi2;
> -extern struct pxa_device_desc mmp2_device_twsi3;
> -extern struct pxa_device_desc mmp2_device_twsi4;
> -extern struct pxa_device_desc mmp2_device_twsi5;
> -extern struct pxa_device_desc mmp2_device_twsi6;
> -extern struct pxa_device_desc mmp2_device_sdh0;
> -extern struct pxa_device_desc mmp2_device_sdh1;
> -extern struct pxa_device_desc mmp2_device_sdh2;
> -extern struct pxa_device_desc mmp2_device_sdh3;
> -extern struct pxa_device_desc mmp2_device_asram;
> -extern struct pxa_device_desc mmp2_device_isram;
> +extern struct mmp_device_desc mmp2_device_uart1;
> +extern struct mmp_device_desc mmp2_device_uart2;
> +extern struct mmp_device_desc mmp2_device_uart3;
> +extern struct mmp_device_desc mmp2_device_uart4;
> +extern struct mmp_device_desc mmp2_device_twsi1;
> +extern struct mmp_device_desc mmp2_device_twsi2;
> +extern struct mmp_device_desc mmp2_device_twsi3;
> +extern struct mmp_device_desc mmp2_device_twsi4;
> +extern struct mmp_device_desc mmp2_device_twsi5;
> +extern struct mmp_device_desc mmp2_device_twsi6;
> +extern struct mmp_device_desc mmp2_device_sdh0;
> +extern struct mmp_device_desc mmp2_device_sdh1;
> +extern struct mmp_device_desc mmp2_device_sdh2;
> +extern struct mmp_device_desc mmp2_device_sdh3;
> +extern struct mmp_device_desc mmp2_device_asram;
> +extern struct mmp_device_desc mmp2_device_isram;
>  
>  extern struct platform_device mmp2_device_gpio;
>  
>  static inline int mmp2_add_uart(int id)
>  {
> -	struct pxa_device_desc *d = NULL;
> +	struct mmp_device_desc *d = NULL;
>  
>  	switch (id) {
>  	case 1: d = &mmp2_device_uart1; break;
> @@ -47,13 +47,13 @@ static inline int mmp2_add_uart(int id)
>  		return -EINVAL;
>  	}
>  
> -	return pxa_register_device(d, NULL, 0);
> +	return mmp_register_device(d, NULL, 0);
>  }
>  
>  static inline int mmp2_add_twsi(int id, struct i2c_pxa_platform_data *data,
>  				  struct i2c_board_info *info, unsigned size)
>  {
> -	struct pxa_device_desc *d = NULL;
> +	struct mmp_device_desc *d = NULL;
>  	int ret;
>  
>  	switch (id) {
> @@ -71,12 +71,12 @@ static inline int mmp2_add_twsi(int id, struct i2c_pxa_platform_data *data,
>  	if (ret)
>  		return ret;
>  
> -	return pxa_register_device(d, data, sizeof(*data));
> +	return mmp_register_device(d, data, sizeof(*data));
>  }
>  
>  static inline int mmp2_add_sdhost(int id, struct sdhci_pxa_platdata *data)
>  {
> -	struct pxa_device_desc *d = NULL;
> +	struct mmp_device_desc *d = NULL;
>  
>  	switch (id) {
>  	case 0: d = &mmp2_device_sdh0; break;
> @@ -87,17 +87,17 @@ static inline int mmp2_add_sdhost(int id, struct sdhci_pxa_platdata *data)
>  		return -EINVAL;
>  	}
>  
> -	return pxa_register_device(d, data, sizeof(*data));
> +	return mmp_register_device(d, data, sizeof(*data));
>  }
>  
>  static inline int mmp2_add_asram(struct sram_platdata *data)
>  {
> -	return pxa_register_device(&mmp2_device_asram, data, sizeof(*data));
> +	return mmp_register_device(&mmp2_device_asram, data, sizeof(*data));
>  }
>  
>  static inline int mmp2_add_isram(struct sram_platdata *data)
>  {
> -	return pxa_register_device(&mmp2_device_isram, data, sizeof(*data));
> +	return mmp_register_device(&mmp2_device_isram, data, sizeof(*data));
>  }
>  
>  #endif /* __ASM_MACH_MMP2_H */
> diff --git a/arch/arm/mach-mmp/pxa168.h b/arch/arm/mach-mmp/pxa168.h
> index 0331c58b07a2..6dd17986e360 100644
> --- a/arch/arm/mach-mmp/pxa168.h
> +++ b/arch/arm/mach-mmp/pxa168.h
> @@ -21,24 +21,24 @@ extern void pxa168_clear_keypad_wakeup(void);
>  #include "devices.h"
>  #include "cputype.h"
>  
> -extern struct pxa_device_desc pxa168_device_uart1;
> -extern struct pxa_device_desc pxa168_device_uart2;
> -extern struct pxa_device_desc pxa168_device_uart3;
> -extern struct pxa_device_desc pxa168_device_twsi0;
> -extern struct pxa_device_desc pxa168_device_twsi1;
> -extern struct pxa_device_desc pxa168_device_pwm1;
> -extern struct pxa_device_desc pxa168_device_pwm2;
> -extern struct pxa_device_desc pxa168_device_pwm3;
> -extern struct pxa_device_desc pxa168_device_pwm4;
> -extern struct pxa_device_desc pxa168_device_ssp1;
> -extern struct pxa_device_desc pxa168_device_ssp2;
> -extern struct pxa_device_desc pxa168_device_ssp3;
> -extern struct pxa_device_desc pxa168_device_ssp4;
> -extern struct pxa_device_desc pxa168_device_ssp5;
> -extern struct pxa_device_desc pxa168_device_nand;
> -extern struct pxa_device_desc pxa168_device_fb;
> -extern struct pxa_device_desc pxa168_device_keypad;
> -extern struct pxa_device_desc pxa168_device_eth;
> +extern struct mmp_device_desc pxa168_device_uart1;
> +extern struct mmp_device_desc pxa168_device_uart2;
> +extern struct mmp_device_desc pxa168_device_uart3;
> +extern struct mmp_device_desc pxa168_device_twsi0;
> +extern struct mmp_device_desc pxa168_device_twsi1;
> +extern struct mmp_device_desc pxa168_device_pwm1;
> +extern struct mmp_device_desc pxa168_device_pwm2;
> +extern struct mmp_device_desc pxa168_device_pwm3;
> +extern struct mmp_device_desc pxa168_device_pwm4;
> +extern struct mmp_device_desc pxa168_device_ssp1;
> +extern struct mmp_device_desc pxa168_device_ssp2;
> +extern struct mmp_device_desc pxa168_device_ssp3;
> +extern struct mmp_device_desc pxa168_device_ssp4;
> +extern struct mmp_device_desc pxa168_device_ssp5;
> +extern struct mmp_device_desc pxa168_device_nand;
> +extern struct mmp_device_desc pxa168_device_fb;
> +extern struct mmp_device_desc pxa168_device_keypad;
> +extern struct mmp_device_desc pxa168_device_eth;
>  
>  /* pdata can be NULL */
>  extern int __init pxa168_add_usb_host(struct mv_usb_platform_data *pdata);
> @@ -48,7 +48,7 @@ extern struct platform_device pxa168_device_gpio;
>  
>  static inline int pxa168_add_uart(int id)
>  {
> -	struct pxa_device_desc *d = NULL;
> +	struct mmp_device_desc *d = NULL;
>  
>  	switch (id) {
>  	case 1: d = &pxa168_device_uart1; break;
> @@ -59,13 +59,13 @@ static inline int pxa168_add_uart(int id)
>  	if (d == NULL)
>  		return -EINVAL;
>  
> -	return pxa_register_device(d, NULL, 0);
> +	return mmp_register_device(d, NULL, 0);
>  }
>  
>  static inline int pxa168_add_twsi(int id, struct i2c_pxa_platform_data *data,
>  				  struct i2c_board_info *info, unsigned size)
>  {
> -	struct pxa_device_desc *d = NULL;
> +	struct mmp_device_desc *d = NULL;
>  	int ret;
>  
>  	switch (id) {
> @@ -79,12 +79,12 @@ static inline int pxa168_add_twsi(int id, struct i2c_pxa_platform_data *data,
>  	if (ret)
>  		return ret;
>  
> -	return pxa_register_device(d, data, sizeof(*data));
> +	return mmp_register_device(d, data, sizeof(*data));
>  }
>  
>  static inline int pxa168_add_pwm(int id)
>  {
> -	struct pxa_device_desc *d = NULL;
> +	struct mmp_device_desc *d = NULL;
>  
>  	switch (id) {
>  	case 1: d = &pxa168_device_pwm1; break;
> @@ -95,12 +95,12 @@ static inline int pxa168_add_pwm(int id)
>  		return -EINVAL;
>  	}
>  
> -	return pxa_register_device(d, NULL, 0);
> +	return mmp_register_device(d, NULL, 0);
>  }
>  
>  static inline int pxa168_add_ssp(int id)
>  {
> -	struct pxa_device_desc *d = NULL;
> +	struct mmp_device_desc *d = NULL;
>  
>  	switch (id) {
>  	case 1: d = &pxa168_device_ssp1; break;
> @@ -111,17 +111,17 @@ static inline int pxa168_add_ssp(int id)
>  	default:
>  		return -EINVAL;
>  	}
> -	return pxa_register_device(d, NULL, 0);
> +	return mmp_register_device(d, NULL, 0);
>  }
>  
>  static inline int pxa168_add_nand(struct pxa3xx_nand_platform_data *info)
>  {
> -	return pxa_register_device(&pxa168_device_nand, info, sizeof(*info));
> +	return mmp_register_device(&pxa168_device_nand, info, sizeof(*info));
>  }
>  
>  static inline int pxa168_add_fb(struct pxa168fb_mach_info *mi)
>  {
> -	return pxa_register_device(&pxa168_device_fb, mi, sizeof(*mi));
> +	return mmp_register_device(&pxa168_device_fb, mi, sizeof(*mi));
>  }
>  
>  static inline int pxa168_add_keypad(struct pxa27x_keypad_platform_data *data)
> @@ -129,11 +129,11 @@ static inline int pxa168_add_keypad(struct pxa27x_keypad_platform_data *data)
>  	if (cpu_is_pxa168())
>  		data->clear_wakeup_event = pxa168_clear_keypad_wakeup;
>  
> -	return pxa_register_device(&pxa168_device_keypad, data, sizeof(*data));
> +	return mmp_register_device(&pxa168_device_keypad, data, sizeof(*data));
>  }
>  
>  static inline int pxa168_add_eth(struct pxa168_eth_platform_data *data)
>  {
> -	return pxa_register_device(&pxa168_device_eth, data, sizeof(*data));
> +	return mmp_register_device(&pxa168_device_eth, data, sizeof(*data));
>  }
>  #endif /* __ASM_MACH_PXA168_H */
> diff --git a/arch/arm/mach-mmp/pxa910.h b/arch/arm/mach-mmp/pxa910.h
> index 2dfe38e4acc1..6ace5a8aa15b 100644
> --- a/arch/arm/mach-mmp/pxa910.h
> +++ b/arch/arm/mach-mmp/pxa910.h
> @@ -13,28 +13,28 @@ extern void __init pxa910_init_irq(void);
>  
>  #include "devices.h"
>  
> -extern struct pxa_device_desc pxa910_device_uart1;
> -extern struct pxa_device_desc pxa910_device_uart2;
> -extern struct pxa_device_desc pxa910_device_twsi0;
> -extern struct pxa_device_desc pxa910_device_twsi1;
> -extern struct pxa_device_desc pxa910_device_pwm1;
> -extern struct pxa_device_desc pxa910_device_pwm2;
> -extern struct pxa_device_desc pxa910_device_pwm3;
> -extern struct pxa_device_desc pxa910_device_pwm4;
> -extern struct pxa_device_desc pxa910_device_nand;
> +extern struct mmp_device_desc pxa910_device_uart1;
> +extern struct mmp_device_desc pxa910_device_uart2;
> +extern struct mmp_device_desc pxa910_device_twsi0;
> +extern struct mmp_device_desc pxa910_device_twsi1;
> +extern struct mmp_device_desc pxa910_device_pwm1;
> +extern struct mmp_device_desc pxa910_device_pwm2;
> +extern struct mmp_device_desc pxa910_device_pwm3;
> +extern struct mmp_device_desc pxa910_device_pwm4;
> +extern struct mmp_device_desc pxa910_device_nand;
>  extern struct platform_device pxa168_device_usb_phy;
>  extern struct platform_device pxa168_device_u2o;
>  extern struct platform_device pxa168_device_u2ootg;
>  extern struct platform_device pxa168_device_u2oehci;
> -extern struct pxa_device_desc pxa910_device_disp;
> -extern struct pxa_device_desc pxa910_device_fb;
> -extern struct pxa_device_desc pxa910_device_panel;
> +extern struct mmp_device_desc pxa910_device_disp;
> +extern struct mmp_device_desc pxa910_device_fb;
> +extern struct mmp_device_desc pxa910_device_panel;
>  extern struct platform_device pxa910_device_gpio;
>  extern struct platform_device pxa910_device_rtc;
>  
>  static inline int pxa910_add_uart(int id)
>  {
> -	struct pxa_device_desc *d = NULL;
> +	struct mmp_device_desc *d = NULL;
>  
>  	switch (id) {
>  	case 1: d = &pxa910_device_uart1; break;
> @@ -44,13 +44,13 @@ static inline int pxa910_add_uart(int id)
>  	if (d == NULL)
>  		return -EINVAL;
>  
> -	return pxa_register_device(d, NULL, 0);
> +	return mmp_register_device(d, NULL, 0);
>  }
>  
>  static inline int pxa910_add_twsi(int id, struct i2c_pxa_platform_data *data,
>  				  struct i2c_board_info *info, unsigned size)
>  {
> -	struct pxa_device_desc *d = NULL;
> +	struct mmp_device_desc *d = NULL;
>  	int ret;
>  
>  	switch (id) {
> @@ -64,12 +64,12 @@ static inline int pxa910_add_twsi(int id, struct i2c_pxa_platform_data *data,
>  	if (ret)
>  		return ret;
>  
> -	return pxa_register_device(d, data, sizeof(*data));
> +	return mmp_register_device(d, data, sizeof(*data));
>  }
>  
>  static inline int pxa910_add_pwm(int id)
>  {
> -	struct pxa_device_desc *d = NULL;
> +	struct mmp_device_desc *d = NULL;
>  
>  	switch (id) {
>  	case 1: d = &pxa910_device_pwm1; break;
> @@ -80,11 +80,11 @@ static inline int pxa910_add_pwm(int id)
>  		return -EINVAL;
>  	}
>  
> -	return pxa_register_device(d, NULL, 0);
> +	return mmp_register_device(d, NULL, 0);
>  }
>  
>  static inline int pxa910_add_nand(struct pxa3xx_nand_platform_data *info)
>  {
> -	return pxa_register_device(&pxa910_device_nand, info, sizeof(*info));
> +	return mmp_register_device(&pxa910_device_nand, info, sizeof(*info));
>  }
>  #endif /* __ASM_MACH_PXA910_H */
> diff --git a/arch/arm/mach-mmp/ttc_dkb.c b/arch/arm/mach-mmp/ttc_dkb.c
> index 4f240760d4aa..345b2e6d5c7e 100644
> --- a/arch/arm/mach-mmp/ttc_dkb.c
> +++ b/arch/arm/mach-mmp/ttc_dkb.c
> @@ -253,12 +253,12 @@ static struct spi_board_info spi_board_info[] __initdata = {
>  
>  static void __init add_disp(void)
>  {
> -	pxa_register_device(&pxa910_device_disp,
> +	mmp_register_device(&pxa910_device_disp,
>  		&dkb_disp_info, sizeof(dkb_disp_info));
>  	spi_register_board_info(spi_board_info, ARRAY_SIZE(spi_board_info));
> -	pxa_register_device(&pxa910_device_fb,
> +	mmp_register_device(&pxa910_device_fb,
>  		&dkb_fb_info, sizeof(dkb_fb_info));
> -	pxa_register_device(&pxa910_device_panel,
> +	mmp_register_device(&pxa910_device_panel,
>  		&dkb_tpo_panel_info, sizeof(dkb_tpo_panel_info));
>  }
>  #endif


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
