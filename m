Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B68F81AD04C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 21:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Ou6lxxv+XUQxw7IjqCyj07jJS7mtMXRV87xyFWtFr0=; b=QdQSHMMUK5C8cjJyiN7C7Worh
	8GgN8dfg/rkTfgLMugatN2Rbo3neqbRwmVoRrlMNHC7uoJjiEcIusb0hUq3DxjojAfFrUsXhi6ovc
	PqQETfqbyXo3BKt+yYK/uOYXejIttWgyXZ3s6eniqGKXC65TJuTxRnFZsN7OHT34yQP02PPjAUlkv
	jj0K2C6z4mjJPaJjRxe8ktPVJmw7oDIvo9Lrn/1qFh4EwHy3CtnOswa3Unkpi799ormkczt9mYZuu
	W4mJM9rga6xlOfSwVOuHFBZN8LiCXSbd6ZzhnhUc+Z19FOLfD+BWL3+nJmY8fvPkMoCS2/xPxJ6G9
	2wTe0ketQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPA8n-00065p-0h; Thu, 16 Apr 2020 19:25:37 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPA8d-00065H-L9
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 19:25:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id w65so2095979pfc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 12:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gNOpmFkdJM5lK0kvLGKRDTe65pEdwYduioppFrEiEAE=;
 b=Gp8FtEBFGrZFmDlA8bU7KYFpceLvV6VY7Z3+9oFxYQMJuFCYGqUiMQQzsElPI5ijCf
 1q97+ASefxiE+RlVnh1NO7VZF+5/Yf4vRG+yvVqHToSGL4H3bHHDrG3sU3mjOyvczHTm
 /MhZcmRov8Rr5jvIwHcrD9y+g1fOv0gNId+UBOJBacZzDQGTv4Od0iGLfV83B/jZz1yT
 iKGMgiSnRvY+jeuQEYAvqS9wNFPj/ZiPyBaJZxh9Wyv9jegzrF1CpwebVg/pb0vsOCor
 9HlU0lEXk3mqgMOXnZYNWxMhZpxtJBds5A1AJP5yrO7KrITFmZpQsX02Gs0MdLTD8rML
 p1dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gNOpmFkdJM5lK0kvLGKRDTe65pEdwYduioppFrEiEAE=;
 b=ho8HHlwywma7ajYgz+TAYfH7bE8JP9jb1F5ZyT43IGAHvn38QX/Ibis7Nk2wEdC5ut
 D6NvwggMmK5w+MW0CCIMsDpBaviuCaS+XHv+hZPcEPWC6sM9TnyziK049zIs9y0OceIA
 gDKbZmtH83f3cdlcLZe0C10sVCavURtoInQaB8ydwnekepPSPBUHkdSqo9htM7B6rhyl
 Nd52KPWNlI3Y5ZyiYWKwNaYp6LR54Rl8zYR937ADeh11GhX91mijRSAbiP2uoYeYl7IE
 FHUHSPseoNY9s7Woi5wKmtr+uB0kOXpNa9v1lK311q7j07xW6Ie1rtpBIkGfijNdCW48
 ZKCg==
X-Gm-Message-State: AGi0PuZe21ogF8LbrNvjFBfY2dMEL0WpGtWOok7Ota7AIw3VuhDuNIuV
 B4DpGJQtJ+pcSHKuJNq/oyE=
X-Google-Smtp-Source: APiQypLUAIx8sl4AiWezY2GN+IdXUA5NuQf47pUCuULAbjSQvR0MlWJupKfeqmv3Ibm7RHkOd3eztQ==
X-Received: by 2002:a63:6f45:: with SMTP id k66mr34179713pgc.246.1587065126838; 
 Thu, 16 Apr 2020 12:25:26 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o125sm15959886pgo.74.2020.04.16.12.25.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Apr 2020 12:25:26 -0700 (PDT)
Subject: Re: [PATCH 4/5] net: macb: WoL support for GEM type of Ethernet
 controller
To: nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 harini.katakam@xilinx.com
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
 <56bb7a742093cec160c4465c808778a14b2607e7.1587058078.git.nicolas.ferre@microchip.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <6fc99e01-6d64-4248-3627-aa14a914df72@gmail.com>
Date: Thu, 16 Apr 2020 12:25:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <56bb7a742093cec160c4465c808778a14b2607e7.1587058078.git.nicolas.ferre@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_122527_719439_46A76964 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
> Adapt the Wake-on-Lan feature to the Cadence GEM Ethernet controller.
> This controller has different register layout and cannot be handled by
> previous code.
> We disable completely interrupts on all the queues but the queue 0.
> Handling of WoL interrupt is done in another interrupt handler
> positioned depending on the controller version used, just between
> suspend() and resume() calls.
> It allows to lower pressure on the generic interrupt hot path by
> removing the need to handle 2 tests for each IRQ: the first figuring out
> the controller revision, the second for actually knowing if the WoL bit
> is set.
> 
> Queue management in suspend()/resume() functions inspired from RFC patch
> by Harini Katakam <harinik@xilinx.com>, thanks!
> 
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---

[snip]

>   
> +static irqreturn_t gem_wol_interrupt(int irq, void *dev_id)
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
> +	if (status & GEM_BIT(WOL)) {
> +		queue_writel(queue, IDR, GEM_BIT(WOL));
> +		gem_writel(bp, WOL, 0);
> +		netdev_vdbg(bp->dev, "GEM WoL: queue = %u, isr = 0x%08lx\n",
> +			    (unsigned int)(queue - bp->queues),
> +			    (unsigned long)status);
> +		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
> +			queue_writel(queue, ISR, GEM_BIT(WOL));

You would also need a pm_wakeup_event() call here to record that this 
device did wake-up the system.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
