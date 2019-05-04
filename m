Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEB6139B5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 14:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6md7pDwrFaxslBLo/YwupXDcdU13Hf6N7LbZnVX6Tk=; b=dfAnDkXw+yJN7C
	C82rIlDdpXY8FgaGBXB/3BIzCs/W7FIbyqcCIl69FD5k9CWO/H3EW9HA7XYXazeqFuB/0z8mnBMty
	hliCOiPkkAZIB0wm27m8sKn+LfCVbWoqIrtzY2TDO26TJRz+ZgLIt71djOEvG7/SBVTDRH0omLnbJ
	836TVPJtQfI5/wdO0D29yti9JUVPLIVULNewjb0jUyRTIOhuXH+ujUceG+sMSXe98l++s9xhVne70
	bHJgmIATYNK1VJL9cc4OdJH5eJRxHinpMDja06mN5n9VDnsm9oFCf98elMB8xPwWs7HWkNWNqDq9d
	MT1O5Wno7Lc9Iv+ia9+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMtcI-0002Xa-Pg; Sat, 04 May 2019 12:18:10 +0000
Received: from mleia.com ([178.79.152.223] helo=mail.mleia.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMtcC-0002X2-PX
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 12:18:06 +0000
Received: from mail.mleia.com (localhost [127.0.0.1])
 by mail.mleia.com (Postfix) with ESMTP id 5F5AD46792C;
 Sat,  4 May 2019 13:17:58 +0100 (BST)
Subject: Re: [PATCH -next] usb: gadget: udc: lpc32xx: fix return value check
 in lpc32xx_udc_probe()
To: Wei Yongjun <weiyongjun1@huawei.com>, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <20190504070407.56915-1-weiyongjun1@huawei.com>
From: Vladimir Zapolskiy <vz@mleia.com>
Message-ID: <5a3a89cf-eee3-136c-1c5a-58024e946a24@mleia.com>
Date: Sat, 4 May 2019 15:17:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190504070407.56915-1-weiyongjun1@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20190504_131758_411217_35442B8F 
X-CRM114-Status: GOOD (  18.24  )
/bin/ln: failed to access
 'reaver_cache/texts/20190504_131758_411217_35442B8F': No such file or
 directory
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_131758_411217_35442B8F 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-usb@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wei Yongjun,

On 05/04/2019 10:04 AM, Wei Yongjun wrote:
> In case of error, the function devm_ioremap_resource() returns ERR_PTR()
> and never returns NULL. The NULL test in the return value check should
> be replaced with IS_ERR().
> 
> This issue was detected by using the Coccinelle software.
> 
> Fixes: 408b56ca5c8e ("usb: gadget: udc: lpc32xx: simplify probe")
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/usb/gadget/udc/lpc32xx_udc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
> index d8f1c60793ed..00fb79c6d025 100644
> --- a/drivers/usb/gadget/udc/lpc32xx_udc.c
> +++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
> @@ -3070,9 +3070,9 @@ static int lpc32xx_udc_probe(struct platform_device *pdev)
>  	}
>  
>  	udc->udp_baseaddr = devm_ioremap_resource(dev, res);
> -	if (!udc->udp_baseaddr) {
> +	if (IS_ERR(udc->udp_baseaddr)) {
>  		dev_err(udc->dev, "IO map failure\n");
> -		return -ENOMEM;
> +		return PTR_ERR(udc->udp_baseaddr);
>  	}
>  
>  	/* Get USB device clock */

thank you for the change, it is a correct fix.

I do suppose that dev_err() in the context can be evenly removed, but
likely it should be another change.

Acked-by: Vladimir Zapolskiy <vz@mleia.com>

--
Best wishes,
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
