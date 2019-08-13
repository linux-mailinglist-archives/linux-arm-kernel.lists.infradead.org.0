Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF408ADDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 06:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BSOye23dBmuBZeHLnCnOF0JFaKl6npNS/7k2IzmxqY0=; b=p44q5woK0lri5iQlJoTC+sMNDH
	/fwctrskBE12Oqw/ZzVAYyPzeEbP2ApQS8TSrzRrNmWmkSVameeB+xTHngAnwfuZi66nTL9Xr+FE1
	gO1lkO5+FJCTdiHhuD1G1jLSARGPuVoAisuQ7px906mKipiV174vxDY/GD/vwKoFNgNlRpY6HjEdV
	8Y1FtTeSKoQudD2JpdCPtcZaW4iN+1k+/04vTSQqTpJtaPjkfpSvpHXY1dWm0G06jYuxmSUaVWz5i
	QgDCDgHV2zjCCykjF24KCRP0652w4InRz2JddfXpt0ZGnTLjBLggsmDdsjLcvWdy3jd4G5Yz9oCh4
	ZGXhoqGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxOa8-0006iD-Tq; Tue, 13 Aug 2019 04:38:49 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxOZv-0006hq-Lt
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 04:38:37 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7D4cMHO075138;
 Mon, 12 Aug 2019 23:38:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565671102;
 bh=Ew8tzQEV3bzDzArZx0dSvuT8DgjzVr1McyreXZiBsSc=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=vZT9vUuHjeJfqpbHC4JPY+yhxRma4e4qSkeST+7paoKsG84W2UZByMArh6fPFnWJq
 dIgNfQbSX2IfvtZnQIUuh1wRrWHV1Cl2fSl/20zrLzPmdAg0BUy5hJ4UdsWDpJTgAV
 ZryYQFfcBi+I0FwLxytw7j2IyY14hveNKE/bPrU8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7D4cMeS030426
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 12 Aug 2019 23:38:22 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 12
 Aug 2019 23:38:21 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 12 Aug 2019 23:38:21 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7D4cDdj022723;
 Mon, 12 Aug 2019 23:38:14 -0500
Subject: Re: [PATCHv4 1/2] PCI: layerscape: Add the bar_fixed_64bit property
 in EP driver.
To: Xiaowei Bao <xiaowei.bao@nxp.com>, <lorenzo.pieralisi@arm.com>,
 <bhelgaas@google.com>, <minghuan.Lian@nxp.com>, <mingkai.hu@nxp.com>,
 <roy.zang@nxp.com>, <l.stach@pengutronix.de>, <tpiepho@impinj.com>,
 <leonard.crestez@nxp.com>, <andrew.smirnov@gmail.com>,
 <yue.wang@amlogic.com>, <hayashi.kunihiko@socionext.com>,
 <dwmw@amazon.co.uk>, <jonnyc@amazon.com>, <linux-pci@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linuxppc-dev@lists.ozlabs.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190813025317.48290-1-xiaowei.bao@nxp.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <4a456d72-f5b5-e860-0215-dd215e2edf09@ti.com>
Date: Tue, 13 Aug 2019 10:06:20 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813025317.48290-1-xiaowei.bao@nxp.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_213835_799143_D6E47501 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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



On 13/08/19 8:23 AM, Xiaowei Bao wrote:
> The PCIe controller of layerscape just have 4 BARs, BAR0 and BAR1
> is 32bit, BAR3 and BAR4 is 64bit, this is determined by hardware,

Do you mean BAR2 instead of BAR3 here?

Thanks
Kishon

> so set the bar_fixed_64bit with 0x14.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2:
>  - Replace value 0x14 with a macro.
> v3:
>  - No change.
> v4:
>  - send the patch again with '--to'.
> 
>  drivers/pci/controller/dwc/pci-layerscape-ep.c |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
> index be61d96..227c33b 100644
> --- a/drivers/pci/controller/dwc/pci-layerscape-ep.c
> +++ b/drivers/pci/controller/dwc/pci-layerscape-ep.c
> @@ -44,6 +44,7 @@ static int ls_pcie_establish_link(struct dw_pcie *pci)
>  	.linkup_notifier = false,
>  	.msi_capable = true,
>  	.msix_capable = false,
> +	.bar_fixed_64bit = (1 << BAR_2) | (1 << BAR_4),
>  };
>  
>  static const struct pci_epc_features*
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
