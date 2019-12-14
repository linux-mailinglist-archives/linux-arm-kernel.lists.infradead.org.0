Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E45A11F402
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 21:36:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+HAapdMYMQGEwEiFtX3V5B2xHSVz0VnpXWyDHtiTmU=; b=nOZnUrv8gGSwlK
	BCKdGKLx4go7szfXm7+UNgBONXh+E0DmhKksHwK7ZYvDg9YI2qz50PBDyqdtCaqE6PyNSEOLFSXxC
	TXFunmIpWEtTUZ08fdvycyPwtPGZ9OqYM0MGWt6zzBhoi6nA34km/dFuYvl+IfYslpE/nxQnFcnf+
	oaw+pIeum5fUcaEvjttolX6Kv9D7KHLkHumoDL7NjUErjofpRslEczM8QQ0VMb6ar4Zy7EcI04dQ6
	pjvCYwvvFty4aqwJwCTvdXWRk/hKD+rNlb7PsqSavipM5zsUSF8deVF8S8xjWD7AAEvnOAsyLtIJ3
	KRlk8A+p8JqxBlogSaCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igE9W-0000dB-Nt; Sat, 14 Dec 2019 20:36:38 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igE9M-0000c8-W3
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Dec 2019 20:36:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id 6so1326390pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Dec 2019 12:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=u5S8AzA/two94BW1QHz+RPP0930vQSWwKoy/1jrejMo=;
 b=lfGP0h/6gjRV3qM4YEFh2+9XY/Vn700YCuonoJZrLzUvgymJ4AwkVEjYqcRp6LBlMl
 ptZSe9eEWDPT9Af6pcwB5Rd12R0ps6Rdsue/xR4W7IWtPvk87m9rzCSv7zx66OWmUnnP
 z+6PZGJ0sQnUihfo3rijoi1qU6NsYEuNgZjWfihTdu/VKqe0oOLBGKVjw5GSBliKtM7i
 B8kAQFe6vXRShN9qPbBkACTWzJEgjbfxxzPqtB2Ahdyhg/bj+mvtc3xoousWt49dfeu3
 p30tsbDnEzZFNYY1geeh9It/aYV+mifXhi2O+iNCguBlN7RD1Z9hBxkKccDNUmUpOquF
 YeoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=u5S8AzA/two94BW1QHz+RPP0930vQSWwKoy/1jrejMo=;
 b=AIJj28L/wSrBGEasKmzcQZqHnKIQOMuXClEV1obuL1+b/oc7+XFcshMikOd4tW6JEW
 eD/nuN9RB+6KuAbfd/mdmFEWKDav0ox7q6L6zt3J8EVatxrpmBxooZlmQFYbYm55S716
 I4cP12IAcykU0vnQ8K6jlSsnannTqKiVYev5yWeekYkrMqCF+VzsG6iYMnpj/xW3lzrL
 4y/vHNErRRZZnddwhXw+WcQJ2gIPxKbooquybaD7dJnfAyLdfM7C2BF3xVgP5XShFp2x
 ZiFBwzMs3PmhmfsnbbhM4aHfJZQ17HGG23quLMaNjZIM3bmNmWUJiW82But3cwVcKCEp
 3muw==
X-Gm-Message-State: APjAAAXCqO1H5Ot/ybEubZshp5EKqMJGb/Cu9MDJD+VuYq7l1R5n21Qg
 58Qr9mhPuQGZcg+8jwYY9FB6zw==
X-Google-Smtp-Source: APXvYqyy2Uw5pYrnt7cqN32mxFB1vF+Q9fs1ZY/FlZ7maVgLk5Wicty7+Ay07UDDowWoZgWaopJlaA==
X-Received: by 2002:a62:ee06:: with SMTP id e6mr7100945pfi.45.1576355786428;
 Sat, 14 Dec 2019 12:36:26 -0800 (PST)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id j28sm15493997pgb.36.2019.12.14.12.36.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 12:36:26 -0800 (PST)
Date: Sat, 14 Dec 2019 12:36:23 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 3/4] net: stmmac: Let TX and RX interrupts be
 independently enabled/disabled
Message-ID: <20191214123623.1aeb4966@cakuba.netronome.com>
In-Reply-To: <04c000a3e0356e8bfb63e07490d8de8e081a2afe.1576007149.git.Jose.Abreu@synopsys.com>
References: <cover.1576007149.git.Jose.Abreu@synopsys.com>
 <04c000a3e0356e8bfb63e07490d8de8e081a2afe.1576007149.git.Jose.Abreu@synopsys.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_123629_173078_645625BE 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Dec 2019 20:54:43 +0100, Jose Abreu wrote:
> @@ -2278,10 +2286,14 @@ static void stmmac_tx_timer(struct timer_list *t)
>  	 * If NAPI is already running we can miss some events. Let's rearm
>  	 * the timer and try again.
>  	 */
> -	if (likely(napi_schedule_prep(&ch->tx_napi)))
> +	if (likely(napi_schedule_prep(&ch->tx_napi))) {
> +		unsigned long flags;
> +
> +		spin_lock_irqsave(&ch->lock, flags);
> +		stmmac_disable_dma_irq(priv, priv->ioaddr, ch->index, 0, 1);
> +		spin_unlock_irqrestore(&ch->lock, flags);
>  		__napi_schedule(&ch->tx_napi);
> -	else
> -		mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(10));

You should also remove the comment above the if statement if it's
really okay to no longer re-arm the timer. No?

> +	}
>  }
>  
>  /**

> @@ -3759,24 +3777,18 @@ static int stmmac_napi_poll_tx(struct napi_struct *napi, int budget)
>  	struct stmmac_channel *ch =
>  		container_of(napi, struct stmmac_channel, tx_napi);
>  	struct stmmac_priv *priv = ch->priv_data;
> -	struct stmmac_tx_queue *tx_q;
>  	u32 chan = ch->index;
>  	int work_done;
>  
>  	priv->xstats.napi_poll++;
>  
> -	work_done = stmmac_tx_clean(priv, DMA_TX_SIZE, chan);
> -	work_done = min(work_done, budget);
> -
> -	if (work_done < budget)
> -		napi_complete_done(napi, work_done);
> +	work_done = stmmac_tx_clean(priv, budget, chan);
> +	if (work_done < budget && napi_complete_done(napi, work_done)) {

Not really related to this patch, but this looks a little suspicious. 
I think the TX completions should all be processed regardless of the
budget. The budget is for RX.

> +		unsigned long flags;
>  
> -	/* Force transmission restart */
> -	tx_q = &priv->tx_queue[chan];
> -	if (tx_q->cur_tx != tx_q->dirty_tx) {
> -		stmmac_enable_dma_transmission(priv, priv->ioaddr);
> -		stmmac_set_tx_tail_ptr(priv, priv->ioaddr, tx_q->tx_tail_addr,
> -				       chan);
> +		spin_lock_irqsave(&ch->lock, flags);
> +		stmmac_enable_dma_irq(priv, priv->ioaddr, chan, 0, 1);
> +		spin_unlock_irqrestore(&ch->lock, flags);
>  	}
>  
>  	return work_done;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
