Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52D6D780E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QafqSKMvzMo5vnS7c4T/T7hHR5m+uAF/4uep/7KCJqg=; b=oxPAeD3SRAKGx6
	jH5E+P5JZlMZu7JtnGoEFzOpBXDpglQH5CL8SZCra1nuw7kJqaTzTmOkJj+RFW3qpV/5J1URm+EPB
	V7bPv3ejibrZO4DFxL1VJzP3IT+DpFk/kullMANnUS4QNgf8ihky2Ec4Jmx+DKDsYYLCNGLpTEKA0
	o4B0MZbIu001ij/J3UQJc/1ukUQhPKlt5RufIFaavnvMsCvdYpRJFCGvYOQpd8yjP93QsNxoqhVDd
	ExDd08NzBvl9heiRDQrdXVLKq8MugXFishIBDjHvvnGlpK0tLSBZfgsVYQ9SOO04lB8UPIBv7+fnd
	wM8TIExHxPJkX7EbWPag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNXs-0001Qd-DP; Tue, 15 Oct 2019 14:11:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNXg-0001PV-5A
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:11:17 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iKNXX-0008Mj-FA; Tue, 15 Oct 2019 16:11:07 +0200
Message-ID: <178c5c3a962c05380b3d94b8acd5f454c9e2786a.camel@pengutronix.de>
Subject: Re: [PATCH] soc: imx: gpc: fix initialiser format
From: Lucas Stach <l.stach@pengutronix.de>
To: Ben Dooks <ben.dooks@codethink.co.uk>, linux-kernel@lists.codethink.co.uk
Date: Tue, 15 Oct 2019 16:11:07 +0200
In-Reply-To: <20191015140909.778-1-ben.dooks@codethink.co.uk>
References: <20191015140909.778-1-ben.dooks@codethink.co.uk>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_071116_203748_AC90A7D5 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Di, 2019-10-15 at 15:09 +0100, Ben Dooks wrote:
> Make the initialiers in imx_gpc_domains C99 format to fix the
> following sparse warnings:
> 
> drivers/soc/imx/gpc.c:252:30: warning: obsolete array initializer, use C99 syntax
> drivers/soc/imx/gpc.c:258:29: warning: obsolete array initializer, use C99 syntax
> drivers/soc/imx/gpc.c:269:34: warning: obsolete array initializer, use C99 syntax
> drivers/soc/imx/gpc.c:278:30: warning: obsolete array initializer, use C99 syntax
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> ---
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/soc/imx/gpc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/soc/imx/gpc.c b/drivers/soc/imx/gpc.c
> index d9231bd3c691..98b9d9a902ae 100644
> --- a/drivers/soc/imx/gpc.c
> +++ b/drivers/soc/imx/gpc.c
> @@ -249,13 +249,13 @@ static struct genpd_power_state imx6_pm_domain_pu_state = {
>  };
>  
>  static struct imx_pm_domain imx_gpc_domains[] = {
> -	[GPC_PGC_DOMAIN_ARM] {
> +	[GPC_PGC_DOMAIN_ARM] = {
>  		.base = {
>  			.name = "ARM",
>  			.flags = GENPD_FLAG_ALWAYS_ON,
>  		},
>  	},
> -	[GPC_PGC_DOMAIN_PU] {
> +	[GPC_PGC_DOMAIN_PU] = {
>  		.base = {
>  			.name = "PU",
>  			.power_off = imx6_pm_domain_power_off,
> @@ -266,7 +266,7 @@ static struct imx_pm_domain imx_gpc_domains[] = {
>  		.reg_offs = 0x260,
>  		.cntr_pdn_bit = 0,
>  	},
> -	[GPC_PGC_DOMAIN_DISPLAY] {
> +	[GPC_PGC_DOMAIN_DISPLAY] = {
>  		.base = {
>  			.name = "DISPLAY",
>  			.power_off = imx6_pm_domain_power_off,
> @@ -275,7 +275,7 @@ static struct imx_pm_domain imx_gpc_domains[] = {
>  		.reg_offs = 0x240,
>  		.cntr_pdn_bit = 4,
>  	},
> -	[GPC_PGC_DOMAIN_PCI] {
> +	[GPC_PGC_DOMAIN_PCI] = {
>  		.base = {
>  			.name = "PCI",
>  			.power_off = imx6_pm_domain_power_off,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
