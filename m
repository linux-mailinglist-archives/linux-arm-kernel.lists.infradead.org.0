Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 366E149CD6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQ8HYeQqzDE+xbH14WKM/3cKKa/Mc8ZjhlulQPAX7KA=; b=MJceWTlY8UYhh1
	ftQ1kX284ES4AX3pQ68FhtkmDlKR/HN9Orj3mYA+jI8vS45txTnBeLJGbgN2cPkcuSoR2PdZBLYM+
	/yt4sQUNilHFeA//HsxpNKd2CI2CV2ey5s8RDm65SYOZ0nQSxdkVm2OcnGkHqgJMyRahm7XDAxkfZ
	UmT5OAZ/acrJ0JcZX7G/SA99rL8rpGnSOEtvGzzDN8F8h1OSRK4gKNktgPF4s7jpWheozT+WLymAQ
	RevCfG3eVIK9/IqiG29NnJcLjb5Hk7gBQEk/Ek88qHBWw8fH3lwxhcB9XoKkYzTmjHdPd+SKb4bWX
	v28RQIWi6a76l4qoghPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdADY-0006zz-9L; Tue, 18 Jun 2019 09:15:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdADM-0006zS-Bg
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:15:41 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55CE4206BA;
 Tue, 18 Jun 2019 09:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560849340;
 bh=gA2YgqZkn0Wi5r13BQk+BBwL1hF7Y6PBm5f+5w9qDqI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pp6ieOAEYOEwunUaoY5CXNUYhXinz+c5vNQxqrWJvgbFUtPzEsYuJwy9EBfV3oHKr
 M6OXEtFbG+jD1EGPrZYfF1JCua1MXePEbLHYapmQVdSNnP8bmY3YzL7Mme5OwCe4no
 wHteUl8FhhCoZnjFrT2v3738Im/QqoU1mk6jZjTk=
Date: Tue, 18 Jun 2019 17:14:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2 2/2] soc: imx8: Use existing of_root directly
Message-ID: <20190618091442.GM29881@dragon>
References: <20190614080748.32997-1-Anson.Huang@nxp.com>
 <20190614080748.32997-2-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614080748.32997-2-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_021540_422552_E1310875 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: abel.vesa@nxp.com, viresh.kumar@linaro.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 04:07:48PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> There is common of_root for reference, no need to find it
> from DT again, use of_root directly to make driver simple.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

It cannot be applied.  Please resend by basing on my imx/drivers branch.

Shawn

> ---
> No changes.
> ---
>  drivers/soc/imx/soc-imx8.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> index 5c7f330..b459bf2 100644
> --- a/drivers/soc/imx/soc-imx8.c
> +++ b/drivers/soc/imx/soc-imx8.c
> @@ -105,7 +105,6 @@ static int __init imx8_soc_init(void)
>  {
>  	struct soc_device_attribute *soc_dev_attr;
>  	struct soc_device *soc_dev;
> -	struct device_node *root;
>  	const struct of_device_id *id;
>  	u32 soc_rev = 0;
>  	const struct imx8_soc_data *data;
> @@ -117,12 +116,11 @@ static int __init imx8_soc_init(void)
>  
>  	soc_dev_attr->family = "Freescale i.MX";
>  
> -	root = of_find_node_by_path("/");
> -	ret = of_property_read_string(root, "model", &soc_dev_attr->machine);
> +	ret = of_property_read_string(of_root, "model", &soc_dev_attr->machine);
>  	if (ret)
>  		goto free_soc;
>  
> -	id = of_match_node(imx8_soc_match, root);
> +	id = of_match_node(imx8_soc_match, of_root);
>  	if (!id) {
>  		ret = -ENODEV;
>  		goto free_soc;
> @@ -147,8 +145,6 @@ static int __init imx8_soc_init(void)
>  		goto free_rev;
>  	}
>  
> -	of_node_put(root);
> -
>  	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
>  		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
>  
> @@ -159,7 +155,6 @@ static int __init imx8_soc_init(void)
>  		kfree(soc_dev_attr->revision);
>  free_soc:
>  	kfree(soc_dev_attr);
> -	of_node_put(root);
>  	return ret;
>  }
>  device_initcall(imx8_soc_init);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
