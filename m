Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470FAC248C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Dhdz809vEsQPKy4sPBQuZKPOvbZjOrnCqokVMb6KNU=; b=itWisQxQmOwcV4
	bQW7CvJ+sd8aaOBmBj5HnqNhBQcNDfou35bbVbZUhjbgDLE4uTZEdzQwtkV6lLdgy/bj4ei6DzfRH
	AP+v/2oqsrj1w4pMucy49cZIitY6iBQY7sS3XGrwX8Z9/c+GV7VcAFT/1oFi+zqfdLxMMzbDe4Kyv
	k20rGRtD7TP1kuSikSlbR/QxFd6vlRHwAAUBtocF+TdeJSkPWlyWocB6WPEnx8EPia/UuabKFQxeO
	s+z6HSVC9ySJRe/SPeyI80YtYmGwbJ6ijLNq44cxuQg8YBvZR0UAgz6msbr3WDqh/IfifcALyc71A
	jqVemjeI56aO+S4MTong==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExnC-0003H9-6e; Mon, 30 Sep 2019 15:40:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExmf-0002tQ-PZ
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:40:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 589151000;
 Mon, 30 Sep 2019 08:40:20 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C3C083F706;
 Mon, 30 Sep 2019 08:40:19 -0700 (PDT)
Date: Mon, 30 Sep 2019 16:40:18 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH v3] PCI: aardvark: Use LTSSM state to build link training
 flag
Message-ID: <20190930154017.GF42880@e119886-lin.cambridge.arm.com>
References: <20190522213351.21366-3-repk@triplefau.lt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522213351.21366-3-repk@triplefau.lt>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_084021_920562_76644ABD 
X-CRM114-Status: GOOD (  25.54  )
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
Cc: Ellie Reeves <ellierevves@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 11:33:51PM +0200, Remi Pommarel wrote:
> Aardvark's PCI_EXP_LNKSTA_LT flag in its link status register is not
> implemented and does not reflect the actual link training state (the
> flag is always set to 0). In order to support link re-training feature
> this flag has to be emulated. The Link Training and Status State
> Machine (LTSSM) flag in Aardvark LMI config register could be used as
> a link training indicator. Indeed if the LTSSM is in L0 or upper state
> then link training has completed (see [1]).
> 
> Unfortunately because after asking a link retraining it takes a while
> for the LTSSM state to become less than 0x10 (due to L0s to recovery
> state transition delays), LTSSM can still be in L0 while link training
> has not finished yet. So this waits for link to be in recovery or lesser
> state before returning after asking for a link retrain.
> 
> [1] "PCI Express Base Specification", REV. 4.0
>     PCI Express, February 19 2014, Table 4-14
> 
> Signed-off-by: Remi Pommarel <repk@triplefau.lt>
> ---
> Changes since v1:
>   - Rename retraining flag field
>   - Fix DEVCTL register writing
> 
> Changes since v2:
>   - Rewrite patch logic so it is more legible
> 
> Please note that I will unlikely be able to answer any comments from May
> 24th to June 10th.
> ---
>  drivers/pci/controller/pci-aardvark.c | 29 ++++++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> index 134e0306ff00..8803083b2174 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -180,6 +180,8 @@
>  #define LINK_WAIT_MAX_RETRIES		10
>  #define LINK_WAIT_USLEEP_MIN		90000
>  #define LINK_WAIT_USLEEP_MAX		100000
> +#define RETRAIN_WAIT_MAX_RETRIES	10
> +#define RETRAIN_WAIT_USLEEP_US		2000
>  
>  #define MSI_IRQ_NUM			32
>  
> @@ -239,6 +241,17 @@ static int advk_pcie_wait_for_link(struct advk_pcie *pcie)
>  	return -ETIMEDOUT;
>  }
>  
> +static void advk_pcie_wait_for_retrain(struct advk_pcie *pcie)
> +{
> +	size_t retries;
> +
> +	for (retries = 0; retries < RETRAIN_WAIT_MAX_RETRIES; ++retries) {
> +		if (!advk_pcie_link_up(pcie))
> +			break;
> +		udelay(RETRAIN_WAIT_USLEEP_US);
> +	}
> +}
> +
>  static void advk_pcie_setup_hw(struct advk_pcie *pcie)
>  {
>  	u32 reg;
> @@ -426,11 +439,20 @@ advk_pci_bridge_emul_pcie_conf_read(struct pci_bridge_emul *bridge,
>  		return PCI_BRIDGE_EMUL_HANDLED;
>  	}
>  
> +	case PCI_EXP_LNKCTL: {
> +		/* u32 contains both PCI_EXP_LNKCTL and PCI_EXP_LNKSTA */
> +		u32 val = advk_readl(pcie, PCIE_CORE_PCIEXP_CAP + reg) &
> +			~(PCI_EXP_LNKSTA_LT << 16);

The commit message says "the flag is always set to 0" - therefore I guess
you don't *need* to mask out the LT bit here? I assume this is just
belt-and-braces but thought I'd check incase I've misunderstood or if your
commit message is inaccurate.

In any case masking out the bit (or adding a comment) makes this code more
readable as the reader doesn't need to know what the hardware does with this
bit.


> +		if (!advk_pcie_link_up(pcie))
> +			val |= (PCI_EXP_LNKSTA_LT << 16);
> +		*value = val;
> +		return PCI_BRIDGE_EMUL_HANDLED;
> +	}
> +
>  	case PCI_CAP_LIST_ID:
>  	case PCI_EXP_DEVCAP:
>  	case PCI_EXP_DEVCTL:
>  	case PCI_EXP_LNKCAP:
> -	case PCI_EXP_LNKCTL:
>  		*value = advk_readl(pcie, PCIE_CORE_PCIEXP_CAP + reg);
>  		return PCI_BRIDGE_EMUL_HANDLED;
>  	default:
> @@ -447,8 +469,13 @@ advk_pci_bridge_emul_pcie_conf_write(struct pci_bridge_emul *bridge,
>  
>  	switch (reg) {
>  	case PCI_EXP_DEVCTL:
> +		advk_writel(pcie, new, PCIE_CORE_PCIEXP_CAP + reg);
> +		break;

Why is this here?

Thanks,

Andrew Murray

> +
>  	case PCI_EXP_LNKCTL:
>  		advk_writel(pcie, new, PCIE_CORE_PCIEXP_CAP + reg);
> +		if (new & PCI_EXP_LNKCTL_RL)
> +			advk_pcie_wait_for_retrain(pcie);
>  		break;
>  
>  	case PCI_EXP_RTCTL:
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
