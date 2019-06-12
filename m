Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433F942C1D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 18:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZgJWLrRn1CGUD8ouUZLP8qdglMUgm4ieoNaJ5qkLes=; b=Lhc/2T54YxVgVU
	74OoE6ebPfjt6ZBEJ0MgawCBJUxWof+ZMK4ZGN6P+IJaQ32LzBKS9ImkPvhlOm+7gEss5pEy+MMoM
	KnO/BnGx40jUrHOYPv/13czmK2LVtvcr/+YyqUU2ErVex9ThID4/mZ6J44e87XljTuH/Ng82Z9rcp
	Q+BovtSnD6ApIDR60myP33PHF3AVK7NzbMDcyWRdeUqV4Kco1CyYO7CzWpZaQckGUf2O/dne5Zka0
	9nXBFCpFAXkKYsI+eJgm30BgWThyFWTt+eRrAUT5DLQAE5o+CehGy0b9WVhxqG1O9/9Oy8QtXgfmy
	HVexxZRk5I84rgzNV4Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb62g-00007x-O8; Wed, 12 Jun 2019 16:24:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb62S-00006G-N1
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 16:23:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F33442B;
 Wed, 12 Jun 2019 09:23:51 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EEDCC3F73C;
 Wed, 12 Jun 2019 09:23:49 -0700 (PDT)
Date: Wed, 12 Jun 2019 17:23:47 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>
Subject: Re: [PATCHv5 18/20] PCI: mobiveil: Disable IB and OB windows set by
 bootloader
Message-ID: <20190612162347.GF15747@redmoon>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-19-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190412083635.33626-19-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_092352_844804_8405E1BE 
X-CRM114-Status: GOOD (  16.23  )
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
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 12, 2019 at 08:37:00AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> Disable all inbound and outbound windows before set up the windows
> in kernel, in case transactions match the window set by bootloader.

There must be no PCI transactions ongoing at bootloader<->OS handover.

The bootloader needs fixing and this patch should be dropped, the host
bridge driver assumes the host bridge state is disabled, it will
program the bridge apertures from scratch with no ongoing transactions,
anything deviating from this behaviour is a bootloader bug and a recipe
for disaster.

Lorenzo

> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> ---
> V5:
>  - No functionality change.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index 8dc87c7a600e..411e9779da12 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -565,6 +565,24 @@ static int mobiveil_bringup_link(struct mobiveil_pcie *pcie)
>  	return -ETIMEDOUT;
>  }
>  
> +static void mobiveil_pcie_disable_ib_win(struct mobiveil_pcie *pcie, int idx)
> +{
> +	u32 val;
> +
> +	val = csr_readl(pcie, PAB_PEX_AMAP_CTRL(idx));
> +	val &= ~(1 << AMAP_CTRL_EN_SHIFT);
> +	csr_writel(pcie, val, PAB_PEX_AMAP_CTRL(idx));
> +}
> +
> +static void mobiveil_pcie_disable_ob_win(struct mobiveil_pcie *pcie, int idx)
> +{
> +	u32 val;
> +
> +	val = csr_readl(pcie, PAB_AXI_AMAP_CTRL(idx));
> +	val &= ~(1 << WIN_ENABLE_SHIFT);
> +	csr_writel(pcie, val, PAB_AXI_AMAP_CTRL(idx));
> +}
> +
>  static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
>  {
>  	phys_addr_t msg_addr = pcie->pcie_reg_base;
> @@ -585,6 +603,13 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  {
>  	u32 value, pab_ctrl, type;
>  	struct resource_entry *win;
> +	int i;
> +
> +	/* Disable all inbound/outbound windows */
> +	for (i = 0; i < pcie->apio_wins; i++)
> +		mobiveil_pcie_disable_ob_win(pcie, i);
> +	for (i = 0; i < pcie->ppio_wins; i++)
> +		mobiveil_pcie_disable_ib_win(pcie, i);
>  
>  	/* setup bus numbers */
>  	value = csr_readl(pcie, PCI_PRIMARY_BUS);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
