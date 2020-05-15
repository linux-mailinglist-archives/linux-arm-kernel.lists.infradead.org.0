Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706021D46DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLikiu/ouDPnsf7/M9rYoWemaRO0I4sGYQvqzMzb4vs=; b=L7K7+jNWDVK37Y
	M+omtFCuROVImWO5I/bNKgu+mbzReyfDrCBEPRnDyKMD9Ychk3AfkT3sN1b6ZBtE2Zs8L6uNcXo+h
	tE0Ze3QCK5UhLYoVWaqJFxD7sgpTUTC4oEPcPyDQf2aHbdMnq5IkDCX9aZXAGaKv8FQnFrInQxl9a
	mElY4QHbhYuzhxOOZos5ec5/B55DonDOWQPjVKyy8Kaxo2KzVsQVZqR32KqydKb9HemB0rCUbcLcl
	JbvVqiGghhD1hjS082jqil5aiVVJ5TVUb7BXZlRtqZNS95F1wgr0fnEdVGEDb91ooPcABetZlHf3c
	9B66WZ425ic1btcsEt2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUXg-0002Za-9v; Fri, 15 May 2020 07:14:00 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUXW-0002YX-FS
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:13:51 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id CE3EB8994716F134F4FC;
 Fri, 15 May 2020 15:13:47 +0800 (CST)
Received: from [10.57.101.250] (10.57.101.250) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Fri, 15 May 2020 15:13:38 +0800
Subject: Re: [PATCH] arm64: defconfig: Enable UACCE/PCI PASID/SEC2/HPRE configs
To: Zhou Wang <wangzhou1@hisilicon.com>, <xuwei5@huawei.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <1588989918-53184-1-git-send-email-wangzhou1@hisilicon.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5EBE4121.5040409@hisilicon.com>
Date: Fri, 15 May 2020 15:13:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1588989918-53184-1-git-send-email-wangzhou1@hisilicon.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_001350_695768_3D63DF95 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linuxarm@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zhou,

On 2020/5/9 10:05, Zhou Wang wrote:
> Enable configs for UACCE, PCI PASID, HiSilicon SEC2 and HPRE drivers.
> 
> Signed-off-by: Zhou Wang <wangzhou1@hisilicon.com>
> ---
>  arch/arm64/configs/defconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 24e534d..b6edf59 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -188,6 +188,7 @@ CONFIG_NET_9P_VIRTIO=y
>  CONFIG_PCI=y
>  CONFIG_PCIEPORTBUS=y
>  CONFIG_PCI_IOV=y
> +CONFIG_PCI_PASID=y
>  CONFIG_HOTPLUG_PCI=y
>  CONFIG_HOTPLUG_PCI_ACPI=y
>  CONFIG_PCI_AARDVARK=y
> @@ -241,6 +242,7 @@ CONFIG_BLK_DEV_NVME=m
>  CONFIG_SRAM=y
>  CONFIG_EEPROM_AT24=m
>  CONFIG_EEPROM_AT25=m
> +CONFIG_UACCE=m
>  # CONFIG_SCSI_PROC_FS is not set
>  CONFIG_BLK_DEV_SD=y
>  CONFIG_SCSI_SAS_ATA=y
> @@ -968,6 +970,8 @@ CONFIG_CRYPTO_DEV_FSL_CAAM=m
>  CONFIG_CRYPTO_DEV_FSL_DPAA2_CAAM=m
>  CONFIG_CRYPTO_DEV_QCOM_RNG=m
>  CONFIG_CRYPTO_DEV_CCREE=m
> +CONFIG_CRYPTO_DEV_HISI_SEC2=m
> +CONFIG_CRYPTO_DEV_HISI_HPRE=m
>  CONFIG_CRYPTO_DEV_HISI_ZIP=m
>  CONFIG_CMA_SIZE_MBYTES=32
>  CONFIG_PRINTK_TIME=y
> 

Thanks!
Applied to the hisilicon arm64 defconfig tree by swapping the order
between CONFIG_CRYPTO_DEV_HISI_HPRE and CONFIG_CRYPTO_DEV_HISI_ZIP
according the menuconfig.

Best Regards,
Wei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
