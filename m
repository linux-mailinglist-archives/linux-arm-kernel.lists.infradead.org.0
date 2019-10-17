Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5A4DAC99
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWZ6qHiz4QTmvCutGztqq7eEBaBxS/uX8LAESrsBnkM=; b=gw/lZsT5mgMpst
	3gn0r9SAgRFbjLTouAiiw2gpuRYemVe3OFvUCdTXamoApPirYLoCDyuV5QR0SsYJz4fhc/UlbWeG8
	5O0kmVqVyCfFWA1PTLDqP37345spuqqgwVSjPa2UwUPdWMMuBUYJdeAOEOtC1sXoDVHY5CJrkElMN
	/vxzcLo9gqbZfN13Aud2WJIvexvrCGw+Yv5Ht1OKAu1IOFBsaO5hIFdOsPJnpoJ+QVJG83N8KVwF0
	hgqxKKt7y5j3ghVE7BTY+X4YqqBYcc6mOpHIE3ULQW8rDP4duENub5QmaOGA0gwOEFo9EWacJx9cz
	6NmdMXwxmIKmPc+cZk0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL58s-0002Ic-H6; Thu, 17 Oct 2019 12:44:34 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL58Z-0002G2-MF
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:44:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34E741993;
 Thu, 17 Oct 2019 05:44:05 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D59D3F6C4;
 Thu, 17 Oct 2019 05:44:04 -0700 (PDT)
Date: Thu, 17 Oct 2019 13:43:59 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Grzegorz Jaszczyk <jaz@semihalf.com>
Subject: Re: [PATCH v2] PCI: aardvark: fix big endian support
Message-ID: <20191017124359.GA19340@e121166-lin.cambridge.arm.com>
References: <1563279127-30678-1-git-send-email-jaz@semihalf.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563279127-30678-1-git-send-email-jaz@semihalf.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_054415_776903_484FB38A 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: bhelgaas@google.com, linux-pci@vger.kernel.org, mw@semihalf.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 02:12:07PM +0200, Grzegorz Jaszczyk wrote:
> Initialise every not-byte wide fields of emulated pci bridge config
> space with proper cpu_to_le* macro. This is required since the structure
> describing config space of emulated bridge assumes little-endian
> convention.
> 
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> ---
> v1->v2
> - add missing cpu_to_le32 for class_revison assignment (issues found by
> Thomas Petazzoni and also detected by Sparse tool).
> 
>  drivers/pci/controller/pci-aardvark.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)

Applied to pci/aardvark, thanks.

Lorenzo

> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> index 134e030..178e92f 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -479,18 +479,20 @@ static void advk_sw_pci_bridge_init(struct advk_pcie *pcie)
>  {
>  	struct pci_bridge_emul *bridge = &pcie->bridge;
>  
> -	bridge->conf.vendor = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) & 0xffff;
> -	bridge->conf.device = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) >> 16;
> +	bridge->conf.vendor =
> +		cpu_to_le16(advk_readl(pcie, PCIE_CORE_DEV_ID_REG) & 0xffff);
> +	bridge->conf.device =
> +		cpu_to_le16(advk_readl(pcie, PCIE_CORE_DEV_ID_REG) >> 16);
>  	bridge->conf.class_revision =
> -		advk_readl(pcie, PCIE_CORE_DEV_REV_REG) & 0xff;
> +		cpu_to_le32(advk_readl(pcie, PCIE_CORE_DEV_REV_REG) & 0xff);
>  
>  	/* Support 32 bits I/O addressing */
>  	bridge->conf.iobase = PCI_IO_RANGE_TYPE_32;
>  	bridge->conf.iolimit = PCI_IO_RANGE_TYPE_32;
>  
>  	/* Support 64 bits memory pref */
> -	bridge->conf.pref_mem_base = PCI_PREF_RANGE_TYPE_64;
> -	bridge->conf.pref_mem_limit = PCI_PREF_RANGE_TYPE_64;
> +	bridge->conf.pref_mem_base = cpu_to_le16(PCI_PREF_RANGE_TYPE_64);
> +	bridge->conf.pref_mem_limit = cpu_to_le16(PCI_PREF_RANGE_TYPE_64);
>  
>  	/* Support interrupt A for MSI feature */
>  	bridge->conf.intpin = PCIE_CORE_INT_A_ASSERT_ENABLE;
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
