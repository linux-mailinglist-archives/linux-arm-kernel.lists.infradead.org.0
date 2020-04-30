Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4A01BF5E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 12:53:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVNVqelXfm4taDDl3dSLyw0di8twwac2b2uIUMVuvbw=; b=Qo/BrfWV0OwlIb
	TN1LgEtbRXFFARaWMUkuxo4aO9QB1EXiBObDAEtajvZFgAIAuY5tcchSfOo/niskkH6TXtHtHhV7z
	BTRhQQTNaDHz83DPI55ttBiAgqhw7WOf70YXNNE8OPchgw9rszOcyNF+4lDy55cUBY2ixYQTNgBhO
	VtMCfgD4w1/zA+vLAB28zodDwLdEVmq24G64w8zu0akWSh5bnlyXUXZCQC8c1KEE9/Uy8BcDWO0Fc
	/NkpqTuXoGFrllCw2ymPzLsKfcQdUl9on0MzzQpOXWls1A3UyOtAyi21EUBSHhGFBY8QZrbs6+vDC
	3pl1ucqOWi5cN/4Vq0qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU6p7-0000Ws-J8; Thu, 30 Apr 2020 10:53:45 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU6ov-0000VU-8M
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 10:53:34 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 03UAqvDf025142
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 30 Apr 2020 05:53:01 -0500
Message-ID: <9b5fbaf29adccc5abb66c3d39ecc92a2d5f10d10.camel@kernel.crashing.org>
Subject: Re: [PATCH v0 linux master] i2c/busses: Avoid i2c interrupt status
 clear race condition.
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: ryan_chen <ryan_chen@aspeedtech.com>, Brendan Higgins
 <brendanhiggins@google.com>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery
 <andrew@aj.id.au>, linux-i2c@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Date: Thu, 30 Apr 2020 20:52:56 +1000
In-Reply-To: <20200429033737.2781-1-ryan_chen@aspeedtech.com>
References: <20200429033737.2781-1-ryan_chen@aspeedtech.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_035333_485734_DD468618 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-04-29 at 11:37 +0800, ryan_chen wrote:
> In AST2600 there have a slow peripheral bus between CPU
>  and i2c controller.
> Therefore GIC i2c interrupt status clear have delay timing,
> when CPU issue write clear i2c controller interrupt status.
> To avoid this issue, the driver need have read after write
>  clear at i2c ISR.
> 
> Signed-off-by: ryan_chen <ryan_chen@aspeedtech.com>

Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
--


> ---
>  drivers/i2c/busses/i2c-aspeed.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-aspeed.c
> b/drivers/i2c/busses/i2c-aspeed.c
> index 07c1993274c5..f51702d86a90 100644
> --- a/drivers/i2c/busses/i2c-aspeed.c
> +++ b/drivers/i2c/busses/i2c-aspeed.c
> @@ -603,6 +603,7 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq,
> void *dev_id)
>  	/* Ack all interrupts except for Rx done */
>  	writel(irq_received & ~ASPEED_I2CD_INTR_RX_DONE,
>  	       bus->base + ASPEED_I2C_INTR_STS_REG);
> +	readl(bus->base + ASPEED_I2C_INTR_STS_REG);
>  	irq_remaining = irq_received;
>  
>  #if IS_ENABLED(CONFIG_I2C_SLAVE)
> @@ -645,9 +646,11 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq,
> void *dev_id)
>  			irq_received, irq_handled);
>  
>  	/* Ack Rx done */
> -	if (irq_received & ASPEED_I2CD_INTR_RX_DONE)
> +	if (irq_received & ASPEED_I2CD_INTR_RX_DONE) {
>  		writel(ASPEED_I2CD_INTR_RX_DONE,
>  		       bus->base + ASPEED_I2C_INTR_STS_REG);
> +		readl(bus->base + ASPEED_I2C_INTR_STS_REG);
> +	}
>  	spin_unlock(&bus->lock);
>  	return irq_remaining ? IRQ_NONE : IRQ_HANDLED;
>  }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
