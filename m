Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312071AD04F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 21:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a5ZfWhkj/nc/fwePVvmjZSIv5pEb0IW+0n9A3xu5HyY=; b=Z2MAZQSeGUqre0Zc6a4W91mkT
	QwMZfeCzn86wZMV23+vQK6sG9E97lQk/jMCu6tI+yVrzoAwSJBE2kxUA/A82WcrvzeQDPge0vdB5G
	sGY9KUseQpUM5WecJKQJ8UGnTwwMg1/9VFTTWKXm7QykKPPfkOMtZQx2eFv5rywoR1uj93mmXrPnM
	2VXHfYk6kl7mSbVd42G8esw2P7zyHx8jBP+8zPAvGRbzhYos04L8pBOkOSX4AXY+HD405uR5JL4vj
	/WcTXpW0XnbUGi8z9QoP49j+/1YIPnpBNllq+Gv6b5GreFXqD3NuPbCUHm9Fbh7RkYGpYaHLTMisl
	1IW7uD1fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPA9k-0006Nn-Jw; Thu, 16 Apr 2020 19:26:36 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPA9a-0006NU-NR
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 19:26:27 +0000
Received: by mail-pg1-x543.google.com with SMTP id e12so735484pgj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 12:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gEIm/a/amIudYpXaFTgOzFwljTFoVGowEhKLDfwtbSc=;
 b=rIgtAFJKoGra7EIe4/jhtS16/eFGryhXNIzTdUfJ/CFm6RydeSs+8NknPM6H4V+fz7
 j8oO5iCHl+jWZS0z0iX+pN7tKvbheyjJmbzJJx33Y1JQHxmz6Rj3TwhomyfuwbVpB/+k
 +63hryw7687z+duoE8UYV5JeTLyr1P/z+gDNs9JqaqosrwpkFUk7fRhhquyUWF44HpAI
 shkxjKR4luUFqeApTMO2DhvUwrKeENDAn5jIs6EcqBU38d8kjf4TRSZbDTzWTk8lnrDV
 VfNss3zurWUZR45GEMaVaNm8dHsVtTT+fprCaf4d1oX9J8cRNp+6xHKT9dBYqBPPXcF2
 X9Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gEIm/a/amIudYpXaFTgOzFwljTFoVGowEhKLDfwtbSc=;
 b=VqS1BFGlGBJZKEfXouCq/v4Eirz+5M/Ol7BovP6l1DC/KpRW7lQqu1yQmRAqzwo3+0
 81UeFQtreV+2qEMoXS4Mqf94BMkfilxhwmFDteW9M34tEPAZCxrVaQOcSROQlq4vKOtV
 zz5bAhgGnG5WVltiCTJCbQaKt7Sd7O4OU3POzDvCYaWpD3cnLhxqiAZPOJUyIWPI6EEo
 4gULF4x/Et5C4+HM8y0Lxse0ORcJITvMI2pxJwLlSaH21/H9rXCT+BCyVyhFu6PcdLQv
 HHqjPKOAt7jSgF9ikUBCZpJdN9UJ4bodairw3fBBBreANAGLq92b2xvqfql09xFkeki9
 uSdw==
X-Gm-Message-State: AGi0PuZdE2SoevkMw4xrYQl7RO+8doy/eRbD3xZWIXZ9sGFIPtyZ0zPA
 iDM5GiZZSb6u+Gu5uFFOO4A=
X-Google-Smtp-Source: APiQypKzMYTBGunhXRk8Oqqf4CGoHLjWjRE3fS4slXzpGdswHwt+JibGD0bT8b1zaDclGtFyzLbi1g==
X-Received: by 2002:aa7:9297:: with SMTP id j23mr5696294pfa.15.1587065186090; 
 Thu, 16 Apr 2020 12:26:26 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id h66sm16613044pgc.42.2020.04.16.12.26.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2020 12:26:25 -0700 (PDT)
Subject: Re: [PATCH 5/5] net: macb: Add WoL interrupt support for MACB type of
 Ethernet controller
To: nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 harini.katakam@xilinx.com
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
 <3c9db82da283abd7faf248985d21155a48554bdf.1587058078.git.nicolas.ferre@microchip.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <c3abc339-ccfa-6ca1-a27c-af2808d89d98@gmail.com>
Date: Thu, 16 Apr 2020 12:26:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <3c9db82da283abd7faf248985d21155a48554bdf.1587058078.git.nicolas.ferre@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_122626_766487_2AE812F1 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 sergio.prado@e-labworks.com, pthombar@cadence.com, antoine.tenart@bootlin.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/16/2020 10:44 AM, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Handle the Wake-on-Lan interrupt for the Cadence MACB Ethernet
> controller.
> As we do for the GEM version, we handle of WoL interrupt in a
> specialized interrupt handler for MACB version that is positionned
> just between suspend() and resume() calls.
> 
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
>   drivers/net/ethernet/cadence/macb_main.c | 38 +++++++++++++++++++++++-
>   1 file changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index 71e6afbdfb47..6d535e3e803c 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -1513,6 +1513,34 @@ static void macb_tx_restart(struct macb_queue *queue)
>   	macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(TSTART));
>   }
>   
> +static irqreturn_t macb_wol_interrupt(int irq, void *dev_id)
> +{
> +	struct macb_queue *queue = dev_id;
> +	struct macb *bp = queue->bp;
> +	u32 status;
> +
> +	status = queue_readl(queue, ISR);
> +
> +	if (unlikely(!status))
> +		return IRQ_NONE;
> +
> +	spin_lock(&bp->lock);
> +
> +	if (status & MACB_BIT(WOL)) {
> +		queue_writel(queue, IDR, MACB_BIT(WOL));
> +		macb_writel(bp, WOL, 0);
> +		netdev_vdbg(bp->dev, "MACB WoL: queue = %u, isr = 0x%08lx\n",
> +			    (unsigned int)(queue - bp->queues),
> +			    (unsigned long)status);
> +		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
> +			queue_writel(queue, ISR, MACB_BIT(WOL));
> +	}

Likewise, this would need a call to pm_wakeup_event() to record the 
wake-up event associated with this device.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
