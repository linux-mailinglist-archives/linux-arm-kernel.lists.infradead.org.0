Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBAA5A12E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 18:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBU9RajXGUlTjeC/T3akCOmYm0MwjPiq6ILr+ELjyRU=; b=avMKR587BH7piA
	d4UBvhwlwetG1r7gB1rnob9+JrMihYC2duz7KHFPtDJaR3O6i8OuPF/S+ukievSF1d49EgjZpAUy2
	vmrlQihIYUr6mFvxyXELxyBYnnWhj4yVdCZWWv227NSW8tK2zftx6W6+EQwO7DeZNCX2Jqt887Ixr
	2hXnsCJljwaj30oS+qUkksSDN8WWdwa0knWblCCqpuvQH9RoNYbMENWZCwYKnlKaM1SHTc78jQ6tA
	/vdPxbdE04NSdUcgHAzuI0SfgOlzee8R/86inU9NILL5cJxivs3gmYWVfQa1jhlNFuUXSBFlsiDHG
	ZNUZSIQqSx5YRxYUeqAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtwi-0006ks-NX; Fri, 28 Jun 2019 16:41:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtwV-0006jX-0m
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 16:41:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8462928;
 Fri, 28 Jun 2019 09:41:42 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 816453F706;
 Fri, 28 Jun 2019 09:41:40 -0700 (PDT)
Date: Fri, 28 Jun 2019 17:41:38 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 09/20] PCI: mobiveil: Correct inbound/outbound window
 setup routines
Message-ID: <20190628164138.GC21829@e121166-lin.cambridge.arm.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-10-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190412083635.33626-10-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_094143_154649_D1498F87 
X-CRM114-Status: GOOD (  24.38  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 12, 2019 at 08:36:06AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> Outbound window routine:
>  - Remove unused var definitions and register read operations.
>  - Add the upper 32-bit cpu address setup of the window.
>  - Instead of blindly write, only change the fields specified.
>  - Mask the lower bits of window size in case override the
>    control bits.
>  - Check if the passing window number is available, instead of
>    the total number of the initialized windows.
> 
> Inbound window routine:
>  - Add parameter 'u64 cpu_addr' to specify the cpu address
>    of the window instead of using 'pci_addr'.
>  - Change 'int pci_addr' to 'u64 pci_addr', and add setup
>    of the upper 32-bit PCI address of the window.
>  - Move the PCIe PIO master enablement to mobiveil_host_init().
>  - Instead of blindly write, only change the fields specified.
>  - Mask the lower bits of window size in case override the
>    control bits.
>  - Check if the passing window number is available, instead of
>    the total number of the initialized windows.
>  - And add the statistic of initialized inbound windows.
> 
> Fixes: 9af6bcb11e12 ("PCI: mobiveil: Add Mobiveil PCIe Host Bridge IP driver")
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> ---
> V5:
>  - Corrected and retouched the subject and changelog.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 70 +++++++++++++++-----------
>  1 file changed, 42 insertions(+), 28 deletions(-)

There are two things to be done here:

1) Separate fixes from refactoring
2) Each fix should be standalone and solve one problem only

The commit log is a list of changes, some of which I can't
parse.

You should split this patch as described above and repost it
separately but first I will try to merge what I can from this
series, do not repost as yet.

Thanks,
Lorenzo

> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index e88afc792a5c..4ba458474e42 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -65,9 +65,13 @@
>  #define PAB_AXI_AMAP_CTRL(win)		PAB_REG_ADDR(0x0ba0, win)
>  #define  WIN_ENABLE_SHIFT		0
>  #define  WIN_TYPE_SHIFT			1
> +#define  WIN_TYPE_MASK			0x3
> +#define  WIN_SIZE_SHIFT			10
> +#define  WIN_SIZE_MASK			0x3fffff
>  
>  #define PAB_EXT_AXI_AMAP_SIZE(win)	PAB_EXT_REG_ADDR(0xbaf0, win)
>  
> +#define PAB_EXT_AXI_AMAP_AXI_WIN(win)	PAB_EXT_REG_ADDR(0x80a0, win)
>  #define PAB_AXI_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x0ba4, win)
>  #define  AXI_WINDOW_ALIGN_MASK		3
>  
> @@ -82,8 +86,10 @@
>  #define PAB_PEX_AMAP_CTRL(win)		PAB_REG_ADDR(0x4ba0, win)
>  #define  AMAP_CTRL_EN_SHIFT		0
>  #define  AMAP_CTRL_TYPE_SHIFT		1
> +#define  AMAP_CTRL_TYPE_MASK		3
>  
>  #define PAB_EXT_PEX_AMAP_SIZEN(win)	PAB_EXT_REG_ADDR(0xbef0, win)
> +#define PAB_EXT_PEX_AMAP_AXI_WIN(win)	PAB_EXT_REG_ADDR(0xb4a0, win)
>  #define PAB_PEX_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x4ba4, win)
>  #define PAB_PEX_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x4ba8, win)
>  #define PAB_PEX_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x4bac, win)
> @@ -455,49 +461,51 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
>  }
>  
>  static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
> -			       int pci_addr, u32 type, u64 size)
> +			       u64 cpu_addr, u64 pci_addr, u32 type, u64 size)
>  {
> -	int pio_ctrl_val;
> -	int amap_ctrl_dw;
> +	u32 value;
>  	u64 size64 = ~(size - 1);
>  
> -	if ((pcie->ib_wins_configured + 1) > pcie->ppio_wins) {
> +	if (win_num >= pcie->ppio_wins) {
>  		dev_err(&pcie->pdev->dev,
>  			"ERROR: max inbound windows reached !\n");
>  		return;
>  	}
>  
> -	pio_ctrl_val = csr_readl(pcie, PAB_PEX_PIO_CTRL);
> -	pio_ctrl_val |= 1 << PIO_ENABLE_SHIFT;
> -	csr_writel(pcie, pio_ctrl_val, PAB_PEX_PIO_CTRL);
> -
> -	amap_ctrl_dw = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
> -	amap_ctrl_dw |= (type << AMAP_CTRL_TYPE_SHIFT) |
> -			(1 << AMAP_CTRL_EN_SHIFT) |
> -			lower_32_bits(size64);
> -	csr_writel(pcie, amap_ctrl_dw, PAB_PEX_AMAP_CTRL(win_num));
> +	value = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
> +	value &= ~(AMAP_CTRL_TYPE_MASK << AMAP_CTRL_TYPE_SHIFT |
> +		 WIN_SIZE_MASK << WIN_SIZE_SHIFT);
> +	value |= (type << AMAP_CTRL_TYPE_SHIFT) | (1 << AMAP_CTRL_EN_SHIFT) |
> +		 (lower_32_bits(size64) & WIN_SIZE_MASK << WIN_SIZE_SHIFT);
> +	csr_writel(pcie, value, PAB_PEX_AMAP_CTRL(win_num));
>  
>  	csr_writel(pcie, upper_32_bits(size64),
>  		   PAB_EXT_PEX_AMAP_SIZEN(win_num));
>  
> -	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_AXI_WIN(win_num));
> +	csr_writel(pcie, lower_32_bits(cpu_addr),
> +		   PAB_PEX_AMAP_AXI_WIN(win_num));
> +	csr_writel(pcie, upper_32_bits(cpu_addr),
> +		   PAB_EXT_PEX_AMAP_AXI_WIN(win_num));
> +
> +	csr_writel(pcie, lower_32_bits(pci_addr),
> +		   PAB_PEX_AMAP_PEX_WIN_L(win_num));
> +	csr_writel(pcie, upper_32_bits(pci_addr),
> +		   PAB_PEX_AMAP_PEX_WIN_H(win_num));
>  
> -	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_PEX_WIN_L(win_num));
> -	csr_writel(pcie, 0, PAB_PEX_AMAP_PEX_WIN_H(win_num));
> +	pcie->ib_wins_configured++;
>  }
>  
>  /*
>   * routine to program the outbound windows
>   */
>  static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
> -			       u64 cpu_addr, u64 pci_addr,
> -			       u32 config_io_bit, u64 size)
> +			       u64 cpu_addr, u64 pci_addr, u32 type, u64 size)
>  {
>  
> -	u32 value, type;
> +	u32 value;
>  	u64 size64 = ~(size - 1);
>  
> -	if ((pcie->ob_wins_configured + 1) > pcie->apio_wins) {
> +	if (win_num >= pcie->apio_wins) {
>  		dev_err(&pcie->pdev->dev,
>  			"ERROR: max outbound windows reached !\n");
>  		return;
> @@ -507,10 +515,12 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
>  	 * program Enable Bit to 1, Type Bit to (00) base 2, AXI Window Size Bit
>  	 * to 4 KB in PAB_AXI_AMAP_CTRL register
>  	 */
> -	type = config_io_bit;
>  	value = csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
> -	csr_writel(pcie, 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
> -		   lower_32_bits(size64), PAB_AXI_AMAP_CTRL(win_num));
> +	value &= ~(WIN_TYPE_MASK << WIN_TYPE_SHIFT |
> +		 WIN_SIZE_MASK << WIN_SIZE_SHIFT);
> +	value |= 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
> +		 (lower_32_bits(size64) & WIN_SIZE_MASK << WIN_SIZE_SHIFT);
> +	csr_writel(pcie, value, PAB_AXI_AMAP_CTRL(win_num));
>  
>  	csr_writel(pcie, upper_32_bits(size64), PAB_EXT_AXI_AMAP_SIZE(win_num));
>  
> @@ -518,11 +528,10 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
>  	 * program AXI window base with appropriate value in
>  	 * PAB_AXI_AMAP_AXI_WIN0 register
>  	 */
> -	value = csr_readl(pcie, PAB_AXI_AMAP_AXI_WIN(win_num));
> -	csr_writel(pcie, cpu_addr & (~AXI_WINDOW_ALIGN_MASK),
> +	csr_writel(pcie, lower_32_bits(cpu_addr) & (~AXI_WINDOW_ALIGN_MASK),
>  		   PAB_AXI_AMAP_AXI_WIN(win_num));
> -
> -	value = csr_readl(pcie, PAB_AXI_AMAP_PEX_WIN_H(win_num));
> +	csr_writel(pcie, upper_32_bits(cpu_addr),
> +		   PAB_EXT_AXI_AMAP_AXI_WIN(win_num));
>  
>  	csr_writel(pcie, lower_32_bits(pci_addr),
>  		   PAB_AXI_AMAP_PEX_WIN_L(win_num));
> @@ -604,6 +613,11 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  	value |= APIO_EN_MASK;
>  	csr_writel(pcie, value, PAB_AXI_PIO_CTRL);
>  
> +	/* Enable PCIe PIO master */
> +	value = csr_readl(pcie, PAB_PEX_PIO_CTRL);
> +	value |= 1 << PIO_ENABLE_SHIFT;
> +	csr_writel(pcie, value, PAB_PEX_PIO_CTRL);
> +
>  	/*
>  	 * we'll program one outbound window for config reads and
>  	 * another default inbound window for all the upstream traffic
> @@ -616,7 +630,7 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  			   CFG_WINDOW_TYPE, resource_size(pcie->ob_io_res));
>  
>  	/* memory inbound translation window */
> -	program_ib_windows(pcie, WIN_NUM_0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
> +	program_ib_windows(pcie, WIN_NUM_0, 0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
>  
>  	/* Get the I/O and memory ranges from DT */
>  	resource_list_for_each_entry(win, &pcie->resources) {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
