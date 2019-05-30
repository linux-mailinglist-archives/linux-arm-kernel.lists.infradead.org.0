Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDFF2F03D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 06:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOhUbKM/LRc7OtTkeqwk/chvAej/bwocywlT7AUHK+w=; b=mp1w2h1iGk+rz+
	5n08FglwWBfDI/3oXZkNysn6/WN9lLBfv/YVSRd/nwM7C+rYJMPcBoHk9ovdsObCPOaTJ+jq8+HtI
	EgaSrauVbiGxt8HNDV5uIAVx5P9rio7mYeahkQJc8JSImKZc0v1TY+kW/4wXNaK3jvW6R7cIo8SFU
	TM1wVuFSWE4rkg0E6YxRqtsSBbN7v7HUlMTOc0L7P8H3GE7fWlwZLcN/IEsPlc9lbjs9ZNJsmxyl6
	T8IFFlOKR/nkloMb9t/xgxJK889QOSslUxxFMvQyqPxTRMnYIM56xbJYPnT2HhFgfFpo3AgVqUWRf
	OlcdstvzNhRTLUoKyEaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWCGp-00051b-7s; Thu, 30 May 2019 04:02:27 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWCGg-00050C-Jv
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 04:02:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id DAB2C21FA7;
 Thu, 30 May 2019 00:02:10 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Thu, 30 May 2019 00:02:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=qyIi9G9ln+NMQWurPQHYWug6XmoD14N
 6qzo4ZOFsaOY=; b=Bqih8YLnL2VC2g+8JAzRNlikdAjAGB7W19vPi3fcYrRVV7e
 o/CrIuGMifez0eB8jpJNdT/3Ft6BTkjteYu/PwkWi01a8DKDkcxN1P3pn6oMKBFs
 QRvzEDSWFKBrsCoa3SRTzrFKDibbndeWhntyz4zOaSlwIpq0ectk3a025ay5jSQT
 IXXQO64v5jlt5iGoKPVKlIiiOZ4lbqqrmriyFTSQ0U+UvHVVzQFcBX0oatx8djiK
 aiFoiK4XTJ0+WlhzIQIWgdlROF+y+cWorvXm6ky2NC8EEBB24O/kx6NDl1ihPd3n
 1LqP34eLwfFJJKdtc2FrWTctonW4g1OYa3kQ7Sg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=qyIi9G
 9ln+NMQWurPQHYWug6XmoD14N6qzo4ZOFsaOY=; b=LZC8KP36MjQNGAwMOKxclA
 pMXHy4rTEv/bM4O19IlKlhkg9CFwS42Cx2e4A5D0hbprPIJbPeWhiNmWO5Otx2s/
 aqemrxMMLW0cIC0iI+fsUjAEiacuz7Wm6SxDcUGaZZxjqYYObOHR7ziyUESY3io5
 H1RMZP6OGTEjHBJLIF1gQ4q78rAzWB50aXrpJTDcqn+FWmmlGpUk3eszmyrvUlSA
 xrpmD1q12nFIBQ8Fs6ZEt26rRxykBm0jnLLTmUJkvwaatyjkMX2BcDcycnU17kam
 tTR+n0YwzNrDn+6ejRMleun6pKTb6oOosyUqte84SY+tThZ1MghWLd1mVFYJvp6w
 ==
X-ME-Sender: <xms:wVXvXLxY60qWGyq1NkgwT9ZIUo-I84eI-TfgQ3hHyPRM5wXt2YSXTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddruddvkedgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:wVXvXLFrjku1qhknIzEIpz4qiDiCkouHHrUfCykEWlCaNsp_vmcZKw>
 <xmx:wVXvXAt51U9RjzmNfIFa_u7Y_fZHKFovUOxOk4pE4HNwTbv88Jlykg>
 <xmx:wVXvXPXDjBNLjDSJDw3ZueJ9r8XapTg_fk_y9387Y9eiOVhV8gyJQQ>
 <xmx:wlXvXA0uNKJw6-La1QmRmdQMkjtYDAyVdfVWexWCs1Ko-T3eNXa3TA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 33313E00A1; Thu, 30 May 2019 00:02:09 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-555-g49357e1-fmstable-20190528v2
Mime-Version: 1.0
Message-Id: <fe36fbac-e29c-4210-9af2-defca62e9c2a@www.fastmail.com>
In-Reply-To: <20190529172103.1130525-1-vijaykhemka@fb.com>
References: <20190529172103.1130525-1-vijaykhemka@fb.com>
Date: Thu, 30 May 2019 13:32:08 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Vijay Khemka" <vijaykhemka@fb.com>, "Joel Stanley" <joel@jms.id.au>,
 "Patrick Venture" <venture@google.com>, "Olof Johansson" <olof@lixom.net>,
 "Arnd Bergmann" <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] soc: aspeed: lpc-ctrl: make parameter optional
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_210218_976771_F2CCEB58 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sai Dasari <sdasari@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 30 May 2019, at 02:51, Vijay Khemka wrote:
> Makiing

Typo here, but I'd prefer to see this patch go in, so

> memory-region and flash as optional parameter in device
> tree if user needs to use these parameter through ioctl then
> need to define in devicetree.
> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  drivers/soc/aspeed/aspeed-lpc-ctrl.c | 58 +++++++++++++++++-----------
>  1 file changed, 36 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/soc/aspeed/aspeed-lpc-ctrl.c 
> b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
> index a024f8042259..aca13779764a 100644
> --- a/drivers/soc/aspeed/aspeed-lpc-ctrl.c
> +++ b/drivers/soc/aspeed/aspeed-lpc-ctrl.c
> @@ -68,6 +68,7 @@ static long aspeed_lpc_ctrl_ioctl(struct file *file, 
> unsigned int cmd,
>  		unsigned long param)
>  {
>  	struct aspeed_lpc_ctrl *lpc_ctrl = file_aspeed_lpc_ctrl(file);
> +	struct device *dev = file->private_data;
>  	void __user *p = (void __user *)param;
>  	struct aspeed_lpc_ctrl_mapping map;
>  	u32 addr;
> @@ -90,6 +91,12 @@ static long aspeed_lpc_ctrl_ioctl(struct file *file, 
> unsigned int cmd,
>  		if (map.window_id != 0)
>  			return -EINVAL;
>  
> +		/* If memory-region is not described in device tree */
> +		if (!lpc_ctrl->mem_size) {
> +			dev_dbg(dev, "Didn't find reserved memory\n");
> +			return -ENXIO;
> +		}
> +
>  		map.size = lpc_ctrl->mem_size;
>  
>  		return copy_to_user(p, &map, sizeof(map)) ? -EFAULT : 0;
> @@ -126,9 +133,18 @@ static long aspeed_lpc_ctrl_ioctl(struct file 
> *file, unsigned int cmd,
>  			return -EINVAL;
>  
>  		if (map.window_type == ASPEED_LPC_CTRL_WINDOW_FLASH) {
> +			if (!lpc_ctrl->pnor_size) {
> +				dev_dbg(dev, "Didn't find host pnor flash\n");
> +				return -ENXIO;
> +			}
>  			addr = lpc_ctrl->pnor_base;
>  			size = lpc_ctrl->pnor_size;
>  		} else if (map.window_type == ASPEED_LPC_CTRL_WINDOW_MEMORY) {
> +			/* If memory-region is not described in device tree */
> +			if (!lpc_ctrl->mem_size) {
> +				dev_dbg(dev, "Didn't find reserved memory\n");
> +				return -ENXIO;
> +			}
>  			addr = lpc_ctrl->mem_base;
>  			size = lpc_ctrl->mem_size;
>  		} else {
> @@ -196,17 +212,17 @@ static int aspeed_lpc_ctrl_probe(struct 
> platform_device *pdev)
>  	if (!lpc_ctrl)
>  		return -ENOMEM;
>  
> +	/* If flash is described in device tree then store */
>  	node = of_parse_phandle(dev->of_node, "flash", 0);
>  	if (!node) {
> -		dev_err(dev, "Didn't find host pnor flash node\n");
> -		return -ENODEV;
> -	}
> -
> -	rc = of_address_to_resource(node, 1, &resm);
> -	of_node_put(node);
> -	if (rc) {
> -		dev_err(dev, "Couldn't address to resource for flash\n");
> -		return rc;
> +		dev_dbg(dev, "Didn't find host pnor flash node\n");
> +	} else {
> +		rc = of_address_to_resource(node, 1, &resm);
> +		of_node_put(node);
> +		if (rc) {
> +			dev_err(dev, "Couldn't address to resource for flash\n");
> +			return rc;
> +		}
>  	}
>  
>  	lpc_ctrl->pnor_size = resource_size(&resm);
> @@ -214,22 +230,22 @@ static int aspeed_lpc_ctrl_probe(struct 
> platform_device *pdev)
>  
>  	dev_set_drvdata(&pdev->dev, lpc_ctrl);
>  
> +	/* If memory-region is described in device tree then store */
>  	node = of_parse_phandle(dev->of_node, "memory-region", 0);
>  	if (!node) {
> -		dev_err(dev, "Didn't find reserved memory\n");
> -		return -EINVAL;
> -	}
> +		dev_dbg(dev, "Didn't find reserved memory\n");
> +	} else {
> +		rc = of_address_to_resource(node, 0, &resm);
> +		of_node_put(node);
> +		if (rc) {
> +			dev_err(dev, "Couldn't address to resource for reserved memory\n");
> +			return -ENXIO;
> +		}
>  
> -	rc = of_address_to_resource(node, 0, &resm);
> -	of_node_put(node);
> -	if (rc) {
> -		dev_err(dev, "Couldn't address to resource for reserved memory\n");
> -		return -ENOMEM;
> +		lpc_ctrl->mem_size = resource_size(&resm);
> +		lpc_ctrl->mem_base = resm.start;
>  	}
>  
> -	lpc_ctrl->mem_size = resource_size(&resm);
> -	lpc_ctrl->mem_base = resm.start;
> -
>  	lpc_ctrl->regmap = syscon_node_to_regmap(
>  			pdev->dev.parent->of_node);
>  	if (IS_ERR(lpc_ctrl->regmap)) {
> @@ -258,8 +274,6 @@ static int aspeed_lpc_ctrl_probe(struct 
> platform_device *pdev)
>  		goto err;
>  	}
>  
> -	dev_info(dev, "Loaded at %pr\n", &resm);
> -
>  	return 0;
>  
>  err:
> -- 
> 2.17.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
