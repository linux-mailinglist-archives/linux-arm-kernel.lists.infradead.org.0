Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2630146404
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgzFovmbmfYNYa4LbM0jaRmA2Zao0tL5Wv5s/03SpsA=; b=fLqVD79eEd+ylI
	sKMkmoop3PlQ65A1ik8XIedaTSVkH+gdA+X6Q9TETT9xicCh/w9WyeafEk/ZOcYEYHOg3qzy/uOz+
	yoEWLKvpt4C2lFdcG3UqJbDgb/G9smSJI1KCxnlWhxDkM0EOjt3GzjdgWTPRehhl8jnvMpJIriILP
	yGYtJNlLWQLAqgFVwGZFBPJ3yQTsHyXn6BH6Q4OTT/qEihiFIYN8k4vELTlDr9nA6M+5+SFmg61PX
	0ADBLcuNXA7SecNqwZ7M9D3hk76ovXdQ6whSltYkCQoQ+ks9captmY8jXyvaEPK+F+0t8dsK0GojQ
	AHeC8ZnCiZ/mNwIqw5XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbp2h-0007dp-2F; Fri, 14 Jun 2019 16:27:07 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbp2Z-0007dN-13
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:27:00 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5EGQlZT119525;
 Fri, 14 Jun 2019 11:26:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560529607;
 bh=vqmvjxwgTo3qzEabnNtuwlRFMigOUexhlp/v7GIfBK8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ls6KWUT/hNWveAtXvTmMRIWkU5o6j68AaN1MLH/a2B6dHmuTgg4R/Vb/FYzBPF5/e
 uvOvDP7e/+trQWCWYMB2HIjE4KeyZaypr9nFpu3fYemLnVVK2TCbQGxNlezv7ykOHl
 P9GOGYZt+aVRHRFtOzU8mgh5gCr2XQKuchnNln1c=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5EGQlDK081795
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Jun 2019 11:26:47 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 14
 Jun 2019 11:26:47 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 14 Jun 2019 11:26:47 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5EGQlVw037597;
 Fri, 14 Jun 2019 11:26:47 -0500
Subject: Re: [PATCH -next] firmware: ti_sci: remove set but not used variable
 'dev'
To: YueHaibing <yuehaibing@huawei.com>, <nm@ti.com>, <t-kristo@ti.com>,
 <ssantosh@kernel.org>, <santosh.shilimkar@oracle.com>
References: <20190614154421.17556-1-yuehaibing@huawei.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <1c1fad17-6efd-ceb7-8583-534e50627dbc@ti.com>
Date: Fri, 14 Jun 2019 11:26:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190614154421.17556-1-yuehaibing@huawei.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_092659_196605_7A675BDA 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On 6/14/19 10:44 AM, YueHaibing wrote:
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

Thanks for the fix.

> 
> It is never used since commit 1e407f337f40 ("firmware:
> ti_sci: Add support for processor control")

Warnings are actually introduced in commit 68608b5e5063 ("firmware:
ti_sci: Add resource management APIs for ringacc, psi-l and udma").

While this patch fixes the warnings as well, I suggest to replace the
dev_dbg/dev_err traces in these functions to use the dev variable
instead of info->dev, to be consistent with the usage in the rest of the
file.

regards
Suman

> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/firmware/ti_sci.c | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> index 86b2727..8c1a961 100644
> --- a/drivers/firmware/ti_sci.c
> +++ b/drivers/firmware/ti_sci.c
> @@ -2032,14 +2032,12 @@ static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
>  	struct ti_sci_msg_hdr *resp;
>  	struct ti_sci_xfer *xfer;
>  	struct ti_sci_info *info;
> -	struct device *dev;
>  	int ret = 0;
>  
>  	if (IS_ERR_OR_NULL(handle))
>  		return -EINVAL;
>  
>  	info = handle_to_ti_sci_info(handle);
> -	dev = info->dev;
>  
>  	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_RM_RING_CFG,
>  				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
> @@ -2101,14 +2099,12 @@ static int ti_sci_cmd_ring_get_config(const struct ti_sci_handle *handle,
>  	struct ti_sci_msg_rm_ring_get_cfg_req *req;
>  	struct ti_sci_xfer *xfer;
>  	struct ti_sci_info *info;
> -	struct device *dev;
>  	int ret = 0;
>  
>  	if (IS_ERR_OR_NULL(handle))
>  		return -EINVAL;
>  
>  	info = handle_to_ti_sci_info(handle);
> -	dev = info->dev;
>  
>  	xfer = ti_sci_get_one_xfer(info, TI_SCI_MSG_RM_RING_GET_CFG,
>  				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
> @@ -2284,14 +2280,12 @@ static int ti_sci_cmd_rm_udmap_tx_ch_cfg(const struct ti_sci_handle *handle,
>  	struct ti_sci_msg_hdr *resp;
>  	struct ti_sci_xfer *xfer;
>  	struct ti_sci_info *info;
> -	struct device *dev;
>  	int ret = 0;
>  
>  	if (IS_ERR_OR_NULL(handle))
>  		return -EINVAL;
>  
>  	info = handle_to_ti_sci_info(handle);
> -	dev = info->dev;
>  
>  	xfer = ti_sci_get_one_xfer(info, TISCI_MSG_RM_UDMAP_TX_CH_CFG,
>  				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
> @@ -2354,14 +2348,12 @@ static int ti_sci_cmd_rm_udmap_rx_ch_cfg(const struct ti_sci_handle *handle,
>  	struct ti_sci_msg_hdr *resp;
>  	struct ti_sci_xfer *xfer;
>  	struct ti_sci_info *info;
> -	struct device *dev;
>  	int ret = 0;
>  
>  	if (IS_ERR_OR_NULL(handle))
>  		return -EINVAL;
>  
>  	info = handle_to_ti_sci_info(handle);
> -	dev = info->dev;
>  
>  	xfer = ti_sci_get_one_xfer(info, TISCI_MSG_RM_UDMAP_RX_CH_CFG,
>  				   TI_SCI_FLAG_REQ_ACK_ON_PROCESSED,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
