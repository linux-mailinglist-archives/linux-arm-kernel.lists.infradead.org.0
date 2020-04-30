Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FB31BFFD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 17:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RPi3z2/JWXxGzso1U+RLE1AQrmfNdxS17HLmgnnUlrI=; b=P3OkywwTGD/cJ2Y5nFzH466qm
	nJX3GfghzOefjAQ1SuKj0PoCOf7GufEgMFpBl1KtlREagyIHL4fB8k8xQBCtuIsllFWxD5LQFDMOP
	QS2MZxHg6BVVm9jVwRvcL+hAm9DQUU3i4HU0F1aMQuLP/vBPo5h3q3LC3rLFnwTDX+XE7eQo04Qif
	UzvdjMMaDeHZxz/MM7ifqKmmEpXWHmaqxwOlxW5gZrNKwS8RjsXrLlC1XV8NtU0BHe26KcYLyf2IN
	CgBzjz08MpOdoIoJJ7+RikhBGtmNFSw9aCz0k2sYr6Gh7FV4x6cxbiTX1SOMfKH0nUFKZ/dHZ5bHd
	pAZPsv+sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAsv-0003uZ-4Y; Thu, 30 Apr 2020 15:13:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAsl-0003tD-Oo
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 15:13:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B73B4101E;
 Thu, 30 Apr 2020 08:13:44 -0700 (PDT)
Received: from [10.37.12.139] (unknown [10.37.12.139])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4DCB23F68F;
 Thu, 30 Apr 2020 08:13:36 -0700 (PDT)
Subject: Re: [PATCH v6 10/25] arm64: cpufeature: Export symbol
 read_sanitised_ftr_reg()
To: jean-philippe@linaro.org, iommu@lists.linux-foundation.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-mm@kvack.org
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-11-jean-philippe@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <ecec4f36-041f-0068-3863-106f9a082c62@arm.com>
Date: Thu, 30 Apr 2020 16:18:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200430143424.2787566-11-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_081347_848654_5211AA07 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/30/2020 03:34 PM, Jean-Philippe Brucker wrote:
> The SMMUv3 driver would like to read the MMFR0 PARANGE field in order to
> share CPU page tables with devices. Allow the driver to be built as
> module by exporting the read_sanitized_ftr_reg() cpufeature symbol.
> 
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>

> ---
>   arch/arm64/kernel/cpufeature.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 9fac745aa7bb2..5f6adbf4ae893 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -841,6 +841,7 @@ u64 read_sanitised_ftr_reg(u32 id)
>   	BUG_ON(!regp);
>   	return regp->sys_val;
>   }
> +EXPORT_SYMBOL_GPL(read_sanitised_ftr_reg);
>   
>   #define read_sysreg_case(r)	\
>   	case r:		return read_sysreg_s(r)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
