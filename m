Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8672FDA320
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 03:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5btcionLttlV59j1FVUUuWt2GNdy8cim3XpXb0dQwA=; b=iZisa43Ivk8XTe
	JrDrUpcPovbUiewbSL6PsGp+lSRzC6FwYk2dTfejgQnP+aoKAsqFz0ngcaVz8KYoyT/5MtkiQL0Z8
	xghZSP4xdpaU/cdROjS4wV+JB+aNQQTaHBmWha0aYLW4KPZk+wd1I394r5EnyWaJsWrbvPSrl08O/
	Uaz+sqW9d8KFDfMbVvkDt/5109CZqfWM/7BkCNgiH5z6rDA/DFgHWhHdwe/QcHm5WTWT5hd2GdLpZ
	gNjnZXjHNGUc/Lsb2G8T+KkihJmlvUUL/zgFZTFRJwsrSX7NUIp6xNqiTrq8Ou0k6amL5n3pnHz1G
	tgdkimtqXxBv1aUeA4Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKuZm-0005Ta-1y; Thu, 17 Oct 2019 01:27:38 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKuZX-0005PO-Sj; Thu, 17 Oct 2019 01:27:25 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 735A76153B773426C5B9;
 Thu, 17 Oct 2019 09:27:20 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 17 Oct 2019 09:27:17 +0800
Subject: Re: [PATCH -next 00/13] hwrng: use devm_platform_ioremap_resource()
 to simplify code
To: Florian Fainelli <f.fainelli@gmail.com>, <herbert@gondor.apana.org.au>,
 <mpm@selenic.com>, <arnd@arndb.de>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <rjui@broadcom.com>,
 <sbranden@broadcom.com>, <bcm-kernel-feedback-list@broadcom.com>,
 <eric@anholt.net>, <wahrenst@gmx.net>, <l.stelmach@samsung.com>,
 <kgene@kernel.org>, <krzk@kernel.org>, <khilman@baylibre.com>,
 <dsaxena@plexity.net>, <patrice.chotard@st.com>
References: <20191016104621.26056-1-yuehaibing@huawei.com>
 <2c60b926-1e98-cca0-ec17-6b45f9da404a@gmail.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <7c0269b6-cab3-bded-7f9d-76430be89f9c@huawei.com>
Date: Thu, 17 Oct 2019 09:27:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <2c60b926-1e98-cca0-ec17-6b45f9da404a@gmail.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_182724_095062_DDBB7608 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/17 0:44, Florian Fainelli wrote:
> On 10/16/19 3:46 AM, YueHaibing wrote:
>> devm_platform_ioremap_resource() internally have platform_get_resource()
>> and devm_ioremap_resource() in it. So instead of calling them separately
>> use devm_platform_ioremap_resource() directly.
> 
> Did your coccinelle script not cover
> drivers/char/hw_random/iproc-rng200.c somehow? Do you mind including it
> as a separate patch?

A patch from Markus Elfring has be queued:

commit a68b931932c5574aa5bd459529c766ba577c72b3
Author: Markus Elfring <elfring@users.sourceforge.net>
Date:   Wed Sep 18 09:09:22 2019 +0200

    hwrng: iproc-rng200 - Use devm_platform_ioremap_resource() in iproc_rng200_probe()

    Simplify this function implementation by using a known wrapper function.

    This issue was detected by using the Coccinelle software.

    Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
    Reviewed-by: Ray Jui <ray.jui@broadcom.com>
    Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
    Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>




> Thanks
> 
>>
>> YueHaibing (13):
>>   hwrng: atmel - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: bcm2835 - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: exynos - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: hisi - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: ks-sa - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: meson - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: npcm - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: omap - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: pasemi - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: pic32 - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: st - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: tx4939 - use devm_platform_ioremap_resource() to simplify code
>>   hwrng: xgene - use devm_platform_ioremap_resource() to simplify code
>>
>>  drivers/char/hw_random/atmel-rng.c   | 4 +---
>>  drivers/char/hw_random/bcm2835-rng.c | 5 +----
>>  drivers/char/hw_random/exynos-trng.c | 4 +---
>>  drivers/char/hw_random/hisi-rng.c    | 4 +---
>>  drivers/char/hw_random/ks-sa-rng.c   | 4 +---
>>  drivers/char/hw_random/meson-rng.c   | 4 +---
>>  drivers/char/hw_random/npcm-rng.c    | 4 +---
>>  drivers/char/hw_random/omap-rng.c    | 4 +---
>>  drivers/char/hw_random/pasemi-rng.c  | 4 +---
>>  drivers/char/hw_random/pic32-rng.c   | 4 +---
>>  drivers/char/hw_random/st-rng.c      | 4 +---
>>  drivers/char/hw_random/tx4939-rng.c  | 4 +---
>>  drivers/char/hw_random/xgene-rng.c   | 4 +---
>>  13 files changed, 13 insertions(+), 40 deletions(-)
>>
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
