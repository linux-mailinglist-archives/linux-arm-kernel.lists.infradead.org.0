Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD42E1C5F32
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTFd/VlP8TXUCFKuYijmtocRgc94rkkUT9u5t5+fdik=; b=fDiZX1TeMBMo8c
	f+gQcF9CidUtl7JtuIOvpQVMHmU+Q8cfn9YCmV6Cy0bFWZmhq8W/j8YxqBQCZpbRXMp+qT7r+Ajxh
	Rx3pe177P+OnouPSbAxHeswXooHcp1xE6L8yx3zxNnfR88FgK3ZljyvR/euaykB04OpLBO8inMDlV
	5gF3uelZnB9ddZ5xHLz9OZzrVdpQ328uql16jJjunRdXYy6gEBuRW7vS2p9mi/c/DERTQJ5fV77Ia
	cLrJymq8Ae8cBIZ5YbPxltGmEFqoB+b1JZj5Qa0jSjVb8XEiHbM9Ul/w7n1K2nIxqS8sHrxgHr5a5
	f0YeydUPoLtELL1fVxwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1fL-0007Wj-KP; Tue, 05 May 2020 17:47:35 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1f9-0007UK-3P; Tue, 05 May 2020 17:47:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+R73Z4jVWXCfBPkWr/ITaVNISegdk9AM0hchGPNJ8Sc=; b=qQ2MvF5uTgTfl+Fohrz1RdJXhA
 jbKJkUtbz4bOmvpVN6BZvX4xrqBf8368xqyVXN9pj3mu5y6CHTKEBzV8hYeZQXFyuM0lhfILWQiWn
 7tQckNZ3aDVY5LOkHKjulgNx5/2306VdzhHpCgzN29KlMn4zb+v52g8MZafJrHKY0UOw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jW1ev-000y9n-Ug; Tue, 05 May 2020 19:47:09 +0200
Date: Tue, 5 May 2020 19:47:09 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH 06/11] net: ethernet: mtk-eth-mac: new driver
Message-ID: <20200505174709.GD224913@lunn.ch>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-7-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505140231.16600-7-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_104723_150632_857414D5 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Felix Fietkau <nbd@openwrt.org>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +static struct net_device *mtk_mac_get_netdev(struct mtk_mac_priv *priv)
> +{
> +	char *ptr = (char *)priv;
> +
> +	return (struct net_device *)(ptr - ALIGN(sizeof(struct net_device),
> +						 NETDEV_ALIGN));
> +}

Bit of an odd way to do it. It is much more normal to just have

    return priv->netdev;

> +static struct sk_buff *mtk_mac_alloc_skb(struct net_device *ndev)
> +{
> +	uintptr_t tail, offset;
> +	struct sk_buff *skb;
> +
> +	skb = dev_alloc_skb(MTK_MAC_MAX_FRAME_SIZE);
> +	if (!skb)
> +		return NULL;
> +
> +	/* Align to 16 bytes. */
> +	tail = (uintptr_t)skb_tail_pointer(skb);
> +	if (tail & (MTK_MAC_SKB_ALIGNMENT - 1)) {
> +		offset = tail & (MTK_MAC_SKB_ALIGNMENT - 1);
> +		skb_reserve(skb, MTK_MAC_SKB_ALIGNMENT - offset);
> +	}
> +
> +	/* Ensure 16-byte alignment of the skb pointer: eth_type_trans() will
> +	 * extract the Ethernet header (14 bytes) so we need two more bytes.
> +	 */
> +	skb_reserve(skb, 2);

NET_IP_ALIGN

There might also be something in skbuf.h which will do your 16 byte
alignment for you.

> +static int mtk_mac_enable(struct net_device *ndev)
> +{
> +	struct mtk_mac_priv *priv = netdev_priv(ndev);
> +	unsigned int val;
> +	int ret;
> +
> +	mtk_mac_nic_disable_pd(priv);
> +	mtk_mac_intr_mask_all(priv);
> +	mtk_mac_dma_stop(priv);
> +	netif_carrier_off(ndev);

Attaching the PHY will turn the carrier off.  If you are using phylib
correctly, you should not have to touch the carrier status, phylib
will do it for you.

> +	/* Configure flow control */
> +	val = MTK_MAC_VAL_FC_CFG_SEND_PAUSE_TH_2K;
> +	val <<= MTK_MAC_OFF_FC_CFG_SEND_PAUSE_TH;
> +	val |= MTK_MAC_BIT_FC_CFG_BP_EN;
> +	val |= MTK_MAC_BIT_FC_CFG_UC_PAUSE_DIR;
> +	regmap_write(priv->regs, MTK_MAC_REG_FC_CFG, val);
> +
> +	/* Set SEND_PAUSE_RLS to 1K */
> +	val = MTK_MAC_VAL_EXT_CFG_SND_PAUSE_RLS_1K;
> +	val <<= MTK_MAC_OFF_EXT_CFG_SND_PAUSE_RLS;
> +	regmap_write(priv->regs, MTK_MAC_REG_EXT_CFG, val);

Pause is something this is auto-negotiated. You should be setting this
in your link change notifier which phylib will call when the link goes
up.

> +static int mtk_mac_mdio_rwok_wait(struct mtk_mac_priv *priv)
> +{
> +	unsigned long start = jiffies;
> +	unsigned int val;
> +
> +	for (;;) {
> +		regmap_read(priv->regs, MTK_MAC_REG_PHY_CTRL0, &val);
> +		if (val & MTK_MAC_BIT_PHY_CTRL0_RWOK)
> +			break;
> +
> +		udelay(10);
> +		if (time_after(jiffies, start + MTK_MAC_WAIT_TIMEOUT))
> +			return -ETIMEDOUT;
> +	}

regmap_read_poll_timeout() ?

> +static int mtk_mac_mdio_read(struct mii_bus *mii, int phy_id, int regnum)
> +{
> +	struct mtk_mac_priv *priv = mii->priv;
> +	unsigned int val, data;
> +	int ret;

It would be good if here and in _write() you check for C45 addresses
and return -EOPNOTSUP.

> +
> +	mtk_mac_mdio_rwok_clear(priv);
> +
> +	val = (regnum << MTK_MAC_OFF_PHY_CTRL0_PREG);
> +	val &= MTK_MAC_MSK_PHY_CTRL0_PREG;
> +	val |= MTK_MAC_BIT_PHY_CTRL0_RDCMD;
> +
> +	regmap_write(priv->regs, MTK_MAC_REG_PHY_CTRL0, val);
> +
> +	ret = mtk_mac_mdio_rwok_wait(priv);
> +	if (ret)
> +		return ret;
> +
> +	regmap_read(priv->regs, MTK_MAC_REG_PHY_CTRL0, &data);
> +
> +	data &= MTK_MAC_MSK_PHY_CTRL0_RWDATA;
> +	data >>= MTK_MAC_OFF_PHY_CTRL0_RWDATA;
> +
> +	return data;
> +}

> +static int mtk_mac_mdio_init(struct net_device *ndev)
> +{
> +	struct mtk_mac_priv *priv = netdev_priv(ndev);
> +	struct device *dev = mtk_mac_get_dev(priv);
> +	struct device_node *of_node, *mdio_node;
> +	int ret;
> +
> +	of_node = dev->of_node;
> +
> +	mdio_node = of_get_child_by_name(of_node, "mdio");
> +	if (!mdio_node)
> +		return -ENODEV;
> +
> +	if (!of_device_is_available(mdio_node)) {
> +		ret = -ENODEV;
> +		goto out_put_node;
> +	}
> +
> +	priv->mii = devm_mdiobus_alloc(dev);
> +	if (!priv->mii) {
> +		ret = -ENOMEM;
> +		goto out_put_node;
> +	}
> +
> +	snprintf(priv->mii->id, MII_BUS_ID_SIZE, "%s", dev_name(dev));
> +	priv->mii->name = "mdio";

It is normal to include something like 'MTK' in the name.

> +	priv->mii->parent = dev;
> +	priv->mii->read = mtk_mac_mdio_read;
> +	priv->mii->write = mtk_mac_mdio_write;
> +	priv->mii->priv = priv;
> +
> +	ret = of_mdiobus_register(priv->mii, mdio_node);
> +
> +out_put_node:
> +	of_node_put(mdio_node);
> +	return ret;
> +}

  Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
