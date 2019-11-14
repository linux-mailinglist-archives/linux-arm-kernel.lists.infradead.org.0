Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A947FC085
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 08:06:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmzujJ9yx1S8TytR8fZkgRWP4j2O4hU8tg0+v1JPHOI=; b=hAarLLWI17vnLI
	+rCMlM8OwP5Le1uHzvnz8+5t1XXbHcdC+Srei92haRmNCsBYT0bQ9vkVeTzobMLdCsxKkMekKJsTt
	lsfQp7OAUYHNDVlwILPRAzR7qTo2E6Pgjj6ZeZ/3eeMTSB4+Edn9C+9HTIfGGc39m1v8UCXmopVTy
	g4HNFPeqY1JeD9riyDVfJy+m2WZm4PxOVyaol1MUAcRU3ILKoffKfT71YmKPFwf20JBRmURbxL1J2
	gDS80I2Zm1DJAsfvjP83pcrvgT4jW3bN0qOUCpGKVUrRkmCbGAKeNAdpNXlX2cHLJvx+2m+5aFzjG
	UoNp4U6rvQUh+1ca8gXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9D6-00082R-LN; Thu, 14 Nov 2019 07:06:32 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9Cv-00081m-SF
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 07:06:23 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5dccfceb0000>; Wed, 13 Nov 2019 23:06:19 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 13 Nov 2019 23:06:20 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 13 Nov 2019 23:06:20 -0800
Received: from [10.26.11.169] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 14 Nov
 2019 07:06:16 +0000
Subject: Re: [PATCH 8/9] spi: tegra114: Use dma_request_chan() directly for
 channel request
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <broonie@kernel.org>,
 <radu_nicolae.pirea@upb.ro>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>, 
 <linus.walleij@linaro.org>, <agross@kernel.org>,
 <bjorn.andersson@linaro.org>, <andi@etezian.org>, <ldewangan@nvidia.com>,
 <thierry.reding@gmail.com>
References: <20191113094256.1108-1-peter.ujfalusi@ti.com>
 <20191113094256.1108-9-peter.ujfalusi@ti.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <4ae959a4-a765-9c3b-4e61-53b7a830709a@nvidia.com>
Date: Thu, 14 Nov 2019 07:06:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113094256.1108-9-peter.ujfalusi@ti.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1573715179; bh=O3S9WaOKKI8E/ud37EWOPglhG3Icsp9xJ8jj8/OQi1E=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=cb9TCc3Z7tKrnDFsXLJQYsm9tpJ8Z7S6An5gWt1EPn+WMz/lRb5TqUYweDM8CsVAc
 WQWR81o+eDbZDTi+bEAQWKu/PLzmFUfYlR1TS5h+DeOrA3Ni6RZjbONLtRHtkXN9aA
 erJCNYCV7Nj8peQCCUXatzYGKlR5VEuhFaQRb47QfcgaXPHaFGG4qos6ZSJ/LAB3W8
 IvOIDzH+LxOUwLIbApTzcJtwJOfUUEEhoT4x/cdcm9jnfYzKlKC7QblMRwY6Q3RLRF
 SlQ7P76dBSG0g4kMU2Z5hpve9mspAATyMOoJ4CQAfAuxO7PT3Ia0ohTbTXvbqR0lIY
 ShbyGc4bVB9Zg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_230621_920386_9DC9AFB3 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, linux-spi@vger.kernel.org,
 vkoul@kernel.org, kgene@kernel.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 13/11/2019 09:42, Peter Ujfalusi wrote:
> dma_request_slave_channel_reason() is:
> #define dma_request_slave_channel_reason(dev, name) \
> 	dma_request_chan(dev, name)
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  drivers/spi/spi-tegra114.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/spi/spi-tegra114.c b/drivers/spi/spi-tegra114.c
> index e6a450d9b4f0..fc40ab146c86 100644
> --- a/drivers/spi/spi-tegra114.c
> +++ b/drivers/spi/spi-tegra114.c
> @@ -666,8 +666,7 @@ static int tegra_spi_init_dma_param(struct tegra_spi_data *tspi,
>  	dma_addr_t dma_phys;
>  	int ret;
>  
> -	dma_chan = dma_request_slave_channel_reason(tspi->dev,
> -					dma_to_memory ? "rx" : "tx");
> +	dma_chan = dma_request_chan(tspi->dev, dma_to_memory ? "rx" : "tx");
>  	if (IS_ERR(dma_chan)) {
>  		ret = PTR_ERR(dma_chan);
>  		if (ret != -EPROBE_DEFER)
> 

Acked-by: Jon Hunter <jonathanh@nvidia.com>

Cheers!
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
