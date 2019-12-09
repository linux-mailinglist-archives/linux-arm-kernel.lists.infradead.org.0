Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E544116780
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 08:25:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9UfI4LC6NOIM3Jgh9xEMQo627HX/S1PHBfpNNWXfzI=; b=e553OGZ7dvoNBG
	6dMiohojmSsLVZdUxT/n5pku5+8JZaixFKytVER59lFedGBwJhp4eGHTTfjRzitouW8qwwh0CDdWY
	JiqcF3PQ8GOenlw13fuXDWnRomFI7fGFhH7ZcUeIaGn7k8k8epHtJL/8jMzeaMagT9cZi9QNjoTQr
	wmTr/oelLmTL17zLCqQjksaChlPW+tGN/6CGeCCO0uQBp09KFCEPs3Sga4F4aJ1mvV7wetCbflK/0
	mOJcEaVDnrruswfCxdFAFC7HE9a6rXfs/Xs+yjC+i3q1mfqXUABdXzxhPLjGOsftSGjY0UvWNG/HA
	Djuwjr9BhSbRcsYivnWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieDQ0-00075v-C0; Mon, 09 Dec 2019 07:25:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieDPr-00075T-Ts
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 07:25:13 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD675205C9;
 Mon,  9 Dec 2019 07:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575876310;
 bh=0wuSKelXyf0rWBB5IBpB54LMyeRucEUorHyEdhu1lqY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VK2nJDowecQ3RrloCyJApyVi/X/lAdwwr2mJVQpmRcwUr5xlA5BwzmoZMXeVBbezj
 l0qiZ86HrQGbMXKBcMgnfEhktX6MNE+8/ypHiN54clPd8ISRNI6NJKXUtJBjqcYCQD
 X3EDmtzT4ZSZFWTn0X/zS631yURnxUWFDMHRWx5U=
Date: Mon, 9 Dec 2019 15:24:56 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] soc: imx8: print SoC type and revision
Message-ID: <20191209072455.GF3365@dragon>
References: <20191127110556.3950-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127110556.3950-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_232511_981123_A4CCC16C 
X-CRM114-Status: GOOD (  13.75  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 12:05:56PM +0100, Lucas Stach wrote:
> This is useful information to have when looking through system logs,
> so add it to the output.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

It doesn't apply to v5.5-rc1.  I applied it manually.  Please check
imx/drivers branch to make sure it's done correctly.

Shawn

> ---
>  drivers/soc/imx/soc-imx8.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
> index dbf57203e9ee..cafec82b2e7b 100644
> --- a/drivers/soc/imx/soc-imx8.c
> +++ b/drivers/soc/imx/soc-imx8.c
> @@ -211,6 +211,9 @@ static int __init imx8_soc_init(void)
>  	if (ret)
>  		goto free_rev;
>  
> +	pr_info("SoC: %s revision %s\n", soc_dev_attr->soc_id,
> +		soc_dev_attr->revision);
> +
>  	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
>  		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
