Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF9B15320C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 14:39:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VuZBb30y94QTXA7FTliPbrDU5Kph118kQN+QMjbrNaQ=; b=oncE55kg2LGX6O
	znvNTsdYEpvmsxuMjIw+FdUAnoVfCBStWh2Zx/vuuj+nwKFlpk31RGprdRWrqmf0zKbksHsRF2+4m
	ngTP6Pfpww1/A6ZltwhEBIgGn5wZx8CtbB1Is/s+J8KKJJZN1v6MN/gbIs52TuyNGM8WOP+BW8H/D
	RhPp3Dh9TWhWJp7SRxmugatuIKgZuDDNrXVpfZ8RiXozcb6KB1YjVgwoLCXX69WOcKhWDRfxfjCFQ
	XXw63QHBohjFOVhkS/Q1Alk+MteBhdWeFJFiA0ZJrT7EfOHCWUlpdfwRpZDfSCJDiP3dO0nnT2vAx
	KmKBwYl4d3IVEvcdc6yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izKu8-0004UN-22; Wed, 05 Feb 2020 13:39:44 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izKtz-0004S7-RM
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 13:39:37 +0000
Received: from localhost (unknown [IPv6:2001:982:756:1:57a7:3bfd:5e85:defb])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id EE241158E83BF;
 Wed,  5 Feb 2020 05:39:25 -0800 (PST)
Date: Wed, 05 Feb 2020 14:39:24 +0100 (CET)
Message-Id: <20200205.143924.1875004608052019375.davem@davemloft.net>
To: boon.leong.ong@intel.com
Subject: Re: [PATCH net v4 1/6] net: stmmac: Fix incorrect location to set
 real_num_rx|tx_queues
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200205085510.32353-2-boon.leong.ong@intel.com>
References: <20200205085510.32353-1-boon.leong.ong@intel.com>
 <20200205085510.32353-2-boon.leong.ong@intel.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 05 Feb 2020 05:39:28 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_053935_896624_489857C3 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jose.Abreu@synopsys.com, Joao.Pinto@synopsys.com, alexandre.torgue@st.com,
 weifeng.voon@intel.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 arnd@arndb.de, mcoquelin.stm32@gmail.com, tee.min.tan@intel.com,
 peppe.cavallaro@st.com, alexandru.ardelean@analog.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ong Boon Leong <boon.leong.ong@intel.com>
Date: Wed,  5 Feb 2020 16:55:05 +0800

> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index 5836b21edd7e..4d9afa13eeb9 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -2657,6 +2657,10 @@ static int stmmac_hw_setup(struct net_device *dev, bool init_ptp)
>  		stmmac_enable_tbs(priv, priv->ioaddr, enable, chan);
>  	}
>  
> +	/* Configure real RX and TX queues */
> +	netif_set_real_num_rx_queues(dev, priv->plat->rx_queues_to_use);
> +	netif_set_real_num_tx_queues(dev, priv->plat->tx_queues_to_use);
> +
>  	/* Start the ball rolling... */
>  	stmmac_start_all_dma(priv);
>  

It is only safe to ignore the return values from
netif_set_real_num_{rx,tx}_queues() if you call them before the
network device is registered.  Because only in that case are these
functions guaranteed to succeed.

But now that you have moved these calls here, they can fail.

Therefore you must check the return value and unwind the state
completely upon failures.

Honestly, I think this change will have several undesirable side effects:

1) Lots of added new code complexity

2) A new failure mode when resuming the device, users will find this
   very hard to diagnose and recover from

What real value do you get from doing these calls after probe?

If you can't come up with a suitable answer to that question, you
should reconsider this change.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
