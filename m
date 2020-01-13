Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1DE139405
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 15:54:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCMgIsfM/iiwi+PivhwgHf7pBVik3HE/OkDK+9n+l5s=; b=tsGfGGi2GaCndg
	YRbiQdKHd6vJa5PFXfVJ53VozdigTy2Kh/1laqFLrh/0aMzwFZRS+qxEaRgEELn/numu5dWAuDXoM
	99NeLLhEjRTHYMTYk5H0nHekg35/hC9yVVCBmQi2pQ7e4y28jjBsVtcMxp664LdcMtaIUu+pJ+v9T
	VcN2B+W1u2C887frFMJ++UKJZu0+clC/mSBxK/WfTXMzdkF0GMnx9Ql4MIJHbxATYzFUJyTyexa7A
	t4h+JZCC8c6Qd9VBGQG9H8xNCAB8UgHQnfU+EgCKYQXwBN3Cx/x0rHSx7k95P057/75faFdjSRHdR
	UQJLrM9o4YYHT1p1E5BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir16h-0000va-1k; Mon, 13 Jan 2020 14:54:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir16Y-0000uA-CZ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 14:54:12 +0000
Received: from cakuba (c-73-93-4-247.hsd1.ca.comcast.net [73.93.4.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72A4C20661;
 Mon, 13 Jan 2020 14:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578927247;
 bh=+tBhl1sLCJP/p0MoLb8K4ZlbC7vCLCmh0VyIotWkp3U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WRIzdv/Dl2lNzNKusUFmrd+8Xdbd63fCKtbgASuIZNtRMvEQOcDutfNEM0lmCBuZu
 lg0LvogSkI8beX9SKvJYbiPjfdMjyGy+9eL7me5jL6j6JdWSWFq4hzI7+rF/q5nlF8
 StJLauWncJk2m+xvT+qcvjseBPj6q6hAooY/qju8=
Date: Mon, 13 Jan 2020 06:54:06 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next v2 1/8] net: stmmac: Initial support for TBS
Message-ID: <20200113065406.54bb324b@cakuba>
In-Reply-To: <d72e539523e063a391391d447ece658524bb8d57.1578920366.git.Jose.Abreu@synopsys.com>
References: <cover.1578920366.git.Jose.Abreu@synopsys.com>
 <d72e539523e063a391391d447ece658524bb8d57.1578920366.git.Jose.Abreu@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_065410_446598_7C65656C 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Mon, 13 Jan 2020 14:02:36 +0100, Jose Abreu wrote:
> Adds the initial hooks for TBS support. This needs a 32 byte descriptor
> in order for it to work with current HW. Adds all the logic for Enhanced
> Descriptors in main core but no HW related logic for now.
> 
> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> index f98c5eefb382..dceaeb72a414 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
> @@ -42,10 +42,13 @@ struct stmmac_tx_info {
>  /* Frequently used values are kept adjacent for cache effect */
>  struct stmmac_tx_queue {
>  	u32 tx_count_frames;
> +	int tbs_avail;
> +	int tbs_en;

These could be bool or a bitfield?

>  	struct timer_list txtimer;
>  	u32 queue_index;
>  	struct stmmac_priv *priv_data;
>  	struct dma_extended_desc *dma_etx ____cacheline_aligned_in_smp;
> +	struct dma_edesc *dma_entx ____cacheline_aligned_in_smp;

Won't this create a cache line-sized hole? Is the structure member
supposed to be aligned or the data its pointing to?

>  	struct dma_desc *dma_tx;
>  	struct sk_buff **tx_skbuff;
>  	struct stmmac_tx_info *tx_skbuff_dma;

> diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
> index 0531afa9b21e..19190c609282 100644
> --- a/include/linux/stmmac.h
> +++ b/include/linux/stmmac.h
> @@ -139,6 +139,7 @@ struct stmmac_txq_cfg {
>  	u32 low_credit;
>  	bool use_prio;
>  	u32 prio;
> +	int tbs_en;

also bool?

>  };
>  
>  struct plat_stmmacenet_data {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
