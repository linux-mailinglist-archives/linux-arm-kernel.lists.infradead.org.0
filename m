Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E585A1C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 19:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VK/mcJihEjpW2Uj7prsyI7pdT3aCOtHbiz5CTIRvuL4=; b=Gd3ADFGe7ohySD
	Z89OdZJOLnnkHJ+vryRmR8QrnfsGmQw3jn5G6p0MyYedoiHTZuJgE9znyRlYYB+4MbuCUwIQfbbCM
	UADKqJqgKXdbcciwDlHxOMbCovOHynBoQ++vqbW7KeKDgVyD+BZ17eCeVD4pNT+2oCd5kqNp65+uA
	7xGpUGL5vGVkrjUSZaZ8eP8Pw4/aQFgopujEHTWcedW9OJFmdaawPZuej9p43getrTvVc33/0xEKH
	Bl5f3ckbCb+0tY98D6kCEkIThhs4RD5YQsjCHEyN35TeXAHAC3roz7GknA2yW9+ctIS2y08Vtazf8
	fH5V/fhUj3/pF38BKWhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hguKA-00007d-NY; Fri, 28 Jun 2019 17:06:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hguJx-000069-Pw
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 17:06:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF6F928;
 Fri, 28 Jun 2019 10:05:56 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC1AB3F706;
 Fri, 28 Jun 2019 10:05:54 -0700 (PDT)
Date: Fri, 28 Jun 2019 18:05:52 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 10/20] PCI: mobiveil: Fix the INTx process errors
Message-ID: <20190628170552.GD21829@e121166-lin.cambridge.arm.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-11-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190412083635.33626-11-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_100557_882878_55A64B2C 
X-CRM114-Status: GOOD (  18.79  )
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

On Fri, Apr 12, 2019 at 08:36:12AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> In the loop block, there is not code to update the loop key,
> this patch updates the loop key by re-read the INTx status
> register.
> 
> This patch also add the clearing of the handled INTx status.

This is two bugs and that requires two patches, each of them fixing a
specific issue.

So split the patch into two and repost it.

Lorenzo

> Note: Need MV to test this fix.
> 
> Fixes: 9af6bcb11e12 ("PCI: mobiveil: Add Mobiveil PCIe Host Bridge IP driver")
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> ---
> V5:
>  - Corrected and retouched the subject and changelog.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index 4ba458474e42..78e575e71f4d 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -361,6 +361,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
>  	/* Handle INTx */
>  	if (intr_status & PAB_INTP_INTX_MASK) {
>  		shifted_status = csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT);
> +		shifted_status &= PAB_INTP_INTX_MASK;
>  		shifted_status >>= PAB_INTX_START;
>  		do {
>  			for_each_set_bit(bit, &shifted_status, PCI_NUM_INTX) {
> @@ -372,12 +373,16 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
>  					dev_err_ratelimited(dev, "unexpected IRQ, INT%d\n",
>  							    bit);
>  
> -				/* clear interrupt */
> -				csr_writel(pcie,
> -					   shifted_status << PAB_INTX_START,
> +				/* clear interrupt handled */
> +				csr_writel(pcie, 1 << (PAB_INTX_START + bit),
>  					   PAB_INTP_AMBA_MISC_STAT);
>  			}
> -		} while ((shifted_status >> PAB_INTX_START) != 0);
> +
> +			shifted_status = csr_readl(pcie,
> +						   PAB_INTP_AMBA_MISC_STAT);
> +			shifted_status &= PAB_INTP_INTX_MASK;
> +			shifted_status >>= PAB_INTX_START;
> +		} while (shifted_status != 0);
>  	}
>  
>  	/* read extra MSI status register */
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
