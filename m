Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4037650276
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 08:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DehRuH4nufJtgdh5Eq3j/i6UyYu8dddikEz9GppG9OM=; b=AdsOzrQiPKU3hz
	3CNMT6ijeZ4l1zEoIyrFDTbkxmeOKccNL8mNn51WisE2cgXEREa39rmTTj4DP8sDFXdZnU/XjKbH4
	ZyMn0/av5dm/JH0Z9K8sHxSZD5n5Qpy91xhUlXiB7yri5DEev/hnIfVuoNRCRi0v12APj2Mtcv5Pc
	Ova+JVdofyNGDdaglh7OsyfoiEa1BLL6ettDf/68W67WH8NsxnfO1/5VeJwZTuOIIBmTtnRsdqQpr
	y/lvSQrhnL8Q1jeH1KE/tBJCsiWGMYn6NmWWhn3SiqS45xDzeFtU9lrTtwC4PmUTOaBzER28Gn9nb
	DHdMgzpklgOAKpeiF9Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfIeT-00016V-E0; Mon, 24 Jun 2019 06:40:29 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfIeF-00015w-U5
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 06:40:18 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id EEAB5476A3D528FE57DF;
 Mon, 24 Jun 2019 14:40:08 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Mon, 24 Jun 2019
 14:40:06 +0800
Subject: Re: [RFC PATCH] acpi/arm64: ignore 5.1 FADTs that are reported as 5.0
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <fe0a8132-27bb-13d5-1753-873fc7bca636@huawei.com>
Date: Mon, 24 Jun 2019 14:39:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_234017_186096_F98D8E2D 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 leif.lindholm@linaro.org, linux-acpi@vger.kernel.org, lee.jones@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/6/19 20:18, Ard Biesheuvel wrote:
> Some Qualcomm Snapdragon based laptops built to run Microsoft Windows
> are clearly ACPI 5.1 based, given that that is the first ACPI revision
> that supports ARM, and introduced the FADT 'arm_boot_flags' field,
> which has a non-zero field on those systems.
> 
> So in these cases, infer from the ARM boot flags that the FADT must be
> 5.1 or later, and treat it as 5.1.
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  arch/arm64/kernel/acpi.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
> index 803f0494dd3e..7722e85fb69c 100644
> --- a/arch/arm64/kernel/acpi.c
> +++ b/arch/arm64/kernel/acpi.c
> @@ -155,10 +155,14 @@ static int __init acpi_fadt_sanity_check(void)
>  	 */
>  	if (table->revision < 5 ||
>  	   (table->revision == 5 && fadt->minor_revision < 1)) {
> -		pr_err("Unsupported FADT revision %d.%d, should be 5.1+\n",
> +		pr_err(FW_BUG "Unsupported FADT revision %d.%d, should be 5.1+\n",
>  		       table->revision, fadt->minor_revision);
> -		ret = -EINVAL;
> -		goto out;
> +
> +		if (!fadt->arm_boot_flags) {
> +			ret = -EINVAL;
> +			goto out;
> +		}
> +		pr_err("FADT has ARM boot flags set, assuming 5.1\n");

Obviously it's a firmware bug, but should be harmless,

Acked-by: Hanjun Guo <guohanjun@huawei.com>

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
