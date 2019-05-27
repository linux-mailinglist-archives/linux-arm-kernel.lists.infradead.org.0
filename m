Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F532B1DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 12:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAZTvENhRzo0gZ84oQYOISeuuVPlUmriznVtYAU29Fw=; b=kf3hUAvtSiHzhd
	5fdNfcYRUiDMbyTm+epbMSOL/2jw0Yz3diuXhxSgjYjoEWG4wYBOtTJDFNAQNrG9IKq+OY6OQXE9U
	j0XS4fTwelklWhR4Sg+qZAyRCnAe3qM/YLUmuZ7Yz9xHx/dKQtZ7OWJNU65Gf37PqIoKGSlmGh0c8
	xj8lYOz7rdFaUtPToCOEsCODMtCQP4Lk9JDhpCeirql964gPtKiQzLxA1F5G0lPZ1y4a2FPLx5pLH
	BtDIdHH+qMGaG0HwMDo3zS6rIhbkVwgu1QyOCIpOPwBsYNuYaZNnM6tTJP4OiL0htqPG9dOQ2X/Od
	AViOzAzaLWCYOmzh52Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCaA-0001wX-4Y; Mon, 27 May 2019 10:10:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCa2-0001wD-M1
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 10:10:12 +0000
Received: from localhost (unknown [171.61.91.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0C5A720859;
 Mon, 27 May 2019 10:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558951809;
 bh=NnmgDy5FptWpQILTDsZ4Xve8h2sTF+iS5fFSlh0fjz4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=snA0dl2mB3eN9j8L1PY7p2ImPCLljwBsCVF8fJeqljCDdbesF3LbLdyOe75n8a2z8
 f32m7VKpFBVs7jddUxx3JqgKvQZZ/buVB4YACB+a1aQTmg9JppJEtRwBHD6Dfy/0jN
 lcLjftgbaX+k6lMoi03cdD+5IzaPbD/ICHlimVMc=
Date: Mon, 27 May 2019 15:40:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2 6/7] dmaengine: fsl-edma: add i.mx7ulp edma2 version
 support
Message-ID: <20190527101003.GI15118@vkoul-mobl>
References: <20190527085118.40423-1-yibin.gong@nxp.com>
 <20190527085118.40423-7-yibin.gong@nxp.com>
 <20190527090553.lek7tm3lyst3bhrd@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527090553.lek7tm3lyst3bhrd@pengutronix.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_031010_740135_1C1ACD65 
X-CRM114-Status: GOOD (  16.12  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, robh@kernel.org, devicetree@vger.kernel.org,
 festevam@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 yibin.gong@nxp.com, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27-05-19, 11:05, Sascha Hauer wrote:
> On Mon, May 27, 2019 at 04:51:17PM +0800, yibin.gong@nxp.com wrote:
> > From: Robin Gong <yibin.gong@nxp.com>
> > 
> > +static const struct of_device_id fsl_edma_dt_ids[] = {
> > +	{ .compatible = "fsl,vf610-edma", .data = (void *)v1 },
> > +	{ .compatible = "fsl,imx7ulp-edma", .data = (void *)v3 },
> > +	{ /* sentinel */ }
> 
> Please put a struct type behind the .data pointer so that you can
> configure...

Yeah that was the idea behind the suggestion in previous version.

Something like 

struct fsl_edma_driver_data {
        unsigned int channels;
        ...
};

and then you have

const struct fsl_edma_driver_data v1_data {
        .channels = 1;
        ...
};

> 
> > +};
> > +MODULE_DEVICE_TABLE(of, fsl_edma_dt_ids);
> > +
> > @@ -218,6 +272,22 @@ static int fsl_edma_probe(struct platform_device *pdev)
> >  	fsl_edma_setup_regs(fsl_edma);
> >  	regs = &fsl_edma->regs;
> >  
> > +	if (fsl_edma->version == v3) {
> > +		fsl_edma->dmamux_nr = 1;

You can store the struct in driver context or store the values, so here
it becomes

        driver->data->channel;

and so on for other data, you can also point function pointers (hint
edma/2_irq_init)

> 
> ...things like this...
> 
> > @@ -264,7 +334,11 @@ static int fsl_edma_probe(struct platform_device *pdev)
> >  	}
> >  
> >  	edma_writel(fsl_edma, ~0, regs->intl);
> > -	ret = fsl_edma_irq_init(pdev, fsl_edma);
> > +
> > +	if (fsl_edma->version == v3)
> > +		ret = fsl_edma2_irq_init(pdev, fsl_edma);
> > +	else
> > +		ret = fsl_edma_irq_init(pdev, fsl_edma);
> 
> ...and this one in that struct rather than littering the code more and
> more with such version tests.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
