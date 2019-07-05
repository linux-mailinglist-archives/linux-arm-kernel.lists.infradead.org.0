Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B25607A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HHJovWEDuqNWOwMzoLgL68BWJCnT9q/ugd3D4Ma6y0Y=; b=D5NwM9/PSi2C+gq2gf4DL0Dbw
	JMQ9dvnVOjhbybHy44ELKczy/uFfi5BQzBMukLXanJD1DpeyxsHfzXMnkGQxOfR6pwqg2GHt1vLn4
	y2FerA9vJRyyb3ntyCuaBEic3lSyhVxNq24DGlTG5tn7uHwfM/OkY4Xg9iUj6G75i4Cmv+fkysHOC
	/jVdigNt1xWaIpOn2jAjWBg17LKC6/l8Tncr2tqPMcOyoY/4hjZGg/ZDusxenMg4Q1qPSyQQ3b0qW
	2RMrGWAPpEcIp1oxBnb+PQxTcb0u7GQvi+nvCAHAQNZM65eMwv3pm4e8AO20CIh1oZOwHKnEg3azc
	ikeQP0Kog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjP0c-00016D-Ft; Fri, 05 Jul 2019 14:16:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjP0U-00015s-0H
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:16:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2Qy6ORAWvrbTlmfqAnF7zDdNOiozdPJ+e9fLmQAmT2s=; b=QIOSz4p4ED8hUcQIL54lKwb+oc
 dp6LsVlzuSeTZo6quSVjBYDmv5x6KqfR/SyMhb8p5Da58GseWQ6Va/DqBKcPC9RIBUQz5ZgmELSpp
 E363p4p0tvYmL1SZdV3rO/WtiB/t4nNLFbkhXbgb/tmuXRCWtc7W6ze10AQ3wkvBoHyPEuvqEmOO2
 QChxzf+LuwjpnNGbx99GqYjQeuCd40sOPh5XZGpsXrhSHWyDDoIvkgnEbLg3VOLBuwyVUhVI0Zyrr
 z92La4e6oizJS3MQO0Les8UMJsSiAPkXTndTQRjTYlRrAdJK6blCBauM4ybAjPfXGNnTcX8DuwkXp
 ZD2VNiow==;
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOYM-0006RS-8I
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 13:47:08 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d1f54bb0000>; Fri, 05 Jul 2019 06:46:35 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Fri, 05 Jul 2019 06:46:31 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Fri, 05 Jul 2019 06:46:31 -0700
Received: from [10.25.73.124] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 5 Jul
 2019 13:46:25 +0000
Subject: Re: [PATCH V12 01/12] PCI: Add #defines for some of PCIe spec r4.0
 features
To: <bhelgaas@google.com>
References: <20190701124010.7484-1-vidyas@nvidia.com>
 <20190701124010.7484-2-vidyas@nvidia.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <66d8af45-66f5-b597-0ea8-39e8662df5e6@nvidia.com>
Date: Fri, 5 Jul 2019 19:16:22 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190701124010.7484-2-vidyas@nvidia.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL108.nvidia.com (172.18.146.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1562334395; bh=2Qy6ORAWvrbTlmfqAnF7zDdNOiozdPJ+e9fLmQAmT2s=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=d8v8nKDdjlIXTfXIOi5GsRbdP041QsfRpBLjjsMPdizHbCbmFMgqe8vGkmjLZUxlu
 NK/YbczaGAoQS/BKbjd/Wv6g8aVfD439ngxFzxcZ5qoqMsv0H1UpmSpjzFoCf4XeLf
 OJbNSYjItvis6SB6QQK17u2YFfpf9wkIO32L3JY8lRrIoYVaHA9ZfGtmHDZnm9tOze
 jdwSvge5JeajNERQZLcTM/UzTtAqjuMAhOy4htXvPMQ08CpeWSMrSWkPtLP4SZr78U
 HtqFZIjipMnFXuDTYyP8f0hRfHxVU2PUP+aPVeuAhjPE1vwPWjiCSvRunnYzmHvPWZ
 SRRX2lPQXaBXg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_144706_797441_28492E34 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 7/1/2019 6:09 PM, Vidya Sagar wrote:
Bjorn,
Can you please provide Ack for this patch?

Thanks,
Vidya Sagar

> Add #defines only for the Data Link Feature and Physical Layer 16.0 GT/s
> features.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Reviewed-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes since [v11]:
> * None
> 
> Changes since [v10]:
> * None
> 
> Changes since [v9]:
> * None
> 
> Changes since [v8]:
> * None
> 
> Changes since [v7]:
> * None
> 
> Changes since [v6]:
> * None
> 
> Changes since [v5]:
> * None
> 
> Changes since [v4]:
> * None
> 
> Changes since [v3]:
> * None
> 
> Changes since [v2]:
> * Updated commit message and description to explicitly mention that defines are
>    added only for some of the features and not all.
> 
> Changes since [v1]:
> * None
> 
>   include/uapi/linux/pci_regs.h | 22 +++++++++++++++++++++-
>   1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/include/uapi/linux/pci_regs.h b/include/uapi/linux/pci_regs.h
> index f28e562d7ca8..1c79f6a097d2 100644
> --- a/include/uapi/linux/pci_regs.h
> +++ b/include/uapi/linux/pci_regs.h
> @@ -713,7 +713,9 @@
>   #define PCI_EXT_CAP_ID_DPC	0x1D	/* Downstream Port Containment */
>   #define PCI_EXT_CAP_ID_L1SS	0x1E	/* L1 PM Substates */
>   #define PCI_EXT_CAP_ID_PTM	0x1F	/* Precision Time Measurement */
> -#define PCI_EXT_CAP_ID_MAX	PCI_EXT_CAP_ID_PTM
> +#define PCI_EXT_CAP_ID_DLF	0x25	/* Data Link Feature */
> +#define PCI_EXT_CAP_ID_PL	0x26	/* Physical Layer 16.0 GT/s */
> +#define PCI_EXT_CAP_ID_MAX	PCI_EXT_CAP_ID_PL
>   
>   #define PCI_EXT_CAP_DSN_SIZEOF	12
>   #define PCI_EXT_CAP_MCAST_ENDPOINT_SIZEOF 40
> @@ -1053,4 +1055,22 @@
>   #define  PCI_L1SS_CTL1_LTR_L12_TH_SCALE	0xe0000000  /* LTR_L1.2_THRESHOLD_Scale */
>   #define PCI_L1SS_CTL2		0x0c	/* Control 2 Register */
>   
> +/* Data Link Feature */
> +#define PCI_DLF_CAP		0x04	/* Capabilities Register */
> +#define  PCI_DLF_LOCAL_DLF_SUP_MASK	0x007fffff  /* Local Data Link Feature Supported */
> +#define  PCI_DLF_EXCHANGE_ENABLE	0x80000000  /* Data Link Feature Exchange Enable */
> +#define PCI_DLF_STS		0x08	/* Status Register */
> +#define  PCI_DLF_REMOTE_DLF_SUP_MASK	0x007fffff  /* Remote Data Link Feature Supported */
> +#define  PCI_DLF_REMOTE_DLF_SUP_VALID	0x80000000  /* Remote Data Link Feature Support Valid */
> +
> +/* Physical Layer 16.0 GT/s */
> +#define PCI_PL_16GT_CAP		0x04	/* Capabilities Register */
> +#define PCI_PL_16GT_CTRL	0x08	/* Control Register */
> +#define PCI_PL_16GT_STS		0x0c	/* Status Register */
> +#define PCI_PL_16GT_LDPM_STS	0x10	/* Local Data Parity Mismatch Status Register */
> +#define PCI_PL_16GT_FRDPM_STS	0x14	/* First Retimer Data Parity Mismatch Status Register */
> +#define PCI_PL_16GT_SRDPM_STS	0x18	/* Second Retimer Data Parity Mismatch Status Register */
> +#define PCI_PL_16GT_RSVD	0x1C	/* Reserved */
> +#define PCI_PL_16GT_LE_CTRL	0x20	/* Lane Equalization Control Register */
> +
>   #endif /* LINUX_PCI_REGS_H */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
