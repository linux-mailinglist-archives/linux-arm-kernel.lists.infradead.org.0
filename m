Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 974E31A6D37
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 22:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=NjAdD63OKqEWRi1nnYWSIej4IJVONSrsFGLyu+DswII=; b=uEZbK1p3O4yBrR
	OkC2jhWVjRPtIAwr9HEwSKsw7HXLb6yV9dnDnDH53DILJ3HiSgBshpW0nMBjyHm0b77gUEcJdU8Cc
	8puxSalV3Wfua16IboCCK4aod4G+GBL0KvFe6PB0W5I4hvkFs0nb3hHw3WwRuKt1TlToSfaw57IJf
	HcaG/Kwv/q9VGbVub1Rzpqssjv4l6VsRcBglEmPSaI1LXshtJ3PUwBM09l2FqBqoCGFOxwdJ4qzWT
	OBrrvWyiANzDNIoLXs5ZhPgfgvFMPC5Py4jPY/+p58YcUO+u9z5Ft0j2cfR7H38AdtunHuUFD6wPe
	UQCC+NX5F7nJ6JjsAU+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO5eY-0005ld-Qi; Mon, 13 Apr 2020 20:25:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO5eS-0005l9-Kd
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 20:25:53 +0000
Received: from localhost (mobile-166-175-184-103.mycingular.net
 [166.175.184.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBA2220663;
 Mon, 13 Apr 2020 20:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586809549;
 bh=7PcGTf+Br3iofGrHqpT1Lk86E7HQeOdsnGtnmkXmQXU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=at1uT8/PSg/+IWjPO7DOJs5nfPYZthY1ltxXmI5cn1TByUbMH4Uqus6jTmfnvKdbx
 fPnj04MTgRm1UPZAc2+zQdLr+uHnTLQVgryUeGLtrK02GEsQpuO4MYFsO3a4+mCf8m
 qNA5QJvKmPUCDr/YMcvS4/dfyC3ORWClhg6vO+Z4=
Date: Mon, 13 Apr 2020 15:25:46 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ansuel Smith <ansuelsmth@gmail.com>
Subject: Re: [PATCH 2/4] drivers: pci: dwc: pci-imx6: update binding to
 generic name
Message-ID: <20200413202546.GA147401@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410004738.19668-3-ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_132552_696456_E42B578F 
X-CRM114-Status: GOOD (  14.01  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If/when you repost this, please update the subject to match the
convention:

  $ git log --oneline drivers/pci/controller/dwc/pci-imx6.c
  2170a09fb4b0 PCI: imx6: Propagate errors for optional regulators
  075af61c19cd PCI: imx6: Limit DBI register length
  1b8df7aa7874 PCI: imx6: Allow asynchronous probing
  87cb312777b5 PCI: imx6: Use usleep_range() in imx6_pcie_enable_ref_clk()

As Fabio pointed out, we can't break backward compatibility without a
good reason.

On Fri, Apr 10, 2020 at 02:47:36AM +0200, Ansuel Smith wrote:
> Rename specific bindings to generic name.
> 
> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index acfbd34032a8..4ac140e007b4 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -1146,28 +1146,28 @@ static int imx6_pcie_probe(struct platform_device *pdev)
>  	}
>  
>  	/* Grab PCIe PHY Tx Settings */
> -	if (of_property_read_u32(node, "fsl,tx-deemph-gen1",
> +	if (of_property_read_u32(node, "tx-deemph-gen1",
>  				 &imx6_pcie->tx_deemph_gen1))
>  		imx6_pcie->tx_deemph_gen1 = 0;
>  
> -	if (of_property_read_u32(node, "fsl,tx-deemph-gen2-3p5db",
> +	if (of_property_read_u32(node, "tx-deemph-gen2-3p5db",
>  				 &imx6_pcie->tx_deemph_gen2_3p5db))
>  		imx6_pcie->tx_deemph_gen2_3p5db = 0;
>  
> -	if (of_property_read_u32(node, "fsl,tx-deemph-gen2-6db",
> +	if (of_property_read_u32(node, "tx-deemph-gen2-6db",
>  				 &imx6_pcie->tx_deemph_gen2_6db))
>  		imx6_pcie->tx_deemph_gen2_6db = 20;
>  
> -	if (of_property_read_u32(node, "fsl,tx-swing-full",
> +	if (of_property_read_u32(node, "tx-swing-full",
>  				 &imx6_pcie->tx_swing_full))
>  		imx6_pcie->tx_swing_full = 127;
>  
> -	if (of_property_read_u32(node, "fsl,tx-swing-low",
> +	if (of_property_read_u32(node, "tx-swing-low",
>  				 &imx6_pcie->tx_swing_low))
>  		imx6_pcie->tx_swing_low = 127;
>  
>  	/* Limit link speed */
> -	ret = of_property_read_u32(node, "fsl,max-link-speed",
> +	ret = of_property_read_u32(node, "max-link-speed",
>  				   &imx6_pcie->link_gen);
>  	if (ret)
>  		imx6_pcie->link_gen = 1;
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
