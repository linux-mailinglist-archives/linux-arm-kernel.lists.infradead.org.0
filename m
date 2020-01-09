Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D023A135428
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 09:16:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zhm+bAOi08gfGugB4aDg6tL4mue7HCh0oTWXTe0Q4zM=; b=nnABkFxitCxVmC
	CMXjvy6QvDW7iNko44NCgHMJANyWI3384dQSEYVm13EvhUoxhydqeKoRqGYsqTsOk4sBFGGOAmt54
	2Mya28o6lUFbvXxAzL5ak5kV8lCXFgVCQaSEeezdiyaGUqK1ncsquv4AM4PEtmWdW+kvOJj1J+JBZ
	MOYp6oDEjdQCK7OO3QPXFqj4/Wt1X2swXVvBMFhn1CbvxSgT+TpfLmPRaGQCXuF/r0q9PRJNOUCQs
	KAYezPkGEv1aK2rx9rL/acyCiBdfyuO4WMNU3Zxw4CGK/cZS3QltCV1H4L+eLbcyzdcDPV7me0456
	Wgb9cx4KlRBxR/TFz3Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSzO-0004lj-NC; Thu, 09 Jan 2020 08:16:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSzG-0004lC-HS
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 08:16:15 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C15520673;
 Thu,  9 Jan 2020 08:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578557774;
 bh=Ig8MmN3PyaZFfhXHd04xYCXqXztbORRcP6mk3OMhKnY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NFz7kL6Rli3iJa2zYrYYlZjt0VSUQ22isIyA1VxMG6wKcYMCe9VLNckYhxRwGBMgT
 1+2m7RK5AwqLAeAyhcahD9ZLmVyatAKzjUAImqCGlgTxcpaOX7F96TpFYmGpLVAPZw
 5hifcxbkywB4paXwMHunnTBrONed5/gDHLO1M5Hw=
Date: Thu, 9 Jan 2020 16:16:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] ARM: imx: use of_root to simplify code
Message-ID: <20200109081603.GI4456@T480>
References: <1577696316-27635-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577696316-27635-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_001614_603964_77E5618D 
X-CRM114-Status: GOOD (  14.88  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "cniedermaier@dh-electronics.com" <cniedermaier@dh-electronics.com>,
 Anson Huang <anson.huang@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 09:03:51AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> start_kernel
>      |->setup_arch
>      |       |->unflatten_device_tree->of_root ready
>      |
>      |->do_initcalls
>            |->customize_machine
>                        |->init_machine
>                               |->imx_soc_device_init
> 
> When imx_soc_device_init, of_root is ready, so we could directly use it.

IMO, of_root is something for OF core code, not really for platform.

Shawn

> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V1:
>  Tested on i.MX7D-SDB
> 
>  arch/arm/mach-imx/cpu.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
> index 06f8d64b65af..77319b359070 100644
> --- a/arch/arm/mach-imx/cpu.c
> +++ b/arch/arm/mach-imx/cpu.c
> @@ -88,7 +88,6 @@ struct device * __init imx_soc_device_init(void)
>  	struct soc_device_attribute *soc_dev_attr;
>  	const char *ocotp_compat = NULL;
>  	struct soc_device *soc_dev;
> -	struct device_node *root;
>  	struct regmap *ocotp = NULL;
>  	const char *soc_id;
>  	u64 soc_uid = 0;
> @@ -101,9 +100,7 @@ struct device * __init imx_soc_device_init(void)
>  
>  	soc_dev_attr->family = "Freescale i.MX";
>  
> -	root = of_find_node_by_path("/");
> -	ret = of_property_read_string(root, "model", &soc_dev_attr->machine);
> -	of_node_put(root);
> +	ret = of_property_read_string(of_root, "model", &soc_dev_attr->machine);
>  	if (ret)
>  		goto free_soc;
>  
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
