Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCDD64084
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 07:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J5fmJwA/wi8YZ1boBmMnkbEC2LIyloH1oMDlXMXBESs=; b=INPSEBNNtavCrakQR/TRFJlEm
	JFa6lKH9mfSqrpLAZSA8Zo88Pt1pfR/C5NBZEBaJ1IZPnYiLFuoJTJVcq3WHjwjwExf8+UKmEm+qf
	cs/caaXbrh6tRApngvnRxtYUUEVEHXkIjlVPBnPeC80RXzG7GwIDA2P80pDI3bppzPvPW1ui/Rjl4
	X5lR2MzAaUWk4NRLONDZP1gkm0TPgvQXi9pGBk99AeTiJx7Z0ReQGTHVHatsa1mDePwh2K61BUmET
	xTGS11+taZ9Aa2OZKKlEcPgemn+ADGg55UIwE/xLblxZLJVXl1I52+7mV7kN4TDmQk3d5Os0XDoXe
	dicEqFJqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl50p-00056c-98; Wed, 10 Jul 2019 05:19:27 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl50T-000566-FL
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 05:19:06 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d25754c0000>; Tue, 09 Jul 2019 22:19:09 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 09 Jul 2019 22:19:03 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 09 Jul 2019 22:19:03 -0700
Received: from [10.24.44.109] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 10 Jul
 2019 05:18:56 +0000
Subject: Re: [PATCH V12 01/12] PCI: Add #defines for some of PCIe spec r4.0
 features
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20190701124010.7484-1-vidyas@nvidia.com>
 <20190701124010.7484-2-vidyas@nvidia.com> <20190709141427.GB35486@google.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <d76dbaf9-6193-9ba6-a183-c60c4cedf1ff@nvidia.com>
Date: Wed, 10 Jul 2019 10:48:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190709141427.GB35486@google.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL104.nvidia.com (172.18.146.11) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562735949; bh=yxF/cnGRW+W6waCVCeurAKL/HMafBLOVE75sBLZ2LHU=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Q3XLbdwj7QbrVih65s3Gt3jmVoPIne6/uZ51ADt6hsq7rsK3b1JgOX44dlNbXOXCj
 nyb71fcyLHHWa8+17h7Qr8IVhCZ6EKt8Fvq65mmTOuvbZo7WZvwQxWkUMG9oZuCDYF
 tFFwWqutchhzePIcXcd6+2hD11KtA9Uf38aAYeWj6AG8p1tM9wDkYACF4CaW83K1cV
 oa7Qw8g4i1AYUChnAZSwGys3PgtyapKw8/yS94UXq49rhbXJcKiLZ1fvzXA8bCGIGe
 cLYln0zRRvHRJt5iRcMZ/1UJzRrLwOP2vfJjdEnTxS32vcCUVvi4Y6QC8j6prE6V8G
 gJZmygVitq8HQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_221905_530248_A4B63544 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 robh+dt@kernel.org, kishon@ti.com, kthota@nvidia.com, thierry.reding@gmail.com,
 gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/9/2019 7:44 PM, Bjorn Helgaas wrote:
> On Mon, Jul 01, 2019 at 06:09:59PM +0530, Vidya Sagar wrote:
>> Add #defines only for the Data Link Feature and Physical Layer 16.0 GT/s
>> features.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> Reviewed-by: Thierry Reding <treding@nvidia.com>
> 
> Please include spec references in the commit log, e.g., PCIe r5.0, sec
> 7.7.4, for Data Link Feature and sec 7.7.5 for Physical Layer 16 GT/s.
Done.

> 
>>   include/uapi/linux/pci_regs.h | 22 +++++++++++++++++++++-
>>   1 file changed, 21 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/uapi/linux/pci_regs.h b/include/uapi/linux/pci_regs.h
>> index f28e562d7ca8..1c79f6a097d2 100644
>> --- a/include/uapi/linux/pci_regs.h
>> +++ b/include/uapi/linux/pci_regs.h
>> @@ -713,7 +713,9 @@
>>   #define PCI_EXT_CAP_ID_DPC	0x1D	/* Downstream Port Containment */
>>   #define PCI_EXT_CAP_ID_L1SS	0x1E	/* L1 PM Substates */
>>   #define PCI_EXT_CAP_ID_PTM	0x1F	/* Precision Time Measurement */
>> -#define PCI_EXT_CAP_ID_MAX	PCI_EXT_CAP_ID_PTM
>> +#define PCI_EXT_CAP_ID_DLF	0x25	/* Data Link Feature */
>> +#define PCI_EXT_CAP_ID_PL	0x26	/* Physical Layer 16.0 GT/s */
> 
> Maybe PCI_EXT_CAP_ID_PL_16GT so there's a little more hint of what
> this is for?
Ok. I'll add 16GT.

> 
>> +#define PCI_EXT_CAP_ID_MAX	PCI_EXT_CAP_ID_PL
>>   
>>   #define PCI_EXT_CAP_DSN_SIZEOF	12
>>   #define PCI_EXT_CAP_MCAST_ENDPOINT_SIZEOF 40
>> @@ -1053,4 +1055,22 @@
>>   #define  PCI_L1SS_CTL1_LTR_L12_TH_SCALE	0xe0000000  /* LTR_L1.2_THRESHOLD_Scale */
>>   #define PCI_L1SS_CTL2		0x0c	/* Control 2 Register */
>>   
>> +/* Data Link Feature */
>> +#define PCI_DLF_CAP		0x04	/* Capabilities Register */
>> +#define  PCI_DLF_LOCAL_DLF_SUP_MASK	0x007fffff  /* Local Data Link Feature Supported */
>> +#define  PCI_DLF_EXCHANGE_ENABLE	0x80000000  /* Data Link Feature Exchange Enable */
>> +#define PCI_DLF_STS		0x08	/* Status Register */
>> +#define  PCI_DLF_REMOTE_DLF_SUP_MASK	0x007fffff  /* Remote Data Link Feature Supported */
>> +#define  PCI_DLF_REMOTE_DLF_SUP_VALID	0x80000000  /* Remote Data Link Feature Support Valid */
> 
> I'm a little bit ambivalent about adding #defines that aren't used.  I
> personally would probably just add the things we use, so the header
> file gives a clue about what's currently implemented.  But I guess
> either way is fine.
Fine. I'll remove all unused defines in the next patch.

> 
>> +/* Physical Layer 16.0 GT/s */
>> +#define PCI_PL_16GT_CAP		0x04	/* Capabilities Register */
>> +#define PCI_PL_16GT_CTRL	0x08	/* Control Register */
>> +#define PCI_PL_16GT_STS		0x0c	/* Status Register */
>> +#define PCI_PL_16GT_LDPM_STS	0x10	/* Local Data Parity Mismatch Status Register */
>> +#define PCI_PL_16GT_FRDPM_STS	0x14	/* First Retimer Data Parity Mismatch Status Register */
>> +#define PCI_PL_16GT_SRDPM_STS	0x18	/* Second Retimer Data Parity Mismatch Status Register */
>> +#define PCI_PL_16GT_RSVD	0x1C	/* Reserved */
> 
> Use lower-case hex consistently here.  There's no global consistency
> in this file, but we can at least be consistent in each section.  But
> I'm even more hesitant about included unused #defines for "reserved"
> fields, so if you drop this it would take care of both :)
Done.

> 
>> +#define PCI_PL_16GT_LE_CTRL	0x20	/* Lane Equalization Control Register */
> 
> This is the only register you actually use.  You defined a local
> PL16G_CAP_OFF_DSP_16G_TX_PRESET_MASK for this register.  Shouldn't
> that be defined here instead of in
> drivers/pci/controller/dwc/pcie-tegra194.c?
I'll take care of it in the next patch.

> 
>>   #endif /* LINUX_PCI_REGS_H */
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
