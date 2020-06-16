Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823A21FBF6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 21:53:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=SZroRs/cWn1YIzP8B28Vq3PcAP4ie6h6KWpDBFq7tLI=; b=OLF3Eu8hq3a8ZC
	S8sAs1HoTtB6VQj8gDxQysmwdnxcGucxiw5SiMI6FndfYeoSjjLTKcTTHZmbpgJx4ESgt19ZzSD8Z
	nWnrs+mH6DdjiLmGGwlxf2DJPa5cPLKkJhwkSbZTgcyyJdUELJo58Lp33fvdQwKamMWGOTU+fSPp+
	FcNRVRxf18gnJQiM14ne2Icy8xEqIVFX8K+j9pZg/X+PmtCl6u3Mlln/DaZsWTt7nKNyQgQ6vV6u4
	XUXEhjaDek7GCUIs1hvaBuQ07DqBRx3NOtFSckKJ5jnv0rCRt+pRbWhHHpgmACC8gJyQDMCBDjgi0
	9MdCt4hLydPQYuIZEwcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlHdq-0006Zk-77; Tue, 16 Jun 2020 19:53:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlHdg-0006ZH-1U
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 19:52:57 +0000
Received: from localhost (mobile-166-170-222-206.mycingular.net
 [166.170.222.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E5CB207C4;
 Tue, 16 Jun 2020 19:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592337174;
 bh=LVepEDTKFDyu8N3O0cjwt3BP/s5kz3X/8GxyUeyVeuw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Egb7yPQDH2MOw0vF57HXW52S6jJqm69KMnaYuFmHcYZkb0E4GRHYoxfOG37IWCRpo
 yZLHdYQRJtpFeUR/sB/qd3owrUBcpyGXaH+x3jbxNW9DfjpRO07vr4iSq+cXCptEMX
 SHQUhpeQhLtP1FPRmz4Gj2lmbKGe+oh0Lq0FGeGM=
Date: Tue, 16 Jun 2020 14:52:52 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shmuel Hazan <sh@tkos.co.il>
Subject: Re: [PATCH] pci: pci-mvebu: setup BAR0 to internal-regs
Message-ID: <20200616195252.GA1976810@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611054041.1484001-1-sh@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_125256_119054_35D7CB4B 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 linux-pci@vger.kernel.org, Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>,
 Chris ackham <chris.packham@alliedtelesis.co.nz>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

No comment on the patch itself, but "git log --oneline
drivers/pci/controller/pci-mvebu.c" tells you that your subject should
start with:

  PCI: mvebu: Set ...

On Thu, Jun 11, 2020 at 08:40:42AM +0300, Shmuel Hazan wrote:
> According to the Armada XP datasheet, section 10.2.6: "in order for
> the device todo a write to the MSI doorbell address, it needs to write
> to a register in the internal registers" space".

s/todo/to do/
There are three " characters above; they need to come in pairs.  If
they're nested, use ' for one pair.

> As a result of the requirement above, without this patch, MSI won't
> function and therefore some devices won't operate properly without
> pci=nomsi.
> 
> Tested on an Armada 385 board with the following PCIe devices:
> 	- Wilocity Wil6200 rev 2 (wil6210)
> 	- Qualcomm Atheros QCA6174 (ath10k_pci)
> 
> Both failed to get a response from the device after loading the
> firmware and seem to operate properly with this patch.
> 
> Signed-off-by: Shmuel Hazan <sh@tkos.co.il>
> ---
>  drivers/pci/controller/pci-mvebu.c | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/pci-mvebu.c b/drivers/pci/controller/pci-mvebu.c
> index 153a64676bc9..101c06602aa1 100644
> --- a/drivers/pci/controller/pci-mvebu.c
> +++ b/drivers/pci/controller/pci-mvebu.c
> @@ -105,6 +105,7 @@ struct mvebu_pcie_port {
>  	struct mvebu_pcie_window memwin;
>  	struct mvebu_pcie_window iowin;
>  	u32 saved_pcie_stat;
> +	struct resource regs;
>  };
>  
>  static inline void mvebu_writel(struct mvebu_pcie_port *port, u32 val, u32 reg)
> @@ -149,7 +150,9 @@ static void mvebu_pcie_set_local_dev_nr(struct mvebu_pcie_port *port, int nr)
>  
>  /*
>   * Setup PCIE BARs and Address Decode Wins:
> - * BAR[0,2] -> disabled, BAR[1] -> covers all DRAM banks
> + * BAR[0] -> internal registers (needed for MSI)
> + * BAR[1] -> covers all DRAM banks
> + * BAR[2] -> Disabled
>   * WIN[0-3] -> DRAM bank[0-3]
>   */
>  static void mvebu_pcie_setup_wins(struct mvebu_pcie_port *port)
> @@ -203,6 +206,12 @@ static void mvebu_pcie_setup_wins(struct mvebu_pcie_port *port)
>  	mvebu_writel(port, 0, PCIE_BAR_HI_OFF(1));
>  	mvebu_writel(port, ((size - 1) & 0xffff0000) | 1,
>  		     PCIE_BAR_CTRL_OFF(1));
> +
> +	/*
> +	 * Point BAR[0] to the device's internal registers.
> +	 */
> +	mvebu_writel(port, round_down(port->regs.start, SZ_1M), PCIE_BAR_LO_OFF(0));
> +	mvebu_writel(port, 0, PCIE_BAR_HI_OFF(0));
>  }
>  
>  static void mvebu_pcie_setup_hw(struct mvebu_pcie_port *port)
> @@ -708,14 +717,13 @@ static void __iomem *mvebu_pcie_map_registers(struct platform_device *pdev,
>  					      struct device_node *np,
>  					      struct mvebu_pcie_port *port)
>  {
> -	struct resource regs;
>  	int ret = 0;
>  
> -	ret = of_address_to_resource(np, 0, &regs);
> +	ret = of_address_to_resource(np, 0, &port->regs);
>  	if (ret)
>  		return (void __iomem *)ERR_PTR(ret);
>  
> -	return devm_ioremap_resource(&pdev->dev, &regs);
> +	return devm_ioremap_resource(&pdev->dev, &port->regs);
>  }
>  
>  #define DT_FLAGS_TO_TYPE(flags)       (((flags) >> 24) & 0x03)
> -- 
> 2.27.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
