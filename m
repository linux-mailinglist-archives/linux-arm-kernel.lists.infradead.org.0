Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6913C27D03
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 14:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWiE0wodQbK1Wcx/mtwmLfLuK4r2Mv4MqFGH7jGDOCg=; b=Jnxu3ENKuIUwax
	6Gg/1FPbwVzt7W122l2vO1oxNuse93yr1kn9yDXo6faVShcxVG963Oyd0mxGDeWC612yoX0QEb+uh
	uBvVTfVaumFHMBgdVUxKhSEXrajMTmJ3vr0bVaNS6WvFbhzc+6hIJplkBFATfIbbgVCo8oj0xBj7s
	og2FMesExx9ak9msoEwmMZoXc5sUpKiVrYCoGtGNXW8ThWLP1YI721qESkvkSCvB/DhSmcl/MdipL
	EPvzc5QpqNX4uHyQTRzEF765yEll+CisdgcjABbeRVrYavH+jqdHxNWvts211n/XzfjtMTTnJRcWG
	fx89dpEvuYnWfRuW0WzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTn2g-0007Ag-Bd; Thu, 23 May 2019 12:41:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTn2Z-0007AG-Md
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 12:41:49 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00F0D21019;
 Thu, 23 May 2019 12:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558615305;
 bh=uLiCmPuCEnBoRJ3UmlA97AkB8XpLW5+DYpKD1xKSb+0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Sf0qK/JbYPEsgAwjfRune+wYwde36fZsui36KPpmdbm1RdfARGuZbwLLji5pVlPsl
 3MSGG+NpjYNqc0sb0RVXqyjl2y7B6SIcG3pU0pdAg2vzsBEy6kqXGUcFjP8wC8eC2j
 m37q0iGfLMCyCLVYAZQhMeZfXqnws9ShXKpDZePs=
Date: Thu, 23 May 2019 20:40:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 1/2] soc: imx: soc-imx8: Avoid unnecessary of_node_put()
 in error handling
Message-ID: <20190523124044.GT9261@dragon>
References: <1558430013-18346-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558430013-18346-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_054147_934946_B0302006 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Abel Vesa <abel.vesa@nxp.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
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

On Tue, May 21, 2019 at 09:18:43AM +0000, Anson Huang wrote:
> of_node_put() is called after of_match_node() successfully called,
> then in the following error handling, of_node_put() is called again
> which is unnecessary, this patch adjusts the location of of_node_put()
> to avoid such scenario.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Again, there are '=20' in the patch content and I cannot apply it.

Shawn

> ---
>  drivers/soc/imx/soc-imx8.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> index b1bd8e2..944add2 100644
> --- a/drivers/soc/imx/soc-imx8.c
> +++ b/drivers/soc/imx/soc-imx8.c
> @@ -86,8 +86,6 @@ static int __init imx8_soc_init(void)
>  	if (!id)
>  		goto free_soc;
>  
> -	of_node_put(root);
> -
>  	data = id->data;
>  	if (data) {
>  		soc_dev_attr->soc_id = data->name;
> @@ -106,6 +104,8 @@ static int __init imx8_soc_init(void)
>  	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
>  		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
>  
> +	of_node_put(root);
> +
>  	return 0;
>  
>  free_rev:
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
