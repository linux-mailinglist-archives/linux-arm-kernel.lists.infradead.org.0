Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E78138FEE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:19:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ahdxmgq1du0cQ9mKm1wszGjj+RECD3BZZXKkuPjNgjk=; b=a5h/W8XAJLFhyM
	ys2jwCR+jGcNZfTgiYEkw/BJyxS339Og64kNQ+tAOCLfr2oVL9mvt1X15Pcald6tpf01621Lq1bs/
	9ep00ITNnToTOeVOJx4atI7ZO+8gdTWJxcStSTCtE0lN4aS2264h4CfmRiqq+K1AhKGFkb21100t+
	JOUSBLWXeRESsbdjeo+3qXJJRYaTV6y1N8mK1s9VJuKhiQZtw8qkcamzsln8TQYYxJJ1gCFI7rUf8
	P1BDCmyhoy+fWa86yQHknUzXTqGvTKe1YNPUDLZs512MIDFj4QFCGq/1lw65S9gdsI2W5Xi0kdBOF
	3NNpa2yGWf49faRHv8kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqxl0-0005b4-0w; Mon, 13 Jan 2020 11:19:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqxks-0005aE-Is
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:19:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DF7513D5;
 Mon, 13 Jan 2020 03:19:32 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C279A3F6C4;
 Mon, 13 Jan 2020 03:19:31 -0800 (PST)
Date: Mon, 13 Jan 2020 11:19:30 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv9 05/12] PCI: mobiveil: Add callback function for
 interrupt initialization
Message-ID: <20200113111929.GK42593@e119886-lin.cambridge.arm.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <20191120034451.30102-6-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120034451.30102-6-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_031934_709576_48A0EA62 
X-CRM114-Status: GOOD (  18.79  )
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

On Wed, Nov 20, 2019 at 03:45:50AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> The Mobiveil GPEX internal MSI/INTx controller may not be used
> by other platforms in which the Mobiveil GPEX is integrated.
> This patch is to allow these platforms to implement their
> specific interrupt initialization.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> ---
> V9:
>  - New patch splited from the #1 of V8 patches to make it easy to review.
> 
>  drivers/pci/controller/mobiveil/pcie-mobiveil-host.c | 3 +++
>  drivers/pci/controller/mobiveil/pcie-mobiveil.h      | 7 +++++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> index 2cc424e78d33..3cd93df6fe6e 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> @@ -507,6 +507,9 @@ static int mobiveil_pcie_interrupt_init(struct mobiveil_pcie *pcie)
>  	struct resource *res;
>  	int ret;
>  
> +	if (rp->ops->interrupt_init)
> +		return rp->ops->interrupt_init(pcie);
> +

This may be cleaner if you have a helper function named
"mobiveil_pcie_interrupt_init" where it either calls interrupt_init if present
or calls this current function renamed to "mobiveil_pcie_integrated_interrupt_init"
or similar.

A bit like the DWC dw_pcie_rd_own_conf function.

Thanks,

Andrew Murray

>  	/* map MSI config resource */
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "apb_csr");
>  	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> index e3148078e9dd..18d85806a7fc 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> @@ -130,10 +130,17 @@ struct mobiveil_msi {			/* MSI information */
>  	DECLARE_BITMAP(msi_irq_in_use, PCI_NUM_MSI);
>  };
>  
> +struct mobiveil_pcie;
> +
> +struct mobiveil_rp_ops {
> +	int (*interrupt_init)(struct mobiveil_pcie *pcie);
> +};
> +
>  struct root_port {
>  	char root_bus_nr;
>  	void __iomem *config_axi_slave_base;	/* endpoint config base */
>  	struct resource *ob_io_res;
> +	struct mobiveil_rp_ops *ops;
>  	int irq;
>  	raw_spinlock_t intx_mask_lock;
>  	struct irq_domain *intx_domain;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
