Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BA444184
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KxNn+lUeAFtecNYoUzmGKnhuomnRhW2EJc7Mxx1rys=; b=k7qTelil+Sb91U
	tZt5Kr5A04n1SyWkVMiWIqx4YvmRgjOK0YApz6KfV76fPnLxZwdtynqPLr7+/YCdDsTLFIMZQgNML
	BLej8N9+MEeTlo/yeSe6IQMI5lDEwH18NBFxzulQhaQONa/2GV69Y4Oa7x2cG6hO+XERkmqDJVeTw
	1KbB3kF0yLMk2+ajJpH0Vgdg+OxpMlZuKEZ/bGK/h1Vwd3Xs+L1Uox/qbeXn3xD/wL5j+gGfXsTmB
	rS8L4HacCmTXd0mGaF9HIrwC+VBgx2ismYkwMeTd4qsihevETwDzNFeZJVtNTU24wEKXXQ2AjJY6e
	aNn99OjjVZplu86s6Twg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSNR-0001oA-Fd; Thu, 13 Jun 2019 16:15:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSNF-0001Sl-KD
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:14:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4CDAF367;
 Thu, 13 Jun 2019 09:14:47 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A57A3F694;
 Thu, 13 Jun 2019 09:14:46 -0700 (PDT)
Date: Thu, 13 Jun 2019 17:14:41 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH] PCI: aardvark: Fix PCI_EXP_RTCTL conf register writing
Message-ID: <20190613161441.GA2247@e121166-lin.cambridge.arm.com>
References: <20190522213351.21366-1-repk@triplefau.lt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522213351.21366-1-repk@triplefau.lt>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091449_722744_55A7078C 
X-CRM114-Status: GOOD (  17.08  )
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
Cc: Ellie Reeves <ellierevves@gmail.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 11:33:49PM +0200, Remi Pommarel wrote:
> PCI_EXP_RTCTL is used to activate PME interrupt only, so writing into it
> should not modify other interrupts' mask (such as ISR0).
> 
> Fixes: 6302bf3ef78d ("PCI: Init PCIe feature bits for managed host bridge alloc")
> Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> ---
> Please note that I will unlikely be able to answer any comments from May
> 24th to June 10th.
> ---
>  drivers/pci/controller/pci-aardvark.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> index 134e0306ff00..27102d3b4f9c 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -451,10 +451,14 @@ advk_pci_bridge_emul_pcie_conf_write(struct pci_bridge_emul *bridge,
>  		advk_writel(pcie, new, PCIE_CORE_PCIEXP_CAP + reg);
>  		break;
>  
> -	case PCI_EXP_RTCTL:
> -		new = (new & PCI_EXP_RTCTL_PMEIE) << 3;
> -		advk_writel(pcie, new, PCIE_ISR0_MASK_REG);
> +	case PCI_EXP_RTCTL: {
> +		/* Only mask/unmask PME interrupt */
> +		u32 val = advk_readl(pcie, PCIE_ISR0_MASK_REG) &
> +			~PCIE_MSG_PM_PME_MASK;
> +		val |= (new & PCI_EXP_RTCTL_PMEIE) << 3;

I know you have not introduced this code but maybe we can
take an opportunity to clarify it (that << 3 shift obfuscates
a bit):

	u32 val = advk_readl(pcie, PCIE_ISR0_MASK_REG) &
			~PCIE_MSG_PM_PME_MASK;

	if (new & PCI_EXP_RTCTL_PMEIE)
		val |= PCIE_MSG_PM_PME_MASK;

	advk_writel(pcie, val, PCIE_ISR0_MASK_REG);
	break;

Or I am not reading the code correctly ?

Regardless, I need Thomas' ACK to proceed.

Lorenzo

> +		advk_writel(pcie, val, PCIE_ISR0_MASK_REG);
>  		break;
> +	}
>  
>  	case PCI_EXP_RTSTA:
>  		new = (new & PCI_EXP_RTSTA_PME) >> 9;
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
