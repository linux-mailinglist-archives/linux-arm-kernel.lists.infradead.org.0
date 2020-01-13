Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87150138FFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/66KDYG2ipxmmFyaGBl0n1eBrS0R5BletLnT/Ded8a0=; b=KnDj5OQM30akl3
	63FEm3B0IF6MqTqCg0FYHXw8FwGeJs+Pppnnbss8OsBXxJGCj1gJWbB/fXao8uhtx+eyHxH0Yntsb
	Dx+F7mzP/ylZtygLoHSKf9eD7yaQ4z0B3kAfcvSrLLfZqE0ei5VD9yoVFoJ7DDfdPHfxCrR67Gkf5
	XPI9ltxfOGuvt6tGedqQrdERSdHBivaE3NISYvczKApgvPpyotM1/FjW3SqMbIfL8w0OYhsm8SuXQ
	0+cmGeNZbBSjf7xKKcn2bgfXC0Xpb2lWZC37B+0PCRzN4IR5JnKRHbx+x17PvtvC0sHs26XavSYrW
	eCZmfzM5kBzBCpDZ50Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqxnV-0007lA-Hb; Mon, 13 Jan 2020 11:22:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqxnJ-0007kf-Dv
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:22:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C31E013D5;
 Mon, 13 Jan 2020 03:22:04 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0499C3F6C4;
 Mon, 13 Jan 2020 03:22:04 -0800 (PST)
Date: Mon, 13 Jan 2020 11:22:02 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv9 06/12] PCI: mobiveil: Add callback function for link up
 check
Message-ID: <20200113112201.GL42593@e119886-lin.cambridge.arm.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <20191120034451.30102-7-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120034451.30102-7-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_032205_560993_D92EAD58 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 03:45:57AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> The platforms, in which the Mobiveil GPEX is integrated,
> may have their specific mechanism to check link up status.
> This patch is to enable these platforms to implement theirs.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> ---
> V9:
>  - New patch splited from the #1 of V8 patches to make it easy to review.
> 
>  drivers/pci/controller/mobiveil/pcie-mobiveil.c | 3 +++
>  drivers/pci/controller/mobiveil/pcie-mobiveil.h | 5 +++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.c b/drivers/pci/controller/mobiveil/pcie-mobiveil.c
> index 2773f823c9ea..b9ed2d95641c 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil.c
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.c
> @@ -125,6 +125,9 @@ void mobiveil_csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off,
>  
>  bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
>  {
> +	if (pcie->ops->link_up)
> +		return pcie->ops->link_up(pcie);
> +
>  	return (mobiveil_csr_readl(pcie, LTSSM_STATUS) &
>  		LTSSM_STATUS_L0_MASK) == LTSSM_STATUS_L0;

On the previous patch I suggested that we don't mix up the link_up logic
with the logic that decides which function to call. In this case the link_up
logic is trivial. So this is probably OK.

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  }
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> index 18d85806a7fc..95d2e7c809b8 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> @@ -148,6 +148,10 @@ struct root_port {
>  	struct pci_host_bridge *bridge;
>  };
>  
> +struct mobiveil_pab_ops {
> +	int (*link_up)(struct mobiveil_pcie *pcie);
> +};
> +
>  struct mobiveil_pcie {
>  	struct platform_device *pdev;
>  	void __iomem *csr_axi_slave_base;	/* root port config base */
> @@ -157,6 +161,7 @@ struct mobiveil_pcie {
>  	int ppio_wins;
>  	int ob_wins_configured;		/* configured outbound windows */
>  	int ib_wins_configured;		/* configured inbound windows */
> +	const struct mobiveil_pab_ops *ops;
>  	struct root_port rp;
>  };
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
