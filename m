Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DCD41BFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 08:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EPe6BqVcZRAs29U+4Vm3uBetLv6Yt+ARs/BGMHOkm4=; b=FpP4Rn29EWV+0L
	br41bd8jP+pXl2w8hY2mzJjrqd//PN7bS8r10rBJu4vVsTdW26B7ddLQ6IUIk9JlqUatMqQdfubzU
	DhH1aU9YSA18Gf3zJUFp/aBvxVF1+OA1EMxE2BgvngppQVhCgGSE1r2JaXjqFiYaZMpSeiMWENbfa
	0+WwPv/YCv+m8did6Wzsu2GA0Cz1TNUyVa3N0LE+PCnZpxEmpQvpEtR3Uet3vHa076iz7x/r8fv++
	vLDIXEQgiHcj2GLPNVn8Jx8DgDN9SiBqKXKGNACqUE2rCZuyhJmzIFuaYEwk0K9hMvtg4Tl3U05vn
	CCvZ/G3Peccjh86mSxTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hawQZ-0000iH-LB; Wed, 12 Jun 2019 06:08:07 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hawQQ-0000hi-K4
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 06:08:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 9CE8EFB03;
 Wed, 12 Jun 2019 08:07:54 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ceguNS6JcVXM; Wed, 12 Jun 2019 08:07:53 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id BE57849C2F; Wed, 12 Jun 2019 08:07:52 +0200 (CEST)
Date: Wed, 12 Jun 2019 08:07:52 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] soc: imx: Move imx_get_soc_revision from mach-imx
Message-ID: <20190612060752.GA2321@bogon.m.sigxcpu.org>
References: <084f934192b7d245034ddd507f348fa13ae840ac.1560279028.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <084f934192b7d245034ddd507f348fa13ae840ac.1560279028.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_230758_988325_06A41EA4 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Tue, Jun 11, 2019 at 09:51:57PM +0300, Leonard Crestez wrote:
> There are a few drivers which call imx_get_soc_revision in order to
> enable errata workarounds but this is only available on 32-bit arm.
> 
> Move the current globals to drivers/soc/imx/revision.c so that they're
> also accessible on all imx8 with same name and semantics.

I thought soc_device_match() is preferred over imx_get_soc_revision()
nowadays?
Cheers,
 -- Guido

> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> 
> ---
> This is not very pretty.
> 
>  arch/arm/mach-imx/common.h    |  1 -
>  arch/arm/mach-imx/cpu.c       | 17 ++++-------------
>  drivers/soc/imx/Makefile      |  1 +
>  drivers/soc/imx/revision.c    | 19 +++++++++++++++++++
>  drivers/soc/imx/soc-imx-scu.c |  2 ++
>  drivers/soc/imx/soc-imx8.c    |  5 ++++-
>  include/soc/imx/revision.h    |  1 +
>  7 files changed, 31 insertions(+), 15 deletions(-)
>  create mode 100644 drivers/soc/imx/revision.c
> 
> diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
> index c51764a85fd7..5c06224986f4 100644
> --- a/arch/arm/mach-imx/common.h
> +++ b/arch/arm/mach-imx/common.h
> @@ -49,11 +49,10 @@ void mxc_restart(enum reboot_mode, const char *);
>  void mxc_arch_reset_init(void __iomem *);
>  void imx1_reset_init(void __iomem *);
>  void imx_set_aips(void __iomem *);
>  void imx_aips_allow_unprivileged_access(const char *compat);
>  int mxc_device_init(void);
> -void imx_set_soc_revision(unsigned int rev);
>  void imx_init_revision_from_anatop(void);
>  struct device *imx_soc_device_init(void);
>  void imx6_enable_rbc(bool enable);
>  void imx_gpc_check_dt(void);
>  void imx_gpc_set_arm_power_in_lpm(bool power_off);
> diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
> index 0b137eeffb61..bfc84f5a1312 100644
> --- a/arch/arm/mach-imx/cpu.c
> +++ b/arch/arm/mach-imx/cpu.c
> @@ -9,27 +9,16 @@
>  
>  #include "hardware.h"
>  #include "common.h"
>  
>  unsigned int __mxc_cpu_type;
> -static unsigned int imx_soc_revision;
>  
>  void mxc_set_cpu_type(unsigned int type)
>  {
>  	__mxc_cpu_type = type;
>  }
>  
> -void imx_set_soc_revision(unsigned int rev)
> -{
> -	imx_soc_revision = rev;
> -}
> -
> -unsigned int imx_get_soc_revision(void)
> -{
> -	return imx_soc_revision;
> -}
> -
>  void imx_print_silicon_rev(const char *cpu, int srev)
>  {
>  	if (srev == IMX_CHIP_REVISION_UNKNOWN)
>  		pr_info("CPU identified as %s, unknown revision\n", cpu);
>  	else
> @@ -77,10 +66,11 @@ struct device * __init imx_soc_device_init(void)
>  {
>  	struct soc_device_attribute *soc_dev_attr;
>  	struct soc_device *soc_dev;
>  	struct device_node *root;
>  	const char *soc_id;
> +	int soc_rev;
>  	int ret;
>  
>  	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
>  	if (!soc_dev_attr)
>  		return NULL;
> @@ -151,13 +141,14 @@ struct device * __init imx_soc_device_init(void)
>  	default:
>  		soc_id = "Unknown";
>  	}
>  	soc_dev_attr->soc_id = soc_id;
>  
> +	soc_rev = imx_get_soc_revision();
>  	soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%d.%d",
> -					   (imx_soc_revision >> 4) & 0xf,
> -					   imx_soc_revision & 0xf);
> +					   (soc_rev >> 4) & 0xf,
> +					   soc_rev & 0xf);
>  	if (!soc_dev_attr->revision)
>  		goto free_soc;
>  
>  	soc_dev = soc_device_register(soc_dev_attr);
>  	if (IS_ERR(soc_dev))
> diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
> index cf9ca42ff739..293a771127dd 100644
> --- a/drivers/soc/imx/Makefile
> +++ b/drivers/soc/imx/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +obj-y += revision.o
>  obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
>  obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
>  obj-$(CONFIG_ARCH_MXC) += soc-imx8.o
>  obj-$(CONFIG_IMX_SCU_SOC) += soc-imx-scu.o
> diff --git a/drivers/soc/imx/revision.c b/drivers/soc/imx/revision.c
> new file mode 100644
> index 000000000000..fc4cea2f25bd
> --- /dev/null
> +++ b/drivers/soc/imx/revision.c
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP.
> + */
> +#include <linux/module.h>
> +#include <soc/imx/revision.h>
> +
> +static unsigned int imx_soc_revision = IMX_CHIP_REVISION_UNKNOWN;
> +
> +void imx_set_soc_revision(unsigned int rev)
> +{
> +	imx_soc_revision = rev;
> +}
> +
> +unsigned int imx_get_soc_revision(void)
> +{
> +	return imx_soc_revision;
> +}
> +EXPORT_SYMBOL(imx_get_soc_revision);
> diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
> index 676f612f6488..7c4106ff3e0f 100644
> --- a/drivers/soc/imx/soc-imx-scu.c
> +++ b/drivers/soc/imx/soc-imx-scu.c
> @@ -7,10 +7,11 @@
>  #include <linux/firmware/imx/sci.h>
>  #include <linux/slab.h>
>  #include <linux/sys_soc.h>
>  #include <linux/platform_device.h>
>  #include <linux/of.h>
> +#include <soc/imx/revision.h>
>  
>  #define IMX_SCU_SOC_DRIVER_NAME		"imx-scu-soc"
>  
>  static struct imx_sc_ipc *soc_ipc_handle;
>  
> @@ -85,10 +86,11 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	/* format revision value passed from SCU firmware */
>  	val = (id >> 5) & 0xf;
>  	val = (((val >> 2) + 1) << 4) | (val & 0x3);
> +	imx_set_soc_revision(val);
>  	soc_dev_attr->revision = kasprintf(GFP_KERNEL,
>  					   "%d.%d",
>  					   (val >> 4) & 0xf,
>  					   val & 0xf);
>  	if (!soc_dev_attr->revision) {
> diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> index 3842d096daf0..465d2c6c6905 100644
> --- a/drivers/soc/imx/soc-imx8.c
> +++ b/drivers/soc/imx/soc-imx8.c
> @@ -8,10 +8,11 @@
>  #include <linux/of_address.h>
>  #include <linux/slab.h>
>  #include <linux/sys_soc.h>
>  #include <linux/platform_device.h>
>  #include <linux/of.h>
> +#include <soc/imx/revision.h>
>  
>  #define REV_B1				0x21
>  
>  #define IMX8MQ_SW_INFO_B1		0x40
>  #define IMX8MQ_SW_MAGIC_B1		0xff0055aa
> @@ -118,12 +119,14 @@ static int __init imx8_soc_init(void)
>  	}
>  
>  	data = id->data;
>  	if (data) {
>  		soc_dev_attr->soc_id = data->name;
> -		if (data->soc_revision)
> +		if (data->soc_revision) {
>  			soc_rev = data->soc_revision();
> +			imx_set_soc_revision(soc_rev & 0xFF);
> +		}
>  	}
>  
>  	soc_dev_attr->revision = imx8_revision(soc_rev);
>  	if (!soc_dev_attr->revision) {
>  		ret = -ENOMEM;
> diff --git a/include/soc/imx/revision.h b/include/soc/imx/revision.h
> index 9ea346924c35..5e7e2aea10ff 100644
> --- a/include/soc/imx/revision.h
> +++ b/include/soc/imx/revision.h
> @@ -30,8 +30,9 @@ int mx31_revision(void);
>  int mx35_revision(void);
>  int mx51_revision(void);
>  int mx53_revision(void);
>  
>  unsigned int imx_get_soc_revision(void);
> +void imx_set_soc_revision(unsigned int rev);
>  void imx_print_silicon_rev(const char *cpu, int srev);
>  
>  #endif /* __SOC_IMX_REVISION_H__ */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
