Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF814280E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56J4lyDAsFD7bb954P+V0b7knX+RmM0CoCevR4i2MTk=; b=gT6kDWjO+h/LhD
	Xk6HiQbZ8ATRPvcfAsjxVLqWrhU8bPHQ8Ca0O8PyRTHPVD7tNxaatJj2BxVVDNQlGNgKMWhjNQSrQ
	Orbj4Ee6OBc55KZOr7IGajvjohLO9LN68Y0aOcc2NHQ3THLvFHfM2heArtKagr4Q8JKYVbCB+zZCV
	1xl8iSFIoJcK+Nd2DKBxx2eAiPE6+Cu61M01aT4TKBCzaE21XTBXscYfsTLb0bm15cyhVPFFFjy2y
	+6f22ROGAb0OdWN2WbYW/EBzWywFBZcC4rHFzifn10p1jBSos3LgkR+vuyAXqnoJuO+KTrUwKSGHt
	JQmGtp9roGy8pz9Dc/ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3hg-00076r-3S; Wed, 12 Jun 2019 13:54:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3hV-00076B-Cf
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:54:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9224228;
 Wed, 12 Jun 2019 06:54:04 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8EDE13F557;
 Wed, 12 Jun 2019 06:54:02 -0700 (PDT)
Date: Wed, 12 Jun 2019 14:54:00 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 19/20] PCI: mobiveil: Add 8-bit and 16-bit register
 accessors
Message-ID: <20190612135400.GB15747@redmoon>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-20-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190412083635.33626-20-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_065405_472411_620C344A 
X-CRM114-Status: GOOD (  14.50  )
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
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 12, 2019 at 08:37:05AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> There are some 8-bit and 16-bit registers in PCIe
> configuration space, so add accessors for them.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> ---
> V5:
>  - Corrected and retouched the subject and changelog.
>  - No functionality change.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index 411e9779da12..456adfee393c 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -268,11 +268,31 @@ static u32 csr_readl(struct mobiveil_pcie *pcie, u32 off)
>  	return csr_read(pcie, off, 0x4);
>  }
>  
> +static u32 csr_readw(struct mobiveil_pcie *pcie, u32 off)
> +{
> +	return csr_read(pcie, off, 0x2);
> +}
> +
> +static u32 csr_readb(struct mobiveil_pcie *pcie, u32 off)
> +{
> +	return csr_read(pcie, off, 0x1);
> +}
> +
>  static void csr_writel(struct mobiveil_pcie *pcie, u32 val, u32 off)
>  {
>  	csr_write(pcie, val, off, 0x4);
>  }
>  
> +static void csr_writew(struct mobiveil_pcie *pcie, u32 val, u32 off)
> +{
> +	csr_write(pcie, val, off, 0x2);
> +}
> +
> +static void csr_writeb(struct mobiveil_pcie *pcie, u32 val, u32 off)
> +{
> +	csr_write(pcie, val, off, 0x1);
> +}
> +

They are not used so you should drop this patch.

Lorenzo

>  static bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
>  {
>  	return (csr_readl(pcie, LTSSM_STATUS) &
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
