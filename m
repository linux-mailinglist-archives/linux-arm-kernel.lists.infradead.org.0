Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4054016FDBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:31:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZd8zMj3TpkCDJW0WQ/DCwKBE93fZVZGhKceEH9SfdA=; b=r9GVlrtDSFc5JX
	in2g2fixWWhNlNmnvO+YfuvfQ6V8Fh801yT2/Ge/JYqZYYZAyUlWRcUj7AnAWWLusn3OR1At1TGl4
	3dKT6BDgab0oRPM3tooj4HSrWAvMyK2d8kO90jBmsrihPdgvP/K/hDaXsXDOE8ShnXMVEwysZRTHo
	yVwzXzyzvn0aIRyrxZzOCgmAXzgUptIFDmM1FGFSiZFI/j9aggspMJs1z1B2GHSy/xlLIpkMmF46L
	5iZtZR5XVwfIqpYh2vyeV8XxzwgLaafMa/O/p7hh4Avm73Xe/Xmqrkuv4tEkS4VO39eCbpXrVoYXX
	r/s9JQehHOv2i1JqxF6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uuU-0001iB-Nu; Wed, 26 Feb 2020 11:31:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uuM-0001hP-1k
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 11:31:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E99611FB;
 Wed, 26 Feb 2020 03:31:16 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 28D233FA00;
 Wed, 26 Feb 2020 03:31:16 -0800 (PST)
Date: Wed, 26 Feb 2020 11:31:05 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Shawn Guo <shawn.guo@linaro.org>
Subject: Re: [PATCH v2 2/2] PCI: histb: Correct PCIe reset operation
Message-ID: <20200226113105.GA16925@e121166-lin.cambridge.arm.com>
References: <20200109032851.13377-1-shawn.guo@linaro.org>
 <20200109032851.13377-3-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109032851.13377-3-shawn.guo@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_033118_130578_2FE65257 
X-CRM114-Status: GOOD (  20.04  )
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Jun Nie <jun.nie@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 11:28:51AM +0800, Shawn Guo wrote:
> The PCIe reset via GPIO in the driver never worked as expected.  Per
> "Power Sequencing and Reset Signal Timings" table in
> PCI EXPRESS CARD ELECTROMECHANICAL SPECIFICATION, the PERST# should be
> deasserted after minimum of 100us once REFCLK is stable.
> 
> The assertion has been done when the GPIO is being requested, and
> deassertion should be done in host enabling rather than disabling. Also
> a bit wait is added to ensure device get ready after reset.
> 
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> ---
>  drivers/pci/controller/dwc/pcie-histb.c | 20 ++++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)

Shawn,

this looks like a fix, please tag it as such and let me know if
it has to be backported, in which case also the previous patch
should I assume.

Thanks,
Lorenzo

> diff --git a/drivers/pci/controller/dwc/pcie-histb.c b/drivers/pci/controller/dwc/pcie-histb.c
> index 112254619ed0..67c27a8036c7 100644
> --- a/drivers/pci/controller/dwc/pcie-histb.c
> +++ b/drivers/pci/controller/dwc/pcie-histb.c
> @@ -219,9 +219,6 @@ static void histb_pcie_host_disable(struct histb_pcie *hipcie)
>  	clk_disable_unprepare(hipcie->sys_clk);
>  	clk_disable_unprepare(hipcie->bus_clk);
>  
> -	if (hipcie->reset_gpio)
> -		gpiod_set_value_cansleep(hipcie->reset_gpio, 0);
> -
>  	if (hipcie->vpcie)
>  		regulator_disable(hipcie->vpcie);
>  }
> @@ -242,9 +239,6 @@ static int histb_pcie_host_enable(struct pcie_port *pp)
>  		}
>  	}
>  
> -	if (hipcie->reset_gpio)
> -		gpiod_set_value_cansleep(hipcie->reset_gpio, 1);
> -
>  	ret = clk_prepare_enable(hipcie->bus_clk);
>  	if (ret) {
>  		dev_err(dev, "cannot prepare/enable bus clk\n");
> @@ -278,6 +272,20 @@ static int histb_pcie_host_enable(struct pcie_port *pp)
>  	reset_control_assert(hipcie->bus_reset);
>  	reset_control_deassert(hipcie->bus_reset);
>  
> +	if (hipcie->reset_gpio) {
> +		/*
> +		 * "Power Sequencing and Reset Signal Timings" table in
> +		 * PCI EXPRESS CARD ELECTROMECHANICAL SPECIFICATION, indicates
> +		 * PERST# should be deasserted after minimum of 100us
> +		 * once REFCLK is stable.
> +		 */
> +		usleep_range(100, 200);
> +		gpiod_set_value_cansleep(hipcie->reset_gpio, 0);
> +
> +		/* wait 1ms for device to be ready */
> +		usleep_range(1000, 2000);
> +	}
> +
>  	return 0;
>  
>  err_aux_clk:
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
