Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F8A1CE43A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 21:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2ohjzwvVp/HA8lRNKQN/ppwbIBpnEJMt3BLNlWZLVM=; b=CFseqhtumRlani
	/d1jQeeDwe5D5EQyoD8KYhATPywCbLfcFMxK4xt0dy2WplpZKbzNOSrqpOd2+GMNIAGMJd2ov6tvq
	IC2ppMj0k2cNqnmMGAMz33OWAtmeAPWW59WlH1s2EnYc2+MaSW/QUNjPpbPJJtOmL9v3aOGWk1PKn
	W3+MVzK71FyCt5pinMoahJsoCj15LNFSBn/YhzYc9I6tjZVYLFoya4KQ79vG69wILZOniL10Fzjlr
	6pEki+8edYa/R5x9w1yT9f1eemeSPUxmlw1dWi7/VutAR7Zkw0x77i63NfS+sjmmAgAS/0r645ARP
	Ok+CsCNf9ESdAxKLmlfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYE2X-0001tL-Tm; Mon, 11 May 2020 19:24:37 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYE2P-0001rc-1d; Mon, 11 May 2020 19:24:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id w19so5897163wmc.1;
 Mon, 11 May 2020 12:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uxtARxCkPHWXnqT8lNpH00A1Ut0N5U8vfZ7iT6ckY1E=;
 b=AG7MZsX4ZOvpaULyOTIRKeZi/M6nLPWkPou4BnwRwJjZZDbwmwc2GN+LFtRg6wIESO
 vDwFcsA0F9F8GADGT963+l1vut2xgX7EXRxhHkCv6hTX5WfGbNkIvpOrqt1P8oTzAJz/
 m5qsiNAMDXCrGhAu62TssTPTyLX86ziIjlYQYM28Z3sLDG7euOQE0FHm9wmb/jvmSBPV
 KXJj34jfWOCW4evwPoBU2tc+6EDIbrbGKo00RF3+ioMJPD8pnCrwjacGigLPWEAZQdRO
 mH1+73oEcvkmFLleEXiquqHS2lIN9MqN2mLm+NJaK2yDyzE4nh5a5CG9TexWJG6o0TWy
 oyoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uxtARxCkPHWXnqT8lNpH00A1Ut0N5U8vfZ7iT6ckY1E=;
 b=FlMPLnjSpF/+TSnOnq4nVDWML35aG/ljqs48+ofKOMpvCaonr9jkZ3IFBWQMPED1IV
 VzpEzqF0fdCDjHyjOdzOTsLqukPt8Z9C5ZZgEHmWvAuMlAvf7wyOXf+zOOMdX7uk+3Eo
 Z4VoIhz2QcpFEIdFIRUa0L1AV9L0rpm7t/VrEAAyb1HQpPcvo7cCwdB63Bf4wAiuusr0
 T6LkydZ3tzCRrrKZ0dO5/BV791Tu9qGrwbxR96gPtr7vjY0RBGMi3OrzeiWC2cbvAbBz
 uG6udQINvTWsWhr4X/znHSzheQPbRTC8kaFtbdopwqn806uT5zkzESKwdM5OdHnFOLcc
 lvJQ==
X-Gm-Message-State: AGi0PuZCY2FKjjilhiUF7aIeki9oAzxahfjYpYfPWXvCekAe2er8wwU3
 HxbX0Agr1WhYyVeuvBRinas=
X-Google-Smtp-Source: APiQypJW5vvk30z5iWdY0hSQCc1Ykgc7TXvbdxesRiVaoSvVocTszQuT5j6sF6kDtbT7WU3aCncc9w==
X-Received: by 2002:a1c:6402:: with SMTP id y2mr33787682wmb.116.1589225065733; 
 Mon, 11 May 2020 12:24:25 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p4sm8187632wrq.31.2020.05.11.12.24.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 May 2020 12:24:25 -0700 (PDT)
Subject: Re: [PATCH v2 09/14] net: ethernet: mtk-eth-mac: new driver
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>, Heiner Kallweit
 <hkallweit1@gmail.com>, Edwin Peer <edwin.peer@broadcom.com>
References: <20200511150759.18766-1-brgl@bgdev.pl>
 <20200511150759.18766-10-brgl@bgdev.pl>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <dab80587-a196-e0ab-ae97-f8e5cc4a71d4@gmail.com>
Date: Mon, 11 May 2020 12:24:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200511150759.18766-10-brgl@bgdev.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_122429_135864_9304AADD 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/11/2020 8:07 AM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> This adds the driver for the MediaTek Ethernet MAC used on the MT8* SoC
> family. For now we only support full-duplex.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> ---

[snip]

> +static int mtk_mac_ring_pop_tail(struct mtk_mac_ring *ring,
> +				 struct mtk_mac_ring_desc_data *desc_data)
> +{
> +	struct mtk_mac_ring_desc *desc = &ring->descs[ring->tail];
> +	unsigned int status;
> +
> +	/* Let the device release the descriptor. */
> +	dma_rmb();
> +	status = desc->status;
> +
> +	if (!(status & MTK_MAC_DESC_BIT_COWN))
> +		return -1;
> +
> +	desc_data->len = status & MTK_MAC_DESC_MSK_LEN;
> +	desc_data->flags = status & ~MTK_MAC_DESC_MSK_LEN;
> +	desc_data->dma_addr = desc->data_ptr;
> +	desc_data->skb = ring->skbs[ring->tail];
> +
> +	desc->data_ptr = 0;
> +	desc->status = MTK_MAC_DESC_BIT_COWN;
> +	if (status & MTK_MAC_DESC_BIT_EOR)
> +		desc->status |= MTK_MAC_DESC_BIT_EOR;

Don't you need a dma_wmb() for the device to observe the new descriptor
here?

[snip]

> +static void mtk_mac_dma_unmap_tx(struct mtk_mac_priv *priv,
> +				 struct mtk_mac_ring_desc_data *desc_data)
> +{
> +	struct device *dev = mtk_mac_get_dev(priv);
> +
> +	return dma_unmap_single(dev, desc_data->dma_addr,
> +				desc_data->len, DMA_TO_DEVICE);

If you stored a pointer to the sk_buff you transmitted, then you would
need an expensive read to the descriptor to determine the address and
length, and you would also not be at the mercy of the HW putting
incorrect values there.

sp
> +static void mtk_mac_dma_init(struct mtk_mac_priv *priv)
> +{
> +	struct mtk_mac_ring_desc *desc;
> +	unsigned int val;
> +	int i;
> +
> +	priv->descs_base = (struct mtk_mac_ring_desc *)priv->ring_base;
> +
> +	for (i = 0; i < MTK_MAC_NUM_DESCS_TOTAL; i++) {
> +		desc = &priv->descs_base[i];
> +
> +		memset(desc, 0, sizeof(*desc));
> +		desc->status = MTK_MAC_DESC_BIT_COWN;
> +		if ((i == MTK_MAC_NUM_TX_DESCS - 1) ||
> +		    (i == MTK_MAC_NUM_DESCS_TOTAL - 1))
> +			desc->status |= MTK_MAC_DESC_BIT_EOR;
> +	}
> +
> +	mtk_mac_ring_init(&priv->tx_ring, priv->descs_base, 0);
> +	mtk_mac_ring_init(&priv->rx_ring,
> +			  priv->descs_base + MTK_MAC_NUM_TX_DESCS,
> +			  MTK_MAC_NUM_RX_DESCS);
> +
> +	/* Set DMA pointers. */
> +	val = (unsigned int)priv->dma_addr;

You would probably add a WARN_ON() or something that catches the upper
32-bits of the dma_addr being set, see my comment about the DMA mask
setting.

[snip]

> +static void mtk_mac_tx_complete_all(struct mtk_mac_priv *priv)
> +{
> +	struct net_device *ndev = priv_to_netdev(priv);
> +	struct mtk_mac_ring *ring = &priv->tx_ring;
> +	int ret;
> +
> +	for (;;) {
> +		mtk_mac_lock(priv);
> +
> +		if (!mtk_mac_ring_descs_available(ring)) {
> +			mtk_mac_unlock(priv);
> +			break;
> +		}
> +
> +		ret = mtk_mac_tx_complete_one(priv);
> +		if (ret) {
> +			mtk_mac_unlock(priv);
> +			break;
> +		}
> +
> +		if (netif_queue_stopped(ndev))
> +			netif_wake_queue(ndev);
> +
> +		mtk_mac_unlock(priv);
> +	}

Where do you increment the net_device statistics to indicate the bytes
and packets transmitted?

[snip]

> +	mtk_mac_set_mode_rmii(priv);
> +
> +	dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));

Your code assumes that DMA addresses are not going to be >= 4GB so you
should be checking this function's return code and abort here otherwise
your driver will fail in surprisingly difficult ways to debug.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
