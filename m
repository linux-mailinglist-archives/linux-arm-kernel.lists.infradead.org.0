Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD31135F6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 18:34:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YSal3DaMB2wUPSo06bKwp+YrJnYtQ6X84x3Rnm2kRg=; b=WcluWOs9XjZDa8
	As5egcsEM7iO2WhOX8aXEsGP1zFOh8I6z3jG5UTQmDTtuU7TYEuG5+QutKljsHt674f9CXfMy31GH
	8rtWmtIX77D81tAKA/k3MTm7JOpATlXemmkklHEFFciAh+akbpAR1Cv5rpvAWDV6bdkGGJsW006pn
	6sLeK4t/btXY8imUxx+qiGPONrvBQmqc9hTeiN8o2j/0peVD4CL2glOTr3ZQ3Ggk/70sYxS/qlMII
	Vank7MHGcL6PlsgghHcBNiiF4SXbeSv3tLIo4hR+0ZfdShALZhUneQcmEBYfGilEzRdRiEhkEeECt
	3FiOXa4f+26vPUF4qe7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipbhM-0003lO-3k; Thu, 09 Jan 2020 17:34:20 +0000
Received: from hqnvemgate26.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipbhC-0003g3-B7
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 17:34:12 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e1763fd0000>; Thu, 09 Jan 2020 09:33:49 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 09 Jan 2020 09:34:07 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 09 Jan 2020 09:34:07 -0800
Received: from [10.25.75.92] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 9 Jan
 2020 17:34:04 +0000
Subject: Re: [PATCH] PCI: dwc: Separate CFG0 and CFG1 into different ATU
 regions
To: Shawn Guo <shawn.guo@linaro.org>, <linux-pci@vger.kernel.org>
References: <20200109060657.1953-1-shawn.guo@linaro.org>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <beda8923-a3b7-47eb-7cf1-19a3bacf1e34@nvidia.com>
Date: Thu, 9 Jan 2020 23:04:01 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200109060657.1953-1-shawn.guo@linaro.org>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1578591229; bh=uriZZMyALR26nxxqF8+cD6jor2aUVa9IyXhlZgJ98NE=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=cVTp46CKHePEECP52K2dPG9yMTm9OXppI3J07343O+fj4RxXSMefTks2DatSqehXl
 Deul4a0U9r8CNitF6x/+vSKvKSHiE9nbSUcC/ZhykeyjTlI8VDkSR1qeSTwlhcaxgy
 a5kU+PYtBp52MU9+XlHVvFcyOAZUzZAEJic8OE/DKbEcGpbyZawWTaTNKH/0cCa78N
 nTZDzbT+R5m6ThU8M3llmcByWj0S2HIoICpxVt7TFkcukvJCqcNQWFZd+s23VQ1vs2
 v4aAvsnrCz1lq6EDLLdYfBChFFB+Kp0EMdQFHGiNB3U4gm21UaBNULQYo7RPGG4F13
 HpxsKJwBLKbiA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_093410_392893_F09871C7 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Zaihai Yu <yuzaihai@hisilicon.com>, Jingoo Han <jingoohan1@gmail.com>,
 Pratyush Anand <pratyush.anand@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/9/2020 11:36 AM, Shawn Guo wrote:
> External email: Use caution opening links or attachments
> 
> 
> Some platform has 4 (or more) viewports.  In that case, CFG0 and CFG1
> can be separated into different ATU regions.
Is there any specific benefit with this scheme?

- Vidya Sagar
> 
> Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> ---
>  .../pci/controller/dwc/pcie-designware-host.c    | 16 +++++++++++++++-
>  drivers/pci/controller/dwc/pcie-designware.h     |  1 +
>  2 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 0f36a926059a..504d2a192bba 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -532,6 +532,7 @@ static int dw_pcie_access_other_conf(struct pcie_port *pp, struct pci_bus *bus,
>         u64 cpu_addr;
>         void __iomem *va_cfg_base;
>         struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +       int index = PCIE_ATU_REGION_INDEX1;
> 
>         busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
>                  PCIE_ATU_FUNC(PCI_FUNC(devfn));
> @@ -548,7 +549,20 @@ static int dw_pcie_access_other_conf(struct pcie_port *pp, struct pci_bus *bus,
>                 va_cfg_base = pp->va_cfg1_base;
>         }
> 
> -       dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
> +       if (pci->num_viewport >= 4) {
> +               /*
> +                * If there are 4 (or more) viewports, we can separate
> +                * CFG0 and CFG1 into different ATU regions:
> +                *  - region0: MEM
> +                *  - region1: CFG0
> +                *  - region2: IO
> +                *  - region3: CFG1
> +                */
> +               if (type == PCIE_ATU_TYPE_CFG1)
> +                       index = PCIE_ATU_REGION_INDEX3;
> +       }
> +
> +       dw_pcie_prog_outbound_atu(pci, index,
>                                   type, cpu_addr,
>                                   busdev, cfg_size);
>         if (write)
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index 5a18e94e52c8..86225804f1e7 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -63,6 +63,7 @@
>  #define PCIE_ATU_VIEWPORT              0x900
>  #define PCIE_ATU_REGION_INBOUND                BIT(31)
>  #define PCIE_ATU_REGION_OUTBOUND       0
> +#define PCIE_ATU_REGION_INDEX3         0x3
>  #define PCIE_ATU_REGION_INDEX2         0x2
>  #define PCIE_ATU_REGION_INDEX1         0x1
>  #define PCIE_ATU_REGION_INDEX0         0x0
> --
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
