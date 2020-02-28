Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CCA17361D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 12:36:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ImowSk/EtcjWTJe0SFekSPRw7nqZBj7SVIRGuZyQ9KQ=; b=emrGA62G16yiZ/7L35DfSlDv3n
	m8/XAQkwQpjBE3ve+eXIxw3Ll9T2q+2I6/9APWkyh4whzWk/M6vIpPKRx5+DQVxd5eN2ScniSMXZf
	3D7qAgG+U7sQ9b7LPNFEDT7XhQHAKESSotqOZ8HJqRAd4jovKgqAlMSeD2i/CzcnG3VgvqDLWX2WF
	NUkMM7hVVOswhGtvUqYNkdp2u4p6BgMfxQ2hYSA1DI3E4MRFa3iOl663PcGFwGhkbL3lYz8Run71q
	A1quEgckNJe5ox4bHYzHszWLnDz476dVxs6cRJv9ErJnwTqqEBRw71ijkwD/Owy3d88q5ztYXZSls
	Y5z/lfUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7dwT-0005SL-Df; Fri, 28 Feb 2020 11:36:29 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7dwJ-0005Ro-OK
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 11:36:21 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01SBa53j013584;
 Fri, 28 Feb 2020 05:36:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582889765;
 bh=rLm5NTE1CYjmZGMxs2YV7x1c9JuFq3mregL37grduCo=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=wnesvm0wVu+YeZ8jTJAO9WrXhn894VT4/u5rRrMX9BPzZcnr7a/OQLigUuunWkn6/
 5SU0DVsrO9RSc5SbJ+ipZ87f8rf5C30jGJLV5pdzOIQCK+mAs+Yx0hEmyshMPxoBOa
 JSea5U5NQC9FApxu7lO7DJ/c8Kl1jILUwbFpQ714=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01SBa5i1115846;
 Fri, 28 Feb 2020 05:36:05 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 28
 Feb 2020 05:36:05 -0600
Received: from localhost.localdomain (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 28 Feb 2020 05:36:05 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by localhost.localdomain (8.15.2/8.15.2) with ESMTP id 01SBa0vP019981;
 Fri, 28 Feb 2020 05:36:00 -0600
Subject: Re: [PATCH v4 08/11] PCI: layerscape: Modify the MSIX to the doorbell
 mode
To: Xiaowei Bao <xiaowei.bao@nxp.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <shawnguo@kernel.org>, <leoyang.li@nxp.com>,
 <lorenzo.pieralisi@arm.com>, <minghuan.Lian@nxp.com>,
 <mingkai.hu@nxp.com>, <roy.zang@nxp.com>, <jingoohan1@gmail.com>,
 <gustavo.pimentel@synopsys.com>, <andrew.murray@arm.com>,
 <linux-pci@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linuxppc-dev@lists.ozlabs.org>
References: <20190924021849.3185-1-xiaowei.bao@nxp.com>
 <20190924021849.3185-9-xiaowei.bao@nxp.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <55752e77-1094-4cbf-2822-e10b875b4dd9@ti.com>
Date: Fri, 28 Feb 2020 17:10:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20190924021849.3185-9-xiaowei.bao@nxp.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_033619_956601_C50AADDC 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xiaowei,

On 24/09/19 7:48 am, Xiaowei Bao wrote:
> dw_pcie_ep_raise_msix_irq was never called in the exisitng driver
> before, because the ls1046a platform don't support the MSIX feature
> and msix_capable was always set to false.
> Now that add the ls1088a platform with MSIX support, but the existing
> dw_pcie_ep_raise_msix_irq doesn't work, so use the doorbell method to
> support the MSIX feature.


It does work after [1]. So the commit message might not be exactly true.

[1] -> https://lore.kernel.org/r/20200225081703.8857-1-kishon@ti.com

Thanks
Kishon

> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> ---
> v2: 
>  - No change
> v3:
>  - Modify the commit message make it clearly.
> v4: 
>  - No change
> 
>  drivers/pci/controller/dwc/pci-layerscape-ep.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
> index 1e07287..5f0cb99 100644
> --- a/drivers/pci/controller/dwc/pci-layerscape-ep.c
> +++ b/drivers/pci/controller/dwc/pci-layerscape-ep.c
> @@ -79,7 +79,8 @@ static int ls_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
>  	case PCI_EPC_IRQ_MSI:
>  		return dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
>  	case PCI_EPC_IRQ_MSIX:
> -		return dw_pcie_ep_raise_msix_irq(ep, func_no, interrupt_num);
> +		return dw_pcie_ep_raise_msix_irq_doorbell(ep, func_no,
> +							  interrupt_num);
>  	default:
>  		dev_err(pci->dev, "UNKNOWN IRQ type\n");
>  		return -EINVAL;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
