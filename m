Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D91E8B12C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 09:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lc9+0yJSQbe+jOo8rSqlqDAC4xZY2yZ6K1q/8GonXDA=; b=d7tsyinMVJV/2IKKUOWLoxpKix
	kTnfsP20T2TmrOe1xN7dgR0S5i0q9MR3FEBVh2lmo0DxCTaiJLOkj9J3u2WdmCaNuk+Kb2R87PFgA
	4cXuyGIO7Aht8pyD5cEnwcCOULqqA1CNrg++cnAa7mSZu6YRbHNBE+R6nJcTcMxdBMgQ+KdX45RgF
	9Wc/duDYMEoDi3etHP42SgNFdnG8FdPmLs5TJW1H8fUWSjle9DrvN32jmQjeqhpsZxmw0aHBI7/+Y
	FZ/cbsWragaVZkQ4vTslMoVaXt2J566KumDtWct7o1B5gwyQqrdtz2gdSlYYT0t1CtEGKVS1EXT1F
	+Om8XJRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRID-00017d-7H; Tue, 13 Aug 2019 07:32:29 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRHz-00017F-MX
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 07:32:17 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7D7W5l9029662;
 Tue, 13 Aug 2019 02:32:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565681525;
 bh=e7AMG7951ev/gSm/ZxwAc/vUz78yJRoIOR38wJvbsEQ=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=vA15E2KqDhUxCEbktr0kOiqPlkw8NiaBaTgfCmxxJkTNzB0Lhu0RghagoH9aJqXAX
 +WwI4mW0eHJ/ijU2MDoMixPk0w1x5C/E3uHJFzmnyrJtaPyKNNB1YlmLu6rkMA3PoP
 VGRI6DJKie0DljFNzjfGu1lhIuZiNFn3OJ+UMMgI=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7D7W5IJ127313
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 13 Aug 2019 02:32:05 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 13
 Aug 2019 02:32:03 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 13 Aug 2019 02:32:03 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7D7Vwjb086106;
 Tue, 13 Aug 2019 02:31:58 -0500
Subject: Re: [PATCHv5 1/2] PCI: layerscape: Add the bar_fixed_64bit property
 in EP driver.
To: Xiaowei Bao <xiaowei.bao@nxp.com>, <lorenzo.pieralisi@arm.com>,
 <bhelgaas@google.com>, <minghuan.Lian@nxp.com>, <mingkai.hu@nxp.com>,
 <roy.zang@nxp.com>, <l.stach@pengutronix.de>, <tpiepho@impinj.com>,
 <leonard.crestez@nxp.com>, <andrew.smirnov@gmail.com>,
 <yue.wang@amlogic.com>, <hayashi.kunihiko@socionext.com>,
 <dwmw@amazon.co.uk>, <jonnyc@amazon.com>, <linux-pci@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linuxppc-dev@lists.ozlabs.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190813062840.2733-1-xiaowei.bao@nxp.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <61e6df1c-a0dc-8f05-f74a-85a3cac9823f@ti.com>
Date: Tue, 13 Aug 2019 13:00:04 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813062840.2733-1-xiaowei.bao@nxp.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_003215_825068_57B59C5A 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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



On 13/08/19 11:58 AM, Xiaowei Bao wrote:
> The PCIe controller of layerscape just have 4 BARs, BAR0 and BAR1
> is 32bit, BAR2 and BAR4 is 64bit, this is determined by hardware,
> so set the bar_fixed_64bit with 0x14.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>

Acked-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
> v2:
>  - Replace value 0x14 with a macro.
> v3:
>  - No change.
> v4:
>  - send the patch again with '--to'.
> v5:
>  - fix the commit message.
> 
>  drivers/pci/controller/dwc/pci-layerscape-ep.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
> index be61d96..ca9aa45 100644
> --- a/drivers/pci/controller/dwc/pci-layerscape-ep.c
> +++ b/drivers/pci/controller/dwc/pci-layerscape-ep.c
> @@ -44,6 +44,7 @@ static const struct pci_epc_features ls_pcie_epc_features = {
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
