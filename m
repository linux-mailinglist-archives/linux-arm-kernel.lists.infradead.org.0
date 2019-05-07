Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E92A615DED
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 09:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b5UIDK9RkbsNK7GOtejduhyECVf1zYLyJIFgpNUR40U=; b=VCqKli2vpDHW7GPF0DNCUF+Ta
	4E1Va/F64NX6fJAcQIKJ5QCd6JBtCoXiww0Oi8flhtUI4nP3bDX7H+rj6XmF+RexfvoNAn6rQ6Sd6
	rzApaYWCZ5rLdmdavprJiGSKJVfSzRt02eo9b3lxU0lbw4Pqc99WiE6YOwpMTZX3v38ZSozgLoIqE
	D13MxTY6w6M6+DBHk9sKuXsAf5P7Zk8ZDdVpXkQeWcq5BndULjaXZ7fB33potjO3oIS1yKz0A43av
	nHPjU9CZzQ22AWL4GMFZQfhe+pGhqASksEERnYBEvPkgfZV6kbGOccSbKkoJ0xnAb/mCmtP82oQP8
	GU3lae9Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNuFd-0008J8-5e; Tue, 07 May 2019 07:10:57 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNuFV-0008IQ-C2
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 07:10:50 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cd12f740000>; Tue, 07 May 2019 00:10:44 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 07 May 2019 00:10:48 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 07 May 2019 00:10:48 -0700
Received: from [10.25.73.250] (172.20.13.39) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 May
 2019 07:10:40 +0000
Subject: Re: [PATCH V5 02/16] PCI/PME: Export pcie_pme_disable_msi() &
 pcie_pme_no_msi() APIs
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-3-vidyas@nvidia.com> <20190503110159.GB32400@ulmo>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <b8f482f4-8136-07b5-3d68-f45a6fd580ba@nvidia.com>
Date: Tue, 7 May 2019 12:40:36 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503110159.GB32400@ulmo>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL106.nvidia.com (172.18.146.12) To
 HQMAIL101.nvidia.com (172.20.187.10)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1557213044; bh=KIRiMdJ3vHsuNoXRBzUBVE4jj3DtsdclgdYyB8TtsKg=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=N0cu64tGkekeUlr8GKtZ16+dmuv0OOULTcHPKb31Wg/Etaa5vKT7q/lCU9FWUezN/
 X+GgJbW6gv3Wlgg0qz4wcVp/+BHHqKijSr7kxXMORKyhWwiG/1PY1x/PskChTDTaiM
 Ix0gYrXm/p0ytf1PRzZ6mjbbv5b7q7+flVxgw3YiG76X7uayqz/Z/aUO4r/CkBb/2t
 D6MMYSGaJci4N2uY/oLvsOcCw1MxHSwVGcbrWEJFGvFuL73XUq5CGYt/yx+PQy9377
 t3IfNouplwTxNXL9xDOEvQ4LHkNjw+z/z/MUkElZPJv+nFXO4z/VecuQreGLOwJQe3
 f15d3SAi3cWww==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_001049_422643_56BA7EE2 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 5/3/2019 4:31 PM, Thierry Reding wrote:
> On Wed, Apr 24, 2019 at 10:49:50AM +0530, Vidya Sagar wrote:
>> Export pcie_pme_disable_msi() & pcie_pme_no_msi() APIs to enable drivers
>> using this API be able to build as loadable modules.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>> Changes from [v4]:
>> * None
>>
>> Changes from [v3]:
>> * None
>>
>> Changes from [v2]:
>> * Exported pcie_pme_no_msi() API after making pcie_pme_msi_disabled a static
>>
>> Changes from [v1]:
>> * This is a new patch in v2 series
>>
>>   drivers/pci/pcie/pme.c     | 14 +++++++++++++-
>>   drivers/pci/pcie/portdrv.h | 16 +++-------------
>>   2 files changed, 16 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/pci/pcie/pme.c b/drivers/pci/pcie/pme.c
>> index 54d593d10396..d5e0ea4a62fc 100644
>> --- a/drivers/pci/pcie/pme.c
>> +++ b/drivers/pci/pcie/pme.c
>> @@ -25,7 +25,19 @@
>>    * that using MSI for PCIe PME signaling doesn't play well with PCIe PME-based
>>    * wake-up from system sleep states.
>>    */
>> -bool pcie_pme_msi_disabled;
>> +static bool pcie_pme_msi_disabled;
>> +
>> +void pcie_pme_disable_msi(void)
>> +{
>> +	pcie_pme_msi_disabled = true;
>> +}
>> +EXPORT_SYMBOL_GPL(pcie_pme_disable_msi);
>> +
>> +bool pcie_pme_no_msi(void)
>> +{
>> +	return pcie_pme_msi_disabled;
>> +}
>> +EXPORT_SYMBOL_GPL(pcie_pme_no_msi);
>>   
>>   static int __init pcie_pme_setup(char *str)
>>   {
>> diff --git a/drivers/pci/pcie/portdrv.h b/drivers/pci/pcie/portdrv.h
>> index 1d50dc58ac40..7c8c3da4bd58 100644
>> --- a/drivers/pci/pcie/portdrv.h
>> +++ b/drivers/pci/pcie/portdrv.h
>> @@ -125,22 +125,12 @@ void pcie_port_bus_unregister(void);
>>   struct pci_dev;
>>   
>>   #ifdef CONFIG_PCIE_PME
>> -extern bool pcie_pme_msi_disabled;
>> -
>> -static inline void pcie_pme_disable_msi(void)
>> -{
>> -	pcie_pme_msi_disabled = true;
>> -}
>> -
>> -static inline bool pcie_pme_no_msi(void)
>> -{
>> -	return pcie_pme_msi_disabled;
>> -}
>> -
>> +void pcie_pme_disable_msi(void);
>> +bool pcie_pme_no_msi(void);
>>   void pcie_pme_interrupt_enable(struct pci_dev *dev, bool enable);
>>   #else /* !CONFIG_PCIE_PME */
>>   static inline void pcie_pme_disable_msi(void) {}
>> -static inline bool pcie_pme_no_msi(void) { return false; }
>> +static inline bool pcie_pme_no_msi(void) {}
> 
> This looks wrong.
Can you please give more info on what is wrong in this?

> 
> Thierry
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
