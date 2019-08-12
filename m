Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AED689B7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fs51dfeonM2skXC4BaIfvsaEiQdKBp5W6RVb7/p7iw4=; b=Oqy8myFPuOupjFirAEn+nzwyq
	rRfAONcU4zAFD6zQl4C3eSJvAU6AAM/j8vIRDhO4Lz4nqhtYFbPSLrpGiT1kRPZDlMbgVSBQkjdHU
	WXEZ+5EkEqcy2SBW8qrpZolvrLWIzD4dkilwoxsqEW341XWhteyEJLjYUE4tPDH1N5wYpsStTMhKq
	RtTs478Fgo1VvtcT9vxXtTjxHnkrC2aoH2DoBg6Hg8FG1fKL49KGK4ey7oAJH7ZVkcXB2mXQ88fyE
	8gjoBBk42TXCwnZz798YZ2B6I1VhmlBILLIGZM8zSuAUhPw32cJhji+vW7BN9PUhVerRTyZtu7uQo
	OeecgAW2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7aT-0007hS-DS; Mon, 12 Aug 2019 10:30:01 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7aJ-0007gn-A4
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:29:52 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d513f9e0000>; Mon, 12 Aug 2019 03:29:50 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 12 Aug 2019 03:29:48 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 12 Aug 2019 03:29:48 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 12 Aug
 2019 10:29:47 +0000
Received: from [10.24.47.35] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 12 Aug
 2019 10:29:41 +0000
Subject: Re: [PATCH V15 00/13] PCI: tegra: Add Tegra194 PCIe support
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190809044609.20401-1-vidyas@nvidia.com>
 <20190812102519.GN8903@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <aa666d78-43b3-dbea-dac6-386deaca3e12@nvidia.com>
Date: Mon, 12 Aug 2019 15:59:39 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812102519.GN8903@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1565605790; bh=1tG5zYeqXj8gIs6w5lyT32kz+7+NUeIz90VCrmxkBbc=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=FHAqDme4CmBe+T+ICvgSDgfiTDrKnpaWceizTG4rWtUZc3n8VecOch5oN0Grc4LwZ
 53haw51XUeac/Y+r2Mq4SW5WHXTFDonCEWVJ3QpiWzjIvPGvz5gorgr/nqQwiWF6E0
 51MvK0t+bRdcIKQaZiB78sxIRC2DoTq+no9hoZqEMnfTQWCNltW0s45UwDYX1BD3M9
 ddQDztvPDkm39p/8WMZD+H0V+aPPU5645XM+DPb/Um33WDhWZpgU18ElSiEESHZcBe
 MNaZtOjnvQU2IzzBuD+hkJE2TYUgScp5lErVEEoivDQUNbfRweiJOkhT8BQwGsfdx4
 PoivvVBnBXP2Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_032951_367687_EAD45C55 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/12/2019 3:55 PM, Thierry Reding wrote:
> On Fri, Aug 09, 2019 at 10:15:56AM +0530, Vidya Sagar wrote:
>> Tegra194 has six PCIe controllers based on Synopsys DesignWare core.
>> There are two Universal PHY (UPHY) blocks with each supporting 12(HSIO:
>> Hisg Speed IO) and 8(NVHS: NVIDIA High Speed) lanes respectively.
>> Controllers:0~4 use UPHY lanes from HSIO brick whereas Controller:5 uses
>> UPHY lanes from NVHS brick. Lane mapping in HSIO UPHY brick to each PCIe
>> controller (0~4) is controlled in XBAR module by BPMP-FW. Since PCIe
>> core has PIPE interface, a glue module called PIPE-to-UPHY (P2U) is used
>> to connect each UPHY lane (applicable to both HSIO and NVHS UPHY bricks)
>> to PCIe controller
>> This patch series
>> - Adds support for P2U PHY driver
>> - Adds support for PCIe host controller
>> - Adds device tree nodes each PCIe controllers
>> - Enables nodes applicable to p2972-0000 platform
>> - Adds helper APIs in Designware core driver to get capability regs offset
>> - Adds defines for new feature registers of PCIe spec revision 4
>> - Makes changes in DesignWare core driver to get Tegra194 PCIe working
>>
>> Testing done on P2972-0000 platform
>> - Able to get PCIe link up with on-board Marvel eSATA controller
>> - Able to get PCIe link up with NVMe cards connected to M.2 Key-M slot
>> - Able to do data transfers with both SATA drives and NVMe cards
>> - Able to perform suspend-resume sequence
> 
> Do you happen to have a patch for P2972-0000 PCI support? I don't see it
> in this series.
It is already merged.
V10 link @ http://patchwork.ozlabs.org/patch/1114445/

- Vidya Sagar
> 
> Thierry
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
