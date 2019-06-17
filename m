Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6D048C57
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 20:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrBGXr9ZIeWNJH+asJMwoovK2vxi8e7FZOXg7PSQdN4=; b=N2s2VwbbJUJ/EB
	Bo0SbjU5iTlUBp4+QDnNfYEWukRaUL2KV1/dtosVTQd8TXikFv0d19VXvHCGbPqJW7/yL5urfJDPx
	NV60uWN2bhoIB65zkDVFMFMn+4iv32oWtURakgDFC64XGD1VJ1cMtXAXMkCEZwoFXE8D5eFDJ3OPL
	5zPUk5ByoSx+y/vuTN7m3/NVFbUJ6HBco76Zjvti4/urwinuQ3miQ45+7VirJuv6BjV0Xll/gtkEJ
	fO7l6weRnaQmLegurfc4j9yCgZsUJYnEUd1Q3O5vh3mumMNn5jrPeEwiOaSY5Cxcb369Bv5NRshFO
	FPQAPvn7ENX0FVfFDczw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcwZt-0003HA-7Y; Mon, 17 Jun 2019 18:42:01 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcwZh-0003Gg-0W
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 18:41:50 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HIff7a085314;
 Mon, 17 Jun 2019 13:41:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560796901;
 bh=B3vkuFEUJ6Y+O0/Ge2hah5BykSfysAS/GfgDfsj6bMM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=EDdKCmHTCHn9AKkRwgMVrf6ak3sB0ko3yysHGWqzNslmzDwDnj2TJzkzWSoMstDHJ
 9ronLXuw8GrxcdYsZhuEvLFzd5R9Idzm+INtWI+XiWMnt2SUHLyicvfKdxEHVQF6XQ
 SCOHMV5NGt126+VXoxFxQd1dKuj0r6k2rAs77jY8=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HIffow065358
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 13:41:41 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 13:41:40 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 13:41:40 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HIfeus104041;
 Mon, 17 Jun 2019 13:41:40 -0500
Subject: Re: [PATCH v3 -next] firmware: ti_sci: Fix gcc
 unused-but-set-variable warning
To: YueHaibing <yuehaibing@huawei.com>, <nm@ti.com>, <t-kristo@ti.com>,
 <ssantosh@kernel.org>, <santosh.shilimkar@oracle.com>
References: <20190614154421.17556-1-yuehaibing@huawei.com>
 <20190615125054.16416-1-yuehaibing@huawei.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <e13fe9fa-4a79-8af5-6968-dfc9364a3c55@ti.com>
Date: Mon, 17 Jun 2019 13:41:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190615125054.16416-1-yuehaibing@huawei.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_114149_165226_F09F18EB 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/15/19 7:50 AM, YueHaibing wrote:
> Fixes gcc '-Wunused-but-set-variable' warning:
> 
> drivers/firmware/ti_sci.c: In function ti_sci_cmd_ring_config:
> drivers/firmware/ti_sci.c:2035:17: warning: variable dev set but not used [-Wunused-but-set-variable]
> drivers/firmware/ti_sci.c: In function ti_sci_cmd_ring_get_config:
> drivers/firmware/ti_sci.c:2104:17: warning: variable dev set but not used [-Wunused-but-set-variable]
> drivers/firmware/ti_sci.c: In function ti_sci_cmd_rm_udmap_tx_ch_cfg:
> drivers/firmware/ti_sci.c:2287:17: warning: variable dev set but not used [-Wunused-but-set-variable]
> drivers/firmware/ti_sci.c: In function ti_sci_cmd_rm_udmap_rx_ch_cfg:
> drivers/firmware/ti_sci.c:2357:17: warning: variable dev set but not used [-Wunused-but-set-variable]
> 
> Use the 'dev' variable instead of info->dev to fix this.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Suman Anna <s-anna@ti.com>

Hi Santosh,
Can you pick up this patch, goes on top of your for_5.3/driver-soc branch?

regards
Suman

> ---
> v3: fix patch title
> v2: use the 'dev' variable as Suman Anna's suggestion
> ---
>  drivers/firmware/ti_sci.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> index 86b2727..c8da6e2 100644
> --- a/drivers/firmware/ti_sci.c
> +++ b/drivers/firmware/ti_sci.c
> @@ -2046,7 +2046,7 @@ static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
>  				   sizeof(*req), sizeof(*resp));
>  	if (IS_ERR(xfer)) {
>  		ret = PTR_ERR(xfer);
> -		dev_err(info->dev, "RM_RA:Message config failed(%d)\n", ret);
> +		dev_err(dev, "RM_RA:Message config failed(%d)\n", ret);
>  		return ret;
>  	}
>  	req = (struct ti_sci_msg_rm_ring_cfg_req *)xfer->xfer_buf;
> @@ -2062,7 +2062,7 @@ static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
>  
>  	ret = ti_sci_do_xfer(info, xfer);
>  	if (ret) {
> -		dev_err(info->dev, "RM_RA:Mbox config send fail %d\n", ret);
> +		dev_err(dev, "RM_RA:Mbox config send fail %d\n", ret);
>  		goto fail;
>  	}
>  
> @@ -2071,7 +2071,7 @@ static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
>  
>  fail:
>  	ti_sci_put_one_xfer(&info->minfo, xfer);
> -	dev_dbg(info->dev, "RM_RA:config ring %u ret:%d\n", index, ret);
> +	dev_dbg(dev, "RM_RA:config ring %u ret:%d\n", index, ret);
>  	return ret;
>  }
>  
> @@ -2115,7 +2115,7 @@ static int ti_sci_cmd_ring_get_config(const struct ti_sci_handle *handle,
>  				   sizeof(*req), sizeof(*resp));
>  	if (IS_ERR(xfer)) {
>  		ret = PTR_ERR(xfer);
> -		dev_err(info->dev,
> +		dev_err(dev,
>  			"RM_RA:Message get config failed(%d)\n", ret);
>  		return ret;
>  	}
> @@ -2125,7 +2125,7 @@ static int ti_sci_cmd_ring_get_config(const struct ti_sci_handle *handle,
>  
>  	ret = ti_sci_do_xfer(info, xfer);
>  	if (ret) {
> -		dev_err(info->dev, "RM_RA:Mbox get config send fail %d\n", ret);
> +		dev_err(dev, "RM_RA:Mbox get config send fail %d\n", ret);
>  		goto fail;
>  	}
>  
> @@ -2150,7 +2150,7 @@ static int ti_sci_cmd_ring_get_config(const struct ti_sci_handle *handle,
>  
>  fail:
>  	ti_sci_put_one_xfer(&info->minfo, xfer);
> -	dev_dbg(info->dev, "RM_RA:get config ring %u ret:%d\n", index, ret);
> +	dev_dbg(dev, "RM_RA:get config ring %u ret:%d\n", index, ret);
>  	return ret;
>  }
>  
> @@ -2298,7 +2298,7 @@ static int ti_sci_cmd_rm_udmap_tx_ch_cfg(const struct ti_sci_handle *handle,
>  				   sizeof(*req), sizeof(*resp));
>  	if (IS_ERR(xfer)) {
>  		ret = PTR_ERR(xfer);
> -		dev_err(info->dev, "Message TX_CH_CFG alloc failed(%d)\n", ret);
> +		dev_err(dev, "Message TX_CH_CFG alloc failed(%d)\n", ret);
>  		return ret;
>  	}
>  	req = (struct ti_sci_msg_rm_udmap_tx_ch_cfg_req *)xfer->xfer_buf;
> @@ -2323,7 +2323,7 @@ static int ti_sci_cmd_rm_udmap_tx_ch_cfg(const struct ti_sci_handle *handle,
>  
>  	ret = ti_sci_do_xfer(info, xfer);
>  	if (ret) {
> -		dev_err(info->dev, "Mbox send TX_CH_CFG fail %d\n", ret);
> +		dev_err(dev, "Mbox send TX_CH_CFG fail %d\n", ret);
>  		goto fail;
>  	}
>  
> @@ -2332,7 +2332,7 @@ static int ti_sci_cmd_rm_udmap_tx_ch_cfg(const struct ti_sci_handle *handle,
>  
>  fail:
>  	ti_sci_put_one_xfer(&info->minfo, xfer);
> -	dev_dbg(info->dev, "TX_CH_CFG: chn %u ret:%u\n", params->index, ret);
> +	dev_dbg(dev, "TX_CH_CFG: chn %u ret:%u\n", params->index, ret);
>  	return ret;
>  }
>  
> @@ -2368,7 +2368,7 @@ static int ti_sci_cmd_rm_udmap_rx_ch_cfg(const struct ti_sci_handle *handle,
>  				   sizeof(*req), sizeof(*resp));
>  	if (IS_ERR(xfer)) {
>  		ret = PTR_ERR(xfer);
> -		dev_err(info->dev, "Message RX_CH_CFG alloc failed(%d)\n", ret);
> +		dev_err(dev, "Message RX_CH_CFG alloc failed(%d)\n", ret);
>  		return ret;
>  	}
>  	req = (struct ti_sci_msg_rm_udmap_rx_ch_cfg_req *)xfer->xfer_buf;
> @@ -2392,7 +2392,7 @@ static int ti_sci_cmd_rm_udmap_rx_ch_cfg(const struct ti_sci_handle *handle,
>  
>  	ret = ti_sci_do_xfer(info, xfer);
>  	if (ret) {
> -		dev_err(info->dev, "Mbox send RX_CH_CFG fail %d\n", ret);
> +		dev_err(dev, "Mbox send RX_CH_CFG fail %d\n", ret);
>  		goto fail;
>  	}
>  
> @@ -2401,7 +2401,7 @@ static int ti_sci_cmd_rm_udmap_rx_ch_cfg(const struct ti_sci_handle *handle,
>  
>  fail:
>  	ti_sci_put_one_xfer(&info->minfo, xfer);
> -	dev_dbg(info->dev, "RX_CH_CFG: chn %u ret:%d\n", params->index, ret);
> +	dev_dbg(dev, "RX_CH_CFG: chn %u ret:%d\n", params->index, ret);
>  	return ret;
>  }
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
