Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585821A8885
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uk6nfihqxcXN9HEDnU7YFJHUUbxWtNUe1YthleLwfGQ=; b=dPsy7nRZrQacr2TVdGsd85isO
	nBk0qsHmQ9uo5wFXX4Cq2gNiT4G4hzrV13dZnoq8jejHjy4fFumphNf07+oFVvl5o0qAL0cgQ3pIB
	L4AUbisNhtayqJBx6QLV5YnYGO1nb5WjrhVI4AeDgP5go4mtT/0qiJmoSQ5nBzdaxRsglKWItiTZb
	ltGFZMTsQQLUKRu35lsxJ4rj5HBxZC4JPX54M7Wa44iahplbxxKaqQTMP2zzw0uuO9Cm0fRToi9iO
	PeKbans1oNIcDazG7khTrSjNl5ODTqhA42LBoWX8MawwtqQsJgvQBIBF85vo2WtjYfFbyCmAsToHQ
	ymThw29gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPw0-0005T5-Ul; Tue, 14 Apr 2020 18:05:20 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPup-0004nS-Ai
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:04:11 +0000
IronPort-SDR: BgRjMIHhZL7pt11p7YGnRol4yuQiNrLctzdFLfAW6UjGrv+bS/Ayc45XDMs2deTibKkuV90fMz
 P4zQEwxRUqWQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 11:03:58 -0700
IronPort-SDR: 01kgUQrqKZQX1pAj3dnDWz48ASk0atmd8PCFOSz4yl9e/0shzKXSFQ+E09Y5tSz5FmZPaOePWa
 U02OmUb4f5Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="271475817"
Received: from swwoldee-mobl1.amr.corp.intel.com (HELO [10.251.15.118])
 ([10.251.15.118])
 by orsmga002.jf.intel.com with ESMTP; 14 Apr 2020 11:03:53 -0700
Subject: Re: [PATCH v5 24/25] PCI/ATS: Export PRI functions
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-25-jean-philippe@linaro.org>
From: "Kuppuswamy, Sathyanarayanan"
 <sathyanarayanan.kuppuswamy@linux.intel.com>
Message-ID: <5365fba9-093a-1948-e521-7cc931f06ff0@linux.intel.com>
Date: Tue, 14 Apr 2020 11:03:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200414170252.714402-25-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110407_479584_67C402FD 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kevin.tian@intel.com, will@kernel.org, catalin.marinas@arm.com,
 jgg@ziepe.ca, Bjorn Helgaas <bhelgaas@google.com>, zhangfei.gao@linaro.org,
 robin.murphy@arm.com, christian.koenig@amd.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi,
On 4/14/20 10:02 AM, Jean-Philippe Brucker wrote:
> The SMMUv3 driver uses pci_{enable,disable}_pri() and related
> functions. Export those functions to allow the driver to be built as a
> module.
> 
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Reviewed-by: Kuppuswamy Sathyanarayanan 
<sathyanarayanan.kuppuswamy@linux.intel.com>
> ---
>   drivers/pci/ats.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
> index bbfd0d42b8b97..fc8fc6fc8bd55 100644
> --- a/drivers/pci/ats.c
> +++ b/drivers/pci/ats.c
> @@ -197,6 +197,7 @@ void pci_pri_init(struct pci_dev *pdev)
>   	if (status & PCI_PRI_STATUS_PASID)
>   		pdev->pasid_required = 1;
>   }
> +EXPORT_SYMBOL_GPL(pci_pri_init);
>   
>   /**
>    * pci_enable_pri - Enable PRI capability
> @@ -243,6 +244,7 @@ int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
>   
>   	return 0;
>   }
> +EXPORT_SYMBOL_GPL(pci_enable_pri);
>   
>   /**
>    * pci_disable_pri - Disable PRI capability
> @@ -322,6 +324,7 @@ int pci_reset_pri(struct pci_dev *pdev)
>   
>   	return 0;
>   }
> +EXPORT_SYMBOL_GPL(pci_reset_pri);
>   
>   /**
>    * pci_prg_resp_pasid_required - Return PRG Response PASID Required bit
> @@ -337,6 +340,7 @@ int pci_prg_resp_pasid_required(struct pci_dev *pdev)
>   
>   	return pdev->pasid_required;
>   }
> +EXPORT_SYMBOL_GPL(pci_prg_resp_pasid_required);
>   #endif /* CONFIG_PCI_PRI */
>   
>   #ifdef CONFIG_PCI_PASID
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
