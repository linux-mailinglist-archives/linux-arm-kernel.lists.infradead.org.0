Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA10119237
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:37:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGVzGNhgHmehugwTo+k4FJHn34/X0J6uvGL3Et/ApDY=; b=kVWjrVWnq50R63
	pDIBCC3y5kzOch0YB5yHD14H5iB3luU8nxXi3iJF34MLfMzJ9E5GooRkxt2ENTciWU5dkkCt6IoCV
	VkaiySj4PiG3hkudZWuWdf2vZewF75Kqt2oh2vthkFZ+w7+T/hXHDhWP1xGfri87P9AJ4sESPk8vW
	XDpOLvPxAZT/diO6IdAR8j+fUqvJfZyqsHasRqXH/iSULHZc2nZUcJ1o/fcKNULRsWYav+Ja/pyGK
	PAbzNzyhMFOVcScYyPe0xE052RUBst4/tXdUkuJC9iJeyXxAyK4iSXBHHcfnaYTcO1PZBSheyuPom
	NyOt9kBuIJUK1wqPcvUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemGB-0004zK-Rh; Tue, 10 Dec 2019 20:37:31 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemG0-0004yy-BE
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:37:22 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 3FF1320066;
 Tue, 10 Dec 2019 21:37:18 +0100 (CET)
Date: Tue, 10 Dec 2019 21:37:16 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 3/5] mfd: atmel-hlcdc: return in case of error
Message-ID: <20191210203716.GC24756@ravnborg.org>
References: <1575984287-26787-1-git-send-email-claudiu.beznea@microchip.com>
 <1575984287-26787-4-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575984287-26787-4-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=XYAwZIGsAAAA:8
 a=kaM4bpze9TPPYBSW8_oA:9 a=CjuIK1q_8ugA:10 a=E8ToXWR_bxluHZ7gmE-Z:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_123720_570032_E2424120 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, bbrezillon@kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, daniel@ffwll.ch, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Claudiu.

On Tue, Dec 10, 2019 at 03:24:45PM +0200, Claudiu Beznea wrote:
> For HLCDC timing engine configurations bit ATMEL_HLCDC_SIP of
> ATMEL_HLCDC_SR needs to checked if it is equal with zero before applying
> new configuration to timing engine. In case of timeout there is no
> indicator about this, so, return with error in case of timeout in
> regmap_atmel_hlcdc_reg_write() and also print a message about this.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  drivers/mfd/atmel-hlcdc.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mfd/atmel-hlcdc.c b/drivers/mfd/atmel-hlcdc.c
> index 64013c57a920..19f1dbeb8bcd 100644
> --- a/drivers/mfd/atmel-hlcdc.c
> +++ b/drivers/mfd/atmel-hlcdc.c
> @@ -39,10 +39,16 @@ static int regmap_atmel_hlcdc_reg_write(void *context, unsigned int reg,
>  
>  	if (reg <= ATMEL_HLCDC_DIS) {
>  		u32 status;
> -
> -		readl_poll_timeout_atomic(hregmap->regs + ATMEL_HLCDC_SR,
> -					  status, !(status & ATMEL_HLCDC_SIP),
> -					  1, 100);
> +		int ret;
> +
> +		ret = readl_poll_timeout_atomic(hregmap->regs + ATMEL_HLCDC_SR,
> +						status,
> +						!(status & ATMEL_HLCDC_SIP),
> +						1, 100);
> +		if (ret) {
> +			pr_err("Timeout waiting for ATMEL_HLCDC_SIP\n");
> +			return ret;
Consider adding device * to atmel_hlcdc_regmap - so you can use
dev_err() here. This makes it obvious what device this comes from.

	Sam

> +		}
>  	}
>  
>  	writel(val, hregmap->regs + reg);
> -- 
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
