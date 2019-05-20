Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A56423167
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CY0v0J2smstj4umGGjuEVIL1eQkH5ldzWWbzvMdU7U=; b=H2rOVI1EXsqXXj
	TdEeAXgNQAkQ9akA5vIyw4G0z+2tU/bzcY4jkF+TMpWMvB7VDu4cu5JHUomNoHdcIXsmtyUruKsrf
	JU90QisEqfiiEMAeVe0+pgUysEMZNgj5r7nUeDnVVQ1Vqm4sIiWcKcsJ/rWXa7GXN8xwewAJJt7CH
	avZjy/sEX9rysgQr/bGW6utLHJAEgN2bXcpp7oqcp+at9JPAf2v3jVkjE2PmU5D5V1vdn6q1o+HmQ
	O4AqnDGa7O8PTh/SRlGmW+cGbbhYMmn+Rbp//96aOvCTdBqOpLYj1H9BXfk5iukKstotY2S6D/BfE
	FmGlymXNceP1fp/VIEEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfdT-0005kV-6K; Mon, 20 May 2019 10:35:15 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfdK-0004WY-VI
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:35:09 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 926B8E26C95E4047DF58;
 Mon, 20 May 2019 18:34:54 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Mon, 20 May 2019
 18:34:51 +0800
Subject: Re: [PATCH] ACPI/IORT: Fix build without CONFIG_IOMMU_API
To: Christoph Hellwig <hch@lst.de>, <will.deacon@arm.com>
References: <20190520065746.17068-1-hch@lst.de>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <dc52ba2d-76d7-ebb1-7284-bdcd71f6e010@huawei.com>
Date: Mon, 20 May 2019 18:34:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190520065746.17068-1-hch@lst.de>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_033507_229758_BC2AB629 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: jean-philippe.brucker@arm.com, linux-acpi@vger.kernel.org,
 lorenzo.pieralisi@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/5/20 14:57, Christoph Hellwig wrote:
> IOMMU_FWSPEC_PCI_RC_ATS is only defined if CONFIG_IOMMU_API is
> enabled.
> 
> Fixes: 5702ee24182f ("ACPI/IORT: Check ATS capability in root complex nodes")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/acpi/arm64/iort.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index 9058cb084b91..3e542b5d2a2d 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -1074,9 +1074,10 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
>  		info.node = node;
>  		err = pci_for_each_dma_alias(to_pci_dev(dev),
>  					     iort_pci_iommu_init, &info);
> -
> +#ifdef CONFIG_IOMMU_API
>  		if (!err && iort_pci_rc_supports_ats(node))
>  			dev->iommu_fwspec->flags |= IOMMU_FWSPEC_PCI_RC_ATS;
> +#endif
>  	} else {
>  		int i = 0;

This was reported, please refer to this patch from Lorenzo:

https://patchwork.kernel.org/patch/10946845/

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
