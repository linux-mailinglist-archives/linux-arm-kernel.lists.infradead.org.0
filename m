Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CC017B738
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 08:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BtNM1wXfoFmpYVmqPluRTCpL5Nxt8ZfcZ8X1z4wUeQ=; b=T98Kx7i0010hAz
	i6nSQcR0d4iJT3gZOmkxyci2+HYfmanc02VXKIGFfRjqJ27SOL2HNCn2DMr2/bPut5el/YeqnRu6n
	erKkfa5cEBsTR1FAcsEwqxHzeqCtsGlmgytQ07lwiB8VVr/JlkcljurL3yH9YmaadbNz+Q7g0iThS
	osvuTmJSiPNBQo53ausZ2+Xvr0rMUlf6FWIttZMk/BfyRD6ehxC+gInCgZ89TgFUlPGiWBvGAr12M
	2rpwVXHhaPtGyrMPUWy3+hMngTzJhtQjDYFdPK6o0gF0dLBBZv6e4VNXReaqXjDNbCo7Sc5ELSpmq
	5fnyJo+wSgXU/U8NKWDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA794-00060K-Rg; Fri, 06 Mar 2020 07:11:42 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA78z-0005zi-AN
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 07:11:38 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D40F26B9D252167AE5D1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Mar 2020 15:11:30 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Fri, 6 Mar 2020
 15:11:22 +0800
Subject: Re: [PATCH] arm64: defconfig: Enable MEGARAID_SAS
To: John Garry <john.garry@huawei.com>
References: <1581331240-84551-1-git-send-email-john.garry@huawei.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5E61F79A.50709@hisilicon.com>
Date: Fri, 6 Mar 2020 15:11:22 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1581331240-84551-1-git-send-email-john.garry@huawei.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_231137_530252_33C12AC4 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

Hi John,

On 2020/2/10 18:40, John Garry wrote:
> Our new dev board (Huawei D06CS) has a MegaRAID SAS HBA as the storage
> controller, and we cannot access the HiSilicon SAS HBA, which we normally
> use; so enable the driver config option so we can boot a distro with the
> default defconfig.
> 
> Signed-off-by: John Garry <john.garry@huawei.com>

Thanks!
Applied to the hisilicon arm64 defconfig tree.

Best Regards,
Wei

> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 0f212889c931..3c2dd127d813 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -226,6 +226,7 @@ CONFIG_BLK_DEV_SD=y
>  CONFIG_SCSI_SAS_ATA=y
>  CONFIG_SCSI_HISI_SAS=y
>  CONFIG_SCSI_HISI_SAS_PCI=y
> +CONFIG_MEGARAID_SAS=y
>  CONFIG_SCSI_MPT3SAS=m
>  CONFIG_SCSI_UFSHCD=y
>  CONFIG_SCSI_UFSHCD_PLATFORM=y
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
