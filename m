Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1732810EB87
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 15:28:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ/kq0e9pKK9yx1zsIQardHIBtkJEzOqGK3j9XdUkL0=; b=TCmDsRyMKpoyqF
	YunLtYzMPV9Eim1Cdxns5OmkrYNPFFMcDWcSUi7LdeNeyy4M2NB9dixMpeepruvNEIkJu2u4wKA37
	+we3xRs6qPY9WuxWlsts+Ffu0gqLEByrhEyz0gAtHtQiAnTXp6t8a2STGj7VKtBnwc7YWwG9JEMy1
	pK+EN6jFF4U/UzBv7oLyzEqIHPOGcJXtUr0+fc3lppqpRGJ088pwYGr0pAwyPedxsEw0y9v6lcJce
	2/QZs5l9MH2kLX3kfPvveb3rrXT9+t9rX2d4RzRhvc3MihlDQXEQUMBL8UD6oTM1gVuQIEvch7UXv
	FdmTDsIlo2VBSbqd2Tpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibmgx-0005nK-TZ; Mon, 02 Dec 2019 14:28:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmgq-0005me-Pz
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 14:28:42 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ibmgp-0007e7-2S; Mon, 02 Dec 2019 15:28:39 +0100
Message-ID: <3dff516c16dbb8c654293e16c49b4c59d29fd707.camel@pengutronix.de>
Subject: Re: [PATCH 1/2] soc: imx: gpcv2: Add support for imx8mm
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Date: Mon, 02 Dec 2019 15:28:38 +0100
In-Reply-To: <20191129234108.12732-1-aford173@gmail.com>
References: <20191129234108.12732-1-aford173@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_062840_843610_7F3C41A4 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-11-29 at 17:41 -0600, Adam Ford wrote:
> The technical reference manual for both the i.MX8MQ and i.MX8M Mini
> appear to show the same register definitions and locations for the
> General Power Controller (GPC).
> 
> This patch expands the table of compatible SoC's to include
> the i.MX8m Mini
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> index b0dffb06c05d..67c54cbb6c81 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -641,6 +641,7 @@ static int imx_gpcv2_probe(struct platform_device *pdev)
>  static const struct of_device_id imx_gpcv2_dt_ids[] = {
>  	{ .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data, },
>  	{ .compatible = "fsl,imx8mq-gpc", .data = &imx8m_pgc_domain_data, },
> +	{ .compatible = "fsl,imx8mm-gpc", .data = &imx8m_pgc_domain_data, },

According to the 5.2.5.1 "PGC power domains" chapters in both the i.MX
8M Dual/8M QuadLite/8M Quad and i.MX 8M Mini Applications Processor
Reference Manuals (Rev.1), the two SoCs have a different list of power
domains:

i.MX8MQ:
	PGC_C0
	PGC_C1
	PGC_C2
	PGC_C3
	PGC_SCU
	PGC_MF
	PGC_OTG1
	PGC_OTG2
	PGC_PCIE
	PGC_MIPI
	PGC_DDR1
	PGC_DDR2
	PGC_VPU
	PGC_GPU
	PGC_HDMI
	PGC_DISP
	PGC_MIPI_CSI1
	PGC_MIPI_CSI2
	PGC_PCIE2

i.MX8MM:
	PGC_C0
	PGC_C1
	PGC_C2
	PGC_C3
	PGC_SCU
	PGC_NOC
	PGC_PCIE
	PGC_OTG1
	PGC_OTG2
	PGC_DDR1
	PGC_DISPMIX
	GPC_MIPI
	PGC_GPUMIX
	PGC_GPU_3D
	PGC_GPU_2D
	PGC_VPUMIX
	PGC_VPU_G1
	PGC_VPU_G2
	PGC_VPU_H1

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
