Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C511B2E35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 19:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BbJnrDfmJXwG6Iq+Q9M7AVYgfXXJkUfoawLmPspRy7Y=; b=RhUQ+KBHI12+mcsqyM+4dtbpu
	Pxz4mEGWvsibEIaQbXSSrTTxL5hcjTLSLtxNerUcnxthhrVdW4ULY3rQ5KIkoh4KgYHzywYfgOnzW
	YyLvBSSkyrPZ1HdpYJpq256hmzhEpG06IXE/+zVVa85jU6HEF4W4TGZnN0tn1b57lwWufqotc259W
	eZFHUZL96UWsiXQ8UdPmy7kWKuBDAZCMukov5Dw174dkmBzOSqW70niLPP2mS59rW1dVkq9j/Z/ju
	4WDrAQ2oSgLCukYuJIEIIpYPgAD75323qICNpYmYC/5F2LwQ+/fZHh6iud+pEikwEibBbvH+66xtX
	IRpymFK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwaQ-00023W-3x; Tue, 21 Apr 2020 17:21:30 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwaG-00022f-9s
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 17:21:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id p8so7062011pgi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 10:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ugtg5hHpJFG35qHHQCnbS1MFWmfROkCZGRcRHzPASYg=;
 b=sS5qUOfbkv48i8UKD7QbuYoz6NO+vv9wkELxwAJNYaaOFnRNYBrlUwNjqqBxAtawwA
 YbRUyrffYN1I5K5cEg8/h7z2cXlMx7mD5xjMsKQ5oJwhR3gbl8/QxSEMMj+6iNLlcOmS
 6bKSCqcAgi7QciaGB+uRCBUnSMQwAlSIjdfbOq3iqWxwQnEfCOke72xy5YBlzG0qK7sI
 O/6Nr2nrAsBs5IFMONeB5zzVr680L5JLuSUXf/umCgpNP3HZFqiBDACXlQ/1q1ON8jnA
 hiFHbOsz5gJK9d+mgC71tEgcnKt0ZFZGK3xKExFvI2EHHt4oEGjS3jqEzUFnZrUkULgB
 YL6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ugtg5hHpJFG35qHHQCnbS1MFWmfROkCZGRcRHzPASYg=;
 b=B9b+4KsAzhwB1qwA7Jei1hD3La080DhFswhhIcut54t3pHpNszG+KjE8B9aJxd2B1f
 X4osLk444P5cHE3au2I/XlartWahs/bBqc1vFHBFgzUjoyKvlsd8F/ifCJ6svXiNRyA6
 iJ0OurjBiLL4Y7Yyb9HVBYgU8k0Sz26bawMlRMlKwzH6Z+PkzaES/1O2vJWqXVeDtsEX
 HErNEQncDoMJ/MRYk9Q0S0OFIOoLX/4hK6nZlgDjMXZSrlTJs1kzzVlawDxfrYsyoPqa
 8I1afhUr/gPuYGSxR5t6q7gmw77akK5ZhBPbLYUaC/yGh6v55X9LgGVrr9+OGl9IIEq6
 NP5A==
X-Gm-Message-State: AGi0PuZyNUgZf/Xqy6xXe7qkHB8VL6ztOiWflpEkVHJdhb7kiDPIg8c9
 zYoR+QMnfOXL5c+Vp+U507E=
X-Google-Smtp-Source: APiQypJ93iOmcQRIEJQVE+px4eeCYWBzb9IOA+IXbz+Gzs3J+soATOjbpmk8tT2rvNN53eTJEfwUbg==
X-Received: by 2002:a63:d454:: with SMTP id i20mr22228409pgj.209.1587489679728; 
 Tue, 21 Apr 2020 10:21:19 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 23sm2871247pjb.11.2020.04.21.10.21.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 10:21:18 -0700 (PDT)
Subject: Re: [PATCH v2 5/7] net: macb: fix call to pm_runtime in the
 suspend/resume functions
To: nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 harini.katakam@xilinx.com
References: <cover.1587463802.git.nicolas.ferre@microchip.com>
 <1c537d1287aaf57b8b20a923686dbb551e1727f0.1587463802.git.nicolas.ferre@microchip.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <1bd761fc-5eeb-bef5-5a6b-86d67fed3a7f@gmail.com>
Date: Tue, 21 Apr 2020 10:21:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1c537d1287aaf57b8b20a923686dbb551e1727f0.1587463802.git.nicolas.ferre@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_102120_347230_D510AE8D 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 sergio.prado@e-labworks.com, antoine.tenart@bootlin.com,
 michal.simek@xilinx.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/21/2020 3:41 AM, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> The calls to pm_runtime_force_suspend/resume() functions are only
> relevant if the device is not configured to act as a WoL wakeup source.
> Add the device_may_wakeup() test before calling them.
> 
> Fixes: 3e2a5e153906 ("net: macb: add wake-on-lan support via magic packet")
> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
> Cc: Harini Katakam <harini.katakam@xilinx.com>
> Cc: Sergio Prado <sergio.prado@e-labworks.com>
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
> Changes in v2:
> - new in v2 serries
> 
>   drivers/net/ethernet/cadence/macb_main.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index 72b8983a763a..8cf8e21fbb07 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -4564,7 +4564,8 @@ static int __maybe_unused macb_suspend(struct device *dev)
>   
>   	if (bp->ptp_info)
>   		bp->ptp_info->ptp_remove(netdev);
> -	pm_runtime_force_suspend(dev);
> +	if (!(device_may_wakeup(dev)))
> +		pm_runtime_force_suspend(dev);

Only if you need to respin, the parenthesis around device_may_wakeup() 
are not required:

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
