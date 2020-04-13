Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00641A6846
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 16:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1KgBacCzXR3TRAIfgkL5x3fQuEck/37MoIL4h9bXsds=; b=E40myAFp4rQA3/yz8/j8pWx3E
	bPz+aLUH0fsYM8LdiuTDkIvIoUi0voa3beQrPcZj7EIMrPa2iF1jajkV0eghTFroXPDI2cWT8Yeyb
	UMPmXWIO11VgxCVTjOIh9DZBovfmDawdS+aPBgq7lnKb/vGpNn/FgLOiK3EJWcSKXU80grgB5+47U
	p3vcTrRCrWOYNAmqAd01tWOHBJP7nt9XkEgrPoXtB+OSbr0R00dfQHAkkd2D19cvCkWjBoD2hP6iW
	f2XAT8BV0bfjsjSRDrWF22rOAUqpJN0XfoYCw6oBLcmnk/2Kh5M9geLzfM55EpEkJL6N+fFjWMaBb
	n7LMK5kTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO0In-0004mT-W0; Mon, 13 Apr 2020 14:43:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO0Ii-0004m5-Bx; Mon, 13 Apr 2020 14:43:05 +0000
Received: from localhost.localdomain (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BED802072C;
 Mon, 13 Apr 2020 14:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586788983;
 bh=dxDYfMwKP0fMk2ALGCdOq93zSItGyHo2o1q3c7WyEyI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yXQR3NMdBaFtjN4Liy9PUW7D0gIs9dY5xzBvrNdaZtb4P9qRHdG1WYqkTr/M6QaDR
 KzjNZ3JBOJi6mcSN4RC6Sx8/P1bouNNi9VVPR4ZpWkXTqCzcc0HuVwA5YaFijc5cZq
 ngQBu/yTaWBvoNoEWCpXSTnwCB4mWC1AiUN7U920=
Date: Mon, 13 Apr 2020 16:44:00 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: DENG Qingfang <dqfext@gmail.com>
Subject: Re: [PATCH] mt76: mt7615: add support for MT7611N
Message-ID: <20200413144400.GA118441@localhost.localdomain>
References: <20200412155848.15506-1-dqfext@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200412155848.15506-1-dqfext@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_074304_442956_65240B89 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, linux-wireless@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============8540797775122569114=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8540797775122569114==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline


--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> MT7611N is basically the same as MT7615N, except it only supports 5 GHz
> It is used by some TP-Link and Mercury wireless routers
>=20
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>
> ---
>  drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt7615/dma.c     | 8 ++++----
>  drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c  | 7 +++++++
>  drivers/net/wireless/mediatek/mt76/mt7615/init.c    | 2 +-
>  drivers/net/wireless/mediatek/mt76/mt7615/mac.c     | 8 ++++----
>  drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h  | 5 +++++
>  drivers/net/wireless/mediatek/mt76/mt7615/pci.c     | 1 +
>  7 files changed, 23 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c b/driver=
s/net/wireless/mediatek/mt76/mt7615/debugfs.c
> index b4d0795154e3..fac705e1621f 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
> @@ -264,7 +264,7 @@ int mt7615_init_debugfs(struct mt7615_dev *dev)
>  	if (!dir)
>  		return -ENOMEM;
> =20
> -	if (is_mt7615(&dev->mt76))
> +	if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76))
>  		debugfs_create_devm_seqfile(dev->mt76.dev, "queues", dir,
>  					    mt7615_queues_read);
>  	else
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/dma.c b/drivers/ne=
t/wireless/mediatek/mt76/mt7615/dma.c
> index b19f208e3d54..274053311749 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/dma.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/dma.c
> @@ -74,7 +74,7 @@ mt7615_init_tx_queues(struct mt7615_dev *dev)
>  	if (ret)
>  		return ret;
> =20
> -	if (!is_mt7615(&dev->mt76))
> +	if (!is_mt7615(&dev->mt76) && !is_mt7611(&dev->mt76))
>  		return mt7622_init_tx_queues_multi(dev);
> =20
>  	ret =3D mt7615_init_tx_queue(dev, &dev->mt76.q_tx[0], 0,
> @@ -139,7 +139,7 @@ mt7615_tx_cleanup(struct mt7615_dev *dev)
>  	int i;
> =20
>  	mt76_queue_tx_cleanup(dev, MT_TXQ_MCU, false);
> -	if (is_mt7615(&dev->mt76)) {
> +	if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76)) {
>  		mt76_queue_tx_cleanup(dev, MT_TXQ_BE, false);
>  	} else {
>  		for (i =3D 0; i < IEEE80211_NUM_ACS; i++)
> @@ -250,7 +250,7 @@ int mt7615_dma_init(struct mt7615_dev *dev)
>  	mt76_rmw_field(dev, MT_WPDMA_GLO_CFG,
>  		       MT_WPDMA_GLO_CFG_MULTI_DMA_EN, 0x3);
> =20
> -	if (is_mt7615(&dev->mt76)) {
> +	if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76)) {
>  		mt76_set(dev, MT_WPDMA_GLO_CFG,
>  			 MT_WPDMA_GLO_CFG_FIRST_TOKEN_ONLY);
> =20
> @@ -276,7 +276,7 @@ int mt7615_dma_init(struct mt7615_dev *dev)
>  	if (ret)
>  		return ret;
> =20
> -	if (!is_mt7615(&dev->mt76))
> +	if (!is_mt7615(&dev->mt76) && !is_mt7611(&dev->mt76))
>  	    rx_ring_size /=3D 2;
> =20
>  	ret =3D mt76_queue_alloc(dev, &dev->mt76.q_rx[MT_RXQ_MAIN], 0,
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c b/drivers=
/net/wireless/mediatek/mt76/mt7615/eeprom.c
> index dfa9a08b896d..bb6f28305733 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
> @@ -109,6 +109,12 @@ mt7615_eeprom_parse_hw_band_cap(struct mt7615_dev *d=
ev)
>  		return;
>  	}
> =20
> +	if (is_mt7611(&dev->mt76)) {
> +		/* 5GHz only */
> +		dev->mt76.cap.has_5ghz =3D true;
> +		return;
> +	}

just out of curiosity, what is the value in eeprom[MT_EE_WIFI_CONF]?

Regards,
Lorenzo

> +
>  	val =3D FIELD_GET(MT_EE_NIC_WIFI_CONF_BAND_SEL,
>  			eeprom[MT_EE_WIFI_CONF]);
>  	switch (val) {
> @@ -260,6 +266,7 @@ static void mt7615_cal_free_data(struct mt7615_dev *d=
ev)
>  		mt7622_apply_cal_free_data(dev);
>  		break;
>  	case 0x7615:
> +	case 0x7611:
>  		mt7615_apply_cal_free_data(dev);
>  		break;
>  	}
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/n=
et/wireless/mediatek/mt76/mt7615/init.c
> index 03b1e56534d6..33472a2493e2 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> @@ -349,7 +349,7 @@ mt7615_init_wiphy(struct ieee80211_hw *hw)
> =20
>  	ieee80211_hw_set(hw, TX_STATUS_NO_AMPDU_LEN);
> =20
> -	if (is_mt7615(&phy->dev->mt76))
> +	if (is_mt7615(&phy->dev->mt76) || is_mt7611(&phy->dev->mt76))
>  		hw->max_tx_fragments =3D MT_TXP_MAX_BUF_NUM;
>  	else
>  		hw->max_tx_fragments =3D MT_HW_TXP_MAX_BUF_NUM;
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/ne=
t/wireless/mediatek/mt76/mt7615/mac.c
> index a27a6d164009..b5b760b081cb 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> @@ -427,7 +427,7 @@ void mt7615_tx_complete_skb(struct mt76_dev *mdev, en=
um mt76_txq_id qid,
>  		dev =3D container_of(mdev, struct mt7615_dev, mt76);
>  		txp =3D mt7615_txwi_to_txp(mdev, e->txwi);
> =20
> -		if (is_mt7615(&dev->mt76))
> +		if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76))
>  			token =3D le16_to_cpu(txp->fw.token);
>  		else
>  			token =3D le16_to_cpu(txp->hw.msdu_id[0]) &
> @@ -697,7 +697,7 @@ void mt7615_txp_skb_unmap(struct mt76_dev *dev,
>  	struct mt7615_txp_common *txp;
> =20
>  	txp =3D mt7615_txwi_to_txp(dev, t);
> -	if (is_mt7615(dev))
> +	if (is_mt7615(dev) || is_mt7611(dev))
>  		mt7615_txp_skb_unmap_fw(dev, &txp->fw);
>  	else
>  		mt7615_txp_skb_unmap_hw(dev, &txp->hw);
> @@ -1212,7 +1212,7 @@ int mt7615_tx_prepare_skb(struct mt76_dev *mdev, vo=
id *txwi_ptr,
> =20
>  	txp =3D txwi + MT_TXD_SIZE;
>  	memset(txp, 0, sizeof(struct mt7615_txp_common));
> -	if (is_mt7615(&dev->mt76))
> +	if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76))
>  		mt7615_write_fw_txp(dev, tx_info, txp, id);
>  	else
>  		mt7615_write_hw_txp(dev, tx_info, txp, id);
> @@ -1482,7 +1482,7 @@ void mt7615_mac_tx_free(struct mt7615_dev *dev, str=
uct sk_buff *skb)
>  	u8 i, count;
> =20
>  	count =3D FIELD_GET(MT_TX_FREE_MSDU_ID_CNT, le16_to_cpu(free->ctrl));
> -	if (is_mt7615(&dev->mt76)) {
> +	if (is_mt7615(&dev->mt76) || is_mt7611(&dev->mt76)) {
>  		__le16 *token =3D &free->token[0];
> =20
>  		for (i =3D 0; i < count; i++)
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers=
/net/wireless/mediatek/mt76/mt7615/mt7615.h
> index 676ca622c35a..8daf1027de8a 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
> @@ -353,6 +353,11 @@ static inline bool is_mt7663(struct mt76_dev *dev)
>  	return mt76_chip(dev) =3D=3D 0x7663;
>  }
> =20
> +static inline bool is_mt7611(struct mt76_dev *dev)
> +{
> +	return mt76_chip(dev) =3D=3D 0x7611;
> +}
> +
>  static inline void mt7615_irq_enable(struct mt7615_dev *dev, u32 mask)
>  {
>  	mt76_set_irq_mask(&dev->mt76, MT_INT_MASK_CSR, 0, mask);
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c b/drivers/ne=
t/wireless/mediatek/mt76/mt7615/pci.c
> index c8d0f893a47f..54c0ea2701bd 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
> @@ -14,6 +14,7 @@
>  static const struct pci_device_id mt7615_pci_device_table[] =3D {
>  	{ PCI_DEVICE(0x14c3, 0x7615) },
>  	{ PCI_DEVICE(0x14c3, 0x7663) },
> +	{ PCI_DEVICE(0x14c3, 0x7611) },
>  	{ },
>  };
> =20
> --=20
> 2.26.0
>=20

--MGYHOYXEY6WxJCY8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCXpR6rQAKCRA6cBh0uS2t
rAM1AQC64iT1E4AD2fhs1V9fnBViUTNRd70ZIyG7XFKhIw/HiwD9Eq4mYjdcGAEt
a44bR+nfIftA2l5tqvAjEkL+aY36Qg8=
=+J/u
-----END PGP SIGNATURE-----

--MGYHOYXEY6WxJCY8--


--===============8540797775122569114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8540797775122569114==--

