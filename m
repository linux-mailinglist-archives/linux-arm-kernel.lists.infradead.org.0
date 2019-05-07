Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6F715E94
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 09:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=00qMKvxsTws0qGnBuCVx1XwcDYmGHeAzGHmyJl4Zjv0=; b=oMO8OMGAqKcyKlxMUxGk+Mm4O
	ge50qDEOR4tS6GL7SKra5YoBb9I/iRd7IDpJ1Bx7dKlxGiI+7oMLCpH4/X/eNf6I2TShLUewH+RXl
	oUu3eyR3cFroKZYw6fGJq83clrFTVqxucKnO3p/Y0FVW6aATB0JKSgNRtzUkpK9t0bXazbrULnhZo
	Fg8PBwS7TdjSYEl0wzHeBZOIb/6QgcC+fdILbI6b71p01ji6J+42LbjE9HrvRQ4MpoBTEReAioj8z
	vGECEsYjofqYVQgQ+yf26KCr37vdXiux3cR8yG1mmeRebh1IeYpoKxGrbrzQqedw5BHRjb+QJlXbj
	t/B/H483g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNurH-0005ot-7q; Tue, 07 May 2019 07:49:51 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNurA-0005oX-3n
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 07:49:45 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd1389e0002>; Tue, 07 May 2019 00:49:50 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 07 May 2019 00:49:43 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 07 May 2019 00:49:43 -0700
Received: from [10.25.73.250] (172.20.13.39) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 May
 2019 07:49:36 +0000
Subject: Re: [PATCH V5 04/16] PCI: dwc: Perform dbi regs write lock towards
 the end
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-5-vidyas@nvidia.com> <20190503111303.GD32400@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <2544621a-4c88-3f3e-786c-7ee8103e132d@nvidia.com>
Date: Tue, 7 May 2019 13:19:32 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503111303.GD32400@ulmo>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557215390; bh=7aKDP0PrR8UIUscgN8AluGENbezYgudBe8R0F7tHAOo=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=VzvW/Z1vIyC82jZseAoID7gNZrMmCKK54TotulhenXUaOPM25Fgkyu8/t7GyDCArJ
 pHnYW8VMh/3Pif4M8EucT6ODyFN50p4tsXm+gyfL1U2gtH6vWczZx0ZvX7wCXgXz9t
 B6cfutJkFWW0EF5gDPAhELjdZNu2+IpwUtp9fRIHrWAy3PlVYr0YcxCvjH1aD+g+zl
 aFTIUDio1gL8KpJXFg8EJTSHpO/HhCGHVkIjBw3OwHUhcWyjPb/fNw5yFGy1zGbc2o
 0A0s1VHTiZdw/B09xqEke0nlRECDlPXV4BId0zvtAGtkJWfWYUNK8hb7V3AfL95Gic
 PKKKgGA8PnVbw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_004944_166222_C65A10B8 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/3/2019 4:43 PM, Thierry Reding wrote:
> On Wed, Apr 24, 2019 at 10:49:52AM +0530, Vidya Sagar wrote:
>> Remove multiple write enable and disable sequences of dbi registers as
>> Tegra194 implements writes to BAR-0 register (offset: 0x10) controlled by
>> DBI write-lock enable bit thereby not allowing any further writes to BAR-0
>> register in config space to take place. Hence disabling write permission
>> only towards the end.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>> Changes since [v4]:
>> * None
>>
>> Changes since [v3]:
>> * None
>>
>> Changes since [v2]:
>> * None
>>
>> Changes since [v1]:
>> * None
>>
>>   drivers/pci/controller/dwc/pcie-designware-host.c | 3 ---
>>   1 file changed, 3 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>> index 36fd3f5b48f6..e5e3571dd2fe 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
>> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
>> @@ -654,7 +654,6 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
>>   	val &= 0xffff00ff;
>>   	val |= 0x00000100;
>>   	dw_pcie_writel_dbi(pci, PCI_INTERRUPT_LINE, val);
>> -	dw_pcie_dbi_ro_wr_dis(pci);
>>   
>>   	/* Setup bus numbers */
>>   	val = dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
>> @@ -686,8 +685,6 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
>>   
>>   	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
>>   
>> -	/* Enable write permission for the DBI read-only register */
>> -	dw_pcie_dbi_ro_wr_en(pci);
>>   	/* Program correct class for RC */
>>   	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
>>   	/* Better disable write permission right after the update */
> 
> Perhaps make this explicit by moving the write enable call to the
> beginning of the function and the write disable call to the end?
> 
> Currently it's pretty difficult to see where it's being disabled. Also,
> that would make it more resilient against instantiations that require a
> different register to be programmed with writes enabled.
Agree. I'll move enabling write to beginning of this function and disabling
to the end in the next patch series.

> 
> Thierry
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
