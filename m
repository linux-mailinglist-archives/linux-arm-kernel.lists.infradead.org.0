Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1382D5F5F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOILC/4AEctvwpKVTiAkre13dhBM8SXJsACiwr/9974=; b=mdjuu8HufV+/iH
	xSmkeOEx7L/bHjBauTigGKJGOHlFnm6Kjor/6vK3lZKVOfG/aCD9GQ1n9lgeklP7I2Jcm/uNigLXd
	eUvj3D2KSHVESpri/haNaB2OopbuKLkYvCbDf8kHVltbJxi5g0iGzw06MMNRSZxnW6hZy687SnuD4
	GI0qrug417K88jK/el40bFM89pXQFVUsCSf6lV5FRwSSlkrdyNdEDu6m0so6kilK4LVh+7YZJ5Xk+
	1eSulQaX/P+q9TROJhfHfTw3zwJ3NgCVsOgEZ5Dgy7fKyQiLXJLSHIhF6glGw0t62MSwlBOpDgMf7
	kL9LJDnpWfbIHhHDxUDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiyMC-0003JJ-9H; Thu, 04 Jul 2019 09:48:48 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyLw-0003IS-Pc
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:48:34 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3064A859FB;
 Thu,  4 Jul 2019 09:48:17 +0000 (UTC)
Received: from carbon (ovpn-200-17.brq.redhat.com [10.40.200.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3643E1001DC8;
 Thu,  4 Jul 2019 09:48:05 +0000 (UTC)
Date: Thu, 4 Jul 2019 11:48:04 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190704114804.10c38b42@carbon>
In-Reply-To: <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Thu, 04 Jul 2019 09:48:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_024832_846022_6CC5F52B 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, brouer@redhat.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  3 Jul 2019 12:37:50 +0200
Jose Abreu <Jose.Abreu@synopsys.com> wrote:

> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -1197,26 +1197,14 @@ static int stmmac_init_rx_buffers(struct stmmac_priv *priv, struct dma_desc *p,
>  				  int i, gfp_t flags, u32 queue)
>  {
>  	struct stmmac_rx_queue *rx_q = &priv->rx_queue[queue];
> -	struct sk_buff *skb;
> +	struct stmmac_rx_buffer *buf = &rx_q->buf_pool[i];
>  
> -	skb = __netdev_alloc_skb_ip_align(priv->dev, priv->dma_buf_sz, flags);
> -	if (!skb) {
> -		netdev_err(priv->dev,
> -			   "%s: Rx init fails; skb is NULL\n", __func__);
> +	buf->page = page_pool_dev_alloc_pages(rx_q->page_pool);
> +	if (!buf->page)
>  		return -ENOMEM;
> -	}
> -	rx_q->rx_skbuff[i] = skb;
> -	rx_q->rx_skbuff_dma[i] = dma_map_single(priv->device, skb->data,
> -						priv->dma_buf_sz,
> -						DMA_FROM_DEVICE);
> -	if (dma_mapping_error(priv->device, rx_q->rx_skbuff_dma[i])) {
> -		netdev_err(priv->dev, "%s: DMA mapping error\n", __func__);
> -		dev_kfree_skb_any(skb);
> -		return -EINVAL;
> -	}
> -
> -	stmmac_set_desc_addr(priv, p, rx_q->rx_skbuff_dma[i]);
>  
> +	buf->addr = buf->page->dma_addr;

We/Ilias added a wrapper/helper function for accessing dma_addr, as it
will help us later identifying users.

 page_pool_get_dma_addr(page)

> +	stmmac_set_desc_addr(priv, p, buf->addr);
>  	if (priv->dma_buf_sz == BUF_SIZE_16KiB)
>  		stmmac_init_desc3(priv, p);
>  


-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
