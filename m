Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05A2FC07E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 08:06:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gi40KUZNZnrRZbJBQYVoF9WHrPjJWqJutfK6+Q/P4/s=; b=GYcS/TtC8KBAzr
	zJnyy4cdnvPGejxjWIBcv0vQUopdPUptU6sM/ujhJty/ibAoqJwI+VNiqI2TTpvTYxyUwLPt59Jl6
	VGPd3mwlyKHg/yt2gC3IKhrhHkb+M2kkhgDIYXuhGFpRu8Y4ZGcWsUGV8NcseTtXTJpI0+WhVOsJy
	/IypXMCipEm7ZMiEtD7e8ZJQr12xWBD8/24kZdUU83nd2wWmxdnzzWhfeUvzPjDmcraFBs0trLYIq
	130c8UpcO6750wKthfiw5Xbsec3oHGS9yr975pWAMtNQXNc5sr2sW1OaM+WhON92ueollUhC9kVtq
	ENzC5r2LD4q9tEqsh0uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9Cc-0007nX-Hn; Thu, 14 Nov 2019 07:06:02 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9CV-0007mq-6s
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 07:05:56 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5dccfc990000>; Wed, 13 Nov 2019 23:04:57 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 13 Nov 2019 23:05:53 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 13 Nov 2019 23:05:53 -0800
Received: from [10.26.11.169] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 14 Nov
 2019 07:05:49 +0000
Subject: Re: [PATCH 4/4] i2c: tegra: Use dma_request_chan() directly for
 channel request
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <ludovic.desroches@microchip.com>, 
 <agross@kernel.org>, <wsa+renesas@sang-engineering.com>,
 <ldewangan@nvidia.com>
References: <20191113092235.30440-1-peter.ujfalusi@ti.com>
 <20191113092235.30440-5-peter.ujfalusi@ti.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <f30dcd10-69ea-3bf7-99b2-8d12fc5e4cc0@nvidia.com>
Date: Thu, 14 Nov 2019 07:05:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191113092235.30440-5-peter.ujfalusi@ti.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1573715097; bh=O6KZFyLZuFHEE0pSxKeMDrvyD0ZoQtkJ/GCRvWgCOI8=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Kop+Xy25OEwejkOYPUki5yFu/wE3V2TRZSLTdL9ZwBNiV74MidPTkwLngo6wP9OCt
 yINidW4LI0EIzHazIA08czYJYDjhLA6I82mHJD5y8zmYXVLpqvjxLOtkgKC8cH8jbh
 eb599Q8qMFPUPEdrWRwE5+53ME9JMqOMbkVDczWPEbhk6iVEyCCFCIZRitDOrMJzVI
 Lzmeh3Klywnr9XqW8+97lw3+N3Hp8nPsuScAoG3LaV9ZlOJJOm4DeDbeSCsHt1mtcu
 U1eh954ISYvcs+bJYm2UUDLlY5ERYT3ogitpvhf581kvp47BzVY0oL7Je/lzr5K1on
 PWn34Qx06XZDA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_230555_260173_5E4578C8 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, vkoul@kernel.org, thierry.reding@gmail.com,
 linux-i2c@vger.kernel.org, linux-tegra@vger.kernel.org, digetx@gmail.com,
 bjorn.andersson@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 13/11/2019 09:22, Peter Ujfalusi wrote:
> dma_request_slave_channel_reason() is:
> #define dma_request_slave_channel_reason(dev, name) \
> 	dma_request_chan(dev, name)
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  drivers/i2c/busses/i2c-tegra.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-tegra.c b/drivers/i2c/busses/i2c-tegra.c
> index c1683f9338b4..a98bf31d0e5c 100644
> --- a/drivers/i2c/busses/i2c-tegra.c
> +++ b/drivers/i2c/busses/i2c-tegra.c
> @@ -413,7 +413,7 @@ static int tegra_i2c_init_dma(struct tegra_i2c_dev *i2c_dev)
>  		return 0;
>  	}
>  
> -	chan = dma_request_slave_channel_reason(i2c_dev->dev, "rx");
> +	chan = dma_request_chan(i2c_dev->dev, "rx");
>  	if (IS_ERR(chan)) {
>  		err = PTR_ERR(chan);
>  		goto err_out;
> @@ -421,7 +421,7 @@ static int tegra_i2c_init_dma(struct tegra_i2c_dev *i2c_dev)
>  
>  	i2c_dev->rx_dma_chan = chan;
>  
> -	chan = dma_request_slave_channel_reason(i2c_dev->dev, "tx");
> +	chan = dma_request_chan(i2c_dev->dev, "tx");
>  	if (IS_ERR(chan)) {
>  		err = PTR_ERR(chan);
>  		goto err_out;
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
