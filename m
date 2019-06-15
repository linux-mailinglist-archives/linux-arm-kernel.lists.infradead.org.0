Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CA947008
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 14:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+BTeT9ki/nlGxg2GcwzTIgd0jmvEu42zOLIAwFSL6A=; b=fyE6kDDUg1LuYI
	m7tljaoaxvMbFP+qcwWHjeoTuBBhnrQYzP7zGwgOLSHqBZIiMEdDP3mzGGwtb2O/QM4JWjK8wXVPy
	d2USuWVFTlrJA+fhqqY9Q4JkTVHRydhLC6U5IsGaGX8f4Kiqv6QxuF18iVGC7TOH4boDHywJZtud0
	Xg51y5wtlx5w0x7DKLpK+vnDxAewWPbMgdqfXjYH4f8JGUIRNUobnsHFec0bgbJuWhxN/7NKTSWN+
	tHkFsfPpjB9U8AhlQ6es3MdGX1V0ay1zfJD9hJz6D7QigXlhSso2qnSgUXMOrXgppKuhG6xS+Ni5j
	2dWiDDiVeZO9DaeW64Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc84Z-0004XN-T2; Sat, 15 Jun 2019 12:46:19 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc84R-0004Wu-3j
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 12:46:12 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1BE1DBBF7D24A9E17971;
 Sat, 15 Jun 2019 20:46:05 +0800 (CST)
Received: from [127.0.0.1] (10.133.213.239) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0;
 Sat, 15 Jun 2019 20:46:01 +0800
Subject: Re: [PATCH v2 -next] firmware: ti_sci: remove set but not used
 variable 'dev'
To: <nm@ti.com>, <t-kristo@ti.com>, <ssantosh@kernel.org>, <s-anna@ti.com>,
 <santosh.shilimkar@oracle.com>
References: <20190614154421.17556-1-yuehaibing@huawei.com>
 <20190615123823.15708-1-yuehaibing@huawei.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <74b6ab2e-09c0-a91d-6339-cb6b72eb4261@huawei.com>
Date: Sat, 15 Jun 2019 20:46:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190615123823.15708-1-yuehaibing@huawei.com>
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_054611_381938_FA484076 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Sorry, Pls ignore this, will fix the patch title

On 2019/6/15 20:38, YueHaibing wrote:
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
> Use the 'dev' variable instead of 'info->dev' to fix this.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
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
