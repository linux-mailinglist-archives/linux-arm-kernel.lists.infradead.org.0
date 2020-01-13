Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFBE13900A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aiD32NH2rXg8aRysooDAbOVFd7+Mklv50U6Zmy3OzsY=; b=pjPi0Lch0zHDgL
	CUUwxkYUEKb5tMjUJvz9cXlgHX06lRnmIvHzqdPQzMOoBvPOjI2ui5qxuJ/eWPqEyGkIFp+gygvIV
	uNqhfCM/3753xQyGto3N6OJolwGFwmmHvYrxwTAyCRSf5Ow+yMPaO3gitVzDbm6H0ikR/rD5lhTqq
	xDylY7w59LOyS4Tfvr8IJhGx/NFNbhIWRoyGhk9OVy7caX49PyJac/NfyucS+cM7jatfc+uOMmUCd
	WxYdaq88mOElEAxHj8fvDJJG66tZ6AAvCYAcEYYlY1iPdIB4p0RAZtBJVG4gWVZPwaY7DDDPq8oRz
	OMIpWVztwJOCMN1N1UEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqxsC-0001KG-Sm; Mon, 13 Jan 2020 11:27:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqxs4-0001JZ-75
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:27:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 65CB213D5;
 Mon, 13 Jan 2020 03:26:59 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D0A263F6C4;
 Mon, 13 Jan 2020 03:26:58 -0800 (PST)
Date: Mon, 13 Jan 2020 11:26:57 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv9 07/12] PCI: mobiveil: Make mobiveil_host_init() can be
 used to re-init host
Message-ID: <20200113112655.GM42593@e119886-lin.cambridge.arm.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <20191120034451.30102-8-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120034451.30102-8-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_032700_349263_0B95E214 
X-CRM114-Status: GOOD (  19.97  )
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

On Wed, Nov 20, 2019 at 03:46:03AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> Make the mobiveil_host_init() function can be used to re-init

Perhaps reword to "Allow the mobiveil_host_init() function to be
used to ...

> host controller's PAB and GPEX CSR register block, as NXP
> integrated Mobiveil IP has to reset and then re-init the PAB
> and GPEX CSR registers upon hot-reset.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> ---
> V9:
>  - No change
> 
>  .../controller/mobiveil/pcie-mobiveil-host.c  | 19 ++++++++++++-------
>  .../pci/controller/mobiveil/pcie-mobiveil.h   |  1 +
>  2 files changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> index 3cd93df6fe6e..9bc3da036720 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> @@ -221,18 +221,23 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
>  	writel_relaxed(1, pcie->apb_csr_base + MSI_ENABLE_OFFSET);
>  }
>  
> -static int mobiveil_host_init(struct mobiveil_pcie *pcie)
> +int mobiveil_host_init(struct mobiveil_pcie *pcie, bool reinit)
>  {
>  	struct root_port *rp = &pcie->rp;
>  	struct pci_host_bridge *bridge = rp->bridge;
>  	u32 value, pab_ctrl, type;
>  	struct resource_entry *win;
>  
> -	/* setup bus numbers */
> -	value = mobiveil_csr_readl(pcie, PCI_PRIMARY_BUS);
> -	value &= 0xff000000;
> -	value |= 0x00ff0100;
> -	mobiveil_csr_writel(pcie, value, PCI_PRIMARY_BUS);
> +	pcie->ib_wins_configured = 0;
> +	pcie->ob_wins_configured = 0;

This works so long as the number of bridge->windows never reduces. I
think this assumption holds true.

Thanks,

Andrew Murray

> +
> +	if (!reinit) {
> +		/* setup bus numbers */
> +		value = mobiveil_csr_readl(pcie, PCI_PRIMARY_BUS);
> +		value &= 0xff000000;
> +		value |= 0x00ff0100;
> +		mobiveil_csr_writel(pcie, value, PCI_PRIMARY_BUS);
> +	}
>  
>  	/*
>  	 * program Bus Master Enable Bit in Command Register in PAB Config
> @@ -569,7 +574,7 @@ int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
>  	 * configure all inbound and outbound windows and prepare the RC for
>  	 * config access
>  	 */
> -	ret = mobiveil_host_init(pcie);
> +	ret = mobiveil_host_init(pcie, false);
>  	if (ret) {
>  		dev_err(dev, "Failed to initialize host\n");
>  		return ret;
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> index 95d2e7c809b8..37116c2a19fe 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> @@ -166,6 +166,7 @@ struct mobiveil_pcie {
>  };
>  
>  int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie);
> +int mobiveil_host_init(struct mobiveil_pcie *pcie, bool reinit);
>  bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie);
>  int mobiveil_bringup_link(struct mobiveil_pcie *pcie);
>  void program_ob_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
