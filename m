Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B338E98FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 10:14:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qaLLse7gn8Tku02nkPJhEcQnlmdmHPyCi/f0ZqIc9o8=; b=KIFJLpaQU3FBRaVw41JH7Fr/T
	v3qYvmuGt9CMXANCWVGzUJbhTDeXfqE6oup8DmheqN4maF6fumCADxpcMzmCn9Vo/y0Fh99TBv1E0
	04W5c+2admolV7HjhI/xJeoA9YyGyROtwltjhURQHcFzizOih9F7iMPj0rKDgt5L2QBjCBHUIS6J+
	9EjDT8lyaTjnKmIdur2UfQjFBTYLXS2tpdT0HKFbLXFJBjADaruMWdyIMc0LNb24EAlJAv2Pn40YY
	bTOGaa3OO/mogJ0AMeud34aEYcic9ytJj/v4BzPCuTWoppcBNOGkPSgf63ApHXmtT72Vb2dz4jQdK
	bjuq+Pp9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPk3S-0001ye-LH; Wed, 30 Oct 2019 09:14:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPk3D-0001xY-KC
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 09:14:04 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4086F3DCF0BA4CEC2F34
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 17:13:57 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Wed, 30 Oct 2019
 17:13:46 +0800
Subject: Re: [PATCH] arm64: defconfig: Enable HiSilicon ZIP controller
To: Zhou Wang <wangzhou1@hisilicon.com>, <xuwei5@huawei.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <1569553085-40383-1-git-send-email-wangzhou1@hisilicon.com>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5DB9544A.3060102@hisilicon.com>
Date: Wed, 30 Oct 2019 17:13:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1569553085-40383-1-git-send-email-wangzhou1@hisilicon.com>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_021403_811487_84F22493 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linuxarm@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/9/27 10:58, Zhou Wang wrote:
> Enable CONFIG_CRYPTO_DEV_HISI_ZIP for HiSilicon ZIP controller in Kunpeng920
> SoC.
>
> Signed-off-by: Zhou Wang <wangzhou1@hisilicon.com>

Thanks!
Applied to the hisilicon arm64 defconfig tree.

Best Regards,
Wei

> ---
>   arch/arm64/configs/defconfig | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 8e05c39..2e55f66 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -848,6 +848,7 @@ CONFIG_NLS_ISO8859_1=y
>   CONFIG_SECURITY=y
>   CONFIG_CRYPTO_ECHAINIV=y
>   CONFIG_CRYPTO_ANSI_CPRNG=y
> +CONFIG_CRYPTO_DEV_HISI_ZIP=m
>   CONFIG_DMA_CMA=y
>   CONFIG_CMA_SIZE_MBYTES=32
>   CONFIG_PRINTK_TIME=y



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
