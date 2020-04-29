Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AD31BD23A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 04:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+uuT4Oq79KyFYjkk/0J/5in9dlz0++D3V/sA8SWfZ0=; b=Oilw4p27fHsWhu
	+mbZaQEMhHjnI5/OXW/4aOPa6ar+GAQ2yQM7H0boBQjepMJ70yl38f54tMd3rxzNtgzizqpRtC7CJ
	VdInhkz1EPZzJ1qrn24FBPKIPHJl/uggstq9W+Y1vIRRHOhDjp6rJAKugKiSNn5j1H0dG3Z0Bytn+
	ELGT/fDJQ/iWqukE7I1EJbK39bCNr5nQ76fgtZr7/e8/KpitzSxYdZjQD0b4nFRUkDUe+zqoW7HSs
	HphdMkZxBjYLgUaHub3LfbiXhvTdZJI3aWVfMP8/W7JB1ANfzmA4FOu5z5h8rPVRQ4TUJUQuqlz+h
	xasMayd+zeJTnPPnvIeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTcQG-0005N2-CG; Wed, 29 Apr 2020 02:26:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTcQ7-0005MQ-2Y
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 02:25:56 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6F8620730;
 Wed, 29 Apr 2020 02:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588127154;
 bh=e+U033hDstnBu8fB+0dMrx0cNzJaV/LiGFtHSdioxwE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lkn4sS5RiT81mpXoftTU3hQa4SMap19YJb5zc8JwKMmhtxx49hvhOe2RdDrEW/fB0
 pL/f1PMXJAvrYxWIK3nMrs3W5qb7pJxa7ly5jKuWeyorrn5fP3Hmr90V1wf178ygFc
 STHtomLAg/v4gXTAeZb1IML+W/gDhXj6qEEDij7E=
Date: Wed, 29 Apr 2020 10:25:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH V1 1/4] ARM: imx: use device_initcall for
 imx_soc_device_init
Message-ID: <20200429022546.GI32592@dragon>
References: <1584004645-26720-1-git-send-email-peng.fan@nxp.com>
 <1584004645-26720-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584004645-26720-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_192555_158472_BF21AD0A 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, abel.vesa@nxp.com,
 Anson.Huang@nxp.com, ard.biesheuvel@linaro.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 05:17:22PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> This is preparation to move imx_soc_device_init to drivers/soc/imx/
> 
> There is no reason to must put dt devices under /sys/devices/soc0,
> they could also be under /sys/devices/platform, so we could
> pass NULL as parent when calling of_platform_default_populate.
> 
> Following soc-imx8.c soc-imx-scu.c using device_initcall, need
> to change return type to int type for imx_soc_device_init.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm/mach-imx/common.h       | 1 -
>  arch/arm/mach-imx/cpu.c          | 9 +++++----
>  arch/arm/mach-imx/mach-imx6q.c   | 8 +-------
>  arch/arm/mach-imx/mach-imx6sl.c  | 8 +-------
>  arch/arm/mach-imx/mach-imx6sx.c  | 8 +-------
>  arch/arm/mach-imx/mach-imx6ul.c  | 8 +-------
>  arch/arm/mach-imx/mach-imx7d.c   | 6 ------
>  arch/arm/mach-imx/mach-imx7ulp.c | 2 +-
>  8 files changed, 10 insertions(+), 40 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
> index 5aa5796cff0e..72c3fcc32910 100644
> --- a/arch/arm/mach-imx/common.h
> +++ b/arch/arm/mach-imx/common.h
> @@ -49,7 +49,6 @@ void imx_aips_allow_unprivileged_access(const char *compat);
>  int mxc_device_init(void);
>  void imx_set_soc_revision(unsigned int rev);
>  void imx_init_revision_from_anatop(void);
> -struct device *imx_soc_device_init(void);
>  void imx6_enable_rbc(bool enable);
>  void imx_gpc_check_dt(void);
>  void imx_gpc_set_arm_power_in_lpm(bool power_off);
> diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
> index 06f8d64b65af..2df649a84697 100644
> --- a/arch/arm/mach-imx/cpu.c
> +++ b/arch/arm/mach-imx/cpu.c
> @@ -83,7 +83,7 @@ void __init imx_aips_allow_unprivileged_access(
>  	}
>  }
>  
> -struct device * __init imx_soc_device_init(void)
> +static int __init imx_soc_device_init(void)
>  {
>  	struct soc_device_attribute *soc_dev_attr;
>  	const char *ocotp_compat = NULL;
> @@ -97,7 +97,7 @@ struct device * __init imx_soc_device_init(void)
>  
>  	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
>  	if (!soc_dev_attr)
> -		return NULL;
> +		return PTR_ERR(soc_dev_attr);
>  
>  	soc_dev_attr->family = "Freescale i.MX";
>  
> @@ -219,7 +219,7 @@ struct device * __init imx_soc_device_init(void)
>  	if (IS_ERR(soc_dev))
>  		goto free_serial_number;
>  
> -	return soc_device_to_device(soc_dev);
> +	return 0;
>  
>  free_serial_number:
>  	kfree(soc_dev_attr->serial_number);
> @@ -227,5 +227,6 @@ struct device * __init imx_soc_device_init(void)
>  	kfree(soc_dev_attr->revision);
>  free_soc:
>  	kfree(soc_dev_attr);
> -	return NULL;
> +	return -ENOMEM;

-ENOMEM?  Shouldn't it return the error code from the call where it
fails.

Shawn

>  }
> +device_initcall(imx_soc_device_init);
> diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-imx/mach-imx6q.c
> index 284bce1112d2..85c084a716ab 100644
> --- a/arch/arm/mach-imx/mach-imx6q.c
> +++ b/arch/arm/mach-imx/mach-imx6q.c
> @@ -245,21 +245,15 @@ static void __init imx6q_axi_init(void)
>  
>  static void __init imx6q_init_machine(void)
>  {
> -	struct device *parent;
> -
>  	if (cpu_is_imx6q() && imx_get_soc_revision() == IMX_CHIP_REVISION_2_0)
>  		imx_print_silicon_rev("i.MX6QP", IMX_CHIP_REVISION_1_0);
>  	else
>  		imx_print_silicon_rev(cpu_is_imx6dl() ? "i.MX6DL" : "i.MX6Q",
>  				imx_get_soc_revision());
>  
> -	parent = imx_soc_device_init();
> -	if (parent == NULL)
> -		pr_warn("failed to initialize soc device\n");
> -
>  	imx6q_enet_phy_init();
>  
> -	of_platform_default_populate(NULL, NULL, parent);
> +	of_platform_default_populate(NULL, NULL, NULL);
>  
>  	imx_anatop_init();
>  	cpu_is_imx6q() ?  imx6q_pm_init() : imx6dl_pm_init();
> diff --git a/arch/arm/mach-imx/mach-imx6sl.c b/arch/arm/mach-imx/mach-imx6sl.c
> index e27a6889cc56..f6e87363d605 100644
> --- a/arch/arm/mach-imx/mach-imx6sl.c
> +++ b/arch/arm/mach-imx/mach-imx6sl.c
> @@ -45,13 +45,7 @@ static void __init imx6sl_init_late(void)
>  
>  static void __init imx6sl_init_machine(void)
>  {
> -	struct device *parent;
> -
> -	parent = imx_soc_device_init();
> -	if (parent == NULL)
> -		pr_warn("failed to initialize soc device\n");
> -
> -	of_platform_default_populate(NULL, NULL, parent);
> +	of_platform_default_populate(NULL, NULL, NULL);
>  
>  	if (cpu_is_imx6sl())
>  		imx6sl_fec_init();
> diff --git a/arch/arm/mach-imx/mach-imx6sx.c b/arch/arm/mach-imx/mach-imx6sx.c
> index d5310bf307ff..781e2a94fdd7 100644
> --- a/arch/arm/mach-imx/mach-imx6sx.c
> +++ b/arch/arm/mach-imx/mach-imx6sx.c
> @@ -63,13 +63,7 @@ static inline void imx6sx_enet_init(void)
>  
>  static void __init imx6sx_init_machine(void)
>  {
> -	struct device *parent;
> -
> -	parent = imx_soc_device_init();
> -	if (parent == NULL)
> -		pr_warn("failed to initialize soc device\n");
> -
> -	of_platform_default_populate(NULL, NULL, parent);
> +	of_platform_default_populate(NULL, NULL, NULL);
>  
>  	imx6sx_enet_init();
>  	imx_anatop_init();
> diff --git a/arch/arm/mach-imx/mach-imx6ul.c b/arch/arm/mach-imx/mach-imx6ul.c
> index 3b0e16ccd59d..e018e716735f 100644
> --- a/arch/arm/mach-imx/mach-imx6ul.c
> +++ b/arch/arm/mach-imx/mach-imx6ul.c
> @@ -55,13 +55,7 @@ static inline void imx6ul_enet_init(void)
>  
>  static void __init imx6ul_init_machine(void)
>  {
> -	struct device *parent;
> -
> -	parent = imx_soc_device_init();
> -	if (parent == NULL)
> -		pr_warn("failed to initialize soc device\n");
> -
> -	of_platform_default_populate(NULL, NULL, parent);
> +	of_platform_default_populate(NULL, NULL, NULL);
>  	imx6ul_enet_init();
>  	imx_anatop_init();
>  	imx6ul_pm_init();
> diff --git a/arch/arm/mach-imx/mach-imx7d.c b/arch/arm/mach-imx/mach-imx7d.c
> index ebb27592a9f7..879c35929a13 100644
> --- a/arch/arm/mach-imx/mach-imx7d.c
> +++ b/arch/arm/mach-imx/mach-imx7d.c
> @@ -78,12 +78,6 @@ static inline void imx7d_enet_init(void)
>  
>  static void __init imx7d_init_machine(void)
>  {
> -	struct device *parent;
> -
> -	parent = imx_soc_device_init();
> -	if (parent == NULL)
> -		pr_warn("failed to initialize soc device\n");
> -
>  	imx_anatop_init();
>  	imx7d_enet_init();
>  }
> diff --git a/arch/arm/mach-imx/mach-imx7ulp.c b/arch/arm/mach-imx/mach-imx7ulp.c
> index 11ac71aaf965..128cf4c92aab 100644
> --- a/arch/arm/mach-imx/mach-imx7ulp.c
> +++ b/arch/arm/mach-imx/mach-imx7ulp.c
> @@ -57,7 +57,7 @@ static void __init imx7ulp_init_machine(void)
>  
>  	mxc_set_cpu_type(MXC_CPU_IMX7ULP);
>  	imx7ulp_set_revision();
> -	of_platform_default_populate(NULL, NULL, imx_soc_device_init());
> +	of_platform_default_populate(NULL, NULL, NULL);
>  }
>  
>  static const char *const imx7ulp_dt_compat[] __initconst = {
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
