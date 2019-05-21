Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1E2255FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p3zP10/aQ0l5mIra43QrwUCKoKN7z2nq/rs5d6d2aIc=; b=gFRv4Vog8p5bNLfmhUIlkT/20
	2LX2ptZSTLQMeFZUL8r4v3h9Ko4qE8h23yYZhTnkyh6/mYRX9ko+tvjXy9oTC5iG7ZVomIy+Z2Cag
	IAtCO09OxL7kvKBI3l7TJ8JD+f9ypKYmGbQDdDx7HnaP+di6UCDE5JSRPIySTLcwyYIKhAMhwfEvc
	uzLTVkAh653yKAkRWUg0ORDd4GeR9EsptDN9lTMScdolFndP7W1+xO+wrbRReu5sav4lppXwQvcKV
	y4zetlvU11kZTh6lgU7+90rg/TtIbTWSm9HfOKdw9RPXcPl5/bM+Y6rdlNjZi7g+HQp/aRkd0eVCN
	ENI8RKBXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7vX-0007j6-1Q; Tue, 21 May 2019 16:47:47 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7vQ-0007hm-10
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:47:41 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ce42ba70000>; Tue, 21 May 2019 09:47:35 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 21 May 2019 09:47:34 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 21 May 2019 09:47:34 -0700
Received: from [10.25.72.115] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 21 May
 2019 16:47:29 +0000
Subject: Re: [PATCH V7 02/15] PCI: Disable MSI for Tegra194 root port
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-3-vidyas@nvidia.com> <20190521102729.GB29166@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <f63051b0-a220-125b-219e-25156d65ea6d@nvidia.com>
Date: Tue, 21 May 2019 22:17:26 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521102729.GB29166@ulmo>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL103.nvidia.com (172.20.187.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1558457255; bh=BlKoVyxfa3/PhGnDYxQwviA1iVDUS1wMLF49XD5WLTo=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=EeQpa9fitk/OpoQb5fgRexaj/4U0V03Hh0lFLdmYSKWSxWr0BxeUY1pOsh3perPWB
 SVrQaG2Es6cVEJE9EcAkpzaUoe60SPjdpXy08bnbbNt9SXoNgvTk4Zh9/BoEqEtNSW
 NPLtiibkt0oh3/H2R3pz2t8h0xyFRQ0W9hxD4848k7pI4sY8vWFWGltTlk8aT8G5wQ
 NdeLJpPeJqt0Z9aq2LNe77mtwWiM3EwVsYl7NZCFrZfxwU0pFW6XX/hp7Cet/gZsnm
 yjcGWIB56i2lBnp8u4z42Li1AYeei5ZBUCmPodnipCn0mPZNdyRypL1GmUo5PaUvx8
 /rRw7QYrXZMww==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_094740_074921_E48015FC 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On 5/21/2019 3:57 PM, Thierry Reding wrote:
> On Fri, May 17, 2019 at 06:08:33PM +0530, Vidya Sagar wrote:
>> Tegra194 rootports don't generate MSI interrupts for PME events and hence
>> MSI needs to be disabled for them to avoid root ports service drivers
>> registering their respective ISRs with MSI interrupt.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>> Changes since [v6]:
>> * This is a new patch
>>
>>   drivers/pci/quirks.c | 14 ++++++++++++++
>>   1 file changed, 14 insertions(+)
>>
>> diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
>> index 0f16acc323c6..28f9a0380df5 100644
>> --- a/drivers/pci/quirks.c
>> +++ b/drivers/pci/quirks.c
>> @@ -2592,6 +2592,20 @@ DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA,
>>   			PCI_DEVICE_ID_NVIDIA_NVENET_15,
>>   			nvenet_msi_disable);
>>   
>> +/*
>> + * Tegra194's PCIe root ports don't generate MSI interrupts for PME events
>> + * instead legacy interrupts are generated. Hence, to avoid service drivers
>> + * registering their respective ISRs for MSIs, need to disable MSI interrupts
>> + * for root ports.
>> + */
>> +static void disable_tegra194_rp_msi(struct pci_dev *dev)
>> +{
>> +	dev->no_msi = 1;
>> +}
>> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad0, disable_tegra194_rp_msi);
>> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad1, disable_tegra194_rp_msi);
>> +DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_NVIDIA, 0x1ad2, disable_tegra194_rp_msi);
>> +
> 
> Later functions in this file seem to use a more consistent naming
> pattern, according to which the name for this would become:
> 
> 	pci_quirk_nvidia_tegra194_disable_rp_msi
> 
> Might be worth considering making this consistent.
> 
> This could also be moved to the DWC driver to restrict this to where it
> is needed. In either case, this seems like a good solution, so:
> 
> Reviewed-by: Thierry Reding <treding@nvidia.com>
> 
Ok. I'll move it to DWC driver along with name change for the quirk API.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
