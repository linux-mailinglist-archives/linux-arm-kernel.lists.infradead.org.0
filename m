Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C5719852
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 08:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oy/CSsGpAqQ61hfQ6wMTXBgCslKtWrN74j/tp9t4EWM=; b=V7xeOkolfjW7ZZW0HGyy6JLsz
	W2dtUrGz0/a2872FteX+CVpmygX1Dd5FZUP/SmfyNDHBUteR93bZt5rt9YygSUdG/ntEjb8nZdDu6
	eGTSRngp0lNcORCvhqAm59lBdYmTfwhDpXtBn01UJsW1Jrnur+6eBTM1MTowolVvF0JIrtjqAQemX
	JkQT7G1unE3cE3NIalNkJH2QBQ4fpyU9Mp6WZ4TDEVSsn3Zyt35qe6OL9w0IhTsZS91K+6T82gkVL
	5VjVf4oxrcLgXYzkDYRhgooNfY9/2bwc1bMonjmLNQZKEwVxPCWOakfFbbEHjyiPyarwhEbkpX8g9
	qBujScMQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOyue-0008Od-5B; Fri, 10 May 2019 06:21:44 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOyuU-0008OD-Si
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 06:21:36 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd518480000>; Thu, 09 May 2019 23:20:56 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 09 May 2019 23:21:33 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 09 May 2019 23:21:33 -0700
Received: from [10.24.47.55] (10.124.1.5) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 10 May
 2019 06:21:27 +0000
Subject: RE: [PATCH V5 03/16] PCI: Export pcie_bus_config symbol
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-4-vidyas@nvidia.com> <20190503110732.GC32400@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <80616ff5-d7a5-84a4-a71b-569e340d128c@nvidia.com>
Date: Fri, 10 May 2019 11:51:24 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503110732.GC32400@ulmo>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL108.nvidia.com (172.18.146.13) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557469257; bh=24uok8Emgfq8JqLYEmA9il4vmwDxuvY2qeXLWgy1Ux8=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=VGPaDZPU6RodfRcYpWevyox/CweWPCBp2FZ9famAhFSxmUmLYCqoxomnKy3VUay8+
 BzMmFoE5yCRMN4THPY6r8HObhAtdLkjZ1FFvmHhAh5NDKaq5SmDigH/E0+PxNknxjN
 GAb9d7nnGvIWMUWovvD2NALS935C9Af05oRJyiGb+x0saF9s4ch+FkwJ8nOeM6UF5n
 bbycgvMnkvjCQW2ElsYBymdx5+RWWDbQn2NuFwb6Hxk3tG0mTb1cT/u+bcyPH5ahrP
 wOnRr+ELEdu/+/RZEAJuMkkjUhagK8PK5+gy2jJqkJxdjOf1B3F31MaTnpYKmsCmMI
 WmQxUames0JFQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_232134_942361_80F8DE06 
X-CRM114-Status: GOOD (  24.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Mikko Perttunen <mperttunen@nvidia.com>,
 Manikanta Maddireddy <mmaddireddy@nvidia.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krishna Thota <kthota@nvidia.com>, "kishon@ti.com" <kishon@ti.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sagar.tv@gmail.com" <sagar.tv@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: linux-pci-owner@vger.kernel.org <linux-pci-owner@vger.kernel.org> On
> Behalf Of Thierry Reding
> Sent: Friday, May 3, 2019 4:38 PM
> To: Vidya Sagar <vidyas@nvidia.com>
> Cc: lorenzo.pieralisi@arm.com; bhelgaas@google.com; robh+dt@kernel.org;
> mark.rutland@arm.com; Jonathan Hunter <jonathanh@nvidia.com>;
> kishon@ti.com; catalin.marinas@arm.com; will.deacon@arm.com;
> jingoohan1@gmail.com; gustavo.pimentel@synopsys.com; Mikko Perttunen
> <mperttunen@nvidia.com>; linux-pci@vger.kernel.org;
> devicetree@vger.kernel.org; linux-tegra@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; Krishna Thota
> <kthota@nvidia.com>; Manikanta Maddireddy <mmaddireddy@nvidia.com>;
> sagar.tv@gmail.com
> Subject: Re: [PATCH V5 03/16] PCI: Export pcie_bus_config symbol
> 
> On Wed, Apr 24, 2019 at 10:49:51AM +0530, Vidya Sagar wrote:
> > Export pcie_bus_config to enable host controller drivers setting it to
> > a specific configuration be able to build as loadable modules
> >
> > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > ---
> > Changes since [v4]:
> > * None
> >
> > Changes since [v3]:
> > * None
> >
> > Changes since [v2]:
> > * None
> >
> > Changes since [v1]:
> > * This is a new patch in v2 series
> >
> >  drivers/pci/pci.c | 1 +
> >  1 file changed, 1 insertion(+)
> 
> It doesn't look to me like this is something that host controller drivers are
> supposed to change. This is set via the pci kernel command- line parameter,
> meaning it's a way of tuning the system configuration.
> Drivers should not be allowed to override this after the fact.
> 
> Why do we need to set this?
Here is the reason I'm doing it.
First things first, Tegra194 supports MPS up to 256 bytes.
Assume there are two endpoints with MPS supported up to
a) 128 bytes (Ex:- Realtek NIC with 8168 controller)
b) 256 bytes (Ex:- Kingston NVMe drive)
Now, leaving "pcie_bus_config" untouched in the driver sets it to
PCIE_BUS_DEFAULT by default. With this setting, for both (a) and (b),
MPS is set to 128, which means, even though Tegra194 supports 256 MPS, it is not
set to 256 even in case of (b) thereby not using RP's 256 MPS feature.
If I explicitly set pcie_bus_config=PCIE_BUS_PERFORMACE in the code, then 256 MPS is set when
(b) is connected, but when (a) is connected, for root port MPS 256 is set and for
endpoint MPS 128 is set, because of which root port tries to send packets with 256
payload that breaks functionality of Realtek NIC card.
The best option I've found out is that when I set 256 in PCI_EXP_DEVCTL of root port
explicitly before link up and use pcie_bus_config=PCIE_BUS_SAFE, then, I get the best of both
PCIE_BUS_DEFAULT and PCIE_BUS_PERFORMANCE i.e. with (a) connected, MPS is set to 128 in both RP
and EP and with (b) connected, MPS is set to 256 in both RP and EP.

So, is it like, pcie_bus_config shouldn't be set to anything explicitly in the driver and depending on the
platform and what is connected to root port, kernel parameter can be passed with appropriate setting?

> 
> Thierry
> 
> > diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c index
> > f5ff01dc4b13..731f78508601 100644
> > --- a/drivers/pci/pci.c
> > +++ b/drivers/pci/pci.c
> > @@ -94,6 +94,7 @@ unsigned long pci_hotplug_mem_size =
> > DEFAULT_HOTPLUG_MEM_SIZE;  unsigned long pci_hotplug_bus_size =
> > DEFAULT_HOTPLUG_BUS_SIZE;
> >
> >  enum pcie_bus_config_types pcie_bus_config = PCIE_BUS_DEFAULT;
> > +EXPORT_SYMBOL_GPL(pcie_bus_config);
> >
> >  /*
> >   * The default CLS is used if arch didn't set CLS explicitly and not
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
