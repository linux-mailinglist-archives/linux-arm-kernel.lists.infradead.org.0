Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B931E3A98
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkqKU6sSDNf0tocm9QOPEEKqM7oDjM64E8dR2gO0SFU=; b=jTfS+li8LCuC2x
	06MxTkAqg+QrgD7GXirVSMO65UWMRsuOO4Rnt1fKDFAxdMHlqlheaOJNq494ORtjDQUwJUt04A21O
	5i+VCplL8AmGEDzVZ3MSRteWP/bjnrHbKW6c9ncv8H/G/NDZozpnwJ9jMhr2WlArKzoAe5DexDDed
	h7VA2t0HWctgejMGl/GezqwNbNRVtmAN46t59flHkPCNsBcrlqbHJ6U8xsN5NTXDvVs3sIryX9evS
	9oxjlskK01ogiJCyTc70j2P2gMajkD2OKyHiojSalDz0QOrRAmiW206HjbTi90cMKZKG+ULPVT1i+
	S5OSfn947hXGUM/lCOmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqXn-0008Ut-PG; Wed, 27 May 2020 07:32:07 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqXc-0008U1-0K; Wed, 27 May 2020 07:31:57 +0000
Received: by mail-pg1-x542.google.com with SMTP id p30so11369297pgl.11;
 Wed, 27 May 2020 00:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dDm+9Z+VPJSjQt7jMvgBvDOrkZkCZvbOfUxGN5gTgvk=;
 b=S+SvSCvKaczRkh6E5rg4fK7H9JKrdv2NKFW/1Jl8phKXX0v58SP3vNScUBJJeZ1jiH
 9wLuz07hmh7lsd6yMzwVIkkkVf8ceMzdc0Yr6NBA6knAhwlR7t2dO3BIjvTCJ3OLCbD2
 eiX5wWpq6qq7lit0AHrOMDrsc9wZAA/LPJbP3dVzoWAMjMaPLScRQHGXskjrUV5c3sb7
 t/0QV6wVICKk9vPcOmHRH9xT2sdZam18hOEPpAHY8rWLzwzdQxnWPKS9L1QVix2lwmEo
 IrwgiicjTwyOegjjNIG+cM8VayUT02sRe5t6mz8WhQ577Wlpb7Kl0FtGgsbzhKr0iCcx
 MPXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dDm+9Z+VPJSjQt7jMvgBvDOrkZkCZvbOfUxGN5gTgvk=;
 b=axd8fdcbp+g7aopnVHkYdYtTx1kW0Mu2r3WOJCF7c1BUsTGv0mRU3VknlyvDADs9xS
 7Rk1/w+xNZQtYSLCHKfRM2+UYiGQMVTBvQshITRS0Xy5SJjAWcNpPadUKyOXoQgOmF0r
 UA1bantGl6y+D53nJNDDqpkXVnrpTdd5mXkYBY3TJeEHblisrrAsCbNbOnYwcZ7kv78l
 HAOCyrYXpPtpLwMZT1FtFVJPkC1NWs4Bd2G04MAhGc6w49YRsKZrqT0keqGdWAKOEM1w
 ntbXCybG7arVP/BF/yLOQjI8SO3wQcNwQOj1C57LgePGDo+hALMZMnRVsNEuROQNvhDB
 tPCw==
X-Gm-Message-State: AOAM532iJInQUnRNIc7Hh/cCcDHIcEfixeN30917axHwYLbjUJwPEIqV
 hALbK6tPkuNSuPWGytKZEYo=
X-Google-Smtp-Source: ABdhPJzvlSTCcW6WROkDcDvZLRqu96Xzc6vtJDJ3FS/a0I++olF+01zUgD6+TMAJ9TnmwyAr3yE5Dg==
X-Received: by 2002:a65:498f:: with SMTP id r15mr2697101pgs.345.1590564714992; 
 Wed, 27 May 2020 00:31:54 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id u14sm1371787pfc.87.2020.05.27.00.31.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 00:31:53 -0700 (PDT)
Date: Wed, 27 May 2020 00:31:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH v5 06/11] net: ethernet: mtk-star-emac: new driver
Message-ID: <20200527073150.GA3384158@ubuntu-s3-xlarge-x86>
References: <20200522120700.838-1-brgl@bgdev.pl>
 <20200522120700.838-7-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522120700.838-7-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_003156_055723_7354F853 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Edwin Peer <edwin.peer@broadcom.com>, devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Pedro Tsai <pedro.tsai@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 clang-built-linux@googlegroups.com,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 02:06:55PM +0200, Bartosz Golaszewski wrote:

<snip>

> diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/net/ethernet/mediatek/mtk_star_emac.c
> new file mode 100644
> index 000000000000..789c77af501f
> --- /dev/null
> +++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
> @@ -0,0 +1,1678 @@

<snip>

I've searched netdev and I cannot find any reports from others but this
function introduces a clang warning:

drivers/net/ethernet/mediatek/mtk_star_emac.c:1296:6: warning: variable 'new_dma_addr' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
        if (!new_skb) {
            ^~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1321:23: note: uninitialized use occurs here
        desc_data.dma_addr = new_dma_addr;
                             ^~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1296:2: note: remove the 'if' if its condition is always false
        if (!new_skb) {
        ^~~~~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:6: warning: variable 'new_dma_addr' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
        if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1321:23: note: uninitialized use occurs here
        desc_data.dma_addr = new_dma_addr;
                             ^~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:2: note: remove the 'if' if its condition is always false
        if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:6: warning: variable 'new_dma_addr' is used uninitialized whenever '||' condition is true [-Wsometimes-uninitialized]
        if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1321:23: note: uninitialized use occurs here
        desc_data.dma_addr = new_dma_addr;
                             ^~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:6: note: remove the '||' if its condition is always false
        if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/mediatek/mtk_star_emac.c:1274:25: note: initialize the variable 'new_dma_addr' to silence this warning
        dma_addr_t new_dma_addr;
                               ^
                                = 0
3 warnings generated.

> +static int mtk_star_receive_packet(struct mtk_star_priv *priv)
> +{
> +	struct mtk_star_ring *ring = &priv->rx_ring;
> +	struct device *dev = mtk_star_get_dev(priv);
> +	struct mtk_star_ring_desc_data desc_data;
> +	struct net_device *ndev = priv->ndev;
> +	struct sk_buff *curr_skb, *new_skb;
> +	dma_addr_t new_dma_addr;

Uninitialized here

> +	int ret;
> +
> +	spin_lock(&priv->lock);
> +	ret = mtk_star_ring_pop_tail(ring, &desc_data);
> +	spin_unlock(&priv->lock);
> +	if (ret)
> +		return -1;
> +
> +	curr_skb = desc_data.skb;
> +
> +	if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
> +	    (desc_data.flags & MTK_STAR_DESC_BIT_RX_OSIZE)) {
> +		/* Error packet -> drop and reuse skb. */
> +		new_skb = curr_skb;
> +		goto push_new_skb;

this goto

> +	}
> +
> +	/* Prepare new skb before receiving the current one. Reuse the current
> +	 * skb if we fail at any point.
> +	 */
> +	new_skb = mtk_star_alloc_skb(ndev);
> +	if (!new_skb) {
> +		ndev->stats.rx_dropped++;
> +		new_skb = curr_skb;
> +		goto push_new_skb;

and this goto

> +	}
> +
> +	new_dma_addr = mtk_star_dma_map_rx(priv, new_skb);
> +	if (dma_mapping_error(dev, new_dma_addr)) {
> +		ndev->stats.rx_dropped++;
> +		dev_kfree_skb(new_skb);
> +		new_skb = curr_skb;
> +		netdev_err(ndev, "DMA mapping error of RX descriptor\n");
> +		goto push_new_skb;
> +	}
> +
> +	/* We can't fail anymore at this point: it's safe to unmap the skb. */
> +	mtk_star_dma_unmap_rx(priv, &desc_data);
> +
> +	skb_put(desc_data.skb, desc_data.len);
> +	desc_data.skb->ip_summed = CHECKSUM_NONE;
> +	desc_data.skb->protocol = eth_type_trans(desc_data.skb, ndev);
> +	desc_data.skb->dev = ndev;
> +	netif_receive_skb(desc_data.skb);
> +
> +push_new_skb:
> +	desc_data.dma_addr = new_dma_addr;

assign it uninitialized here.

> +	desc_data.len = skb_tailroom(new_skb);
> +	desc_data.skb = new_skb;
> +
> +	spin_lock(&priv->lock);
> +	mtk_star_ring_push_head_rx(ring, &desc_data);
> +	spin_unlock(&priv->lock);
> +
> +	return 0;
> +}

I don't know if there should be a new label that excludes that
assignment for those particular gotos or if new_dma_addr should
be initialized to something at the top. Please take a look at
addressing this when you get a chance.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
