Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F6D2B105
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 11:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIvaBwSldXHQG1MkwZeNAveUYl+w4+7eOE1kYZ9kJFI=; b=tnVd2tYjiRUQQ5
	LbSae8pWKMX8rZnWvrLHhLoy4Snrityf1gEByoB7+m6oCTOlrzA6L2lI6IBD9MnR+64FIhiCICD82
	VdyySpxSxT+i1mIA2byZMoxsX3dvR0Z/RlyfBFHlGyBKLBNfm5+Ap7Nh+AoV0JvVHXprTNClQPkSd
	iDZOjz9ktR9FIzQGW040zlpVFbUVEHG6c7zMciHMpiBbA8wLaLKHQUhVb7P1NGTltEd2oSO3opu01
	jmj98xXzy9VvsVvJawHGsR0hvHL8du9i6Z9e7rN1h4ZHF5PgymeynnBHavQ+Wwtehs1YS3CY+6sI4
	MPH5kLZ2+wgwss4tQU8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBca-0000OW-8o; Mon, 27 May 2019 09:08:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBcF-0000EX-Ni
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 09:08:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hVBc7-0004fQ-KN; Mon, 27 May 2019 11:08:15 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>)
 id 1hVBc6-0001ZE-VS; Mon, 27 May 2019 11:08:14 +0200
Date: Mon, 27 May 2019 11:08:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v2 4/7] dmaengine: fsl-edma-common: version check for v2
 instead
Message-ID: <20190527090814.qfjiksqi24x2jrs3@pengutronix.de>
References: <20190527085118.40423-1-yibin.gong@nxp.com>
 <20190527085118.40423-5-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527085118.40423-5-yibin.gong@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:07:14 up 9 days, 15:25, 72 users, load average: 0.12, 0.20, 0.16
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_020824_071008_8FE673CA 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 festevam@gmail.com, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 04:51:15PM +0800, yibin.gong@nxp.com wrote:
> From: Robin Gong <yibin.gong@nxp.com>
> 
> The next v3 i.mx7ulp edma is based on v1, so change version
> check logic for v2 instead.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  drivers/dma/fsl-edma-common.c | 40 ++++++++++++++++++++--------------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/dma/fsl-edma-common.c b/drivers/dma/fsl-edma-common.c
> index bb24251..45d70d3 100644
> --- a/drivers/dma/fsl-edma-common.c
> +++ b/drivers/dma/fsl-edma-common.c
> @@ -657,26 +657,26 @@ void fsl_edma_setup_regs(struct fsl_edma_engine *edma)
>  	edma->regs.erql = edma->membase + EDMA_ERQ;
>  	edma->regs.eeil = edma->membase + EDMA_EEI;
>  
> -	edma->regs.serq = edma->membase + ((edma->version == v1) ?
> -			EDMA_SERQ : EDMA64_SERQ);
> -	edma->regs.cerq = edma->membase + ((edma->version == v1) ?
> -			EDMA_CERQ : EDMA64_CERQ);
> -	edma->regs.seei = edma->membase + ((edma->version == v1) ?
> -			EDMA_SEEI : EDMA64_SEEI);
> -	edma->regs.ceei = edma->membase + ((edma->version == v1) ?
> -			EDMA_CEEI : EDMA64_CEEI);
> -	edma->regs.cint = edma->membase + ((edma->version == v1) ?
> -			EDMA_CINT : EDMA64_CINT);
> -	edma->regs.cerr = edma->membase + ((edma->version == v1) ?
> -			EDMA_CERR : EDMA64_CERR);
> -	edma->regs.ssrt = edma->membase + ((edma->version == v1) ?
> -			EDMA_SSRT : EDMA64_SSRT);
> -	edma->regs.cdne = edma->membase + ((edma->version == v1) ?
> -			EDMA_CDNE : EDMA64_CDNE);
> -	edma->regs.intl = edma->membase + ((edma->version == v1) ?
> -			EDMA_INTR : EDMA64_INTL);
> -	edma->regs.errl = edma->membase + ((edma->version == v1) ?
> -			EDMA_ERR : EDMA64_ERRL);
> +	edma->regs.serq = edma->membase + ((edma->version == v2) ?
> +			EDMA64_SERQ : EDMA_SERQ);
> +	edma->regs.cerq = edma->membase + ((edma->version == v2) ?
> +			EDMA64_CERQ : EDMA_CERQ);
> +	edma->regs.seei = edma->membase + ((edma->version == v2) ?
> +			EDMA64_SEEI : EDMA_SEEI);
> +	edma->regs.ceei = edma->membase + ((edma->version == v2) ?
> +			EDMA64_CEEI : EDMA_CEEI);
> +	edma->regs.cint = edma->membase + ((edma->version == v2) ?
> +			EDMA64_CINT : EDMA_CINT);
> +	edma->regs.cerr = edma->membase + ((edma->version == v2) ?
> +			EDMA64_CERR : EDMA_CERR);
> +	edma->regs.ssrt = edma->membase + ((edma->version == v2) ?
> +			EDMA64_SSRT : EDMA_SSRT);
> +	edma->regs.cdne = edma->membase + ((edma->version == v2) ?
> +			EDMA64_CDNE : EDMA_CDNE);
> +	edma->regs.intl = edma->membase + ((edma->version == v2) ?
> +			EDMA64_INTL : EDMA_INTR);
> +	edma->regs.errl = edma->membase + ((edma->version == v2) ?
> +			EDMA64_ERRL : EDMA_ERR);

Following to what I have said to 6/7 you can put the register offsets
into that new struct aswell.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
