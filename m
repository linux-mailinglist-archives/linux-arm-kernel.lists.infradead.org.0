Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F6D838C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 20:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8RT6MGCQPTC2fy3pFzVT4qqw4icvrRsWKKPS5gZCioU=; b=D+slum69hcgpNy
	7JSuYGwupHa/JT85pTXDNjjdGq9/Oz34BuaeTC8nYbn735CY8vmGpUhyibsdI6zEJcCpO7K8C7SQS
	LMd+JW+1OxpLak3KnmF5+KXx80uHR2RAL/vhVvnYyK2N7DaYOoUdmh6ecxKf1fJ0T4f9APBJPIItQ
	4N7h4xzdGmxov/biGdTWYjYAADA3ySZWXp5pLwQq+nbzAPtOxFlSIerbyN08oPqZalyLuOpIzLRPd
	hH/PALawnEE6yA6vvFfAr1NbH4K2dApc2rUmTA3dwS+Hla19KWcyMSB54gj8nXx2JM5c6YziMfjsb
	4ocRUPRnncwwJottz0RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv4Or-00024w-9k; Tue, 06 Aug 2019 18:41:33 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv4Oh-00022F-N9
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 18:41:25 +0000
X-Originating-IP: 88.190.179.123
Received: from localhost (unknown [88.190.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 5DF3D6000E;
 Tue,  6 Aug 2019 18:41:13 +0000 (UTC)
Date: Tue, 6 Aug 2019 20:49:46 +0200
From: Remi Pommarel <repk@triplefau.lt>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v2] PCI: aardvark: Wait for endpoint to be ready before
 training link
Message-ID: <20190806184945.GU12859@voidbox.localdomain>
References: <20190522213351.21366-2-repk@triplefau.lt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522213351.21366-2-repk@triplefau.lt>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_114123_937037_A1EDE502 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: linux-pci@vger.kernel.org, Ellie Reeves <ellierevves@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 11:33:50PM +0200, Remi Pommarel wrote:
> When configuring pcie reset pin from gpio (e.g. initially set by
> u-boot) to pcie function this pin goes low for a brief moment
> asserting the PERST# signal. Thus connected device enters fundamental
> reset process and link configuration can only begin after a minimal
> 100ms delay (see [1]).
> 
> Because the pin configuration comes from the "default" pinctrl it is
> implicitly configured before the probe callback is called:
> 
> driver_probe_device()
>   really_probe()
>     ...
>     pinctrl_bind_pins() /* Here pin goes from gpio to PCIE reset
>                            function and PERST# is asserted */
>     ...
>     drv->probe()
> 
> [1] "PCI Express Base Specification", REV. 4.0
>     PCI Express, February 19 2014, 6.6.1 Conventional Reset
> 
> Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> ---
> Changes since v1:
>   - Add a comment about pinctrl implicit pin configuration
>   - Use more legible msleep
>   - Use PCI_PM_D3COLD_WAIT macro
> 
> Please note that I will unlikely be able to answer any comments from May
> 24th to June 10th.
> ---
>  drivers/pci/controller/pci-aardvark.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> index 134e0306ff00..d998c2b9cd04 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -324,6 +324,14 @@ static void advk_pcie_setup_hw(struct advk_pcie *pcie)
>  	reg |= PIO_CTRL_ADDR_WIN_DISABLE;
>  	advk_writel(pcie, reg, PIO_CTRL);
>  
> +	/*
> +	 * PERST# signal could have been asserted by pinctrl subsystem before
> +	 * probe() callback has been called, making the endpoint going into
> +	 * fundamental reset. As required by PCI Express spec a delay for at
> +	 * least 100ms after such a reset before link training is needed.
> +	 */
> +	msleep(PCI_PM_D3COLD_WAIT);
> +
>  	/* Start link training */
>  	reg = advk_readl(pcie, PCIE_CORE_LINK_CTRL_STAT_REG);
>  	reg |= PCIE_CORE_LINK_TRAINING;
> -- 
> 2.20.1

Gentle ping.

-- 
Remi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
