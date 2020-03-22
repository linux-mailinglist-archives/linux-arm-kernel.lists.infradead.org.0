Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E82E18EAAF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 18:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YKtrGEvQPh7PdVbpabeSExMQsUADX22qCtxvlpPWNe4=; b=jx8X9D9F4VP/FLXoFj/ohtDnl
	nz3Op49xxjRyl9b2yL4ePTfzrYhZnz2TD8CjeaZ5OKRglsc4nxSZ3MjJiQGtaSYLfmHmBcBFeShRB
	mrjWF7tSjZFfnqLvrcx6QCebM0ttV32l89ahxIAosqvBys+xxHKZlUQSn//rEoGEpylGTeL67h+8+
	BPXw/iONKlNaDGVb20hOx5j7pipbKnc3Y598EULHCH/sbUnaZ+UCZzHVEddMPODuK0rE2ZnPlSdX0
	qlbI4zZNkotkol7qrUhrW5hbitXBFK0KsAcKoBMxvF/FlMZrnjsXaDvaimthDeY6l3mN0UQrmEjeW
	9gErMoL4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG4Cm-0008E9-FA; Sun, 22 Mar 2020 17:16:08 +0000
Received: from hqnvemgate26.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG4Cg-0008D4-7p
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 17:16:04 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e779d410000>; Sun, 22 Mar 2020 10:15:45 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Sun, 22 Mar 2020 10:15:59 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Sun, 22 Mar 2020 10:15:59 -0700
Received: from [10.25.74.3] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sun, 22 Mar
 2020 17:15:53 +0000
Subject: Re: [PATCH V5 5/5] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
To: Guenter Roeck <linux@roeck-us.net>
References: <20200303181052.16134-1-vidyas@nvidia.com>
 <20200303181052.16134-6-vidyas@nvidia.com>
 <20200322145020.GA2040@roeck-us.net>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <7e6a9643-fcdb-fd80-8e84-2983975889a9@nvidia.com>
Date: Sun, 22 Mar 2020 22:45:50 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200322145020.GA2040@roeck-us.net>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1584897345; bh=81yKHmaHyYQhIkyTLm3XouWH6+1+9Fc4JlQx9GW85L4=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=gFETB48tFJt3O4znt+n+8BergJZyU/hJhpkPWPbWEwB7677kL5v+g4hCX6S+pKQgV
 XmHKtxcoChOqmxXenlsxoShjUOrRnchD2riZJT3MlWURxtx+cUEet9WRbL2ocDweXQ
 8LrAplGao1MB3D8NDqDMkS5c+/hegqiJ6w/qIVczuJ484lwQq0tDK1cnGLDdPMGOa3
 X6zmpemmwLFb3trGY/Y6sGkuINsuHjIu9PJD1X5E7izg0i63z3hAjrRZlG3xXmGxjj
 xOZurhnggZUOXDlYNUwa/tlOCjAKUC1qk1jVEj4rziEWtQx5UrrhEPXBA+eVL2Z71Q
 8GlTBqlqVo46A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_101602_358428_2465FFE8 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, jonathanh@nvidia.com,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 linux-pci@vger.kernel.org, bhelgaas@google.com, andrew.murray@arm.com,
 kishon@ti.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/22/2020 8:20 PM, Guenter Roeck wrote:
> External email: Use caution opening links or attachments
> 
> 
> On Tue, Mar 03, 2020 at 11:40:52PM +0530, Vidya Sagar wrote:
>> Add support for the endpoint mode of Synopsys DesignWare core based
>> dual mode PCIe controllers present in Tegra194 SoC.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> Acked-by: Thierry Reding <treding@nvidia.com>
> 
> ERROR: modpost: "dw_pcie_ep_init" [drivers/pci/controller/dwc/pcie-tegra194.ko] undefined!
> ERROR: modpost: "dw_pcie_ep_linkup" [drivers/pci/controller/dwc/pcie-tegra194.ko] undefined!
> ERROR: modpost: "dw_pcie_ep_init_notify" [drivers/pci/controller/dwc/pcie-tegra194.ko] undefined!
> ERROR: modpost: "dw_pcie_ep_init_complete" [drivers/pci/controller/dwc/pcie-tegra194.ko] undefined!
> 
> Either the symbols must be exported, or the driver's Kconfig entry must be
> bool, not tristate.
Qiujun has already posted a patch to fix it @ 
http://patchwork.ozlabs.org/patch/1258659/

Thanks,
Vidya Sagar
> 
> Guenter
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
