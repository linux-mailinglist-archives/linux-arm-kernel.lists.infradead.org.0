Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4161394AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9O8hY1IF1dkaqmPtu/MnkddZjAgWsx6d/+QBhaC3bQ=; b=aRLVQN+R8canLl
	nm/cwKV5Q+4BYQMQbXGxmGuHXwhGCcXJGaubZyj7EkcaQZthCSAy2Og++t6iDovPYRKoOO5YSgKDB
	UC2V/RZsZEFGwwGMkAMqgVGPyypQHotl7t8KhziXjbI1twrsSoP9kh+gkUg6GtvJHHJDb2DpfdcT1
	Pqub3vUHuIMvBWdiFu3tMf4gACMIV1sQ/oZQU3fvmQ/zcjtnoug6y0Onf+cbJRZPJe3L3fPhhlLtI
	44MIsQ8W51mZtIxqY1fM1a/nEXiDbr8Vf27G84Q2UVre4fkbOtJEHyaLt9mYYAmRUC9iStirSNs2H
	yechPZIo5x1rt/XOrZSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1Vx-0008NX-9z; Mon, 13 Jan 2020 15:20:25 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1Vp-0008Me-Jb
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:20:19 +0000
Received: (wp-smtpd smtp.wp.pl 25356 invoked from network);
 13 Jan 2020 16:20:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1578928814; bh=ckiIUgf+Tu5dz5bSkyhu+9/WG8U3ri+CC3Yzi1RogcU=;
 h=From:To:Cc:Subject;
 b=NeSFLFdiaaOtnduuiNXv0m3FxynzuH3vJW9Ys2S+vbRzGA0LVmL0946RrA6kxb4KH
 +VLCkHAyV57L9+KK16iXno0hhZnd//0dphpVH4rQMsgypOHg3029TTgu6CasCN+Hs3
 jcUW6qwhui9F5L0Bn2LzwrHrTHCsdDI4zJyAPdvI=
Received: from unknown (HELO cakuba) (kubakici@wp.pl@[172.58.35.234])
 (envelope-sender <kubakici@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <Jose.Abreu@synopsys.com>; 13 Jan 2020 16:20:13 +0100
Date: Mon, 13 Jan 2020 07:19:46 -0800
From: Jakub Kicinski <kubakici@wp.pl>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next v2 6/8] net: stmmac: Add missing information in
 DebugFS capabilities file
Message-ID: <20200113071946.1dbdecd1@cakuba>
In-Reply-To: <faaa377a5518be7357f897d02eb0e35b57912093.1578920366.git.Jose.Abreu@synopsys.com>
References: <cover.1578920366.git.Jose.Abreu@synopsys.com>
 <faaa377a5518be7357f897d02eb0e35b57912093.1578920366.git.Jose.Abreu@synopsys.com>
MIME-Version: 1.0
X-WP-MailID: e9542c228b230751ee00c2b6f941528f
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [gaNR]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_072018_013365_5A36CFB3 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kubakici[at]wp.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 14:02:41 +0100, Jose Abreu wrote:
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index fcc1ffe0b11e..7c2645ee81b1 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -4341,6 +4341,10 @@ static int stmmac_dma_cap_show(struct seq_file *seq, void *v)
>  		   priv->dma_cap.number_rx_queues);
>  	seq_printf(seq, "\tNumber of Additional TX queues: %d\n",
>  		   priv->dma_cap.number_tx_queues);
> +	seq_printf(seq, "\tCurrent number of TX queues: %d\n",
> +		   priv->plat->tx_queues_to_use);
> +	seq_printf(seq, "\tCurrent number of RX queues: %d\n",
> +		   priv->plat->rx_queues_to_use);

You should probably just implement ethtool get_channels. 
nack on this part.

>  	seq_printf(seq, "\tEnhanced descriptors: %s\n",
>  		   (priv->dma_cap.enh_desc) ? "Y" : "N");
>  	seq_printf(seq, "\tTX Fifo Size: %d\n", priv->dma_cap.tx_fifo_size);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
