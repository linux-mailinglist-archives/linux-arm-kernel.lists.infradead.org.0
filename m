Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D49D7C31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 18:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEyVvJsScGe1/j64Qi/CpxPinsarFso1U6XWzoWhBWs=; b=Y7M0iVUy5z87pX
	eMDRWvGhWbFvupH4kXbbI9j3UP2S16Bn9dUwPjtV5we59DTqKjI7RBi9/5m5OyNyN02glzN8TY3Tt
	U3TDAydaVKOuUK47FMBEZoljGHgkFTAed2SGQaYYAIBAIp3mRfQqEoQxbOWdNW8emqdtw6sy6BKy0
	untqunlQzthty/JxtJIX/PQxpjPr3cHp1s20XpOccTzzOQJ4qG8UoIny9tmHSi9djLEyXXDt6/MCw
	jmJMcPRljeA17hBZvjiYgVDlx7AzINLgmkLzQ3ja3FiekCtfV+FJbytN1uZO506ZvcwDrtd8Uu3wI
	Uwa1jxXj6UHi+3rHcbnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPul-0005C5-R0; Tue, 15 Oct 2019 16:43:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPud-0005AU-Gt
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 16:43:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09AD6337;
 Tue, 15 Oct 2019 09:43:07 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E03A23F68E;
 Tue, 15 Oct 2019 09:43:05 -0700 (PDT)
Date: Tue, 15 Oct 2019 17:43:03 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Abhishek Shah <abhishek.shah@broadcom.com>
Subject: Re: [PATCH 1/1] PCI: iproc: Invalidate PAXB address mapping before
 programming it
Message-ID: <20191015164303.GC25674@e121166-lin.cambridge.arm.com>
References: <20190906035813.24046-1-abhishek.shah@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906035813.24046-1-abhishek.shah@broadcom.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_094307_601571_F452EB1D 
X-CRM114-Status: GOOD (  20.29  )
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 09:28:13AM +0530, Abhishek Shah wrote:
> Invalidate PAXB inbound/outbound address mapping each time before
> programming it. This is helpful for the cases where we need to
> reprogram inbound/outbound address mapping without resetting PAXB.
> kexec kernel is one such example.

This looks like a hack, explain to us please what it actually solves and
why a full reset is not necessary.

> Signed-off-by: Abhishek Shah <abhishek.shah@broadcom.com>
> Reviewed-by: Ray Jui <ray.jui@broadcom.com>
> Reviewed-by: Vikram Mysore Prakash <vikram.prakash@broadcom.com>

Patches are reviewed on public mailing lists, remove tags given
on internal reviews - they are not relevant.

> ---
>  drivers/pci/controller/pcie-iproc.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> index e3ca46497470..99a9521ba7ab 100644
> --- a/drivers/pci/controller/pcie-iproc.c
> +++ b/drivers/pci/controller/pcie-iproc.c
> @@ -1245,6 +1245,32 @@ static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
>  	return ret;
>  }
>  
> +static void iproc_pcie_invalidate_mapping(struct iproc_pcie *pcie)
> +{
> +	struct iproc_pcie_ib *ib = &pcie->ib;
> +	struct iproc_pcie_ob *ob = &pcie->ob;
> +	int idx;
> +
> +	if (pcie->ep_is_internal)

What's this check for and why leaving mappings in place is safe for
this category of IPs ?

> +		return;
> +
> +	if (pcie->need_ob_cfg) {
> +		/* iterate through all OARR mapping regions */
> +		for (idx = ob->nr_windows - 1; idx >= 0; idx--) {
> +			iproc_pcie_write_reg(pcie,
> +					     MAP_REG(IPROC_PCIE_OARR0, idx), 0);
> +		}
> +	}
> +
> +	if (pcie->need_ib_cfg) {
> +		/* iterate through all IARR mapping regions */
> +		for (idx = 0; idx < ib->nr_regions; idx++) {
> +			iproc_pcie_write_reg(pcie,
> +					     MAP_REG(IPROC_PCIE_IARR0, idx), 0);
> +		}
> +	}
> +}
> +
>  static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
>  			       struct device_node *msi_node,
>  			       u64 *msi_addr)
> @@ -1517,6 +1543,8 @@ int iproc_pcie_setup(struct iproc_pcie *pcie, struct list_head *res)
>  	iproc_pcie_perst_ctrl(pcie, true);
>  	iproc_pcie_perst_ctrl(pcie, false);
>  
> +	iproc_pcie_invalidate_mapping(pcie);

It makes more sense to call this in the .shutdown() method if I
understand what it does.

Lorenzo

>  	if (pcie->need_ob_cfg) {
>  		ret = iproc_pcie_map_ranges(pcie, res);
>  		if (ret) {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
