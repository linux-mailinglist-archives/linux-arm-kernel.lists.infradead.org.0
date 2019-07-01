Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C9C5BC01
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 14:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1lHyUgOd6Ds0RCMn8BaFchsuPySRdSedE+RNlc1dXLs=; b=X3wx/z0PR1wg8qS4OYHM0SSGQ
	SlshikbuHPNuXhBHCG80rnL3L0U5S5ESl7S3hzq0Ag2cDfA3/g7OfaK5118aIU4fF9RgrMaggEy1O
	RxI1nG3jGQlfIz8YFDUYZYo6zj8h/PQ9SyesQm9OzzJCKK/yus1JXUUnnODd5zdcX4Opb7X9DGLLq
	NJ2gkmvsQuYtNlCNfntrG/uTcpJ/JEIVZtCCOebFokub5BxcAIA6xNEuEw8uf8R2UBsNpBnml+U8+
	7rb16qpJQcMfYcluD24Od+rshXdnoPEetAQLnTzW4AjrfVxKGjbl/bNfsWqSHRHAD+jlIZmMtuMSV
	pSiIK8bWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhvfm-0006Bz-74; Mon, 01 Jul 2019 12:44:42 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhvde-0004Uq-Ij
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 12:42:32 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d19ffb20000>; Mon, 01 Jul 2019 05:42:26 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 01 Jul 2019 05:42:29 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 01 Jul 2019 05:42:29 -0700
Received: from [10.24.46.111] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 1 Jul
 2019 12:42:23 +0000
Subject: Re: [PATCH V11 01/12] PCI: Add #defines for some of PCIe spec r4.0
 features
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>
References: <20190624091505.1711-1-vidyas@nvidia.com>
 <20190624091505.1711-2-vidyas@nvidia.com>
 <20190627143837.GC3782@e121166-lin.cambridge.arm.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <04eb3a58-d9c3-d0ed-97a0-ef249b0df7b9@nvidia.com>
Date: Mon, 1 Jul 2019 18:12:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190627143837.GC3782@e121166-lin.cambridge.arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1561984946; bh=kNykchmSvY0+P9KV8+dRy9nOI5CR9P45cgI9ABjOI5U=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Y5kzyYAJJMfzuI7ta+fVw5FSO79Z69AOC5wz22H1bjPkL4fEXjopktZgjC0Bgzc+g
 fpNwBvAGask9SYB0nvM/Ok4UuN1u+HltxliSX2NL8447RaDHUfl4iqwpaLqEra0JcB
 xFqIL9YRGT9yWtAh6bveoAYtdsFQyOk43rZlnaYvpfOwnx2uMMropBTuMFwlvKJqGF
 hufl1MBJW2NI9/lYWqQvTdPHuzysQ1OYKpNHPSY4QGw58xSdhYZiZSe0U4gL/MWUEL
 Ov8d3eGGq92mztOc3Q0aQgqmVqw+4olYqEJYjROZh8ySw+vhw0ZCxRU2oc/JFCFlD0
 feYdv4ygZKFVQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_054230_858602_78B587EE 
X-CRM114-Status: GOOD (  11.80  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, mperttunen@nvidia.com,
 mmaddireddy@nvidia.com, linux-pci@vger.kernel.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 kthota@nvidia.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/27/2019 8:08 PM, Lorenzo Pieralisi wrote:
> On Mon, Jun 24, 2019 at 02:44:54PM +0530, Vidya Sagar wrote:
>> Add #defines only for the Data Link Feature and Physical Layer 16.0 GT/s
>> features.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> Reviewed-by: Thierry Reding <treding@nvidia.com>
>> ---
>> Changes since [v10]:
>> * None
>>
>> Changes since [v9]:
>> * None
>>
>> Changes since [v8]:
>> * None
>>
>> Changes since [v7]:
>> * None
>>
>> Changes since [v6]:
>> * None
>>
>> Changes since [v5]:
>> * None
>>
>> Changes since [v4]:
>> * None
>>
>> Changes since [v3]:
>> * None
>>
>> Changes since [v2]:
>> * Updated commit message and description to explicitly mention that defines are
>>    added only for some of the features and not all.
>>
>> Changes since [v1]:
>> * None
>>
>>   include/uapi/linux/pci_regs.h | 22 +++++++++++++++++++++-
>>   1 file changed, 21 insertions(+), 1 deletion(-)
> 
> I need Bjorn's ACK to merge this patch.
I sent V12 patches out for review.
Bjorn, please provide ACK for V12 version of this change.

-Vidya Sagar

> 
> Lorenzo
> 
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
>> +
>> +/* Physical Layer 16.0 GT/s */
>> +#define PCI_PL_16GT_CAP		0x04	/* Capabilities Register */
>> +#define PCI_PL_16GT_CTRL	0x08	/* Control Register */
>> +#define PCI_PL_16GT_STS		0x0c	/* Status Register */
>> +#define PCI_PL_16GT_LDPM_STS	0x10	/* Local Data Parity Mismatch Status Register */
>> +#define PCI_PL_16GT_FRDPM_STS	0x14	/* First Retimer Data Parity Mismatch Status Register */
>> +#define PCI_PL_16GT_SRDPM_STS	0x18	/* Second Retimer Data Parity Mismatch Status Register */
>> +#define PCI_PL_16GT_RSVD	0x1C	/* Reserved */
>> +#define PCI_PL_16GT_LE_CTRL	0x20	/* Lane Equalization Control Register */
>> +
>>   #endif /* LINUX_PCI_REGS_H */
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
