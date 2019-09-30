Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B84C23C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:57:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfwd7Nm0EE7O0tTqd/lkfwIRo2h7hkJGG/6/rmVUuZE=; b=EZQFw21XGsUABE
	QV2I2Kixa1YOKDZNR8OV6yI7idpzgRanwTwnZD9m+NBuwBQyd9toZitaN3p6dhCTScGJVTsjC8DA9
	ljYfN3AlgMWDZCjNdCUHvPdzCuvOI395rKYz/SUqzlY52feFodQCTsIMLg66UKiFQefP3HlSfRDw2
	BAsFFNr2+viVOuC4rlW7s6+MEZJS5vcZgbq5OY0ETXpjbGAq//5Z0ygIv3gs+qbp9EkYo6ynMk7bN
	+jYuaTJvRlCBY47Cal/5t1M2UYmEqu8H0E86Ift6upFRQtANGyFW9IWSUjGmBKM4QkRML4YfGdtSG
	X/Q28xXNcjPxyRxcofMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEx7L-0000oH-7D; Mon, 30 Sep 2019 14:57:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEx7A-0000nB-1Z
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:57:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8730E28;
 Mon, 30 Sep 2019 07:57:26 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA1E33F706;
 Mon, 30 Sep 2019 07:57:25 -0700 (PDT)
Date: Mon, 30 Sep 2019 15:57:24 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v4 11/11] misc: pci_endpoint_test: Add LS1088a in
 pci_device_id table
Message-ID: <20190930145723.GC42880@e119886-lin.cambridge.arm.com>
References: <20190924021849.3185-1-xiaowei.bao@nxp.com>
 <20190924021849.3185-12-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924021849.3185-12-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_075728_137374_DCE5199F 
X-CRM114-Status: GOOD (  14.34  )
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
Cc: mark.rutland@arm.com, roy.zang@nxp.com, lorenzo.pieralisi@arm.com,
 devicetree@vger.kernel.org, jingoohan1@gmail.com,
 linuxppc-dev@lists.ozlabs.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, minghuan.Lian@nxp.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 gustavo.pimentel@synopsys.com, leoyang.li@nxp.com, shawnguo@kernel.org,
 mingkai.hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 10:18:49AM +0800, Xiaowei Bao wrote:
> Add LS1088a in pci_device_id table so that pci-epf-test can be used
> for testing PCIe EP in LS1088a.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2:
>  - No change.
> v3:
>  - No change.
> v4:
>  - Use a maco to define the LS1088a device ID.
>  
>  drivers/misc/pci_endpoint_test.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
> index 6e208a0..8c222a6 100644
> --- a/drivers/misc/pci_endpoint_test.c
> +++ b/drivers/misc/pci_endpoint_test.c
> @@ -65,6 +65,7 @@
>  #define PCI_ENDPOINT_TEST_IRQ_NUMBER		0x28
>  
>  #define PCI_DEVICE_ID_TI_AM654			0xb00c
> +#define PCI_DEVICE_ID_LS1088A			0x80c0

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  
>  #define is_am654_pci_dev(pdev)		\
>  		((pdev)->device == PCI_DEVICE_ID_TI_AM654)
> @@ -793,6 +794,7 @@ static const struct pci_device_id pci_endpoint_test_tbl[] = {
>  	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_DRA74x) },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_DRA72x) },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, 0x81c0) },
> +	{ PCI_DEVICE(PCI_VENDOR_ID_FREESCALE, PCI_DEVICE_ID_LS1088A) },
>  	{ PCI_DEVICE_DATA(SYNOPSYS, EDDA, NULL) },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_AM654),
>  	  .driver_data = (kernel_ulong_t)&am654_data
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
