Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 125571705B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 18:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QeFVXUmMsWaVW7spvVaxSMQt61VUbbEHNQeU0Yp6qpY=; b=Aq/TVVZDJ13EOO
	p+U9F+hNUMdOQtikmuSDQu5AsKn0txTvp3gxSiIvNUSZk60cYPYPbHcT4T+YAyIx33Yr8G1ourGu3
	O+tK4O7uvxSISSfN5u+jjt3O7bGCZK6MS2O41/c6WWLCZXcyCm18dD8XYHSiKrGOx1x0SRrq09WEh
	zEFJ08mNMMllf7vBX1g3/m14jv5McW+8YoLB8/AqS7uvOt+Mka72gDeQTHtgtPCYNk/zdOeVjqOyX
	7t1I3tJVWAWroH+EyyyP2ycJSkxacpI5Nm4ef19ZiabkilQbFD7rqMZjSj7kJWA/mJ64hKxAdRBP0
	i0pPF77e+kI0pVB2annA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70F5-00023N-EW; Wed, 26 Feb 2020 17:13:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70El-0001vE-Cs
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 17:12:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6014630E;
 Wed, 26 Feb 2020 09:12:42 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 53B833F881;
 Wed, 26 Feb 2020 09:12:39 -0800 (PST)
Subject: Re: [PATCH 3/3] EDAC: synopsys: Add edac driver support for i.MX8MP
To: sherry sun <sherry.sun@nxp.com>
References: <1582267156-20189-1-git-send-email-sherry.sun@nxp.com>
 <1582267156-20189-4-git-send-email-sherry.sun@nxp.com>
From: James Morse <james.morse@arm.com>
Message-ID: <23a40435-8b18-2924-a1b1-635c2a4b446b@arm.com>
Date: Wed, 26 Feb 2020 17:12:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1582267156-20189-4-git-send-email-sherry.sun@nxp.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_091243_527428_F84139FB 
X-CRM114-Status: GOOD (  26.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, tony.luck@intel.com,
 s.hauer@pengutronix.de, frank.li@nxp.com, michal.simek@xilinx.com,
 robh+dt@kernel.org, linux-kernel@vger.kernel.org, rrichter@marvell.com,
 bp@alien8.de, linux-imx@nxp.com, mchehab@kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sherry,

On 21/02/2020 06:39, sherry sun wrote:
> From: Sherry Sun <sherry.sun@nxp.com>
> 
> Since i.MX8MP use synopsys ddr controller IP, so add edac support
> for i.MX8MP based on synopsys edac driver. i.MX8MP use LPDDR4 and
> support interrupts for corrected and uncorrected errors.

> The main
> difference between ZynqMP and i.MX8MP ddr controller is the interrupt
> registers. So add another interrupt handler function, enable/disable
> interrupt function to distinguish with ZynqMP.

Same, but different! Is there any more information on how this difference comes about?

It looks like the existing users of this driver all used DDR_QOS_IRQ, but yours uses
DDR_CE_INTR and DDR_UE_INTR. I note you didn't add a new register offset, so this must be
a feature of the IP that i.MX8MP uses, but others don't.

Is it possible to describe the feature in the DT instead of quirking based on the compatible?

Ideally someone else with the same configuration in a different SoC should be able to use
the new parts of this driver without changing the code to quirk their platform too.


> diff --git a/drivers/edac/synopsys_edac.c b/drivers/edac/synopsys_edac.c
> index 2d263382d797..66c801502212 100644
> --- a/drivers/edac/synopsys_edac.c
> +++ b/drivers/edac/synopsys_edac.c

> @@ -524,6 +530,54 @@ static void handle_error(struct mem_ctl_info *mci, struct synps_ecc_status *p)

> +static void enable_intr_imx8mp(struct synps_edac_priv *priv)
> +{
> +	int regval;
> +
> +	regval = readl(priv->baseaddr + ECC_CLR_OFST);
> +	regval |= (DDR_CE_INTR_EN_MASK | DDR_UE_INTR_EN_MASK);
> +	writel(regval, priv->baseaddr + ECC_CLR_OFST);
> +}

I assume these two interrupts are combined as one line. i.e. this driver can't race with
itself.

Was this an integration choice? Could someone else use wire the DDR_CE_INTR and
DDR_UE_INTR interrupts separately so that two CPUs take them in parallel?


ECC_CLR_OFST looks mighty like one of these write-only 'clear pending irqs' register. I'm
surprised you read it, then write to it to enable interrupts... but I don't have the
documentation!


> +/* Interrupt Handler for ECC interrupts on imx8mp platform. */
> +static irqreturn_t intr_handler_imx8mp(int irq, void *dev_id)
> +{
> +	const struct synps_platform_data *p_data;
> +	struct mem_ctl_info *mci = dev_id;
> +	struct synps_edac_priv *priv;
> +	int status, regval;
> +
> +	priv = mci->pvt_info;
> +	p_data = priv->p_data;


> +	regval = readl(priv->baseaddr + ECC_STAT_OFST);
> +	if (!(regval & ECC_INTR_MASK))
> +		return IRQ_NONE;

zynqmp_get_error_info(), which you call via p_data->get_error_info() does this too, so
this is redundant.


> +	status = p_data->get_error_info(priv);
> +	if (status)
> +		return IRQ_NONE;
> +
> +	priv->ce_cnt += priv->stat.ce_cnt;
> +	priv->ue_cnt += priv->stat.ue_cnt;
> +	handle_error(mci, &priv->stat);
> +
> +	edac_dbg(3, "Total error count CE %d UE %d\n",
> +		 priv->ce_cnt, priv->ue_cnt);

This is the same as the existing intr_handler()...


> +	enable_intr_imx8mp(priv);

Is this because zynqmp_get_error_info() wrote 0 to ECC_CLR_OFST, so now you have to
re-enable the interrrupts?

It looks like you are hacking round the problem!


> +
> +	return IRQ_HANDLED;
> +}

> @@ -541,6 +595,9 @@ static irqreturn_t intr_handler(int irq, void *dev_id)
>  	priv = mci->pvt_info;
>  	p_data = priv->p_data;
>  
> +	if (p_data->quirks & DDR_ECC_IMX8MP)
> +		return intr_handler_imx8mp(irq, dev_id);
> +
>  	regval = readl(priv->baseaddr + DDR_QOS_IRQ_STAT_OFST);
>  	regval &= (DDR_QOSCE_MASK | DDR_QOSUE_MASK);
>  	if (!(regval & ECC_CE_UE_INTR_MASK))

As this driver has struct synps_platform_data for some function calls (that are all the
same today), you could add this as one that differs. This would let you pass the right one
to devm_request_irq() at setup_irq() time. If there is a third type of intr_handler, it
avoids chaining these quirk/features in the intr_handler().


> @@ -817,7 +874,7 @@ static void mc_init(struct mem_ctl_info *mci, struct platform_device *pdev)
>  	platform_set_drvdata(pdev, mci);
>  
>  	/* Initialize controller capabilities and configuration */
> -	mci->mtype_cap = MEM_FLAG_DDR3 | MEM_FLAG_DDR2;
> +	mci->mtype_cap = MEM_FLAG_LRDDR4 | MEM_FLAG_DDR3 | MEM_FLAG_DDR2;
>  	mci->edac_ctl_cap = EDAC_FLAG_NONE | EDAC_FLAG_SECDED;
>  	mci->scrub_cap = SCRUB_HW_SRC;
>  	mci->scrub_mode = SCRUB_NONE;

You haven't updated zynq_get_mtype(), is it possible to use the new memory type?


I think this would be cleaner if you moved the existing parts of the driver that aren't
needed when using DDR_CE_INTR and DDR_UE_INTR to the platform data as a preparatory patch.
You can then add support for these interrupts by adding the bits that are different.
This should avoid things like trying to undo what zynq_get_error_info() did. Things like
this are a maintenance headache.

As it is, you're hooking in the differences, then working round some of the things you
didn't want to happen. (e.g. ECC_CLR_OFST being written as zero)



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
