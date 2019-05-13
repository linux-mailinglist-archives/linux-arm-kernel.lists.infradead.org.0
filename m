Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203DD1B4FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3PN8+3YOsRLJYMnIQPf6PCx+avsaCOW0WW9RELmMehY=; b=uWOo9rT/rnliaFOW87L0XrvF6
	xtFMcD7WBfPiMTypTus7joT3wOwkTwazSQqc1afi4LHfN1O0PPChzCURSaUb6RdwZV5AIOCWyEvuB
	C7YEeio/cJB1YHwVSMPMY5bEVl5umvapM8nUcaT1FoqFtWgWWfprBaP1uhQ5Ly4urtM28BXd15kY8
	vA4Sn83lGwAxc7MbzlTD09KeMIKCKRsf1Y/kzCKwusvLviZXvFfoc7kIUrflRoRhRJzXPA+STuEf7
	ODtq5OA3J0Z/abaqISmDzy7bz0mADP5346oWkl1cz1cheuE9J5y5456I4bzLOE3v1aNbIdLN1dASR
	arAp6WmGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ9Cw-0002Lt-VT; Mon, 13 May 2019 11:33:26 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9Co-0002L8-0h
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:33:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id x15so6336416pln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 04:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zaltys-org.20150623.gappssmtp.com; s=20150623;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=vIAiIlRHFlvzv9k+xH8nEYUaTAu5zyVCWpRcJP2mCII=;
 b=Tot6V3up2+HWtknpsoM4dHvQa7QQqbVninOPpnopo2wzgPQUAtmIPR0dsqOARVECTG
 K97IFaLXAZx/3L6Rw9Vk12yDr0VM9rR/4+eI6mUIKZssBdcQ1E5+evvEn9o3vdaGN7uO
 ut5FnC0LFECAz1oyoCOghV1Q27MHaHqouNqZH9wX54oQHFME8GnUcXKqiMoCgscnaivW
 aN7g33w4UYFpW2BrrNaepLE2akGZYkmaboYLaXH/+YR6Q+HyIAPH6s9srT0DzeLghCg5
 zU0D/Nk8pmjUlcsXkdQe3Y+FP++WAkzz9cp0//FzG3p3GWmpUwA28cFyZoGoyvk07rVO
 BCQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=vIAiIlRHFlvzv9k+xH8nEYUaTAu5zyVCWpRcJP2mCII=;
 b=fD9PHG/MTuxoT7P93nS1oGTuiL90JWWXppV4eumXILuZ+rVhpeD8WSjiuBefbqfSel
 nl4v2yt0bOXTFCYOvoq4obS4YoMOe4D7i4ikjO0fLpg6Nt1FsnrbnADINeXnLHx/w2W7
 eDdUudEvO4ObcnO5mFsVKMdIs8bnbkOZgwqUOmCiKmBY3cynKUdgK0ALyNyKljbaBrZj
 VK68tV/uH15blQ4L2LaM3htb2vWxNZPuOBfRvDOvVK38h8+Mx4ytSu2msQpiksSvRsh2
 6oOxdgy4qF/lmvWq68eXQnCL2XZY8L8gPtf0X+0ghGFS072GCut4lscjmtjk02vDtORV
 3krg==
X-Gm-Message-State: APjAAAXb06Dw/ZzIaHmOIoqJQ0r4TTxawkymomSpDCsq3v9Kqca8RTKT
 6bPB2ctaSoDAfM1kfE+eCIu1hFqVKyOBOw==
X-Google-Smtp-Source: APXvYqwAEFg6Wul3VsCH7RrW8iX3qzuipuHAYVcRiGC6fovckro06GFeujxxW1Fd612upFEtypRy0Q==
X-Received: by 2002:a17:902:ba8e:: with SMTP id
 k14mr30192640pls.80.1557747197055; 
 Mon, 13 May 2019 04:33:17 -0700 (PDT)
Received: from [172.28.0.10] (122-59-127-127-fibre.sparkbb.co.nz.
 [122.59.127.127]) by smtp.googlemail.com with ESMTPSA id
 r124sm12699914pgr.91.2019.05.13.04.33.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 04:33:16 -0700 (PDT)
From: James Grant <jamesg@zaltys.org>
Subject: Re: [PATCH] usb: gadget: udc: lpc32xx: allocate descriptor with
 GFP_ATOMIC
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Felipe Balbi <balbi@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190510124248.2430-1-alexandre.belloni@bootlin.com>
Message-ID: <417966d0-e656-b4e6-c1ea-b53bf687a870@zaltys.org>
Date: Mon, 13 May 2019 23:33:11 +1200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510124248.2430-1-alexandre.belloni@bootlin.com>
Content-Language: en-AU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_043318_065360_9FC3E4A1 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-usb@vger.kernel.org, James Grant <james.grant@jci.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested with a board containing LPC3250 SOC and STOTG04 PHY by using 
serial gadget.

Needed patch series starting with "[PATCH 0/5] usb: gadget: udc: 
lpc32xx: add stotg04 phy support" also.

Tested-by: James Grant <jamesg@zaltys.org>

Regards,
James Grant.

On 11/05/2019 00:42, Alexandre Belloni wrote:
> Gadget drivers may queue request in interrupt context. This would lead to
> a descriptor allocation in that context. In that case we would hit
> BUG_ON(in_interrupt()) in __get_vm_area_node.
>
> Signed-off-by: Alexandre Belloni<alexandre.belloni@bootlin.com>
> ---
>   drivers/usb/gadget/udc/lpc32xx_udc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
> index d8f1c60793ed..b706d9c85a35 100644
> --- a/drivers/usb/gadget/udc/lpc32xx_udc.c
> +++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
> @@ -938,7 +938,7 @@ static struct lpc32xx_usbd_dd_gad *udc_dd_alloc(struct lpc32xx_udc *udc)
>   	struct lpc32xx_usbd_dd_gad	*dd;
>   
>   	dd = (struct lpc32xx_usbd_dd_gad *) dma_pool_alloc(
> -			udc->dd_cache, (GFP_KERNEL | GFP_DMA), &dma);
> +			udc->dd_cache, (GFP_ATOMIC | GFP_DMA), &dma);
>   	if (dd)
>   		dd->this_dma = dma;
>   

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
